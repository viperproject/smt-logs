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
(declare-sort T@Field_75576_53 0)
(declare-sort T@Field_75589_75590 0)
(declare-sort T@Field_82629_82630 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_81594_2989 0)
(declare-sort T@Field_81690_81692 0)
(declare-sort T@Seq_2867 0)
(declare-sort T@Field_90814_90819 0)
(declare-sort T@Field_131882_131883 0)
(declare-sort T@Field_134696_134701 0)
(declare-sort T@Field_36525_36794 0)
(declare-sort T@Field_36525_90819 0)
(declare-sort T@Field_36793_36526 0)
(declare-sort T@Field_36793_103015 0)
(declare-sort T@Field_36793_3237 0)
(declare-sort T@Field_36793_53 0)
(declare-sort T@Field_36821_36526 0)
(declare-sort T@Field_36821_103015 0)
(declare-sort T@Field_36821_3237 0)
(declare-sort T@Field_36821_53 0)
(declare-datatypes ((T@PolymorphicMapType_75537 0)) (((PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| (Array T@Ref T@Field_82629_82630 Real)) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| (Array T@Ref T@Field_81594_2989 Real)) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| (Array T@Ref T@Field_75589_75590 Real)) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| (Array T@Ref T@Field_81690_81692 Real)) (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| (Array T@Ref T@Field_131882_131883 Real)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| (Array T@Ref T@Field_36793_3237 Real)) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| (Array T@Ref T@Field_36793_36526 Real)) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| (Array T@Ref T@Field_36793_103015 Real)) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| (Array T@Ref T@Field_36793_53 Real)) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| (Array T@Ref T@Field_90814_90819 Real)) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| (Array T@Ref T@Field_36525_36794 Real)) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| (Array T@Ref T@Field_75576_53 Real)) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| (Array T@Ref T@Field_36525_90819 Real)) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| (Array T@Ref T@Field_36821_3237 Real)) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| (Array T@Ref T@Field_36821_36526 Real)) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| (Array T@Ref T@Field_36821_103015 Real)) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| (Array T@Ref T@Field_36821_53 Real)) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| (Array T@Ref T@Field_134696_134701 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_76065 0)) (((PolymorphicMapType_76065 (|PolymorphicMapType_76065_36523_2989#PolymorphicMapType_76065| (Array T@Ref T@Field_81594_2989 Bool)) (|PolymorphicMapType_76065_36525_36526#PolymorphicMapType_76065| (Array T@Ref T@Field_75589_75590 Bool)) (|PolymorphicMapType_76065_36528_91384#PolymorphicMapType_76065| (Array T@Ref T@Field_81690_81692 Bool)) (|PolymorphicMapType_76065_36523_53#PolymorphicMapType_76065| (Array T@Ref T@Field_75576_53 Bool)) (|PolymorphicMapType_76065_36523_82630#PolymorphicMapType_76065| (Array T@Ref T@Field_36525_36794 Bool)) (|PolymorphicMapType_76065_36523_278476#PolymorphicMapType_76065| (Array T@Ref T@Field_36525_90819 Bool)) (|PolymorphicMapType_76065_82629_2989#PolymorphicMapType_76065| (Array T@Ref T@Field_36793_3237 Bool)) (|PolymorphicMapType_76065_82629_36526#PolymorphicMapType_76065| (Array T@Ref T@Field_36793_36526 Bool)) (|PolymorphicMapType_76065_82629_91384#PolymorphicMapType_76065| (Array T@Ref T@Field_36793_103015 Bool)) (|PolymorphicMapType_76065_82629_53#PolymorphicMapType_76065| (Array T@Ref T@Field_36793_53 Bool)) (|PolymorphicMapType_76065_82629_82630#PolymorphicMapType_76065| (Array T@Ref T@Field_82629_82630 Bool)) (|PolymorphicMapType_76065_82629_279728#PolymorphicMapType_76065| (Array T@Ref T@Field_90814_90819 Bool)) (|PolymorphicMapType_76065_131882_2989#PolymorphicMapType_76065| (Array T@Ref T@Field_36821_3237 Bool)) (|PolymorphicMapType_76065_131882_36526#PolymorphicMapType_76065| (Array T@Ref T@Field_36821_36526 Bool)) (|PolymorphicMapType_76065_131882_91384#PolymorphicMapType_76065| (Array T@Ref T@Field_36821_103015 Bool)) (|PolymorphicMapType_76065_131882_53#PolymorphicMapType_76065| (Array T@Ref T@Field_36821_53 Bool)) (|PolymorphicMapType_76065_131882_82630#PolymorphicMapType_76065| (Array T@Ref T@Field_131882_131883 Bool)) (|PolymorphicMapType_76065_131882_280980#PolymorphicMapType_76065| (Array T@Ref T@Field_134696_134701 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_75516 0)) (((PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| (Array T@Ref T@Field_75576_53 Bool)) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| (Array T@Ref T@Field_75589_75590 T@Ref)) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| (Array T@Ref T@Field_82629_82630 T@FrameType)) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| (Array T@Ref T@Field_81594_2989 Int)) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| (Array T@Ref T@Field_81690_81692 T@Seq_2867)) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| (Array T@Ref T@Field_90814_90819 T@PolymorphicMapType_76065)) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| (Array T@Ref T@Field_131882_131883 T@FrameType)) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| (Array T@Ref T@Field_134696_134701 T@PolymorphicMapType_76065)) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| (Array T@Ref T@Field_36525_36794 T@FrameType)) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| (Array T@Ref T@Field_36525_90819 T@PolymorphicMapType_76065)) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| (Array T@Ref T@Field_36793_36526 T@Ref)) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| (Array T@Ref T@Field_36793_103015 T@Seq_2867)) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| (Array T@Ref T@Field_36793_3237 Int)) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| (Array T@Ref T@Field_36793_53 Bool)) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| (Array T@Ref T@Field_36821_36526 T@Ref)) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| (Array T@Ref T@Field_36821_103015 T@Seq_2867)) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| (Array T@Ref T@Field_36821_3237 Int)) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| (Array T@Ref T@Field_36821_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_75576_53)
(declare-fun Wand_list_for_list__lemma () T@Field_81594_2989)
(declare-fun Wand_list_for_list__in_1 () T@Field_75589_75590)
(declare-fun Wand_list_for_list__in_1_0 () T@Field_81690_81692)
(declare-fun Wand_list_for_list__out_1 () T@Field_75589_75590)
(declare-fun Wand_list_for_list__out_1_0 () T@Field_81690_81692)
(declare-fun Wand_list_for_list__this_1 () T@Field_75589_75590)
(declare-fun Wand_list_for_list__L2_1 () T@Field_81690_81692)
(declare-fun Wand_list_for_list__tmp_suffix_1 () T@Field_81690_81692)
(declare-fun Wand_list_for_list__L1_1 () T@Field_81690_81692)
(declare-fun Wand_list_for_list__tmp_1 () T@Field_75589_75590)
(declare-fun Wand_list_for_list__suffix_1 () T@Field_81690_81692)
(declare-fun Wand_list_for_list__cursor_1 () T@Field_75589_75590)
(declare-fun Wand_list_for_list__wand_1 () T@Field_75589_75590)
(declare-fun Wand_list_for_list__this_2 () T@Field_75589_75590)
(declare-fun Wand_list_for_list__L2_2 () T@Field_81690_81692)
(declare-fun Wand_list_for_list__L1_2 () T@Field_81690_81692)
(declare-fun List__val () T@Field_81594_2989)
(declare-fun List__next () T@Field_75589_75590)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_75516 T@PolymorphicMapType_75516 T@PolymorphicMapType_75537) Bool)
(declare-fun IsPredicateField_36821_36822 (T@Field_131882_131883) Bool)
(declare-fun HasDirectPerm_36821_36822 (T@PolymorphicMapType_75537 T@Ref T@Field_131882_131883) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_36821 (T@Field_131882_131883) T@Field_134696_134701)
(declare-fun IsPredicateField_36793_36794 (T@Field_82629_82630) Bool)
(declare-fun HasDirectPerm_36793_36794 (T@PolymorphicMapType_75537 T@Ref T@Field_82629_82630) Bool)
(declare-fun PredicateMaskField_36793 (T@Field_82629_82630) T@Field_90814_90819)
(declare-fun IsPredicateField_36525_276505 (T@Field_36525_36794) Bool)
(declare-fun HasDirectPerm_36525_36794 (T@PolymorphicMapType_75537 T@Ref T@Field_36525_36794) Bool)
(declare-fun PredicateMaskField_36525 (T@Field_36525_36794) T@Field_36525_90819)
(declare-fun IsWandField_36821_282783 (T@Field_131882_131883) Bool)
(declare-fun WandMaskField_36821 (T@Field_131882_131883) T@Field_134696_134701)
(declare-fun IsWandField_36793_282426 (T@Field_82629_82630) Bool)
(declare-fun WandMaskField_36793 (T@Field_82629_82630) T@Field_90814_90819)
(declare-fun IsWandField_36525_282069 (T@Field_36525_36794) Bool)
(declare-fun WandMaskField_36525 (T@Field_36525_36794) T@Field_36525_90819)
(declare-fun succHeap (T@PolymorphicMapType_75516 T@PolymorphicMapType_75516) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_75516 T@PolymorphicMapType_75516) Bool)
(declare-fun state (T@PolymorphicMapType_75516 T@PolymorphicMapType_75537) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_75537) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_76065)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_18023| () T@Seq_2867)
(declare-fun Wand_list_for_list__valid_wand (T@Ref) T@Field_82629_82630)
(declare-fun List__state (T@Ref) T@Field_131882_131883)
(declare-fun |Wand_list_for_list__get_in_1'| (T@PolymorphicMapType_75516 T@Ref) T@Ref)
(declare-fun dummyFunction_36600 (T@Ref) Bool)
(declare-fun |Wand_list_for_list__get_in_1#triggerStateless| (T@Ref) T@Ref)
(declare-fun |Wand_list_for_list__get_in_1_0'| (T@PolymorphicMapType_75516 T@Ref) T@Seq_2867)
(declare-fun dummyFunction_95045 (T@Seq_2867) Bool)
(declare-fun |Wand_list_for_list__get_in_1_0#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |Wand_list_for_list__get_out_1'| (T@PolymorphicMapType_75516 T@Ref) T@Ref)
(declare-fun |Wand_list_for_list__get_out_1#triggerStateless| (T@Ref) T@Ref)
(declare-fun |Wand_list_for_list__get_out_1_0'| (T@PolymorphicMapType_75516 T@Ref) T@Seq_2867)
(declare-fun |Wand_list_for_list__get_out_1_0#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |List__contents'| (T@PolymorphicMapType_75516 T@Ref) T@Seq_2867)
(declare-fun |List__contents#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |List__get_next'| (T@PolymorphicMapType_75516 T@Ref) T@Ref)
(declare-fun |List__get_next#triggerStateless| (T@Ref) T@Ref)
(declare-fun |Wand_list_for_list__valid_wand#trigger_36793| (T@PolymorphicMapType_75516 T@Field_82629_82630) Bool)
(declare-fun |Wand_list_for_list__valid_wand#everUsed_36793| (T@Field_82629_82630) Bool)
(declare-fun |List__state#trigger_36821| (T@PolymorphicMapType_75516 T@Field_131882_131883) Bool)
(declare-fun |List__state#everUsed_36821| (T@Field_131882_131883) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun Wand_list_for_list__get_in_1 (T@PolymorphicMapType_75516 T@Ref) T@Ref)
(declare-fun Wand_list_for_list__get_in_1_0 (T@PolymorphicMapType_75516 T@Ref) T@Seq_2867)
(declare-fun Wand_list_for_list__get_out_1 (T@PolymorphicMapType_75516 T@Ref) T@Ref)
(declare-fun Wand_list_for_list__get_out_1_0 (T@PolymorphicMapType_75516 T@Ref) T@Seq_2867)
(declare-fun List__contents (T@PolymorphicMapType_75516 T@Ref) T@Seq_2867)
(declare-fun List__get_next (T@PolymorphicMapType_75516 T@Ref) T@Ref)
(declare-fun |Seq#Singleton_3237| (Int) T@Seq_2867)
(declare-fun |Wand_list_for_list__valid_wand#sm| (T@Ref) T@Field_90814_90819)
(declare-fun |List__state#sm| (T@Ref) T@Field_134696_134701)
(declare-fun |Seq#Append_3237| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_75516)
(declare-fun ZeroMask () T@PolymorphicMapType_75537)
(declare-fun InsidePredicate_75576_75576 (T@Field_36525_36794 T@FrameType T@Field_36525_36794 T@FrameType) Bool)
(declare-fun InsidePredicate_36821_36821 (T@Field_131882_131883 T@FrameType T@Field_131882_131883 T@FrameType) Bool)
(declare-fun InsidePredicate_36793_36793 (T@Field_82629_82630 T@FrameType T@Field_82629_82630 T@FrameType) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Wand_list_for_list__get_in_1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |Wand_list_for_list__get_out_1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun IsPredicateField_36523_2989 (T@Field_81594_2989) Bool)
(declare-fun IsWandField_36523_2989 (T@Field_81594_2989) Bool)
(declare-fun IsPredicateField_36525_36526 (T@Field_75589_75590) Bool)
(declare-fun IsWandField_36525_36526 (T@Field_75589_75590) Bool)
(declare-fun IsPredicateField_36528_81711 (T@Field_81690_81692) Bool)
(declare-fun IsWandField_36528_81734 (T@Field_81690_81692) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_36821_294894 (T@Field_134696_134701) Bool)
(declare-fun IsWandField_36821_294910 (T@Field_134696_134701) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_36821_53 (T@Field_36821_53) Bool)
(declare-fun IsWandField_36821_53 (T@Field_36821_53) Bool)
(declare-fun IsPredicateField_36821_85441 (T@Field_36821_103015) Bool)
(declare-fun IsWandField_36821_85441 (T@Field_36821_103015) Bool)
(declare-fun IsPredicateField_36821_36526 (T@Field_36821_36526) Bool)
(declare-fun IsWandField_36821_36526 (T@Field_36821_36526) Bool)
(declare-fun IsPredicateField_36821_2989 (T@Field_36821_3237) Bool)
(declare-fun IsWandField_36821_2989 (T@Field_36821_3237) Bool)
(declare-fun IsPredicateField_36523_293895 (T@Field_36525_90819) Bool)
(declare-fun IsWandField_36523_293911 (T@Field_36525_90819) Bool)
(declare-fun IsPredicateField_36523_53 (T@Field_75576_53) Bool)
(declare-fun IsWandField_36523_53 (T@Field_75576_53) Bool)
(declare-fun IsPredicateField_36793_292938 (T@Field_90814_90819) Bool)
(declare-fun IsWandField_36793_292954 (T@Field_90814_90819) Bool)
(declare-fun IsPredicateField_36793_53 (T@Field_36793_53) Bool)
(declare-fun IsWandField_36793_53 (T@Field_36793_53) Bool)
(declare-fun IsPredicateField_36793_85441 (T@Field_36793_103015) Bool)
(declare-fun IsWandField_36793_85441 (T@Field_36793_103015) Bool)
(declare-fun IsPredicateField_36793_36526 (T@Field_36793_36526) Bool)
(declare-fun IsWandField_36793_36526 (T@Field_36793_36526) Bool)
(declare-fun IsPredicateField_36793_2989 (T@Field_36793_3237) Bool)
(declare-fun IsWandField_36793_2989 (T@Field_36793_3237) Bool)
(declare-fun HasDirectPerm_36821_276260 (T@PolymorphicMapType_75537 T@Ref T@Field_134696_134701) Bool)
(declare-fun HasDirectPerm_36821_53 (T@PolymorphicMapType_75537 T@Ref T@Field_36821_53) Bool)
(declare-fun HasDirectPerm_36821_3237 (T@PolymorphicMapType_75537 T@Ref T@Field_36821_3237) Bool)
(declare-fun HasDirectPerm_36821_103015 (T@PolymorphicMapType_75537 T@Ref T@Field_36821_103015) Bool)
(declare-fun HasDirectPerm_36821_36526 (T@PolymorphicMapType_75537 T@Ref T@Field_36821_36526) Bool)
(declare-fun HasDirectPerm_36793_274933 (T@PolymorphicMapType_75537 T@Ref T@Field_90814_90819) Bool)
(declare-fun HasDirectPerm_36793_53 (T@PolymorphicMapType_75537 T@Ref T@Field_36793_53) Bool)
(declare-fun HasDirectPerm_36793_3237 (T@PolymorphicMapType_75537 T@Ref T@Field_36793_3237) Bool)
(declare-fun HasDirectPerm_36793_103015 (T@PolymorphicMapType_75537 T@Ref T@Field_36793_103015) Bool)
(declare-fun HasDirectPerm_36793_36526 (T@PolymorphicMapType_75537 T@Ref T@Field_36793_36526) Bool)
(declare-fun HasDirectPerm_36525_273563 (T@PolymorphicMapType_75537 T@Ref T@Field_36525_90819) Bool)
(declare-fun HasDirectPerm_36525_53 (T@PolymorphicMapType_75537 T@Ref T@Field_75576_53) Bool)
(declare-fun HasDirectPerm_36570_3237 (T@PolymorphicMapType_75537 T@Ref T@Field_81594_2989) Bool)
(declare-fun HasDirectPerm_36528_103015 (T@PolymorphicMapType_75537 T@Ref T@Field_81690_81692) Bool)
(declare-fun HasDirectPerm_36525_36526 (T@PolymorphicMapType_75537 T@Ref T@Field_75589_75590) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_75537 T@PolymorphicMapType_75537 T@PolymorphicMapType_75537) Bool)
(declare-fun |Seq#Equal_3097| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Wand_list_for_list__get_in_1#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |Wand_list_for_list__get_in_1_0#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun |Wand_list_for_list__get_out_1#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |Wand_list_for_list__get_out_1_0#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun |List__contents#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun |List__get_next#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun getPredWandId_36793_36794 (T@Field_82629_82630) Int)
(declare-fun getPredWandId_36821_36822 (T@Field_131882_131883) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_75576_36821 (T@Field_36525_36794 T@FrameType T@Field_131882_131883 T@FrameType) Bool)
(declare-fun InsidePredicate_75576_36793 (T@Field_36525_36794 T@FrameType T@Field_82629_82630 T@FrameType) Bool)
(declare-fun InsidePredicate_36821_75576 (T@Field_131882_131883 T@FrameType T@Field_36525_36794 T@FrameType) Bool)
(declare-fun InsidePredicate_36821_36793 (T@Field_131882_131883 T@FrameType T@Field_82629_82630 T@FrameType) Bool)
(declare-fun InsidePredicate_36793_75576 (T@Field_82629_82630 T@FrameType T@Field_36525_36794 T@FrameType) Bool)
(declare-fun InsidePredicate_36793_36821 (T@Field_82629_82630 T@FrameType T@Field_131882_131883 T@FrameType) Bool)
(assert (and (distinct Wand_list_for_list__lemma List__val)(distinct Wand_list_for_list__in_1 Wand_list_for_list__out_1 Wand_list_for_list__this_1 Wand_list_for_list__tmp_1 Wand_list_for_list__cursor_1 Wand_list_for_list__wand_1 Wand_list_for_list__this_2 List__next)(distinct Wand_list_for_list__in_1_0 Wand_list_for_list__out_1_0 Wand_list_for_list__L2_1 Wand_list_for_list__tmp_suffix_1 Wand_list_for_list__L1_1 Wand_list_for_list__suffix_1 Wand_list_for_list__L2_2 Wand_list_for_list__L1_2))
)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.281:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_2867| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_2867| s n))
)))
(assert (forall ((Heap T@PolymorphicMapType_75516) (ExhaleHeap T@PolymorphicMapType_75516) (Mask T@PolymorphicMapType_75537) (pm_f_6 T@Field_131882_131883) ) (!  (=> (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (=> (and (HasDirectPerm_36821_36822 Mask null pm_f_6) (IsPredicateField_36821_36822 pm_f_6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6 T@Ref) (f_19 T@Field_81594_2989) ) (!  (=> (select (|PolymorphicMapType_76065_36523_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) null (PredicateMaskField_36821 pm_f_6))) o2_6 f_19) (= (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap) o2_6 f_19) (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| ExhaleHeap) o2_6 f_19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| ExhaleHeap) o2_6 f_19))
)) (forall ((o2_6@@0 T@Ref) (f_19@@0 T@Field_75589_75590) ) (!  (=> (select (|PolymorphicMapType_76065_36525_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) null (PredicateMaskField_36821 pm_f_6))) o2_6@@0 f_19@@0) (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap) o2_6@@0 f_19@@0) (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap) o2_6@@0 f_19@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap) o2_6@@0 f_19@@0))
))) (forall ((o2_6@@1 T@Ref) (f_19@@1 T@Field_81690_81692) ) (!  (=> (select (|PolymorphicMapType_76065_36528_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) null (PredicateMaskField_36821 pm_f_6))) o2_6@@1 f_19@@1) (= (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap) o2_6@@1 f_19@@1) (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| ExhaleHeap) o2_6@@1 f_19@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| ExhaleHeap) o2_6@@1 f_19@@1))
))) (forall ((o2_6@@2 T@Ref) (f_19@@2 T@Field_75576_53) ) (!  (=> (select (|PolymorphicMapType_76065_36523_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) null (PredicateMaskField_36821 pm_f_6))) o2_6@@2 f_19@@2) (= (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap) o2_6@@2 f_19@@2) (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap) o2_6@@2 f_19@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap) o2_6@@2 f_19@@2))
))) (forall ((o2_6@@3 T@Ref) (f_19@@3 T@Field_36525_36794) ) (!  (=> (select (|PolymorphicMapType_76065_36523_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) null (PredicateMaskField_36821 pm_f_6))) o2_6@@3 f_19@@3) (= (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap) o2_6@@3 f_19@@3) (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| ExhaleHeap) o2_6@@3 f_19@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| ExhaleHeap) o2_6@@3 f_19@@3))
))) (forall ((o2_6@@4 T@Ref) (f_19@@4 T@Field_36525_90819) ) (!  (=> (select (|PolymorphicMapType_76065_36523_278476#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) null (PredicateMaskField_36821 pm_f_6))) o2_6@@4 f_19@@4) (= (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap) o2_6@@4 f_19@@4) (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap) o2_6@@4 f_19@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap) o2_6@@4 f_19@@4))
))) (forall ((o2_6@@5 T@Ref) (f_19@@5 T@Field_36793_3237) ) (!  (=> (select (|PolymorphicMapType_76065_82629_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) null (PredicateMaskField_36821 pm_f_6))) o2_6@@5 f_19@@5) (= (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap) o2_6@@5 f_19@@5) (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| ExhaleHeap) o2_6@@5 f_19@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| ExhaleHeap) o2_6@@5 f_19@@5))
))) (forall ((o2_6@@6 T@Ref) (f_19@@6 T@Field_36793_36526) ) (!  (=> (select (|PolymorphicMapType_76065_82629_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) null (PredicateMaskField_36821 pm_f_6))) o2_6@@6 f_19@@6) (= (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap) o2_6@@6 f_19@@6) (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| ExhaleHeap) o2_6@@6 f_19@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| ExhaleHeap) o2_6@@6 f_19@@6))
))) (forall ((o2_6@@7 T@Ref) (f_19@@7 T@Field_36793_103015) ) (!  (=> (select (|PolymorphicMapType_76065_82629_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) null (PredicateMaskField_36821 pm_f_6))) o2_6@@7 f_19@@7) (= (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap) o2_6@@7 f_19@@7) (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| ExhaleHeap) o2_6@@7 f_19@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| ExhaleHeap) o2_6@@7 f_19@@7))
))) (forall ((o2_6@@8 T@Ref) (f_19@@8 T@Field_36793_53) ) (!  (=> (select (|PolymorphicMapType_76065_82629_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) null (PredicateMaskField_36821 pm_f_6))) o2_6@@8 f_19@@8) (= (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap) o2_6@@8 f_19@@8) (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| ExhaleHeap) o2_6@@8 f_19@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| ExhaleHeap) o2_6@@8 f_19@@8))
))) (forall ((o2_6@@9 T@Ref) (f_19@@9 T@Field_82629_82630) ) (!  (=> (select (|PolymorphicMapType_76065_82629_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) null (PredicateMaskField_36821 pm_f_6))) o2_6@@9 f_19@@9) (= (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap) o2_6@@9 f_19@@9) (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| ExhaleHeap) o2_6@@9 f_19@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| ExhaleHeap) o2_6@@9 f_19@@9))
))) (forall ((o2_6@@10 T@Ref) (f_19@@10 T@Field_90814_90819) ) (!  (=> (select (|PolymorphicMapType_76065_82629_279728#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) null (PredicateMaskField_36821 pm_f_6))) o2_6@@10 f_19@@10) (= (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap) o2_6@@10 f_19@@10) (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap) o2_6@@10 f_19@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap) o2_6@@10 f_19@@10))
))) (forall ((o2_6@@11 T@Ref) (f_19@@11 T@Field_36821_3237) ) (!  (=> (select (|PolymorphicMapType_76065_131882_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) null (PredicateMaskField_36821 pm_f_6))) o2_6@@11 f_19@@11) (= (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap) o2_6@@11 f_19@@11) (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| ExhaleHeap) o2_6@@11 f_19@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| ExhaleHeap) o2_6@@11 f_19@@11))
))) (forall ((o2_6@@12 T@Ref) (f_19@@12 T@Field_36821_36526) ) (!  (=> (select (|PolymorphicMapType_76065_131882_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) null (PredicateMaskField_36821 pm_f_6))) o2_6@@12 f_19@@12) (= (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap) o2_6@@12 f_19@@12) (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| ExhaleHeap) o2_6@@12 f_19@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| ExhaleHeap) o2_6@@12 f_19@@12))
))) (forall ((o2_6@@13 T@Ref) (f_19@@13 T@Field_36821_103015) ) (!  (=> (select (|PolymorphicMapType_76065_131882_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) null (PredicateMaskField_36821 pm_f_6))) o2_6@@13 f_19@@13) (= (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap) o2_6@@13 f_19@@13) (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| ExhaleHeap) o2_6@@13 f_19@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| ExhaleHeap) o2_6@@13 f_19@@13))
))) (forall ((o2_6@@14 T@Ref) (f_19@@14 T@Field_36821_53) ) (!  (=> (select (|PolymorphicMapType_76065_131882_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) null (PredicateMaskField_36821 pm_f_6))) o2_6@@14 f_19@@14) (= (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap) o2_6@@14 f_19@@14) (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| ExhaleHeap) o2_6@@14 f_19@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| ExhaleHeap) o2_6@@14 f_19@@14))
))) (forall ((o2_6@@15 T@Ref) (f_19@@15 T@Field_131882_131883) ) (!  (=> (select (|PolymorphicMapType_76065_131882_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) null (PredicateMaskField_36821 pm_f_6))) o2_6@@15 f_19@@15) (= (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap) o2_6@@15 f_19@@15) (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap) o2_6@@15 f_19@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap) o2_6@@15 f_19@@15))
))) (forall ((o2_6@@16 T@Ref) (f_19@@16 T@Field_134696_134701) ) (!  (=> (select (|PolymorphicMapType_76065_131882_280980#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) null (PredicateMaskField_36821 pm_f_6))) o2_6@@16 f_19@@16) (= (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap) o2_6@@16 f_19@@16) (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap) o2_6@@16 f_19@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap) o2_6@@16 f_19@@16))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (IsPredicateField_36821_36822 pm_f_6))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_75516) (ExhaleHeap@@0 T@PolymorphicMapType_75516) (Mask@@0 T@PolymorphicMapType_75537) (pm_f_6@@0 T@Field_82629_82630) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (=> (and (HasDirectPerm_36793_36794 Mask@@0 null pm_f_6@@0) (IsPredicateField_36793_36794 pm_f_6@@0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@17 T@Ref) (f_19@@17 T@Field_81594_2989) ) (!  (=> (select (|PolymorphicMapType_76065_36523_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) null (PredicateMaskField_36793 pm_f_6@@0))) o2_6@@17 f_19@@17) (= (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@0) o2_6@@17 f_19@@17) (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@17 f_19@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@17 f_19@@17))
)) (forall ((o2_6@@18 T@Ref) (f_19@@18 T@Field_75589_75590) ) (!  (=> (select (|PolymorphicMapType_76065_36525_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) null (PredicateMaskField_36793 pm_f_6@@0))) o2_6@@18 f_19@@18) (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@0) o2_6@@18 f_19@@18) (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@18 f_19@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@18 f_19@@18))
))) (forall ((o2_6@@19 T@Ref) (f_19@@19 T@Field_81690_81692) ) (!  (=> (select (|PolymorphicMapType_76065_36528_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) null (PredicateMaskField_36793 pm_f_6@@0))) o2_6@@19 f_19@@19) (= (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@0) o2_6@@19 f_19@@19) (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@19 f_19@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@19 f_19@@19))
))) (forall ((o2_6@@20 T@Ref) (f_19@@20 T@Field_75576_53) ) (!  (=> (select (|PolymorphicMapType_76065_36523_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) null (PredicateMaskField_36793 pm_f_6@@0))) o2_6@@20 f_19@@20) (= (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@0) o2_6@@20 f_19@@20) (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@20 f_19@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@20 f_19@@20))
))) (forall ((o2_6@@21 T@Ref) (f_19@@21 T@Field_36525_36794) ) (!  (=> (select (|PolymorphicMapType_76065_36523_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) null (PredicateMaskField_36793 pm_f_6@@0))) o2_6@@21 f_19@@21) (= (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@0) o2_6@@21 f_19@@21) (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@21 f_19@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@21 f_19@@21))
))) (forall ((o2_6@@22 T@Ref) (f_19@@22 T@Field_36525_90819) ) (!  (=> (select (|PolymorphicMapType_76065_36523_278476#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) null (PredicateMaskField_36793 pm_f_6@@0))) o2_6@@22 f_19@@22) (= (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@0) o2_6@@22 f_19@@22) (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@22 f_19@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@22 f_19@@22))
))) (forall ((o2_6@@23 T@Ref) (f_19@@23 T@Field_36793_3237) ) (!  (=> (select (|PolymorphicMapType_76065_82629_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) null (PredicateMaskField_36793 pm_f_6@@0))) o2_6@@23 f_19@@23) (= (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@0) o2_6@@23 f_19@@23) (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@23 f_19@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@23 f_19@@23))
))) (forall ((o2_6@@24 T@Ref) (f_19@@24 T@Field_36793_36526) ) (!  (=> (select (|PolymorphicMapType_76065_82629_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) null (PredicateMaskField_36793 pm_f_6@@0))) o2_6@@24 f_19@@24) (= (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@0) o2_6@@24 f_19@@24) (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@24 f_19@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@24 f_19@@24))
))) (forall ((o2_6@@25 T@Ref) (f_19@@25 T@Field_36793_103015) ) (!  (=> (select (|PolymorphicMapType_76065_82629_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) null (PredicateMaskField_36793 pm_f_6@@0))) o2_6@@25 f_19@@25) (= (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@0) o2_6@@25 f_19@@25) (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@25 f_19@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@25 f_19@@25))
))) (forall ((o2_6@@26 T@Ref) (f_19@@26 T@Field_36793_53) ) (!  (=> (select (|PolymorphicMapType_76065_82629_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) null (PredicateMaskField_36793 pm_f_6@@0))) o2_6@@26 f_19@@26) (= (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@0) o2_6@@26 f_19@@26) (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@26 f_19@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@26 f_19@@26))
))) (forall ((o2_6@@27 T@Ref) (f_19@@27 T@Field_82629_82630) ) (!  (=> (select (|PolymorphicMapType_76065_82629_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) null (PredicateMaskField_36793 pm_f_6@@0))) o2_6@@27 f_19@@27) (= (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@0) o2_6@@27 f_19@@27) (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@27 f_19@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@27 f_19@@27))
))) (forall ((o2_6@@28 T@Ref) (f_19@@28 T@Field_90814_90819) ) (!  (=> (select (|PolymorphicMapType_76065_82629_279728#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) null (PredicateMaskField_36793 pm_f_6@@0))) o2_6@@28 f_19@@28) (= (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) o2_6@@28 f_19@@28) (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@28 f_19@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@28 f_19@@28))
))) (forall ((o2_6@@29 T@Ref) (f_19@@29 T@Field_36821_3237) ) (!  (=> (select (|PolymorphicMapType_76065_131882_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) null (PredicateMaskField_36793 pm_f_6@@0))) o2_6@@29 f_19@@29) (= (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@0) o2_6@@29 f_19@@29) (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@29 f_19@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@29 f_19@@29))
))) (forall ((o2_6@@30 T@Ref) (f_19@@30 T@Field_36821_36526) ) (!  (=> (select (|PolymorphicMapType_76065_131882_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) null (PredicateMaskField_36793 pm_f_6@@0))) o2_6@@30 f_19@@30) (= (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@0) o2_6@@30 f_19@@30) (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@30 f_19@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@30 f_19@@30))
))) (forall ((o2_6@@31 T@Ref) (f_19@@31 T@Field_36821_103015) ) (!  (=> (select (|PolymorphicMapType_76065_131882_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) null (PredicateMaskField_36793 pm_f_6@@0))) o2_6@@31 f_19@@31) (= (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@0) o2_6@@31 f_19@@31) (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@31 f_19@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@31 f_19@@31))
))) (forall ((o2_6@@32 T@Ref) (f_19@@32 T@Field_36821_53) ) (!  (=> (select (|PolymorphicMapType_76065_131882_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) null (PredicateMaskField_36793 pm_f_6@@0))) o2_6@@32 f_19@@32) (= (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@0) o2_6@@32 f_19@@32) (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@32 f_19@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@32 f_19@@32))
))) (forall ((o2_6@@33 T@Ref) (f_19@@33 T@Field_131882_131883) ) (!  (=> (select (|PolymorphicMapType_76065_131882_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) null (PredicateMaskField_36793 pm_f_6@@0))) o2_6@@33 f_19@@33) (= (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@0) o2_6@@33 f_19@@33) (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@33 f_19@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@33 f_19@@33))
))) (forall ((o2_6@@34 T@Ref) (f_19@@34 T@Field_134696_134701) ) (!  (=> (select (|PolymorphicMapType_76065_131882_280980#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@0) null (PredicateMaskField_36793 pm_f_6@@0))) o2_6@@34 f_19@@34) (= (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@0) o2_6@@34 f_19@@34) (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@34 f_19@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap@@0) o2_6@@34 f_19@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (IsPredicateField_36793_36794 pm_f_6@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_75516) (ExhaleHeap@@1 T@PolymorphicMapType_75516) (Mask@@1 T@PolymorphicMapType_75537) (pm_f_6@@1 T@Field_36525_36794) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (=> (and (HasDirectPerm_36525_36794 Mask@@1 null pm_f_6@@1) (IsPredicateField_36525_276505 pm_f_6@@1)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@35 T@Ref) (f_19@@35 T@Field_81594_2989) ) (!  (=> (select (|PolymorphicMapType_76065_36523_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) null (PredicateMaskField_36525 pm_f_6@@1))) o2_6@@35 f_19@@35) (= (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@1) o2_6@@35 f_19@@35) (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@35 f_19@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@35 f_19@@35))
)) (forall ((o2_6@@36 T@Ref) (f_19@@36 T@Field_75589_75590) ) (!  (=> (select (|PolymorphicMapType_76065_36525_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) null (PredicateMaskField_36525 pm_f_6@@1))) o2_6@@36 f_19@@36) (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@1) o2_6@@36 f_19@@36) (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@36 f_19@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@36 f_19@@36))
))) (forall ((o2_6@@37 T@Ref) (f_19@@37 T@Field_81690_81692) ) (!  (=> (select (|PolymorphicMapType_76065_36528_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) null (PredicateMaskField_36525 pm_f_6@@1))) o2_6@@37 f_19@@37) (= (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@1) o2_6@@37 f_19@@37) (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@37 f_19@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@37 f_19@@37))
))) (forall ((o2_6@@38 T@Ref) (f_19@@38 T@Field_75576_53) ) (!  (=> (select (|PolymorphicMapType_76065_36523_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) null (PredicateMaskField_36525 pm_f_6@@1))) o2_6@@38 f_19@@38) (= (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@1) o2_6@@38 f_19@@38) (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@38 f_19@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@38 f_19@@38))
))) (forall ((o2_6@@39 T@Ref) (f_19@@39 T@Field_36525_36794) ) (!  (=> (select (|PolymorphicMapType_76065_36523_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) null (PredicateMaskField_36525 pm_f_6@@1))) o2_6@@39 f_19@@39) (= (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@1) o2_6@@39 f_19@@39) (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@39 f_19@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@39 f_19@@39))
))) (forall ((o2_6@@40 T@Ref) (f_19@@40 T@Field_36525_90819) ) (!  (=> (select (|PolymorphicMapType_76065_36523_278476#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) null (PredicateMaskField_36525 pm_f_6@@1))) o2_6@@40 f_19@@40) (= (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) o2_6@@40 f_19@@40) (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@40 f_19@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@40 f_19@@40))
))) (forall ((o2_6@@41 T@Ref) (f_19@@41 T@Field_36793_3237) ) (!  (=> (select (|PolymorphicMapType_76065_82629_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) null (PredicateMaskField_36525 pm_f_6@@1))) o2_6@@41 f_19@@41) (= (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@1) o2_6@@41 f_19@@41) (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@41 f_19@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@41 f_19@@41))
))) (forall ((o2_6@@42 T@Ref) (f_19@@42 T@Field_36793_36526) ) (!  (=> (select (|PolymorphicMapType_76065_82629_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) null (PredicateMaskField_36525 pm_f_6@@1))) o2_6@@42 f_19@@42) (= (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@1) o2_6@@42 f_19@@42) (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@42 f_19@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@42 f_19@@42))
))) (forall ((o2_6@@43 T@Ref) (f_19@@43 T@Field_36793_103015) ) (!  (=> (select (|PolymorphicMapType_76065_82629_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) null (PredicateMaskField_36525 pm_f_6@@1))) o2_6@@43 f_19@@43) (= (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@1) o2_6@@43 f_19@@43) (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@43 f_19@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@43 f_19@@43))
))) (forall ((o2_6@@44 T@Ref) (f_19@@44 T@Field_36793_53) ) (!  (=> (select (|PolymorphicMapType_76065_82629_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) null (PredicateMaskField_36525 pm_f_6@@1))) o2_6@@44 f_19@@44) (= (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@1) o2_6@@44 f_19@@44) (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@44 f_19@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@44 f_19@@44))
))) (forall ((o2_6@@45 T@Ref) (f_19@@45 T@Field_82629_82630) ) (!  (=> (select (|PolymorphicMapType_76065_82629_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) null (PredicateMaskField_36525 pm_f_6@@1))) o2_6@@45 f_19@@45) (= (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@1) o2_6@@45 f_19@@45) (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@45 f_19@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@45 f_19@@45))
))) (forall ((o2_6@@46 T@Ref) (f_19@@46 T@Field_90814_90819) ) (!  (=> (select (|PolymorphicMapType_76065_82629_279728#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) null (PredicateMaskField_36525 pm_f_6@@1))) o2_6@@46 f_19@@46) (= (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@1) o2_6@@46 f_19@@46) (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@46 f_19@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@46 f_19@@46))
))) (forall ((o2_6@@47 T@Ref) (f_19@@47 T@Field_36821_3237) ) (!  (=> (select (|PolymorphicMapType_76065_131882_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) null (PredicateMaskField_36525 pm_f_6@@1))) o2_6@@47 f_19@@47) (= (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@1) o2_6@@47 f_19@@47) (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@47 f_19@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@47 f_19@@47))
))) (forall ((o2_6@@48 T@Ref) (f_19@@48 T@Field_36821_36526) ) (!  (=> (select (|PolymorphicMapType_76065_131882_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) null (PredicateMaskField_36525 pm_f_6@@1))) o2_6@@48 f_19@@48) (= (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@1) o2_6@@48 f_19@@48) (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@48 f_19@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@48 f_19@@48))
))) (forall ((o2_6@@49 T@Ref) (f_19@@49 T@Field_36821_103015) ) (!  (=> (select (|PolymorphicMapType_76065_131882_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) null (PredicateMaskField_36525 pm_f_6@@1))) o2_6@@49 f_19@@49) (= (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@1) o2_6@@49 f_19@@49) (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@49 f_19@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@49 f_19@@49))
))) (forall ((o2_6@@50 T@Ref) (f_19@@50 T@Field_36821_53) ) (!  (=> (select (|PolymorphicMapType_76065_131882_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) null (PredicateMaskField_36525 pm_f_6@@1))) o2_6@@50 f_19@@50) (= (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@1) o2_6@@50 f_19@@50) (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@50 f_19@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@50 f_19@@50))
))) (forall ((o2_6@@51 T@Ref) (f_19@@51 T@Field_131882_131883) ) (!  (=> (select (|PolymorphicMapType_76065_131882_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) null (PredicateMaskField_36525 pm_f_6@@1))) o2_6@@51 f_19@@51) (= (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@1) o2_6@@51 f_19@@51) (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@51 f_19@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@51 f_19@@51))
))) (forall ((o2_6@@52 T@Ref) (f_19@@52 T@Field_134696_134701) ) (!  (=> (select (|PolymorphicMapType_76065_131882_280980#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@1) null (PredicateMaskField_36525 pm_f_6@@1))) o2_6@@52 f_19@@52) (= (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@1) o2_6@@52 f_19@@52) (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@52 f_19@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap@@1) o2_6@@52 f_19@@52))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (IsPredicateField_36525_276505 pm_f_6@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_75516) (ExhaleHeap@@2 T@PolymorphicMapType_75516) (Mask@@2 T@PolymorphicMapType_75537) (pm_f_6@@2 T@Field_131882_131883) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (=> (and (HasDirectPerm_36821_36822 Mask@@2 null pm_f_6@@2) (IsWandField_36821_282783 pm_f_6@@2)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@53 T@Ref) (f_19@@53 T@Field_81594_2989) ) (!  (=> (select (|PolymorphicMapType_76065_36523_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) null (WandMaskField_36821 pm_f_6@@2))) o2_6@@53 f_19@@53) (= (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@2) o2_6@@53 f_19@@53) (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@53 f_19@@53)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@53 f_19@@53))
)) (forall ((o2_6@@54 T@Ref) (f_19@@54 T@Field_75589_75590) ) (!  (=> (select (|PolymorphicMapType_76065_36525_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) null (WandMaskField_36821 pm_f_6@@2))) o2_6@@54 f_19@@54) (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@2) o2_6@@54 f_19@@54) (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@54 f_19@@54)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@54 f_19@@54))
))) (forall ((o2_6@@55 T@Ref) (f_19@@55 T@Field_81690_81692) ) (!  (=> (select (|PolymorphicMapType_76065_36528_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) null (WandMaskField_36821 pm_f_6@@2))) o2_6@@55 f_19@@55) (= (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@2) o2_6@@55 f_19@@55) (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@55 f_19@@55)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@55 f_19@@55))
))) (forall ((o2_6@@56 T@Ref) (f_19@@56 T@Field_75576_53) ) (!  (=> (select (|PolymorphicMapType_76065_36523_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) null (WandMaskField_36821 pm_f_6@@2))) o2_6@@56 f_19@@56) (= (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@2) o2_6@@56 f_19@@56) (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@56 f_19@@56)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@56 f_19@@56))
))) (forall ((o2_6@@57 T@Ref) (f_19@@57 T@Field_36525_36794) ) (!  (=> (select (|PolymorphicMapType_76065_36523_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) null (WandMaskField_36821 pm_f_6@@2))) o2_6@@57 f_19@@57) (= (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@2) o2_6@@57 f_19@@57) (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@57 f_19@@57)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@57 f_19@@57))
))) (forall ((o2_6@@58 T@Ref) (f_19@@58 T@Field_36525_90819) ) (!  (=> (select (|PolymorphicMapType_76065_36523_278476#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) null (WandMaskField_36821 pm_f_6@@2))) o2_6@@58 f_19@@58) (= (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@2) o2_6@@58 f_19@@58) (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@58 f_19@@58)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@58 f_19@@58))
))) (forall ((o2_6@@59 T@Ref) (f_19@@59 T@Field_36793_3237) ) (!  (=> (select (|PolymorphicMapType_76065_82629_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) null (WandMaskField_36821 pm_f_6@@2))) o2_6@@59 f_19@@59) (= (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@2) o2_6@@59 f_19@@59) (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@59 f_19@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@59 f_19@@59))
))) (forall ((o2_6@@60 T@Ref) (f_19@@60 T@Field_36793_36526) ) (!  (=> (select (|PolymorphicMapType_76065_82629_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) null (WandMaskField_36821 pm_f_6@@2))) o2_6@@60 f_19@@60) (= (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@2) o2_6@@60 f_19@@60) (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@60 f_19@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@60 f_19@@60))
))) (forall ((o2_6@@61 T@Ref) (f_19@@61 T@Field_36793_103015) ) (!  (=> (select (|PolymorphicMapType_76065_82629_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) null (WandMaskField_36821 pm_f_6@@2))) o2_6@@61 f_19@@61) (= (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@2) o2_6@@61 f_19@@61) (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@61 f_19@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@61 f_19@@61))
))) (forall ((o2_6@@62 T@Ref) (f_19@@62 T@Field_36793_53) ) (!  (=> (select (|PolymorphicMapType_76065_82629_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) null (WandMaskField_36821 pm_f_6@@2))) o2_6@@62 f_19@@62) (= (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@2) o2_6@@62 f_19@@62) (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@62 f_19@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@62 f_19@@62))
))) (forall ((o2_6@@63 T@Ref) (f_19@@63 T@Field_82629_82630) ) (!  (=> (select (|PolymorphicMapType_76065_82629_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) null (WandMaskField_36821 pm_f_6@@2))) o2_6@@63 f_19@@63) (= (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@2) o2_6@@63 f_19@@63) (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@63 f_19@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@63 f_19@@63))
))) (forall ((o2_6@@64 T@Ref) (f_19@@64 T@Field_90814_90819) ) (!  (=> (select (|PolymorphicMapType_76065_82629_279728#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) null (WandMaskField_36821 pm_f_6@@2))) o2_6@@64 f_19@@64) (= (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@2) o2_6@@64 f_19@@64) (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@64 f_19@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@64 f_19@@64))
))) (forall ((o2_6@@65 T@Ref) (f_19@@65 T@Field_36821_3237) ) (!  (=> (select (|PolymorphicMapType_76065_131882_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) null (WandMaskField_36821 pm_f_6@@2))) o2_6@@65 f_19@@65) (= (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@2) o2_6@@65 f_19@@65) (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@65 f_19@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@65 f_19@@65))
))) (forall ((o2_6@@66 T@Ref) (f_19@@66 T@Field_36821_36526) ) (!  (=> (select (|PolymorphicMapType_76065_131882_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) null (WandMaskField_36821 pm_f_6@@2))) o2_6@@66 f_19@@66) (= (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@2) o2_6@@66 f_19@@66) (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@66 f_19@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@66 f_19@@66))
))) (forall ((o2_6@@67 T@Ref) (f_19@@67 T@Field_36821_103015) ) (!  (=> (select (|PolymorphicMapType_76065_131882_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) null (WandMaskField_36821 pm_f_6@@2))) o2_6@@67 f_19@@67) (= (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@2) o2_6@@67 f_19@@67) (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@67 f_19@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@67 f_19@@67))
))) (forall ((o2_6@@68 T@Ref) (f_19@@68 T@Field_36821_53) ) (!  (=> (select (|PolymorphicMapType_76065_131882_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) null (WandMaskField_36821 pm_f_6@@2))) o2_6@@68 f_19@@68) (= (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@2) o2_6@@68 f_19@@68) (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@68 f_19@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@68 f_19@@68))
))) (forall ((o2_6@@69 T@Ref) (f_19@@69 T@Field_131882_131883) ) (!  (=> (select (|PolymorphicMapType_76065_131882_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) null (WandMaskField_36821 pm_f_6@@2))) o2_6@@69 f_19@@69) (= (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@2) o2_6@@69 f_19@@69) (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@69 f_19@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@69 f_19@@69))
))) (forall ((o2_6@@70 T@Ref) (f_19@@70 T@Field_134696_134701) ) (!  (=> (select (|PolymorphicMapType_76065_131882_280980#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) null (WandMaskField_36821 pm_f_6@@2))) o2_6@@70 f_19@@70) (= (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@2) o2_6@@70 f_19@@70) (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@70 f_19@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap@@2) o2_6@@70 f_19@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (IsWandField_36821_282783 pm_f_6@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_75516) (ExhaleHeap@@3 T@PolymorphicMapType_75516) (Mask@@3 T@PolymorphicMapType_75537) (pm_f_6@@3 T@Field_82629_82630) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (=> (and (HasDirectPerm_36793_36794 Mask@@3 null pm_f_6@@3) (IsWandField_36793_282426 pm_f_6@@3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@71 T@Ref) (f_19@@71 T@Field_81594_2989) ) (!  (=> (select (|PolymorphicMapType_76065_36523_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) null (WandMaskField_36793 pm_f_6@@3))) o2_6@@71 f_19@@71) (= (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@3) o2_6@@71 f_19@@71) (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@71 f_19@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@71 f_19@@71))
)) (forall ((o2_6@@72 T@Ref) (f_19@@72 T@Field_75589_75590) ) (!  (=> (select (|PolymorphicMapType_76065_36525_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) null (WandMaskField_36793 pm_f_6@@3))) o2_6@@72 f_19@@72) (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@3) o2_6@@72 f_19@@72) (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@72 f_19@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@72 f_19@@72))
))) (forall ((o2_6@@73 T@Ref) (f_19@@73 T@Field_81690_81692) ) (!  (=> (select (|PolymorphicMapType_76065_36528_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) null (WandMaskField_36793 pm_f_6@@3))) o2_6@@73 f_19@@73) (= (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@3) o2_6@@73 f_19@@73) (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@73 f_19@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@73 f_19@@73))
))) (forall ((o2_6@@74 T@Ref) (f_19@@74 T@Field_75576_53) ) (!  (=> (select (|PolymorphicMapType_76065_36523_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) null (WandMaskField_36793 pm_f_6@@3))) o2_6@@74 f_19@@74) (= (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@3) o2_6@@74 f_19@@74) (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@74 f_19@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@74 f_19@@74))
))) (forall ((o2_6@@75 T@Ref) (f_19@@75 T@Field_36525_36794) ) (!  (=> (select (|PolymorphicMapType_76065_36523_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) null (WandMaskField_36793 pm_f_6@@3))) o2_6@@75 f_19@@75) (= (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@3) o2_6@@75 f_19@@75) (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@75 f_19@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@75 f_19@@75))
))) (forall ((o2_6@@76 T@Ref) (f_19@@76 T@Field_36525_90819) ) (!  (=> (select (|PolymorphicMapType_76065_36523_278476#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) null (WandMaskField_36793 pm_f_6@@3))) o2_6@@76 f_19@@76) (= (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@3) o2_6@@76 f_19@@76) (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@76 f_19@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@76 f_19@@76))
))) (forall ((o2_6@@77 T@Ref) (f_19@@77 T@Field_36793_3237) ) (!  (=> (select (|PolymorphicMapType_76065_82629_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) null (WandMaskField_36793 pm_f_6@@3))) o2_6@@77 f_19@@77) (= (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@3) o2_6@@77 f_19@@77) (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@77 f_19@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@77 f_19@@77))
))) (forall ((o2_6@@78 T@Ref) (f_19@@78 T@Field_36793_36526) ) (!  (=> (select (|PolymorphicMapType_76065_82629_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) null (WandMaskField_36793 pm_f_6@@3))) o2_6@@78 f_19@@78) (= (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@3) o2_6@@78 f_19@@78) (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@78 f_19@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@78 f_19@@78))
))) (forall ((o2_6@@79 T@Ref) (f_19@@79 T@Field_36793_103015) ) (!  (=> (select (|PolymorphicMapType_76065_82629_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) null (WandMaskField_36793 pm_f_6@@3))) o2_6@@79 f_19@@79) (= (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@3) o2_6@@79 f_19@@79) (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@79 f_19@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@79 f_19@@79))
))) (forall ((o2_6@@80 T@Ref) (f_19@@80 T@Field_36793_53) ) (!  (=> (select (|PolymorphicMapType_76065_82629_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) null (WandMaskField_36793 pm_f_6@@3))) o2_6@@80 f_19@@80) (= (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@3) o2_6@@80 f_19@@80) (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@80 f_19@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@80 f_19@@80))
))) (forall ((o2_6@@81 T@Ref) (f_19@@81 T@Field_82629_82630) ) (!  (=> (select (|PolymorphicMapType_76065_82629_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) null (WandMaskField_36793 pm_f_6@@3))) o2_6@@81 f_19@@81) (= (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@3) o2_6@@81 f_19@@81) (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@81 f_19@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@81 f_19@@81))
))) (forall ((o2_6@@82 T@Ref) (f_19@@82 T@Field_90814_90819) ) (!  (=> (select (|PolymorphicMapType_76065_82629_279728#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) null (WandMaskField_36793 pm_f_6@@3))) o2_6@@82 f_19@@82) (= (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) o2_6@@82 f_19@@82) (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@82 f_19@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@82 f_19@@82))
))) (forall ((o2_6@@83 T@Ref) (f_19@@83 T@Field_36821_3237) ) (!  (=> (select (|PolymorphicMapType_76065_131882_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) null (WandMaskField_36793 pm_f_6@@3))) o2_6@@83 f_19@@83) (= (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@3) o2_6@@83 f_19@@83) (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@83 f_19@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@83 f_19@@83))
))) (forall ((o2_6@@84 T@Ref) (f_19@@84 T@Field_36821_36526) ) (!  (=> (select (|PolymorphicMapType_76065_131882_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) null (WandMaskField_36793 pm_f_6@@3))) o2_6@@84 f_19@@84) (= (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@3) o2_6@@84 f_19@@84) (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@84 f_19@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@84 f_19@@84))
))) (forall ((o2_6@@85 T@Ref) (f_19@@85 T@Field_36821_103015) ) (!  (=> (select (|PolymorphicMapType_76065_131882_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) null (WandMaskField_36793 pm_f_6@@3))) o2_6@@85 f_19@@85) (= (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@3) o2_6@@85 f_19@@85) (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@85 f_19@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@85 f_19@@85))
))) (forall ((o2_6@@86 T@Ref) (f_19@@86 T@Field_36821_53) ) (!  (=> (select (|PolymorphicMapType_76065_131882_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) null (WandMaskField_36793 pm_f_6@@3))) o2_6@@86 f_19@@86) (= (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@3) o2_6@@86 f_19@@86) (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@86 f_19@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@86 f_19@@86))
))) (forall ((o2_6@@87 T@Ref) (f_19@@87 T@Field_131882_131883) ) (!  (=> (select (|PolymorphicMapType_76065_131882_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) null (WandMaskField_36793 pm_f_6@@3))) o2_6@@87 f_19@@87) (= (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@3) o2_6@@87 f_19@@87) (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@87 f_19@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@87 f_19@@87))
))) (forall ((o2_6@@88 T@Ref) (f_19@@88 T@Field_134696_134701) ) (!  (=> (select (|PolymorphicMapType_76065_131882_280980#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@3) null (WandMaskField_36793 pm_f_6@@3))) o2_6@@88 f_19@@88) (= (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@3) o2_6@@88 f_19@@88) (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@88 f_19@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap@@3) o2_6@@88 f_19@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (IsWandField_36793_282426 pm_f_6@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_75516) (ExhaleHeap@@4 T@PolymorphicMapType_75516) (Mask@@4 T@PolymorphicMapType_75537) (pm_f_6@@4 T@Field_36525_36794) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (=> (and (HasDirectPerm_36525_36794 Mask@@4 null pm_f_6@@4) (IsWandField_36525_282069 pm_f_6@@4)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@89 T@Ref) (f_19@@89 T@Field_81594_2989) ) (!  (=> (select (|PolymorphicMapType_76065_36523_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) null (WandMaskField_36525 pm_f_6@@4))) o2_6@@89 f_19@@89) (= (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@4) o2_6@@89 f_19@@89) (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@89 f_19@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@89 f_19@@89))
)) (forall ((o2_6@@90 T@Ref) (f_19@@90 T@Field_75589_75590) ) (!  (=> (select (|PolymorphicMapType_76065_36525_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) null (WandMaskField_36525 pm_f_6@@4))) o2_6@@90 f_19@@90) (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@4) o2_6@@90 f_19@@90) (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@90 f_19@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@90 f_19@@90))
))) (forall ((o2_6@@91 T@Ref) (f_19@@91 T@Field_81690_81692) ) (!  (=> (select (|PolymorphicMapType_76065_36528_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) null (WandMaskField_36525 pm_f_6@@4))) o2_6@@91 f_19@@91) (= (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@4) o2_6@@91 f_19@@91) (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@91 f_19@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@91 f_19@@91))
))) (forall ((o2_6@@92 T@Ref) (f_19@@92 T@Field_75576_53) ) (!  (=> (select (|PolymorphicMapType_76065_36523_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) null (WandMaskField_36525 pm_f_6@@4))) o2_6@@92 f_19@@92) (= (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@4) o2_6@@92 f_19@@92) (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@92 f_19@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@92 f_19@@92))
))) (forall ((o2_6@@93 T@Ref) (f_19@@93 T@Field_36525_36794) ) (!  (=> (select (|PolymorphicMapType_76065_36523_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) null (WandMaskField_36525 pm_f_6@@4))) o2_6@@93 f_19@@93) (= (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@4) o2_6@@93 f_19@@93) (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@93 f_19@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@93 f_19@@93))
))) (forall ((o2_6@@94 T@Ref) (f_19@@94 T@Field_36525_90819) ) (!  (=> (select (|PolymorphicMapType_76065_36523_278476#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) null (WandMaskField_36525 pm_f_6@@4))) o2_6@@94 f_19@@94) (= (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) o2_6@@94 f_19@@94) (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@94 f_19@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@94 f_19@@94))
))) (forall ((o2_6@@95 T@Ref) (f_19@@95 T@Field_36793_3237) ) (!  (=> (select (|PolymorphicMapType_76065_82629_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) null (WandMaskField_36525 pm_f_6@@4))) o2_6@@95 f_19@@95) (= (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@4) o2_6@@95 f_19@@95) (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@95 f_19@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@95 f_19@@95))
))) (forall ((o2_6@@96 T@Ref) (f_19@@96 T@Field_36793_36526) ) (!  (=> (select (|PolymorphicMapType_76065_82629_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) null (WandMaskField_36525 pm_f_6@@4))) o2_6@@96 f_19@@96) (= (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@4) o2_6@@96 f_19@@96) (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@96 f_19@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@96 f_19@@96))
))) (forall ((o2_6@@97 T@Ref) (f_19@@97 T@Field_36793_103015) ) (!  (=> (select (|PolymorphicMapType_76065_82629_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) null (WandMaskField_36525 pm_f_6@@4))) o2_6@@97 f_19@@97) (= (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@4) o2_6@@97 f_19@@97) (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@97 f_19@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@97 f_19@@97))
))) (forall ((o2_6@@98 T@Ref) (f_19@@98 T@Field_36793_53) ) (!  (=> (select (|PolymorphicMapType_76065_82629_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) null (WandMaskField_36525 pm_f_6@@4))) o2_6@@98 f_19@@98) (= (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@4) o2_6@@98 f_19@@98) (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@98 f_19@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@98 f_19@@98))
))) (forall ((o2_6@@99 T@Ref) (f_19@@99 T@Field_82629_82630) ) (!  (=> (select (|PolymorphicMapType_76065_82629_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) null (WandMaskField_36525 pm_f_6@@4))) o2_6@@99 f_19@@99) (= (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@4) o2_6@@99 f_19@@99) (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@99 f_19@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@99 f_19@@99))
))) (forall ((o2_6@@100 T@Ref) (f_19@@100 T@Field_90814_90819) ) (!  (=> (select (|PolymorphicMapType_76065_82629_279728#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) null (WandMaskField_36525 pm_f_6@@4))) o2_6@@100 f_19@@100) (= (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@4) o2_6@@100 f_19@@100) (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@100 f_19@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@100 f_19@@100))
))) (forall ((o2_6@@101 T@Ref) (f_19@@101 T@Field_36821_3237) ) (!  (=> (select (|PolymorphicMapType_76065_131882_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) null (WandMaskField_36525 pm_f_6@@4))) o2_6@@101 f_19@@101) (= (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@4) o2_6@@101 f_19@@101) (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@101 f_19@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@101 f_19@@101))
))) (forall ((o2_6@@102 T@Ref) (f_19@@102 T@Field_36821_36526) ) (!  (=> (select (|PolymorphicMapType_76065_131882_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) null (WandMaskField_36525 pm_f_6@@4))) o2_6@@102 f_19@@102) (= (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@4) o2_6@@102 f_19@@102) (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@102 f_19@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@102 f_19@@102))
))) (forall ((o2_6@@103 T@Ref) (f_19@@103 T@Field_36821_103015) ) (!  (=> (select (|PolymorphicMapType_76065_131882_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) null (WandMaskField_36525 pm_f_6@@4))) o2_6@@103 f_19@@103) (= (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@4) o2_6@@103 f_19@@103) (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@103 f_19@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@103 f_19@@103))
))) (forall ((o2_6@@104 T@Ref) (f_19@@104 T@Field_36821_53) ) (!  (=> (select (|PolymorphicMapType_76065_131882_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) null (WandMaskField_36525 pm_f_6@@4))) o2_6@@104 f_19@@104) (= (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@4) o2_6@@104 f_19@@104) (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@104 f_19@@104)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@104 f_19@@104))
))) (forall ((o2_6@@105 T@Ref) (f_19@@105 T@Field_131882_131883) ) (!  (=> (select (|PolymorphicMapType_76065_131882_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) null (WandMaskField_36525 pm_f_6@@4))) o2_6@@105 f_19@@105) (= (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@4) o2_6@@105 f_19@@105) (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@105 f_19@@105)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@105 f_19@@105))
))) (forall ((o2_6@@106 T@Ref) (f_19@@106 T@Field_134696_134701) ) (!  (=> (select (|PolymorphicMapType_76065_131882_280980#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@4) null (WandMaskField_36525 pm_f_6@@4))) o2_6@@106 f_19@@106) (= (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@4) o2_6@@106 f_19@@106) (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@106 f_19@@106)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap@@4) o2_6@@106 f_19@@106))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (IsWandField_36525_282069 pm_f_6@@4))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_75516) (Heap1 T@PolymorphicMapType_75516) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_75516) (Mask@@5 T@PolymorphicMapType_75537) ) (!  (=> (state Heap@@5 Mask@@5) (GoodMask Mask@@5))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@5 Mask@@5))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_75516) (Heap1@@0 T@PolymorphicMapType_75516) (Heap2 T@PolymorphicMapType_75516) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_134696_134701) ) (!  (not (select (|PolymorphicMapType_76065_131882_280980#PolymorphicMapType_76065| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_76065_131882_280980#PolymorphicMapType_76065| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_131882_131883) ) (!  (not (select (|PolymorphicMapType_76065_131882_82630#PolymorphicMapType_76065| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_76065_131882_82630#PolymorphicMapType_76065| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_36821_53) ) (!  (not (select (|PolymorphicMapType_76065_131882_53#PolymorphicMapType_76065| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_76065_131882_53#PolymorphicMapType_76065| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_36821_103015) ) (!  (not (select (|PolymorphicMapType_76065_131882_91384#PolymorphicMapType_76065| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_76065_131882_91384#PolymorphicMapType_76065| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_36821_36526) ) (!  (not (select (|PolymorphicMapType_76065_131882_36526#PolymorphicMapType_76065| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_76065_131882_36526#PolymorphicMapType_76065| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_36821_3237) ) (!  (not (select (|PolymorphicMapType_76065_131882_2989#PolymorphicMapType_76065| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_76065_131882_2989#PolymorphicMapType_76065| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_90814_90819) ) (!  (not (select (|PolymorphicMapType_76065_82629_279728#PolymorphicMapType_76065| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_76065_82629_279728#PolymorphicMapType_76065| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_82629_82630) ) (!  (not (select (|PolymorphicMapType_76065_82629_82630#PolymorphicMapType_76065| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_76065_82629_82630#PolymorphicMapType_76065| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_36793_53) ) (!  (not (select (|PolymorphicMapType_76065_82629_53#PolymorphicMapType_76065| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_76065_82629_53#PolymorphicMapType_76065| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_36793_103015) ) (!  (not (select (|PolymorphicMapType_76065_82629_91384#PolymorphicMapType_76065| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_76065_82629_91384#PolymorphicMapType_76065| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_36793_36526) ) (!  (not (select (|PolymorphicMapType_76065_82629_36526#PolymorphicMapType_76065| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_76065_82629_36526#PolymorphicMapType_76065| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_36793_3237) ) (!  (not (select (|PolymorphicMapType_76065_82629_2989#PolymorphicMapType_76065| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_76065_82629_2989#PolymorphicMapType_76065| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_36525_90819) ) (!  (not (select (|PolymorphicMapType_76065_36523_278476#PolymorphicMapType_76065| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_76065_36523_278476#PolymorphicMapType_76065| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_36525_36794) ) (!  (not (select (|PolymorphicMapType_76065_36523_82630#PolymorphicMapType_76065| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_76065_36523_82630#PolymorphicMapType_76065| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_75576_53) ) (!  (not (select (|PolymorphicMapType_76065_36523_53#PolymorphicMapType_76065| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_76065_36523_53#PolymorphicMapType_76065| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_81690_81692) ) (!  (not (select (|PolymorphicMapType_76065_36528_91384#PolymorphicMapType_76065| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_76065_36528_91384#PolymorphicMapType_76065| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_75589_75590) ) (!  (not (select (|PolymorphicMapType_76065_36525_36526#PolymorphicMapType_76065| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_76065_36525_36526#PolymorphicMapType_76065| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_81594_2989) ) (!  (not (select (|PolymorphicMapType_76065_36523_2989#PolymorphicMapType_76065| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_76065_36523_2989#PolymorphicMapType_76065| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.302:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_18023|) 0))
(assert (forall ((diz T@Ref) ) (! (IsPredicateField_36793_36794 (Wand_list_for_list__valid_wand diz))
 :qid |stdinbpl.1827:15|
 :skolemid |91|
 :pattern ( (Wand_list_for_list__valid_wand diz))
)))
(assert (forall ((diz@@0 T@Ref) ) (! (IsPredicateField_36821_36822 (List__state diz@@0))
 :qid |stdinbpl.2216:15|
 :skolemid |97|
 :pattern ( (List__state diz@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_75516) (diz@@1 T@Ref) ) (! (dummyFunction_36600 (|Wand_list_for_list__get_in_1#triggerStateless| diz@@1))
 :qid |stdinbpl.618:15|
 :skolemid |59|
 :pattern ( (|Wand_list_for_list__get_in_1'| Heap@@6 diz@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_75516) (diz@@2 T@Ref) ) (! (dummyFunction_95045 (|Wand_list_for_list__get_in_1_0#triggerStateless| diz@@2))
 :qid |stdinbpl.864:15|
 :skolemid |65|
 :pattern ( (|Wand_list_for_list__get_in_1_0'| Heap@@7 diz@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_75516) (diz@@3 T@Ref) ) (! (dummyFunction_36600 (|Wand_list_for_list__get_out_1#triggerStateless| diz@@3))
 :qid |stdinbpl.1098:15|
 :skolemid |70|
 :pattern ( (|Wand_list_for_list__get_out_1'| Heap@@8 diz@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_75516) (diz@@4 T@Ref) ) (! (dummyFunction_95045 (|Wand_list_for_list__get_out_1_0#triggerStateless| diz@@4))
 :qid |stdinbpl.1344:15|
 :skolemid |76|
 :pattern ( (|Wand_list_for_list__get_out_1_0'| Heap@@9 diz@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_75516) (diz@@5 T@Ref) ) (! (dummyFunction_95045 (|List__contents#triggerStateless| diz@@5))
 :qid |stdinbpl.1578:15|
 :skolemid |81|
 :pattern ( (|List__contents'| Heap@@10 diz@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_75516) (diz@@6 T@Ref) ) (! (dummyFunction_36600 (|List__get_next#triggerStateless| diz@@6))
 :qid |stdinbpl.1717:15|
 :skolemid |86|
 :pattern ( (|List__get_next'| Heap@@11 diz@@6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_75516) (diz@@7 T@Ref) ) (! (|Wand_list_for_list__valid_wand#everUsed_36793| (Wand_list_for_list__valid_wand diz@@7))
 :qid |stdinbpl.1846:15|
 :skolemid |95|
 :pattern ( (|Wand_list_for_list__valid_wand#trigger_36793| Heap@@12 (Wand_list_for_list__valid_wand diz@@7)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_75516) (diz@@8 T@Ref) ) (! (|List__state#everUsed_36821| (List__state diz@@8))
 :qid |stdinbpl.2235:15|
 :skolemid |101|
 :pattern ( (|List__state#trigger_36821| Heap@@13 (List__state diz@@8)))
)))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.257:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) 0)))
 :qid |stdinbpl.268:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2867| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.542:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2867) (x Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x)) (< (|Seq#Skolem_2867| s@@3 x) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x)) x)))
 :qid |stdinbpl.400:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_75516) (diz@@9 T@Ref) ) (!  (and (= (Wand_list_for_list__get_in_1 Heap@@14 diz@@9) (|Wand_list_for_list__get_in_1'| Heap@@14 diz@@9)) (dummyFunction_36600 (|Wand_list_for_list__get_in_1#triggerStateless| diz@@9)))
 :qid |stdinbpl.614:15|
 :skolemid |58|
 :pattern ( (Wand_list_for_list__get_in_1 Heap@@14 diz@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_75516) (diz@@10 T@Ref) ) (!  (and (= (Wand_list_for_list__get_in_1_0 Heap@@15 diz@@10) (|Wand_list_for_list__get_in_1_0'| Heap@@15 diz@@10)) (dummyFunction_95045 (|Wand_list_for_list__get_in_1_0#triggerStateless| diz@@10)))
 :qid |stdinbpl.860:15|
 :skolemid |64|
 :pattern ( (Wand_list_for_list__get_in_1_0 Heap@@15 diz@@10))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_75516) (diz@@11 T@Ref) ) (!  (and (= (Wand_list_for_list__get_out_1 Heap@@16 diz@@11) (|Wand_list_for_list__get_out_1'| Heap@@16 diz@@11)) (dummyFunction_36600 (|Wand_list_for_list__get_out_1#triggerStateless| diz@@11)))
 :qid |stdinbpl.1094:15|
 :skolemid |69|
 :pattern ( (Wand_list_for_list__get_out_1 Heap@@16 diz@@11))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_75516) (diz@@12 T@Ref) ) (!  (and (= (Wand_list_for_list__get_out_1_0 Heap@@17 diz@@12) (|Wand_list_for_list__get_out_1_0'| Heap@@17 diz@@12)) (dummyFunction_95045 (|Wand_list_for_list__get_out_1_0#triggerStateless| diz@@12)))
 :qid |stdinbpl.1340:15|
 :skolemid |75|
 :pattern ( (Wand_list_for_list__get_out_1_0 Heap@@17 diz@@12))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_75516) (diz@@13 T@Ref) ) (!  (and (= (List__contents Heap@@18 diz@@13) (|List__contents'| Heap@@18 diz@@13)) (dummyFunction_95045 (|List__contents#triggerStateless| diz@@13)))
 :qid |stdinbpl.1574:15|
 :skolemid |80|
 :pattern ( (List__contents Heap@@18 diz@@13))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_75516) (diz@@14 T@Ref) ) (!  (and (= (List__get_next Heap@@19 diz@@14) (|List__get_next'| Heap@@19 diz@@14)) (dummyFunction_36600 (|List__get_next#triggerStateless| diz@@14)))
 :qid |stdinbpl.1713:15|
 :skolemid |85|
 :pattern ( (List__get_next Heap@@19 diz@@14))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_2867| s@@4 n@@3) s@@4))
 :qid |stdinbpl.384:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2867| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.237:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.235:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_75516) (ExhaleHeap@@5 T@PolymorphicMapType_75516) (Mask@@6 T@PolymorphicMapType_75537) (pm_f_6@@5 T@Field_131882_131883) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_36821_36822 Mask@@6 null pm_f_6@@5) (IsPredicateField_36821_36822 pm_f_6@@5)) (= (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@20) null (PredicateMaskField_36821 pm_f_6@@5)) (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap@@5) null (PredicateMaskField_36821 pm_f_6@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@5 Mask@@6) (IsPredicateField_36821_36822 pm_f_6@@5) (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap@@5) null (PredicateMaskField_36821 pm_f_6@@5)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_75516) (ExhaleHeap@@6 T@PolymorphicMapType_75516) (Mask@@7 T@PolymorphicMapType_75537) (pm_f_6@@6 T@Field_82629_82630) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_36793_36794 Mask@@7 null pm_f_6@@6) (IsPredicateField_36793_36794 pm_f_6@@6)) (= (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@21) null (PredicateMaskField_36793 pm_f_6@@6)) (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap@@6) null (PredicateMaskField_36793 pm_f_6@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@6 Mask@@7) (IsPredicateField_36793_36794 pm_f_6@@6) (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap@@6) null (PredicateMaskField_36793 pm_f_6@@6)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_75516) (ExhaleHeap@@7 T@PolymorphicMapType_75516) (Mask@@8 T@PolymorphicMapType_75537) (pm_f_6@@7 T@Field_36525_36794) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_36525_36794 Mask@@8 null pm_f_6@@7) (IsPredicateField_36525_276505 pm_f_6@@7)) (= (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@22) null (PredicateMaskField_36525 pm_f_6@@7)) (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap@@7) null (PredicateMaskField_36525 pm_f_6@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@7 Mask@@8) (IsPredicateField_36525_276505 pm_f_6@@7) (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap@@7) null (PredicateMaskField_36525 pm_f_6@@7)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_75516) (ExhaleHeap@@8 T@PolymorphicMapType_75516) (Mask@@9 T@PolymorphicMapType_75537) (pm_f_6@@8 T@Field_131882_131883) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_36821_36822 Mask@@9 null pm_f_6@@8) (IsWandField_36821_282783 pm_f_6@@8)) (= (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@23) null (WandMaskField_36821 pm_f_6@@8)) (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap@@8) null (WandMaskField_36821 pm_f_6@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@8 Mask@@9) (IsWandField_36821_282783 pm_f_6@@8) (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap@@8) null (WandMaskField_36821 pm_f_6@@8)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_75516) (ExhaleHeap@@9 T@PolymorphicMapType_75516) (Mask@@10 T@PolymorphicMapType_75537) (pm_f_6@@9 T@Field_82629_82630) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_36793_36794 Mask@@10 null pm_f_6@@9) (IsWandField_36793_282426 pm_f_6@@9)) (= (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@24) null (WandMaskField_36793 pm_f_6@@9)) (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap@@9) null (WandMaskField_36793 pm_f_6@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@9 Mask@@10) (IsWandField_36793_282426 pm_f_6@@9) (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap@@9) null (WandMaskField_36793 pm_f_6@@9)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_75516) (ExhaleHeap@@10 T@PolymorphicMapType_75516) (Mask@@11 T@PolymorphicMapType_75537) (pm_f_6@@10 T@Field_36525_36794) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_36525_36794 Mask@@11 null pm_f_6@@10) (IsWandField_36525_282069 pm_f_6@@10)) (= (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@25) null (WandMaskField_36525 pm_f_6@@10)) (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap@@10) null (WandMaskField_36525 pm_f_6@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@10 Mask@@11) (IsWandField_36525_282069 pm_f_6@@10) (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap@@10) null (WandMaskField_36525 pm_f_6@@10)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3237| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.525:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3237| x@@0) y))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.276:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_2867| s@@5 n@@4))
)))
(assert (forall ((diz@@15 T@Ref) (diz2 T@Ref) ) (!  (=> (= (Wand_list_for_list__valid_wand diz@@15) (Wand_list_for_list__valid_wand diz2)) (= diz@@15 diz2))
 :qid |stdinbpl.1837:15|
 :skolemid |93|
 :pattern ( (Wand_list_for_list__valid_wand diz@@15) (Wand_list_for_list__valid_wand diz2))
)))
(assert (forall ((diz@@16 T@Ref) (diz2@@0 T@Ref) ) (!  (=> (= (|Wand_list_for_list__valid_wand#sm| diz@@16) (|Wand_list_for_list__valid_wand#sm| diz2@@0)) (= diz@@16 diz2@@0))
 :qid |stdinbpl.1841:15|
 :skolemid |94|
 :pattern ( (|Wand_list_for_list__valid_wand#sm| diz@@16) (|Wand_list_for_list__valid_wand#sm| diz2@@0))
)))
(assert (forall ((diz@@17 T@Ref) (diz2@@1 T@Ref) ) (!  (=> (= (List__state diz@@17) (List__state diz2@@1)) (= diz@@17 diz2@@1))
 :qid |stdinbpl.2226:15|
 :skolemid |99|
 :pattern ( (List__state diz@@17) (List__state diz2@@1))
)))
(assert (forall ((diz@@18 T@Ref) (diz2@@2 T@Ref) ) (!  (=> (= (|List__state#sm| diz@@18) (|List__state#sm| diz2@@2)) (= diz@@18 diz2@@2))
 :qid |stdinbpl.2230:15|
 :skolemid |100|
 :pattern ( (|List__state#sm| diz@@18) (|List__state#sm| diz2@@2))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_3237| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_2867| (|Seq#Append_3237| s@@6 t) n@@5) (|Seq#Append_3237| s@@6 (|Seq#Take_2867| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.361:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3237| s@@6 t) n@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@26 T@PolymorphicMapType_75516) (ExhaleHeap@@11 T@PolymorphicMapType_75516) (Mask@@12 T@PolymorphicMapType_75537) (o_14 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@26) o_14 $allocated) (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@@11) o_14 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@@11) o_14 $allocated))
)))
(assert (forall ((p T@Field_36525_36794) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_75576_75576 p v_1 p w))
 :qid |stdinbpl.179:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_75576_75576 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_131882_131883) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_36821_36821 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.179:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_36821_36821 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_82629_82630) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_36793_36793 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.179:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_36793_36793 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_75516) (Mask@@13 T@PolymorphicMapType_75537) (diz@@19 T@Ref) ) (!  (=> (and (state Heap@@27 Mask@@13) (or (< AssumeFunctionsAbove 2) (|Wand_list_for_list__get_in_1#trigger| (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@27) null (Wand_list_for_list__valid_wand diz@@19)) diz@@19))) (=> (not (= diz@@19 null)) (not (= (|Wand_list_for_list__get_in_1'| Heap@@27 diz@@19) null))))
 :qid |stdinbpl.637:15|
 :skolemid |62|
 :pattern ( (state Heap@@27 Mask@@13) (|Wand_list_for_list__get_in_1'| Heap@@27 diz@@19))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_75516) (Mask@@14 T@PolymorphicMapType_75537) (diz@@20 T@Ref) ) (!  (=> (and (state Heap@@28 Mask@@14) (or (< AssumeFunctionsAbove 4) (|Wand_list_for_list__get_out_1#trigger| (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@28) null (Wand_list_for_list__valid_wand diz@@20)) diz@@20))) (=> (not (= diz@@20 null)) (not (= (|Wand_list_for_list__get_out_1'| Heap@@28 diz@@20) null))))
 :qid |stdinbpl.1117:15|
 :skolemid |73|
 :pattern ( (state Heap@@28 Mask@@14) (|Wand_list_for_list__get_out_1'| Heap@@28 diz@@20))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_18023|)) (not (= s1 |Seq#Empty_18023|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_3237| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_3237| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.248:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3237| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_36523_2989 Wand_list_for_list__lemma)))
(assert  (not (IsWandField_36523_2989 Wand_list_for_list__lemma)))
(assert  (not (IsPredicateField_36525_36526 Wand_list_for_list__in_1)))
(assert  (not (IsWandField_36525_36526 Wand_list_for_list__in_1)))
(assert  (not (IsPredicateField_36528_81711 Wand_list_for_list__in_1_0)))
(assert  (not (IsWandField_36528_81734 Wand_list_for_list__in_1_0)))
(assert  (not (IsPredicateField_36525_36526 Wand_list_for_list__out_1)))
(assert  (not (IsWandField_36525_36526 Wand_list_for_list__out_1)))
(assert  (not (IsPredicateField_36528_81711 Wand_list_for_list__out_1_0)))
(assert  (not (IsWandField_36528_81734 Wand_list_for_list__out_1_0)))
(assert  (not (IsPredicateField_36525_36526 Wand_list_for_list__this_1)))
(assert  (not (IsWandField_36525_36526 Wand_list_for_list__this_1)))
(assert  (not (IsPredicateField_36528_81711 Wand_list_for_list__L2_1)))
(assert  (not (IsWandField_36528_81734 Wand_list_for_list__L2_1)))
(assert  (not (IsPredicateField_36528_81711 Wand_list_for_list__tmp_suffix_1)))
(assert  (not (IsWandField_36528_81734 Wand_list_for_list__tmp_suffix_1)))
(assert  (not (IsPredicateField_36528_81711 Wand_list_for_list__L1_1)))
(assert  (not (IsWandField_36528_81734 Wand_list_for_list__L1_1)))
(assert  (not (IsPredicateField_36525_36526 Wand_list_for_list__tmp_1)))
(assert  (not (IsWandField_36525_36526 Wand_list_for_list__tmp_1)))
(assert  (not (IsPredicateField_36528_81711 Wand_list_for_list__suffix_1)))
(assert  (not (IsWandField_36528_81734 Wand_list_for_list__suffix_1)))
(assert  (not (IsPredicateField_36525_36526 Wand_list_for_list__cursor_1)))
(assert  (not (IsWandField_36525_36526 Wand_list_for_list__cursor_1)))
(assert  (not (IsPredicateField_36525_36526 Wand_list_for_list__wand_1)))
(assert  (not (IsWandField_36525_36526 Wand_list_for_list__wand_1)))
(assert  (not (IsPredicateField_36525_36526 Wand_list_for_list__this_2)))
(assert  (not (IsWandField_36525_36526 Wand_list_for_list__this_2)))
(assert  (not (IsPredicateField_36528_81711 Wand_list_for_list__L2_2)))
(assert  (not (IsWandField_36528_81734 Wand_list_for_list__L2_2)))
(assert  (not (IsPredicateField_36528_81711 Wand_list_for_list__L1_2)))
(assert  (not (IsWandField_36528_81734 Wand_list_for_list__L1_2)))
(assert  (not (IsPredicateField_36523_2989 List__val)))
(assert  (not (IsWandField_36523_2989 List__val)))
(assert  (not (IsPredicateField_36525_36526 List__next)))
(assert  (not (IsWandField_36525_36526 List__next)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_75516) (ExhaleHeap@@12 T@PolymorphicMapType_75516) (Mask@@15 T@PolymorphicMapType_75537) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@12 Mask@@15) (succHeap Heap@@29 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@12 Mask@@15))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_75537) (o_2@@17 T@Ref) (f_4@@17 T@Field_134696_134701) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@@16) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_36821_294894 f_4@@17))) (not (IsWandField_36821_294910 f_4@@17))) (<= (select (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@@16) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@@16) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_75537) (o_2@@18 T@Ref) (f_4@@18 T@Field_36821_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@@17) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_36821_53 f_4@@18))) (not (IsWandField_36821_53 f_4@@18))) (<= (select (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@@17) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@@17) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_75537) (o_2@@19 T@Ref) (f_4@@19 T@Field_36821_103015) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_36821_85441 f_4@@19))) (not (IsWandField_36821_85441 f_4@@19))) (<= (select (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_75537) (o_2@@20 T@Ref) (f_4@@20 T@Field_36821_36526) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_36821_36526 f_4@@20))) (not (IsWandField_36821_36526 f_4@@20))) (<= (select (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_75537) (o_2@@21 T@Ref) (f_4@@21 T@Field_36821_3237) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_36821_2989 f_4@@21))) (not (IsWandField_36821_2989 f_4@@21))) (<= (select (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_75537) (o_2@@22 T@Ref) (f_4@@22 T@Field_131882_131883) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_36821_36822 f_4@@22))) (not (IsWandField_36821_282783 f_4@@22))) (<= (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_75537) (o_2@@23 T@Ref) (f_4@@23 T@Field_36525_90819) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_36523_293895 f_4@@23))) (not (IsWandField_36523_293911 f_4@@23))) (<= (select (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_75537) (o_2@@24 T@Ref) (f_4@@24 T@Field_75576_53) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_36523_53 f_4@@24))) (not (IsWandField_36523_53 f_4@@24))) (<= (select (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_75537) (o_2@@25 T@Ref) (f_4@@25 T@Field_81690_81692) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_36528_81711 f_4@@25))) (not (IsWandField_36528_81734 f_4@@25))) (<= (select (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_75537) (o_2@@26 T@Ref) (f_4@@26 T@Field_75589_75590) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_36525_36526 f_4@@26))) (not (IsWandField_36525_36526 f_4@@26))) (<= (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_75537) (o_2@@27 T@Ref) (f_4@@27 T@Field_81594_2989) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_36523_2989 f_4@@27))) (not (IsWandField_36523_2989 f_4@@27))) (<= (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_75537) (o_2@@28 T@Ref) (f_4@@28 T@Field_36525_36794) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_36525_276505 f_4@@28))) (not (IsWandField_36525_282069 f_4@@28))) (<= (select (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_75537) (o_2@@29 T@Ref) (f_4@@29 T@Field_90814_90819) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@@28) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_36793_292938 f_4@@29))) (not (IsWandField_36793_292954 f_4@@29))) (<= (select (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@@28) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@@28) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_75537) (o_2@@30 T@Ref) (f_4@@30 T@Field_36793_53) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@@29) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_36793_53 f_4@@30))) (not (IsWandField_36793_53 f_4@@30))) (<= (select (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@@29) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@@29) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_75537) (o_2@@31 T@Ref) (f_4@@31 T@Field_36793_103015) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@@30) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_36793_85441 f_4@@31))) (not (IsWandField_36793_85441 f_4@@31))) (<= (select (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@@30) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@@30) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_75537) (o_2@@32 T@Ref) (f_4@@32 T@Field_36793_36526) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@@31) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_36793_36526 f_4@@32))) (not (IsWandField_36793_36526 f_4@@32))) (<= (select (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@@31) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@@31) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_75537) (o_2@@33 T@Ref) (f_4@@33 T@Field_36793_3237) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@@32) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_36793_2989 f_4@@33))) (not (IsWandField_36793_2989 f_4@@33))) (<= (select (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@@32) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@@32) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_75537) (o_2@@34 T@Ref) (f_4@@34 T@Field_82629_82630) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@@33) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_36793_36794 f_4@@34))) (not (IsWandField_36793_282426 f_4@@34))) (<= (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@@33) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@@33) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_75537) (o_2@@35 T@Ref) (f_4@@35 T@Field_134696_134701) ) (! (= (HasDirectPerm_36821_276260 Mask@@34 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@@34) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_36821_276260 Mask@@34 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_75537) (o_2@@36 T@Ref) (f_4@@36 T@Field_36821_53) ) (! (= (HasDirectPerm_36821_53 Mask@@35 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@@35) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_36821_53 Mask@@35 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_75537) (o_2@@37 T@Ref) (f_4@@37 T@Field_131882_131883) ) (! (= (HasDirectPerm_36821_36822 Mask@@36 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@@36) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_36821_36822 Mask@@36 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_75537) (o_2@@38 T@Ref) (f_4@@38 T@Field_36821_3237) ) (! (= (HasDirectPerm_36821_3237 Mask@@37 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@@37) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_36821_3237 Mask@@37 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_75537) (o_2@@39 T@Ref) (f_4@@39 T@Field_36821_103015) ) (! (= (HasDirectPerm_36821_103015 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_36821_103015 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_75537) (o_2@@40 T@Ref) (f_4@@40 T@Field_36821_36526) ) (! (= (HasDirectPerm_36821_36526 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_36821_36526 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_75537) (o_2@@41 T@Ref) (f_4@@41 T@Field_90814_90819) ) (! (= (HasDirectPerm_36793_274933 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_36793_274933 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_75537) (o_2@@42 T@Ref) (f_4@@42 T@Field_36793_53) ) (! (= (HasDirectPerm_36793_53 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_36793_53 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_75537) (o_2@@43 T@Ref) (f_4@@43 T@Field_82629_82630) ) (! (= (HasDirectPerm_36793_36794 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_36793_36794 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_75537) (o_2@@44 T@Ref) (f_4@@44 T@Field_36793_3237) ) (! (= (HasDirectPerm_36793_3237 Mask@@43 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@@43) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_36793_3237 Mask@@43 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_75537) (o_2@@45 T@Ref) (f_4@@45 T@Field_36793_103015) ) (! (= (HasDirectPerm_36793_103015 Mask@@44 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@@44) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_36793_103015 Mask@@44 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_75537) (o_2@@46 T@Ref) (f_4@@46 T@Field_36793_36526) ) (! (= (HasDirectPerm_36793_36526 Mask@@45 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@@45) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_36793_36526 Mask@@45 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_75537) (o_2@@47 T@Ref) (f_4@@47 T@Field_36525_90819) ) (! (= (HasDirectPerm_36525_273563 Mask@@46 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@@46) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_36525_273563 Mask@@46 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_75537) (o_2@@48 T@Ref) (f_4@@48 T@Field_75576_53) ) (! (= (HasDirectPerm_36525_53 Mask@@47 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@@47) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_36525_53 Mask@@47 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_75537) (o_2@@49 T@Ref) (f_4@@49 T@Field_36525_36794) ) (! (= (HasDirectPerm_36525_36794 Mask@@48 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@@48) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_36525_36794 Mask@@48 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_75537) (o_2@@50 T@Ref) (f_4@@50 T@Field_81594_2989) ) (! (= (HasDirectPerm_36570_3237 Mask@@49 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@@49) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_36570_3237 Mask@@49 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_75537) (o_2@@51 T@Ref) (f_4@@51 T@Field_81690_81692) ) (! (= (HasDirectPerm_36528_103015 Mask@@50 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@@50) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_36528_103015 Mask@@50 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_75537) (o_2@@52 T@Ref) (f_4@@52 T@Field_75589_75590) ) (! (= (HasDirectPerm_36525_36526 Mask@@51 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@@51) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_36525_36526 Mask@@51 o_2@@52 f_4@@52))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.167:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.540:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_75516) (ExhaleHeap@@13 T@PolymorphicMapType_75516) (Mask@@52 T@PolymorphicMapType_75537) (o_14@@0 T@Ref) (f_19@@107 T@Field_134696_134701) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@13 Mask@@52) (=> (HasDirectPerm_36821_276260 Mask@@52 o_14@@0 f_19@@107) (= (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@30) o_14@@0 f_19@@107) (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap@@13) o_14@@0 f_19@@107))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@13 Mask@@52) (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap@@13) o_14@@0 f_19@@107))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_75516) (ExhaleHeap@@14 T@PolymorphicMapType_75516) (Mask@@53 T@PolymorphicMapType_75537) (o_14@@1 T@Ref) (f_19@@108 T@Field_36821_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@14 Mask@@53) (=> (HasDirectPerm_36821_53 Mask@@53 o_14@@1 f_19@@108) (= (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@31) o_14@@1 f_19@@108) (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| ExhaleHeap@@14) o_14@@1 f_19@@108))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@14 Mask@@53) (select (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| ExhaleHeap@@14) o_14@@1 f_19@@108))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_75516) (ExhaleHeap@@15 T@PolymorphicMapType_75516) (Mask@@54 T@PolymorphicMapType_75537) (o_14@@2 T@Ref) (f_19@@109 T@Field_131882_131883) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@15 Mask@@54) (=> (HasDirectPerm_36821_36822 Mask@@54 o_14@@2 f_19@@109) (= (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@32) o_14@@2 f_19@@109) (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap@@15) o_14@@2 f_19@@109))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@15 Mask@@54) (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap@@15) o_14@@2 f_19@@109))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_75516) (ExhaleHeap@@16 T@PolymorphicMapType_75516) (Mask@@55 T@PolymorphicMapType_75537) (o_14@@3 T@Ref) (f_19@@110 T@Field_36821_3237) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@16 Mask@@55) (=> (HasDirectPerm_36821_3237 Mask@@55 o_14@@3 f_19@@110) (= (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@33) o_14@@3 f_19@@110) (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| ExhaleHeap@@16) o_14@@3 f_19@@110))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@16 Mask@@55) (select (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| ExhaleHeap@@16) o_14@@3 f_19@@110))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_75516) (ExhaleHeap@@17 T@PolymorphicMapType_75516) (Mask@@56 T@PolymorphicMapType_75537) (o_14@@4 T@Ref) (f_19@@111 T@Field_36821_103015) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@17 Mask@@56) (=> (HasDirectPerm_36821_103015 Mask@@56 o_14@@4 f_19@@111) (= (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@34) o_14@@4 f_19@@111) (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| ExhaleHeap@@17) o_14@@4 f_19@@111))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@17 Mask@@56) (select (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| ExhaleHeap@@17) o_14@@4 f_19@@111))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_75516) (ExhaleHeap@@18 T@PolymorphicMapType_75516) (Mask@@57 T@PolymorphicMapType_75537) (o_14@@5 T@Ref) (f_19@@112 T@Field_36821_36526) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@18 Mask@@57) (=> (HasDirectPerm_36821_36526 Mask@@57 o_14@@5 f_19@@112) (= (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@35) o_14@@5 f_19@@112) (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| ExhaleHeap@@18) o_14@@5 f_19@@112))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@18 Mask@@57) (select (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| ExhaleHeap@@18) o_14@@5 f_19@@112))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_75516) (ExhaleHeap@@19 T@PolymorphicMapType_75516) (Mask@@58 T@PolymorphicMapType_75537) (o_14@@6 T@Ref) (f_19@@113 T@Field_90814_90819) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@19 Mask@@58) (=> (HasDirectPerm_36793_274933 Mask@@58 o_14@@6 f_19@@113) (= (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@36) o_14@@6 f_19@@113) (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap@@19) o_14@@6 f_19@@113))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@19 Mask@@58) (select (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap@@19) o_14@@6 f_19@@113))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_75516) (ExhaleHeap@@20 T@PolymorphicMapType_75516) (Mask@@59 T@PolymorphicMapType_75537) (o_14@@7 T@Ref) (f_19@@114 T@Field_36793_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@20 Mask@@59) (=> (HasDirectPerm_36793_53 Mask@@59 o_14@@7 f_19@@114) (= (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@37) o_14@@7 f_19@@114) (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| ExhaleHeap@@20) o_14@@7 f_19@@114))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@20 Mask@@59) (select (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| ExhaleHeap@@20) o_14@@7 f_19@@114))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_75516) (ExhaleHeap@@21 T@PolymorphicMapType_75516) (Mask@@60 T@PolymorphicMapType_75537) (o_14@@8 T@Ref) (f_19@@115 T@Field_82629_82630) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@21 Mask@@60) (=> (HasDirectPerm_36793_36794 Mask@@60 o_14@@8 f_19@@115) (= (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@38) o_14@@8 f_19@@115) (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| ExhaleHeap@@21) o_14@@8 f_19@@115))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@21 Mask@@60) (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| ExhaleHeap@@21) o_14@@8 f_19@@115))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_75516) (ExhaleHeap@@22 T@PolymorphicMapType_75516) (Mask@@61 T@PolymorphicMapType_75537) (o_14@@9 T@Ref) (f_19@@116 T@Field_36793_3237) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@22 Mask@@61) (=> (HasDirectPerm_36793_3237 Mask@@61 o_14@@9 f_19@@116) (= (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@39) o_14@@9 f_19@@116) (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| ExhaleHeap@@22) o_14@@9 f_19@@116))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@22 Mask@@61) (select (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| ExhaleHeap@@22) o_14@@9 f_19@@116))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_75516) (ExhaleHeap@@23 T@PolymorphicMapType_75516) (Mask@@62 T@PolymorphicMapType_75537) (o_14@@10 T@Ref) (f_19@@117 T@Field_36793_103015) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@23 Mask@@62) (=> (HasDirectPerm_36793_103015 Mask@@62 o_14@@10 f_19@@117) (= (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@40) o_14@@10 f_19@@117) (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| ExhaleHeap@@23) o_14@@10 f_19@@117))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@23 Mask@@62) (select (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| ExhaleHeap@@23) o_14@@10 f_19@@117))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_75516) (ExhaleHeap@@24 T@PolymorphicMapType_75516) (Mask@@63 T@PolymorphicMapType_75537) (o_14@@11 T@Ref) (f_19@@118 T@Field_36793_36526) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@24 Mask@@63) (=> (HasDirectPerm_36793_36526 Mask@@63 o_14@@11 f_19@@118) (= (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@41) o_14@@11 f_19@@118) (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| ExhaleHeap@@24) o_14@@11 f_19@@118))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@24 Mask@@63) (select (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| ExhaleHeap@@24) o_14@@11 f_19@@118))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_75516) (ExhaleHeap@@25 T@PolymorphicMapType_75516) (Mask@@64 T@PolymorphicMapType_75537) (o_14@@12 T@Ref) (f_19@@119 T@Field_36525_90819) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@25 Mask@@64) (=> (HasDirectPerm_36525_273563 Mask@@64 o_14@@12 f_19@@119) (= (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@42) o_14@@12 f_19@@119) (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap@@25) o_14@@12 f_19@@119))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@25 Mask@@64) (select (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap@@25) o_14@@12 f_19@@119))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_75516) (ExhaleHeap@@26 T@PolymorphicMapType_75516) (Mask@@65 T@PolymorphicMapType_75537) (o_14@@13 T@Ref) (f_19@@120 T@Field_75576_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@26 Mask@@65) (=> (HasDirectPerm_36525_53 Mask@@65 o_14@@13 f_19@@120) (= (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@43) o_14@@13 f_19@@120) (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@@26) o_14@@13 f_19@@120))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@26 Mask@@65) (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@@26) o_14@@13 f_19@@120))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_75516) (ExhaleHeap@@27 T@PolymorphicMapType_75516) (Mask@@66 T@PolymorphicMapType_75537) (o_14@@14 T@Ref) (f_19@@121 T@Field_36525_36794) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@27 Mask@@66) (=> (HasDirectPerm_36525_36794 Mask@@66 o_14@@14 f_19@@121) (= (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@44) o_14@@14 f_19@@121) (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| ExhaleHeap@@27) o_14@@14 f_19@@121))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@27 Mask@@66) (select (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| ExhaleHeap@@27) o_14@@14 f_19@@121))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_75516) (ExhaleHeap@@28 T@PolymorphicMapType_75516) (Mask@@67 T@PolymorphicMapType_75537) (o_14@@15 T@Ref) (f_19@@122 T@Field_81594_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@28 Mask@@67) (=> (HasDirectPerm_36570_3237 Mask@@67 o_14@@15 f_19@@122) (= (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@45) o_14@@15 f_19@@122) (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| ExhaleHeap@@28) o_14@@15 f_19@@122))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@28 Mask@@67) (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| ExhaleHeap@@28) o_14@@15 f_19@@122))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_75516) (ExhaleHeap@@29 T@PolymorphicMapType_75516) (Mask@@68 T@PolymorphicMapType_75537) (o_14@@16 T@Ref) (f_19@@123 T@Field_81690_81692) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@29 Mask@@68) (=> (HasDirectPerm_36528_103015 Mask@@68 o_14@@16 f_19@@123) (= (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@46) o_14@@16 f_19@@123) (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| ExhaleHeap@@29) o_14@@16 f_19@@123))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@29 Mask@@68) (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| ExhaleHeap@@29) o_14@@16 f_19@@123))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_75516) (ExhaleHeap@@30 T@PolymorphicMapType_75516) (Mask@@69 T@PolymorphicMapType_75537) (o_14@@17 T@Ref) (f_19@@124 T@Field_75589_75590) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@30 Mask@@69) (=> (HasDirectPerm_36525_36526 Mask@@69 o_14@@17 f_19@@124) (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@47) o_14@@17 f_19@@124) (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@@30) o_14@@17 f_19@@124))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@30 Mask@@69) (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@@30) o_14@@17 f_19@@124))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_18023|)) (not (= s1@@0 |Seq#Empty_18023|))) (= (|Seq#Length_2867| (|Seq#Append_3237| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.217:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_3237| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_134696_134701) ) (! (= (select (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_36821_53) ) (! (= (select (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_36821_103015) ) (! (= (select (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_36821_36526) ) (! (= (select (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_36821_3237) ) (! (= (select (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_131882_131883) ) (! (= (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_36525_90819) ) (! (= (select (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_75576_53) ) (! (= (select (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_81690_81692) ) (! (= (select (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_75589_75590) ) (! (= (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_81594_2989) ) (! (= (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_36525_36794) ) (! (= (select (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_90814_90819) ) (! (= (select (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_36793_53) ) (! (= (select (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_36793_103015) ) (! (= (select (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_36793_36526) ) (! (= (select (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_36793_3237) ) (! (= (select (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_82629_82630) ) (! (= (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_2867| (|Seq#Append_3237| s@@7 t@@0) n@@7) (|Seq#Drop_2867| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.374:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_3237| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_75537) (SummandMask1 T@PolymorphicMapType_75537) (SummandMask2 T@PolymorphicMapType_75537) (o_2@@71 T@Ref) (f_4@@71 T@Field_134696_134701) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| ResultMask) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| SummandMask1) o_2@@71 f_4@@71) (select (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| SummandMask2) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| ResultMask) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| SummandMask1) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| SummandMask2) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_75537) (SummandMask1@@0 T@PolymorphicMapType_75537) (SummandMask2@@0 T@PolymorphicMapType_75537) (o_2@@72 T@Ref) (f_4@@72 T@Field_36821_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| ResultMask@@0) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| SummandMask1@@0) o_2@@72 f_4@@72) (select (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| SummandMask2@@0) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| ResultMask@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| SummandMask1@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| SummandMask2@@0) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_75537) (SummandMask1@@1 T@PolymorphicMapType_75537) (SummandMask2@@1 T@PolymorphicMapType_75537) (o_2@@73 T@Ref) (f_4@@73 T@Field_36821_103015) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| ResultMask@@1) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| SummandMask1@@1) o_2@@73 f_4@@73) (select (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| SummandMask2@@1) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| ResultMask@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| SummandMask1@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| SummandMask2@@1) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_75537) (SummandMask1@@2 T@PolymorphicMapType_75537) (SummandMask2@@2 T@PolymorphicMapType_75537) (o_2@@74 T@Ref) (f_4@@74 T@Field_36821_36526) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| ResultMask@@2) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| SummandMask1@@2) o_2@@74 f_4@@74) (select (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| SummandMask2@@2) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| ResultMask@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| SummandMask1@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| SummandMask2@@2) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_75537) (SummandMask1@@3 T@PolymorphicMapType_75537) (SummandMask2@@3 T@PolymorphicMapType_75537) (o_2@@75 T@Ref) (f_4@@75 T@Field_36821_3237) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| ResultMask@@3) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| SummandMask1@@3) o_2@@75 f_4@@75) (select (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| SummandMask2@@3) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| ResultMask@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| SummandMask1@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| SummandMask2@@3) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_75537) (SummandMask1@@4 T@PolymorphicMapType_75537) (SummandMask2@@4 T@PolymorphicMapType_75537) (o_2@@76 T@Ref) (f_4@@76 T@Field_131882_131883) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| ResultMask@@4) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| SummandMask1@@4) o_2@@76 f_4@@76) (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| SummandMask2@@4) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| ResultMask@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| SummandMask1@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| SummandMask2@@4) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_75537) (SummandMask1@@5 T@PolymorphicMapType_75537) (SummandMask2@@5 T@PolymorphicMapType_75537) (o_2@@77 T@Ref) (f_4@@77 T@Field_36525_90819) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| ResultMask@@5) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| SummandMask1@@5) o_2@@77 f_4@@77) (select (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| SummandMask2@@5) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| ResultMask@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| SummandMask1@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| SummandMask2@@5) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_75537) (SummandMask1@@6 T@PolymorphicMapType_75537) (SummandMask2@@6 T@PolymorphicMapType_75537) (o_2@@78 T@Ref) (f_4@@78 T@Field_75576_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| ResultMask@@6) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| SummandMask1@@6) o_2@@78 f_4@@78) (select (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| SummandMask2@@6) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| ResultMask@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| SummandMask1@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| SummandMask2@@6) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_75537) (SummandMask1@@7 T@PolymorphicMapType_75537) (SummandMask2@@7 T@PolymorphicMapType_75537) (o_2@@79 T@Ref) (f_4@@79 T@Field_81690_81692) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| ResultMask@@7) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| SummandMask1@@7) o_2@@79 f_4@@79) (select (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| SummandMask2@@7) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| ResultMask@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| SummandMask1@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| SummandMask2@@7) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_75537) (SummandMask1@@8 T@PolymorphicMapType_75537) (SummandMask2@@8 T@PolymorphicMapType_75537) (o_2@@80 T@Ref) (f_4@@80 T@Field_75589_75590) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| ResultMask@@8) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| SummandMask1@@8) o_2@@80 f_4@@80) (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| SummandMask2@@8) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| ResultMask@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| SummandMask1@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| SummandMask2@@8) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_75537) (SummandMask1@@9 T@PolymorphicMapType_75537) (SummandMask2@@9 T@PolymorphicMapType_75537) (o_2@@81 T@Ref) (f_4@@81 T@Field_81594_2989) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| ResultMask@@9) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| SummandMask1@@9) o_2@@81 f_4@@81) (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| SummandMask2@@9) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| ResultMask@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| SummandMask1@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| SummandMask2@@9) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_75537) (SummandMask1@@10 T@PolymorphicMapType_75537) (SummandMask2@@10 T@PolymorphicMapType_75537) (o_2@@82 T@Ref) (f_4@@82 T@Field_36525_36794) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| ResultMask@@10) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| SummandMask1@@10) o_2@@82 f_4@@82) (select (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| SummandMask2@@10) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| ResultMask@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| SummandMask1@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| SummandMask2@@10) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_75537) (SummandMask1@@11 T@PolymorphicMapType_75537) (SummandMask2@@11 T@PolymorphicMapType_75537) (o_2@@83 T@Ref) (f_4@@83 T@Field_90814_90819) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| ResultMask@@11) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| SummandMask1@@11) o_2@@83 f_4@@83) (select (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| SummandMask2@@11) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| ResultMask@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| SummandMask1@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| SummandMask2@@11) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_75537) (SummandMask1@@12 T@PolymorphicMapType_75537) (SummandMask2@@12 T@PolymorphicMapType_75537) (o_2@@84 T@Ref) (f_4@@84 T@Field_36793_53) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| ResultMask@@12) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| SummandMask1@@12) o_2@@84 f_4@@84) (select (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| SummandMask2@@12) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| ResultMask@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| SummandMask1@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| SummandMask2@@12) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_75537) (SummandMask1@@13 T@PolymorphicMapType_75537) (SummandMask2@@13 T@PolymorphicMapType_75537) (o_2@@85 T@Ref) (f_4@@85 T@Field_36793_103015) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| ResultMask@@13) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| SummandMask1@@13) o_2@@85 f_4@@85) (select (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| SummandMask2@@13) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| ResultMask@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| SummandMask1@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| SummandMask2@@13) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_75537) (SummandMask1@@14 T@PolymorphicMapType_75537) (SummandMask2@@14 T@PolymorphicMapType_75537) (o_2@@86 T@Ref) (f_4@@86 T@Field_36793_36526) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| ResultMask@@14) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| SummandMask1@@14) o_2@@86 f_4@@86) (select (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| SummandMask2@@14) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| ResultMask@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| SummandMask1@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| SummandMask2@@14) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_75537) (SummandMask1@@15 T@PolymorphicMapType_75537) (SummandMask2@@15 T@PolymorphicMapType_75537) (o_2@@87 T@Ref) (f_4@@87 T@Field_36793_3237) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| ResultMask@@15) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| SummandMask1@@15) o_2@@87 f_4@@87) (select (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| SummandMask2@@15) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| ResultMask@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| SummandMask1@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| SummandMask2@@15) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_75537) (SummandMask1@@16 T@PolymorphicMapType_75537) (SummandMask2@@16 T@PolymorphicMapType_75537) (o_2@@88 T@Ref) (f_4@@88 T@Field_82629_82630) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| ResultMask@@16) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| SummandMask1@@16) o_2@@88 f_4@@88) (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| SummandMask2@@16) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| ResultMask@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| SummandMask1@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| SummandMask2@@16) o_2@@88 f_4@@88))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.539:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_3097| a b) (= a b))
 :qid |stdinbpl.512:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3097| a b))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_75516) (Mask@@70 T@PolymorphicMapType_75537) (diz@@21 T@Ref) ) (!  (=> (and (state Heap@@48 Mask@@70) (< AssumeFunctionsAbove 0)) (=> (not (= diz@@21 null)) (= (Wand_list_for_list__get_in_1_0 Heap@@48 diz@@21) (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@48) diz@@21 Wand_list_for_list__in_1_0))))
 :qid |stdinbpl.870:15|
 :skolemid |66|
 :pattern ( (state Heap@@48 Mask@@70) (Wand_list_for_list__get_in_1_0 Heap@@48 diz@@21))
 :pattern ( (state Heap@@48 Mask@@70) (|Wand_list_for_list__get_in_1_0#triggerStateless| diz@@21) (|Wand_list_for_list__valid_wand#trigger_36793| Heap@@48 (Wand_list_for_list__valid_wand diz@@21)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_75516) (Mask@@71 T@PolymorphicMapType_75537) (diz@@22 T@Ref) ) (!  (=> (and (state Heap@@49 Mask@@71) (< AssumeFunctionsAbove 1)) (=> (not (= diz@@22 null)) (= (List__get_next Heap@@49 diz@@22) (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@49) diz@@22 List__next))))
 :qid |stdinbpl.1723:15|
 :skolemid |87|
 :pattern ( (state Heap@@49 Mask@@71) (List__get_next Heap@@49 diz@@22))
 :pattern ( (state Heap@@49 Mask@@71) (|List__get_next#triggerStateless| diz@@22) (|List__state#trigger_36821| Heap@@49 (List__state diz@@22)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_75516) (Mask@@72 T@PolymorphicMapType_75537) (diz@@23 T@Ref) ) (!  (=> (and (state Heap@@50 Mask@@72) (< AssumeFunctionsAbove 2)) (=> (not (= diz@@23 null)) (= (Wand_list_for_list__get_in_1 Heap@@50 diz@@23) (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@50) diz@@23 Wand_list_for_list__in_1))))
 :qid |stdinbpl.624:15|
 :skolemid |60|
 :pattern ( (state Heap@@50 Mask@@72) (Wand_list_for_list__get_in_1 Heap@@50 diz@@23))
 :pattern ( (state Heap@@50 Mask@@72) (|Wand_list_for_list__get_in_1#triggerStateless| diz@@23) (|Wand_list_for_list__valid_wand#trigger_36793| Heap@@50 (Wand_list_for_list__valid_wand diz@@23)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_75516) (Mask@@73 T@PolymorphicMapType_75537) (diz@@24 T@Ref) ) (!  (=> (and (state Heap@@51 Mask@@73) (< AssumeFunctionsAbove 4)) (=> (not (= diz@@24 null)) (= (Wand_list_for_list__get_out_1 Heap@@51 diz@@24) (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@51) diz@@24 Wand_list_for_list__out_1))))
 :qid |stdinbpl.1104:15|
 :skolemid |71|
 :pattern ( (state Heap@@51 Mask@@73) (Wand_list_for_list__get_out_1 Heap@@51 diz@@24))
 :pattern ( (state Heap@@51 Mask@@73) (|Wand_list_for_list__get_out_1#triggerStateless| diz@@24) (|Wand_list_for_list__valid_wand#trigger_36793| Heap@@51 (Wand_list_for_list__valid_wand diz@@24)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_75516) (Mask@@74 T@PolymorphicMapType_75537) (diz@@25 T@Ref) ) (!  (=> (and (state Heap@@52 Mask@@74) (< AssumeFunctionsAbove 5)) (=> (not (= diz@@25 null)) (= (Wand_list_for_list__get_out_1_0 Heap@@52 diz@@25) (select (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@52) diz@@25 Wand_list_for_list__out_1_0))))
 :qid |stdinbpl.1350:15|
 :skolemid |77|
 :pattern ( (state Heap@@52 Mask@@74) (Wand_list_for_list__get_out_1_0 Heap@@52 diz@@25))
 :pattern ( (state Heap@@52 Mask@@74) (|Wand_list_for_list__get_out_1_0#triggerStateless| diz@@25) (|Wand_list_for_list__valid_wand#trigger_36793| Heap@@52 (Wand_list_for_list__valid_wand diz@@25)))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@2)))
 :qid |stdinbpl.405:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_18023|) (= (|Seq#Append_3237| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_18023|) (= (|Seq#Append_3237| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.223:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3237| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_3237| t@@1) 0) t@@1)
 :qid |stdinbpl.227:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3237| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.206:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_3097| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@4) (|Seq#Index_2867| s1@@2 j@@4)))
 :qid |stdinbpl.502:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@4))
))))
 :qid |stdinbpl.499:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3097| s0@@2 s1@@2))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_75516) (Mask@@75 T@PolymorphicMapType_75537) (diz@@26 T@Ref) ) (!  (=> (state Heap@@53 Mask@@75) (= (|Wand_list_for_list__get_in_1'| Heap@@53 diz@@26) (|Wand_list_for_list__get_in_1#frame| (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@53) null (Wand_list_for_list__valid_wand diz@@26)) diz@@26)))
 :qid |stdinbpl.631:15|
 :skolemid |61|
 :pattern ( (state Heap@@53 Mask@@75) (|Wand_list_for_list__get_in_1'| Heap@@53 diz@@26))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_75516) (Mask@@76 T@PolymorphicMapType_75537) (diz@@27 T@Ref) ) (!  (=> (state Heap@@54 Mask@@76) (= (|Wand_list_for_list__get_in_1_0'| Heap@@54 diz@@27) (|Wand_list_for_list__get_in_1_0#frame| (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@54) null (Wand_list_for_list__valid_wand diz@@27)) diz@@27)))
 :qid |stdinbpl.877:15|
 :skolemid |67|
 :pattern ( (state Heap@@54 Mask@@76) (|Wand_list_for_list__get_in_1_0'| Heap@@54 diz@@27))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_75516) (Mask@@77 T@PolymorphicMapType_75537) (diz@@28 T@Ref) ) (!  (=> (state Heap@@55 Mask@@77) (= (|Wand_list_for_list__get_out_1'| Heap@@55 diz@@28) (|Wand_list_for_list__get_out_1#frame| (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@55) null (Wand_list_for_list__valid_wand diz@@28)) diz@@28)))
 :qid |stdinbpl.1111:15|
 :skolemid |72|
 :pattern ( (state Heap@@55 Mask@@77) (|Wand_list_for_list__get_out_1'| Heap@@55 diz@@28))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_75516) (Mask@@78 T@PolymorphicMapType_75537) (diz@@29 T@Ref) ) (!  (=> (state Heap@@56 Mask@@78) (= (|Wand_list_for_list__get_out_1_0'| Heap@@56 diz@@29) (|Wand_list_for_list__get_out_1_0#frame| (select (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@56) null (Wand_list_for_list__valid_wand diz@@29)) diz@@29)))
 :qid |stdinbpl.1357:15|
 :skolemid |78|
 :pattern ( (state Heap@@56 Mask@@78) (|Wand_list_for_list__get_out_1_0'| Heap@@56 diz@@29))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_75516) (Mask@@79 T@PolymorphicMapType_75537) (diz@@30 T@Ref) ) (!  (=> (state Heap@@57 Mask@@79) (= (|List__contents'| Heap@@57 diz@@30) (|List__contents#frame| (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@57) null (List__state diz@@30)) diz@@30)))
 :qid |stdinbpl.1591:15|
 :skolemid |83|
 :pattern ( (state Heap@@57 Mask@@79) (|List__contents'| Heap@@57 diz@@30))
 :pattern ( (state Heap@@57 Mask@@79) (|List__contents#triggerStateless| diz@@30) (|List__state#trigger_36821| Heap@@57 (List__state diz@@30)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_75516) (Mask@@80 T@PolymorphicMapType_75537) (diz@@31 T@Ref) ) (!  (=> (state Heap@@58 Mask@@80) (= (|List__get_next'| Heap@@58 diz@@31) (|List__get_next#frame| (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@58) null (List__state diz@@31)) diz@@31)))
 :qid |stdinbpl.1730:15|
 :skolemid |88|
 :pattern ( (state Heap@@58 Mask@@80) (|List__get_next'| Heap@@58 diz@@31))
)))
(assert (forall ((diz@@32 T@Ref) ) (! (= (getPredWandId_36793_36794 (Wand_list_for_list__valid_wand diz@@32)) 0)
 :qid |stdinbpl.1831:15|
 :skolemid |92|
 :pattern ( (Wand_list_for_list__valid_wand diz@@32))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3237| t@@2)) 1)
 :qid |stdinbpl.214:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3237| t@@2))
)))
(assert (forall ((diz@@33 T@Ref) ) (! (= (getPredWandId_36821_36822 (List__state diz@@33)) 1)
 :qid |stdinbpl.2220:15|
 :skolemid |98|
 :pattern ( (List__state diz@@33))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_75516) (Mask@@81 T@PolymorphicMapType_75537) (diz@@34 T@Ref) ) (!  (=> (and (state Heap@@59 Mask@@81) (< AssumeFunctionsAbove 3)) (=> (not (= diz@@34 null)) (= (List__contents Heap@@59 diz@@34) (ite (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@59) diz@@34 List__next) null) (|Seq#Singleton_3237| (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@59) diz@@34 List__val)) (|Seq#Append_3237| (|Seq#Singleton_3237| (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@59) diz@@34 List__val)) (|List__contents'| Heap@@59 (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@59) diz@@34 List__next)))))))
 :qid |stdinbpl.1584:15|
 :skolemid |82|
 :pattern ( (state Heap@@59 Mask@@81) (List__contents Heap@@59 diz@@34))
 :pattern ( (state Heap@@59 Mask@@81) (|List__contents#triggerStateless| diz@@34) (|List__state#trigger_36821| Heap@@59 (List__state diz@@34)))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_2867| (|Seq#Append_3237| s@@10 t@@3) n@@8) (|Seq#Take_2867| s@@10 n@@8)))
 :qid |stdinbpl.356:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3237| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.255:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_75516) (o_13 T@Ref) (f_13 T@Field_134696_134701) (v@@2 T@PolymorphicMapType_76065) ) (! (succHeap Heap@@60 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@60) (store (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@60) o_13 f_13 v@@2) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@60) (store (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@60) o_13 f_13 v@@2) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@60) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_75516) (o_13@@0 T@Ref) (f_13@@0 T@Field_36821_103015) (v@@3 T@Seq_2867) ) (! (succHeap Heap@@61 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@61) (store (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@61) o_13@@0 f_13@@0 v@@3) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@61) (store (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@61) o_13@@0 f_13@@0 v@@3) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@61) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_75516) (o_13@@1 T@Ref) (f_13@@1 T@Field_36821_3237) (v@@4 Int) ) (! (succHeap Heap@@62 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@62) (store (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@62) o_13@@1 f_13@@1 v@@4) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@62) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@62) (store (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@62) o_13@@1 f_13@@1 v@@4) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_75516) (o_13@@2 T@Ref) (f_13@@2 T@Field_131882_131883) (v@@5 T@FrameType) ) (! (succHeap Heap@@63 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@63) (store (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@63) o_13@@2 f_13@@2 v@@5) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@63) (store (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@63) o_13@@2 f_13@@2 v@@5) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@63) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_75516) (o_13@@3 T@Ref) (f_13@@3 T@Field_36821_36526) (v@@6 T@Ref) ) (! (succHeap Heap@@64 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@64) (store (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@64) o_13@@3 f_13@@3 v@@6) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@64) (store (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@64) o_13@@3 f_13@@3 v@@6) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@64) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_75516) (o_13@@4 T@Ref) (f_13@@4 T@Field_36821_53) (v@@7 Bool) ) (! (succHeap Heap@@65 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@65) (store (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@65) o_13@@4 f_13@@4 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@65) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@65) (store (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@65) o_13@@4 f_13@@4 v@@7)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_75516) (o_13@@5 T@Ref) (f_13@@5 T@Field_90814_90819) (v@@8 T@PolymorphicMapType_76065) ) (! (succHeap Heap@@66 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@66) (store (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@66) o_13@@5 f_13@@5 v@@8) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@66) (store (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@66) o_13@@5 f_13@@5 v@@8) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@66) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_75516) (o_13@@6 T@Ref) (f_13@@6 T@Field_36793_103015) (v@@9 T@Seq_2867) ) (! (succHeap Heap@@67 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@67) (store (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@67) o_13@@6 f_13@@6 v@@9) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@67) (store (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@67) o_13@@6 f_13@@6 v@@9) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@67) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_75516) (o_13@@7 T@Ref) (f_13@@7 T@Field_36793_3237) (v@@10 Int) ) (! (succHeap Heap@@68 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@68) (store (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@68) o_13@@7 f_13@@7 v@@10) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@68) (store (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@68) o_13@@7 f_13@@7 v@@10) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@68) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_75516) (o_13@@8 T@Ref) (f_13@@8 T@Field_82629_82630) (v@@11 T@FrameType) ) (! (succHeap Heap@@69 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@69) (store (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@69) o_13@@8 f_13@@8 v@@11) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@69) (store (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@69) o_13@@8 f_13@@8 v@@11) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@69) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_75516) (o_13@@9 T@Ref) (f_13@@9 T@Field_36793_36526) (v@@12 T@Ref) ) (! (succHeap Heap@@70 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@70) (store (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@70) o_13@@9 f_13@@9 v@@12) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@70) (store (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@70) o_13@@9 f_13@@9 v@@12) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@70) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_75516) (o_13@@10 T@Ref) (f_13@@10 T@Field_36793_53) (v@@13 Bool) ) (! (succHeap Heap@@71 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@71) (store (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@71) o_13@@10 f_13@@10 v@@13) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@71) (store (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@71) o_13@@10 f_13@@10 v@@13) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@71) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_75516) (o_13@@11 T@Ref) (f_13@@11 T@Field_36525_90819) (v@@14 T@PolymorphicMapType_76065) ) (! (succHeap Heap@@72 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@72) (store (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@72) o_13@@11 f_13@@11 v@@14) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@72) (store (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@72) o_13@@11 f_13@@11 v@@14) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@72) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_75516) (o_13@@12 T@Ref) (f_13@@12 T@Field_81690_81692) (v@@15 T@Seq_2867) ) (! (succHeap Heap@@73 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@73) (store (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@73) o_13@@12 f_13@@12 v@@15) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@73) (store (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@73) o_13@@12 f_13@@12 v@@15) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@73) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_75516) (o_13@@13 T@Ref) (f_13@@13 T@Field_81594_2989) (v@@16 Int) ) (! (succHeap Heap@@74 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@74) (store (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@74) o_13@@13 f_13@@13 v@@16) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@74) (store (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@74) o_13@@13 f_13@@13 v@@16) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@74) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_75516) (o_13@@14 T@Ref) (f_13@@14 T@Field_36525_36794) (v@@17 T@FrameType) ) (! (succHeap Heap@@75 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@75) (store (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@75) o_13@@14 f_13@@14 v@@17) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@75) (store (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@75) o_13@@14 f_13@@14 v@@17) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@75) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_75516) (o_13@@15 T@Ref) (f_13@@15 T@Field_75589_75590) (v@@18 T@Ref) ) (! (succHeap Heap@@76 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@76) (store (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@76) o_13@@15 f_13@@15 v@@18) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@76) (store (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@76) o_13@@15 f_13@@15 v@@18) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@76) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@76)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_75516) (o_13@@16 T@Ref) (f_13@@16 T@Field_75576_53) (v@@19 Bool) ) (! (succHeap Heap@@77 (PolymorphicMapType_75516 (store (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@77) o_13@@16 f_13@@16 v@@19) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@77)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_75516 (store (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@77) o_13@@16 f_13@@16 v@@19) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@@77) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@@77)))
)))
(assert (forall ((diz@@35 T@Ref) ) (! (= (PredicateMaskField_36793 (Wand_list_for_list__valid_wand diz@@35)) (|Wand_list_for_list__valid_wand#sm| diz@@35))
 :qid |stdinbpl.1823:15|
 :skolemid |90|
 :pattern ( (PredicateMaskField_36793 (Wand_list_for_list__valid_wand diz@@35)))
)))
(assert (forall ((diz@@36 T@Ref) ) (! (= (PredicateMaskField_36821 (List__state diz@@36)) (|List__state#sm| diz@@36))
 :qid |stdinbpl.2212:15|
 :skolemid |96|
 :pattern ( (PredicateMaskField_36821 (List__state diz@@36)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_2867| (|Seq#Append_3237| s@@12 t@@4) n@@9) (|Seq#Append_3237| (|Seq#Drop_2867| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.370:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_3237| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2867| s@@13 i@@4))))
 :qid |stdinbpl.306:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_18023|)) (not (= s1@@3 |Seq#Empty_18023|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_3237| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.246:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3237| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_3237| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_18023|)) (not (= s1@@4 |Seq#Empty_18023|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_3237| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.251:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_3237| s0@@4 s1@@4))
)))
(assert (forall ((o_13@@17 T@Ref) (f_18 T@Field_75589_75590) (Heap@@78 T@PolymorphicMapType_75516) ) (!  (=> (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@78) o_13@@17 $allocated) (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@78) (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@78) o_13@@17 f_18) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@@78) o_13@@17 f_18))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@1 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@5) x@@1)) (|Seq#Contains_2867| s@@14 x@@1))
 :qid |stdinbpl.403:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@1) (|Seq#Index_2867| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3097| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3097| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3097| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.507:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3097| s0@@5 s1@@5))
)))
(assert (forall ((p@@3 T@Field_36525_36794) (v_1@@2 T@FrameType) (q T@Field_36525_36794) (w@@2 T@FrameType) (r T@Field_36525_36794) (u T@FrameType) ) (!  (=> (and (InsidePredicate_75576_75576 p@@3 v_1@@2 q w@@2) (InsidePredicate_75576_75576 q w@@2 r u)) (InsidePredicate_75576_75576 p@@3 v_1@@2 r u))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_75576_75576 p@@3 v_1@@2 q w@@2) (InsidePredicate_75576_75576 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_36525_36794) (v_1@@3 T@FrameType) (q@@0 T@Field_36525_36794) (w@@3 T@FrameType) (r@@0 T@Field_131882_131883) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_75576_75576 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_75576_36821 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_75576_36821 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_75576_75576 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_75576_36821 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_36525_36794) (v_1@@4 T@FrameType) (q@@1 T@Field_36525_36794) (w@@4 T@FrameType) (r@@1 T@Field_82629_82630) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_75576_75576 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_75576_36793 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_75576_36793 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_75576_75576 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_75576_36793 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_36525_36794) (v_1@@5 T@FrameType) (q@@2 T@Field_131882_131883) (w@@5 T@FrameType) (r@@2 T@Field_36525_36794) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_75576_36821 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_36821_75576 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_75576_75576 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_75576_36821 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_36821_75576 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_36525_36794) (v_1@@6 T@FrameType) (q@@3 T@Field_131882_131883) (w@@6 T@FrameType) (r@@3 T@Field_131882_131883) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_75576_36821 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_36821_36821 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_75576_36821 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_75576_36821 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_36821_36821 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_36525_36794) (v_1@@7 T@FrameType) (q@@4 T@Field_131882_131883) (w@@7 T@FrameType) (r@@4 T@Field_82629_82630) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_75576_36821 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_36821_36793 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_75576_36793 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_75576_36821 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_36821_36793 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_36525_36794) (v_1@@8 T@FrameType) (q@@5 T@Field_82629_82630) (w@@8 T@FrameType) (r@@5 T@Field_36525_36794) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_75576_36793 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_36793_75576 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_75576_75576 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_75576_36793 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_36793_75576 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_36525_36794) (v_1@@9 T@FrameType) (q@@6 T@Field_82629_82630) (w@@9 T@FrameType) (r@@6 T@Field_131882_131883) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_75576_36793 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_36793_36821 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_75576_36821 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_75576_36793 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_36793_36821 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_36525_36794) (v_1@@10 T@FrameType) (q@@7 T@Field_82629_82630) (w@@10 T@FrameType) (r@@7 T@Field_82629_82630) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_75576_36793 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_36793_36793 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_75576_36793 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_75576_36793 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_36793_36793 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_131882_131883) (v_1@@11 T@FrameType) (q@@8 T@Field_36525_36794) (w@@11 T@FrameType) (r@@8 T@Field_36525_36794) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_36821_75576 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_75576_75576 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_36821_75576 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36821_75576 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_75576_75576 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_131882_131883) (v_1@@12 T@FrameType) (q@@9 T@Field_36525_36794) (w@@12 T@FrameType) (r@@9 T@Field_131882_131883) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_36821_75576 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_75576_36821 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_36821_36821 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36821_75576 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_75576_36821 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_131882_131883) (v_1@@13 T@FrameType) (q@@10 T@Field_36525_36794) (w@@13 T@FrameType) (r@@10 T@Field_82629_82630) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_36821_75576 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_75576_36793 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_36821_36793 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36821_75576 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_75576_36793 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_131882_131883) (v_1@@14 T@FrameType) (q@@11 T@Field_131882_131883) (w@@14 T@FrameType) (r@@11 T@Field_36525_36794) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_36821_36821 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_36821_75576 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_36821_75576 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36821_36821 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_36821_75576 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_131882_131883) (v_1@@15 T@FrameType) (q@@12 T@Field_131882_131883) (w@@15 T@FrameType) (r@@12 T@Field_131882_131883) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_36821_36821 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_36821_36821 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_36821_36821 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36821_36821 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_36821_36821 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_131882_131883) (v_1@@16 T@FrameType) (q@@13 T@Field_131882_131883) (w@@16 T@FrameType) (r@@13 T@Field_82629_82630) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_36821_36821 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_36821_36793 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_36821_36793 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36821_36821 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_36821_36793 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_131882_131883) (v_1@@17 T@FrameType) (q@@14 T@Field_82629_82630) (w@@17 T@FrameType) (r@@14 T@Field_36525_36794) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_36821_36793 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_36793_75576 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_36821_75576 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36821_36793 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_36793_75576 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_131882_131883) (v_1@@18 T@FrameType) (q@@15 T@Field_82629_82630) (w@@18 T@FrameType) (r@@15 T@Field_131882_131883) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_36821_36793 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_36793_36821 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_36821_36821 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36821_36793 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_36793_36821 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_131882_131883) (v_1@@19 T@FrameType) (q@@16 T@Field_82629_82630) (w@@19 T@FrameType) (r@@16 T@Field_82629_82630) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_36821_36793 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_36793_36793 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_36821_36793 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36821_36793 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_36793_36793 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_82629_82630) (v_1@@20 T@FrameType) (q@@17 T@Field_36525_36794) (w@@20 T@FrameType) (r@@17 T@Field_36525_36794) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_36793_75576 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_75576_75576 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_36793_75576 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36793_75576 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_75576_75576 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_82629_82630) (v_1@@21 T@FrameType) (q@@18 T@Field_36525_36794) (w@@21 T@FrameType) (r@@18 T@Field_131882_131883) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_36793_75576 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_75576_36821 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_36793_36821 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36793_75576 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_75576_36821 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_82629_82630) (v_1@@22 T@FrameType) (q@@19 T@Field_36525_36794) (w@@22 T@FrameType) (r@@19 T@Field_82629_82630) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_36793_75576 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_75576_36793 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_36793_36793 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36793_75576 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_75576_36793 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_82629_82630) (v_1@@23 T@FrameType) (q@@20 T@Field_131882_131883) (w@@23 T@FrameType) (r@@20 T@Field_36525_36794) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_36793_36821 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_36821_75576 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_36793_75576 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36793_36821 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_36821_75576 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_82629_82630) (v_1@@24 T@FrameType) (q@@21 T@Field_131882_131883) (w@@24 T@FrameType) (r@@21 T@Field_131882_131883) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_36793_36821 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_36821_36821 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_36793_36821 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36793_36821 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_36821_36821 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_82629_82630) (v_1@@25 T@FrameType) (q@@22 T@Field_131882_131883) (w@@25 T@FrameType) (r@@22 T@Field_82629_82630) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_36793_36821 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_36821_36793 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_36793_36793 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36793_36821 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_36821_36793 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_82629_82630) (v_1@@26 T@FrameType) (q@@23 T@Field_82629_82630) (w@@26 T@FrameType) (r@@23 T@Field_36525_36794) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_36793_36793 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_36793_75576 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_36793_75576 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36793_36793 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_36793_75576 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_82629_82630) (v_1@@27 T@FrameType) (q@@24 T@Field_82629_82630) (w@@27 T@FrameType) (r@@24 T@Field_131882_131883) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_36793_36793 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_36793_36821 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_36793_36821 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36793_36793 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_36793_36821 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_82629_82630) (v_1@@28 T@FrameType) (q@@25 T@Field_82629_82630) (w@@28 T@FrameType) (r@@25 T@Field_82629_82630) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_36793_36793 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_36793_36793 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_36793_36793 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36793_36793 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_36793_36793 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_18023|))
 :qid |stdinbpl.210:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2867| s@@16 n@@12) |Seq#Empty_18023|))
 :qid |stdinbpl.386:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun diz@@37 () T@Ref)
(declare-fun PostMask@0 () T@PolymorphicMapType_75537)
(declare-fun PostHeap@0 () T@PolymorphicMapType_75516)
(declare-fun vwand@1 () T@Ref)
(declare-fun Mask@40 () T@PolymorphicMapType_75537)
(declare-fun ExhaleHeap@3 () T@PolymorphicMapType_75516)
(declare-fun suffix@0 () T@Seq_2867)
(declare-fun L2 () T@Seq_2867)
(declare-fun cursor@0 () T@Ref)
(declare-fun l_2 () T@Ref)
(declare-fun Mask@39 () T@PolymorphicMapType_75537)
(declare-fun Mask@6 () T@PolymorphicMapType_75537)
(declare-fun prefix@1 () T@Seq_2867)
(declare-fun L1 () T@Seq_2867)
(declare-fun Mask@5 () T@PolymorphicMapType_75537)
(declare-fun Mask@38 () T@PolymorphicMapType_75537)
(declare-fun Mask@37 () T@PolymorphicMapType_75537)
(declare-fun __flatten_41@1 () T@Ref)
(declare-fun ExhaleHeap@8 () T@PolymorphicMapType_75516)
(declare-fun cursor@1 () T@Ref)
(declare-fun __flatten_82@1 () T@Seq_2867)
(declare-fun Mask@36 () T@PolymorphicMapType_75537)
(declare-fun Mask@35 () T@PolymorphicMapType_75537)
(declare-fun prefix@2 () T@Seq_2867)
(declare-fun Mask@34 () T@PolymorphicMapType_75537)
(declare-fun Mask@33 () T@PolymorphicMapType_75537)
(declare-fun Heap@11 () T@PolymorphicMapType_75516)
(declare-fun arg_in_1_0_1@0 () T@Seq_2867)
(declare-fun arg_out_1_0_1@0 () T@Seq_2867)
(declare-fun Mask@32 () T@PolymorphicMapType_75537)
(declare-fun Mask@31 () T@PolymorphicMapType_75537)
(declare-fun current_thread_id () Int)
(declare-fun Mask@29 () T@PolymorphicMapType_75537)
(declare-fun Mask@30 () T@PolymorphicMapType_75537)
(declare-fun Mask@28 () T@PolymorphicMapType_75537)
(declare-fun Mask@27 () T@PolymorphicMapType_75537)
(declare-fun Heap@10 () T@PolymorphicMapType_75516)
(declare-fun newVersion@1 () T@FrameType)
(declare-fun Mask@9 () T@PolymorphicMapType_75537)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_2989 (Int) T@FrameType)
(declare-fun FrameFragment_36526 (T@Ref) T@FrameType)
(declare-fun FrameFragment_36441 (T@FrameType) T@FrameType)
(declare-fun Mask@7 () T@PolymorphicMapType_75537)
(declare-fun Mask@8 () T@PolymorphicMapType_75537)
(declare-fun Mask@26 () T@PolymorphicMapType_75537)
(declare-fun Mask@25 () T@PolymorphicMapType_75537)
(declare-fun ExhaleHeap@4 () T@PolymorphicMapType_75516)
(declare-fun Mask@24 () T@PolymorphicMapType_75537)
(declare-fun Mask@23 () T@PolymorphicMapType_75537)
(declare-fun Heap@9 () T@PolymorphicMapType_75516)
(declare-fun Mask@22 () T@PolymorphicMapType_75537)
(declare-fun Heap@7 () T@PolymorphicMapType_75516)
(declare-fun newPMask@0 () T@PolymorphicMapType_76065)
(declare-fun Heap@8 () T@PolymorphicMapType_75516)
(declare-fun Heap@6 () T@PolymorphicMapType_75516)
(declare-fun Heap@5 () T@PolymorphicMapType_75516)
(declare-fun Heap@2 () T@PolymorphicMapType_75516)
(declare-fun Heap@3 () T@PolymorphicMapType_75516)
(declare-fun Heap@4 () T@PolymorphicMapType_75516)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@21 () T@PolymorphicMapType_75537)
(declare-fun Mask@20 () T@PolymorphicMapType_75537)
(declare-fun Mask@19 () T@PolymorphicMapType_75537)
(declare-fun Mask@18 () T@PolymorphicMapType_75537)
(declare-fun Mask@17 () T@PolymorphicMapType_75537)
(declare-fun Heap@1 () T@PolymorphicMapType_75516)
(declare-fun Mask@15 () T@PolymorphicMapType_75537)
(declare-fun Mask@16 () T@PolymorphicMapType_75537)
(declare-fun Mask@14 () T@PolymorphicMapType_75537)
(declare-fun Mask@13 () T@PolymorphicMapType_75537)
(declare-fun Heap@0 () T@PolymorphicMapType_75516)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@12 () T@PolymorphicMapType_75537)
(declare-fun Mask@10 () T@PolymorphicMapType_75537)
(declare-fun Mask@11 () T@PolymorphicMapType_75537)
(declare-fun Mask@4 () T@PolymorphicMapType_75537)
(declare-fun vwand@0 () T@Ref)
(declare-fun Heap@@79 () T@PolymorphicMapType_75516)
(declare-fun __flatten_81@0 () T@Seq_2867)
(declare-fun tmp@0 () T@Ref)
(declare-fun __flatten_41@0 () T@Ref)
(declare-fun Mask@3 () T@PolymorphicMapType_75537)
(declare-fun Mask@2 () T@PolymorphicMapType_75537)
(declare-fun prefix@0 () T@Seq_2867)
(declare-fun Mask@1 () T@PolymorphicMapType_75537)
(declare-fun arg_in_1_0@0 () T@Seq_2867)
(declare-fun arg_out_1_0@0 () T@Seq_2867)
(declare-fun cursor () T@Ref)
(declare-fun vwand () T@Ref)
(declare-fun __flatten_41 () T@Ref)
(declare-fun __flatten_42 () T@Ref)
(declare-fun __flatten_84 () T@Ref)
(declare-fun tmp () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_75537)
(set-info :boogie-vc-id List__append_iter)
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
 (=> (= (ControlFlow 0 0) 198) (let ((anon82_Else_correct true))
(let ((anon82_Then_correct  (and (=> (= (ControlFlow 0 191) (- 0 192)) (not (= diz@@37 null))) (=> (not (= diz@@37 null)) (=> (= (ControlFlow 0 191) (- 0 190)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| PostMask@0) null (List__state diz@@37)))))))))
(let ((anon81_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (and (= PostMask@0 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| ZeroMask) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| ZeroMask) null (List__state diz@@37) (+ (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| ZeroMask) null (List__state diz@@37)) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| ZeroMask))) (state PostHeap@0 PostMask@0)) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 194) 191) anon82_Then_correct) (=> (= (ControlFlow 0 194) 193) anon82_Else_correct))))))
(let ((anon93_Else_correct true))
(let ((anon93_Then_correct  (and (=> (= (ControlFlow 0 148) (- 0 149)) (not (= vwand@1 null))) (=> (not (= vwand@1 null)) (=> (= (ControlFlow 0 148) (- 0 147)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@40) null (Wand_list_for_list__valid_wand vwand@1)))))))))
(let ((anon92_Else_correct  (=> (= (Wand_list_for_list__get_out_1 ExhaleHeap@3 vwand@1) diz@@37) (=> (and (state ExhaleHeap@3 Mask@40) (state ExhaleHeap@3 Mask@40)) (and (=> (= (ControlFlow 0 151) 148) anon93_Then_correct) (=> (= (ControlFlow 0 151) 150) anon93_Else_correct))))))
(let ((anon92_Then_correct  (and (=> (= (ControlFlow 0 145) (- 0 146)) (not (= vwand@1 null))) (=> (not (= vwand@1 null)) (=> (= (ControlFlow 0 145) (- 0 144)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@40) null (Wand_list_for_list__valid_wand vwand@1)))))))))
(let ((anon91_Else_correct  (=> (|Seq#Equal_3097| (Wand_list_for_list__get_in_1_0 ExhaleHeap@3 vwand@1) (|Seq#Append_3237| suffix@0 L2)) (=> (and (state ExhaleHeap@3 Mask@40) (state ExhaleHeap@3 Mask@40)) (and (=> (= (ControlFlow 0 152) 145) anon92_Then_correct) (=> (= (ControlFlow 0 152) 151) anon92_Else_correct))))))
(let ((anon91_Then_correct  (and (=> (= (ControlFlow 0 142) (- 0 143)) (not (= vwand@1 null))) (=> (not (= vwand@1 null)) (=> (= (ControlFlow 0 142) (- 0 141)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@40) null (Wand_list_for_list__valid_wand vwand@1)))))))))
(let ((anon90_Else_correct  (=> (= (Wand_list_for_list__get_in_1 ExhaleHeap@3 vwand@1) cursor@0) (=> (and (state ExhaleHeap@3 Mask@40) (state ExhaleHeap@3 Mask@40)) (and (=> (= (ControlFlow 0 153) 142) anon91_Then_correct) (=> (= (ControlFlow 0 153) 152) anon91_Else_correct))))))
(let ((anon90_Then_correct  (and (=> (= (ControlFlow 0 139) (- 0 140)) (not (= vwand@1 null))) (=> (not (= vwand@1 null)) (=> (= (ControlFlow 0 139) (- 0 138)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@40) null (Wand_list_for_list__valid_wand vwand@1)))))))))
(let ((anon89_Else_correct  (=> (and (and (and (|Seq#Equal_3097| (List__contents ExhaleHeap@3 l_2) L2) (state ExhaleHeap@3 Mask@39)) (and (not (= vwand@1 null)) (state ExhaleHeap@3 Mask@39))) (and (and (= Mask@40 (PolymorphicMapType_75537 (store (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@39) null (Wand_list_for_list__valid_wand vwand@1) (+ (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@39) null (Wand_list_for_list__valid_wand vwand@1)) FullPerm)) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@39) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@39) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@39) (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@39) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@39) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@39) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@39) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@39) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@39) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@39) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@39) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@39) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@39) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@39) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@39) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@39) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@39))) (state ExhaleHeap@3 Mask@40)) (and (state ExhaleHeap@3 Mask@40) (state ExhaleHeap@3 Mask@40)))) (and (=> (= (ControlFlow 0 154) 139) anon90_Then_correct) (=> (= (ControlFlow 0 154) 153) anon90_Else_correct)))))
(let ((anon89_Then_correct  (and (=> (= (ControlFlow 0 136) (- 0 137)) (not (= l_2 null))) (=> (not (= l_2 null)) (=> (= (ControlFlow 0 136) (- 0 135)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@39) null (List__state l_2)))))))))
(let ((anon88_Else_correct  (=> (and (|Seq#Equal_3097| suffix@0 (List__contents ExhaleHeap@3 cursor@0)) (state ExhaleHeap@3 Mask@6)) (=> (and (and (and (|Seq#Equal_3097| (|Seq#Append_3237| prefix@1 suffix@0) L1) (state ExhaleHeap@3 Mask@6)) (and (not (= l_2 null)) (state ExhaleHeap@3 Mask@6))) (and (and (= Mask@39 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@6) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@6) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@6) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@6) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@6) null (List__state l_2) (+ (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@6) null (List__state l_2)) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@6) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@6) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@6) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@6) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@6) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@6) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@6) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@6) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@6) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@6) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@6) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@6) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@6))) (state ExhaleHeap@3 Mask@39)) (and (state ExhaleHeap@3 Mask@39) (state ExhaleHeap@3 Mask@39)))) (and (=> (= (ControlFlow 0 155) 136) anon89_Then_correct) (=> (= (ControlFlow 0 155) 154) anon89_Else_correct))))))
(let ((anon88_Then_correct  (and (=> (= (ControlFlow 0 133) (- 0 134)) (not (= cursor@0 null))) (=> (not (= cursor@0 null)) (=> (= (ControlFlow 0 133) (- 0 132)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@6) null (List__state cursor@0)))))))))
(let ((anon87_Then_correct  (=> (and (not (= cursor@0 null)) (state ExhaleHeap@3 Mask@5)) (=> (and (and (= Mask@6 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@5) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@5) null (List__state cursor@0) (+ (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@5) null (List__state cursor@0)) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@5))) (state ExhaleHeap@3 Mask@6)) (and (state ExhaleHeap@3 Mask@6) (state ExhaleHeap@3 Mask@6))) (and (=> (= (ControlFlow 0 156) 133) anon88_Then_correct) (=> (= (ControlFlow 0 156) 155) anon88_Else_correct))))))
(let ((anon53_correct  (=> (= Mask@38 (PolymorphicMapType_75537 (store (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@37) null (Wand_list_for_list__valid_wand __flatten_41@1) (- (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@37) null (Wand_list_for_list__valid_wand __flatten_41@1)) FullPerm)) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@37) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@37) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@37) (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@37) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@37) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@37) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@37) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@37) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@37) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@37) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@37) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@37) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@37) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@37) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@37) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@37) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@37))) (and (=> (= (ControlFlow 0 67) (- 0 70)) (= (Wand_list_for_list__get_in_1 ExhaleHeap@8 __flatten_41@1) cursor@1)) (=> (= (Wand_list_for_list__get_in_1 ExhaleHeap@8 __flatten_41@1) cursor@1) (and (=> (= (ControlFlow 0 67) (- 0 69)) (|Seq#Equal_3097| (Wand_list_for_list__get_in_1_0 ExhaleHeap@8 __flatten_41@1) (|Seq#Append_3237| __flatten_82@1 L2))) (=> (|Seq#Equal_3097| (Wand_list_for_list__get_in_1_0 ExhaleHeap@8 __flatten_41@1) (|Seq#Append_3237| __flatten_82@1 L2)) (and (=> (= (ControlFlow 0 67) (- 0 68)) (= (Wand_list_for_list__get_out_1 ExhaleHeap@8 __flatten_41@1) diz@@37)) (=> (= (Wand_list_for_list__get_out_1 ExhaleHeap@8 __flatten_41@1) diz@@37) (=> (= (ControlFlow 0 67) (- 0 66)) (|Seq#Equal_3097| (Wand_list_for_list__get_out_1_0 ExhaleHeap@8 __flatten_41@1) (|Seq#Append_3237| L1 L2))))))))))))
(let ((anon105_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 73) 67)) anon53_correct)))
(let ((anon105_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 71) (- 0 72)) (<= FullPerm (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@37) null (Wand_list_for_list__valid_wand __flatten_41@1)))) (=> (<= FullPerm (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@37) null (Wand_list_for_list__valid_wand __flatten_41@1))) (=> (= (ControlFlow 0 71) 67) anon53_correct))))))
(let ((anon51_correct  (=> (= Mask@37 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@36) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@36) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@36) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@36) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@36) null (List__state l_2) (- (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@36) null (List__state l_2)) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@36) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@36) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@36) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@36) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@36) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@36) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@36) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@36) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@36) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@36) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@36) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@36) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@36))) (and (=> (= (ControlFlow 0 74) (- 0 76)) (|Seq#Equal_3097| (List__contents ExhaleHeap@8 l_2) L2)) (=> (|Seq#Equal_3097| (List__contents ExhaleHeap@8 l_2) L2) (and (=> (= (ControlFlow 0 74) (- 0 75)) (not (= __flatten_41@1 null))) (=> (not (= __flatten_41@1 null)) (and (=> (= (ControlFlow 0 74) 71) anon105_Then_correct) (=> (= (ControlFlow 0 74) 73) anon105_Else_correct)))))))))
(let ((anon104_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 79) 74)) anon51_correct)))
(let ((anon104_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 77) (- 0 78)) (<= FullPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@36) null (List__state l_2)))) (=> (<= FullPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@36) null (List__state l_2))) (=> (= (ControlFlow 0 77) 74) anon51_correct))))))
(let ((anon49_correct  (=> (= Mask@36 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@35) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@35) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@35) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@35) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@35) null (List__state cursor@1) (- (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@35) null (List__state cursor@1)) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@35) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@35) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@35) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@35) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@35) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@35) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@35) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@35) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@35) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@35) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@35) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@35) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@35))) (and (=> (= (ControlFlow 0 80) (- 0 83)) (|Seq#Equal_3097| __flatten_82@1 (List__contents ExhaleHeap@8 cursor@1))) (=> (|Seq#Equal_3097| __flatten_82@1 (List__contents ExhaleHeap@8 cursor@1)) (and (=> (= (ControlFlow 0 80) (- 0 82)) (|Seq#Equal_3097| (|Seq#Append_3237| prefix@2 __flatten_82@1) L1)) (=> (|Seq#Equal_3097| (|Seq#Append_3237| prefix@2 __flatten_82@1) L1) (and (=> (= (ControlFlow 0 80) (- 0 81)) (not (= l_2 null))) (=> (not (= l_2 null)) (and (=> (= (ControlFlow 0 80) 77) anon104_Then_correct) (=> (= (ControlFlow 0 80) 79) anon104_Else_correct)))))))))))
(let ((anon103_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 86) 80)) anon49_correct)))
(let ((anon103_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 84) (- 0 85)) (<= FullPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@35) null (List__state cursor@1)))) (=> (<= FullPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@35) null (List__state cursor@1))) (=> (= (ControlFlow 0 84) 80) anon49_correct))))))
(let ((anon47_correct  (=> (= Mask@34 (PolymorphicMapType_75537 (store (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@33) null (Wand_list_for_list__valid_wand vwand@1) (- (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@33) null (Wand_list_for_list__valid_wand vwand@1)) FullPerm)) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@33) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@33) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@33) (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@33) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@33) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@33) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@33) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@33) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@33) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@33) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@33) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@33) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@33) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@33) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@33) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@33) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@33))) (and (=> (= (ControlFlow 0 87) (- 0 98)) (= (Wand_list_for_list__get_in_1 Heap@11 vwand@1) cursor@0)) (=> (= (Wand_list_for_list__get_in_1 Heap@11 vwand@1) cursor@0) (and (=> (= (ControlFlow 0 87) (- 0 97)) (|Seq#Equal_3097| (Wand_list_for_list__get_in_1_0 Heap@11 vwand@1) (|Seq#Append_3237| suffix@0 L2))) (=> (|Seq#Equal_3097| (Wand_list_for_list__get_in_1_0 Heap@11 vwand@1) (|Seq#Append_3237| suffix@0 L2)) (and (=> (= (ControlFlow 0 87) (- 0 96)) (= (Wand_list_for_list__get_out_1 Heap@11 vwand@1) diz@@37)) (=> (= (Wand_list_for_list__get_out_1 Heap@11 vwand@1) diz@@37) (and (=> (= (ControlFlow 0 87) (- 0 95)) (|Seq#Equal_3097| (Wand_list_for_list__get_out_1_0 Heap@11 vwand@1) (|Seq#Append_3237| L1 L2))) (=> (|Seq#Equal_3097| (Wand_list_for_list__get_out_1_0 Heap@11 vwand@1) (|Seq#Append_3237| L1 L2)) (and (=> (= (ControlFlow 0 87) (- 0 94)) (not (= cursor@1 null))) (=> (not (= cursor@1 null)) (and (=> (= (ControlFlow 0 87) (- 0 93)) (= cursor@1 cursor@1)) (=> (= cursor@1 cursor@1) (and (=> (= (ControlFlow 0 87) (- 0 92)) (|Seq#Equal_3097| arg_in_1_0_1@0 (|Seq#Append_3237| __flatten_82@1 L2))) (=> (|Seq#Equal_3097| arg_in_1_0_1@0 (|Seq#Append_3237| __flatten_82@1 L2)) (and (=> (= (ControlFlow 0 87) (- 0 91)) (not (= diz@@37 null))) (=> (not (= diz@@37 null)) (and (=> (= (ControlFlow 0 87) (- 0 90)) (= diz@@37 diz@@37)) (=> (= diz@@37 diz@@37) (and (=> (= (ControlFlow 0 87) (- 0 89)) (|Seq#Equal_3097| arg_out_1_0_1@0 (|Seq#Append_3237| L1 L2))) (=> (|Seq#Equal_3097| arg_out_1_0_1@0 (|Seq#Append_3237| L1 L2)) (=> (and (and (and (and (IdenticalOnKnownLocations Heap@11 ExhaleHeap@8 Mask@34) (not (= __flatten_41@1 null))) (and (= Mask@35 (PolymorphicMapType_75537 (store (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@34) null (Wand_list_for_list__valid_wand __flatten_41@1) (+ (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@34) null (Wand_list_for_list__valid_wand __flatten_41@1)) FullPerm)) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@34) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@34) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@34) (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@34) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@34) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@34) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@34) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@34) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@34) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@34) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@34) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@34) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@34) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@34) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@34) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@34) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@34))) (state ExhaleHeap@8 Mask@35))) (and (and (state ExhaleHeap@8 Mask@35) (= (Wand_list_for_list__get_in_1 ExhaleHeap@8 __flatten_41@1) cursor@1)) (and (state ExhaleHeap@8 Mask@35) (|Seq#Equal_3097| (Wand_list_for_list__get_in_1_0 ExhaleHeap@8 __flatten_41@1) arg_in_1_0_1@0)))) (and (and (and (state ExhaleHeap@8 Mask@35) (= (Wand_list_for_list__get_out_1 ExhaleHeap@8 __flatten_41@1) diz@@37)) (and (state ExhaleHeap@8 Mask@35) (|Seq#Equal_3097| (Wand_list_for_list__get_out_1_0 ExhaleHeap@8 __flatten_41@1) arg_out_1_0_1@0))) (and (and (state ExhaleHeap@8 Mask@35) (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@8) __flatten_41@1 $allocated)) (and (state ExhaleHeap@8 Mask@35) (state ExhaleHeap@8 Mask@35))))) (and (=> (= (ControlFlow 0 87) (- 0 88)) (not (= cursor@1 null))) (=> (not (= cursor@1 null)) (and (=> (= (ControlFlow 0 87) 84) anon103_Then_correct) (=> (= (ControlFlow 0 87) 86) anon103_Else_correct))))))))))))))))))))))))))))
(let ((anon102_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 101) 87)) anon47_correct)))
(let ((anon102_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 99) (- 0 100)) (<= FullPerm (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@33) null (Wand_list_for_list__valid_wand vwand@1)))) (=> (<= FullPerm (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@33) null (Wand_list_for_list__valid_wand vwand@1))) (=> (= (ControlFlow 0 99) 87) anon47_correct))))))
(let ((anon45_correct  (=> (= Mask@33 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@32) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@32) (store (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@32) cursor@0 List__next (- (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@32) cursor@0 List__next) FullPerm)) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@32) (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@32) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@32) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@32) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@32) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@32) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@32) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@32) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@32) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@32) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@32) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@32) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@32) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@32) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@32))) (and (=> (= (ControlFlow 0 102) (- 0 105)) (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@11) cursor@0 List__next) cursor@1)) (=> (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@11) cursor@0 List__next) cursor@1) (and (=> (= (ControlFlow 0 102) (- 0 104)) (|Seq#Equal_3097| suffix@0 (|Seq#Append_3237| (|Seq#Singleton_3237| (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@11) cursor@0 List__val)) __flatten_82@1))) (=> (|Seq#Equal_3097| suffix@0 (|Seq#Append_3237| (|Seq#Singleton_3237| (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@11) cursor@0 List__val)) __flatten_82@1)) (and (=> (= (ControlFlow 0 102) (- 0 103)) (not (= vwand@1 null))) (=> (not (= vwand@1 null)) (and (=> (= (ControlFlow 0 102) 99) anon102_Then_correct) (=> (= (ControlFlow 0 102) 101) anon102_Else_correct)))))))))))
(let ((anon101_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 108) 102)) anon45_correct)))
(let ((anon101_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 106) (- 0 107)) (<= FullPerm (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@32) cursor@0 List__next))) (=> (<= FullPerm (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@32) cursor@0 List__next)) (=> (= (ControlFlow 0 106) 102) anon45_correct))))))
(let ((anon43_correct  (=> (= Mask@32 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@31) (store (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@31) cursor@0 List__val (- (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@31) cursor@0 List__val) FullPerm)) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@31) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@31) (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@31) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@31) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@31) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@31) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@31) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@31) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@31) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@31) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@31) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@31) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@31) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@31) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@31) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@31))) (and (=> (= (ControlFlow 0 109) 106) anon101_Then_correct) (=> (= (ControlFlow 0 109) 108) anon101_Else_correct)))))
(let ((anon100_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 112) 109)) anon43_correct)))
(let ((anon100_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 110) (- 0 111)) (<= FullPerm (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@31) cursor@0 List__val))) (=> (<= FullPerm (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@31) cursor@0 List__val)) (=> (= (ControlFlow 0 110) 109) anon43_correct))))))
(let ((anon99_Else_correct  (=> (and (and (= __flatten_82@1 (List__contents Heap@11 (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@11) cursor@0 List__next))) (state Heap@11 Mask@31)) (and (state Heap@11 Mask@31) (state Heap@11 Mask@31))) (and (=> (= (ControlFlow 0 113) (- 0 117)) (HasDirectPerm_36525_36526 Mask@31 cursor@0 List__next)) (=> (HasDirectPerm_36525_36526 Mask@31 cursor@0 List__next) (=> (and (and (= cursor@1 (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@11) cursor@0 List__next)) (state Heap@11 Mask@31)) (and (= arg_in_1_0_1@0 (|Seq#Append_3237| __flatten_82@1 L2)) (= arg_out_1_0_1@0 (|Seq#Append_3237| L1 L2)))) (and (=> (= (ControlFlow 0 113) (- 0 116)) (not (= diz@@37 null))) (=> (not (= diz@@37 null)) (and (=> (= (ControlFlow 0 113) (- 0 115)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 113) (- 0 114)) (not (= diz@@37 null))) (=> (not (= diz@@37 null)) (and (=> (= (ControlFlow 0 113) 110) anon100_Then_correct) (=> (= (ControlFlow 0 113) 112) anon100_Else_correct))))))))))))))
(let ((anon99_Then_correct  (and (=> (= (ControlFlow 0 64) (- 0 65)) (not (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@11) cursor@0 List__next) null))) (=> (not (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@11) cursor@0 List__next) null)) (=> (= (ControlFlow 0 64) (- 0 63)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@31) null (List__state (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@11) cursor@0 List__next))))))))))
(let ((anon39_correct  (=> (and (state Heap@11 Mask@31) (state Heap@11 Mask@31)) (and (=> (= (ControlFlow 0 118) (- 0 120)) (HasDirectPerm_36570_3237 Mask@31 cursor@0 List__val)) (=> (HasDirectPerm_36570_3237 Mask@31 cursor@0 List__val) (=> (and (= prefix@2 (|Seq#Append_3237| prefix@1 (|Seq#Singleton_3237| (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@11) cursor@0 List__val)))) (state Heap@11 Mask@31)) (and (=> (= (ControlFlow 0 118) (- 0 119)) (HasDirectPerm_36525_36526 Mask@31 cursor@0 List__next)) (=> (HasDirectPerm_36525_36526 Mask@31 cursor@0 List__next) (and (=> (= (ControlFlow 0 118) 64) anon99_Then_correct) (=> (= (ControlFlow 0 118) 113) anon99_Else_correct))))))))))
(let ((anon98_Else_correct  (=> (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@11) cursor@0 List__next) null) (=> (and (= Mask@31 Mask@29) (= (ControlFlow 0 122) 118)) anon39_correct))))
(let ((anon98_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@11) cursor@0 List__next) null)) (= Mask@30 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@29) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@29) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@29) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@29) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@29) null (List__state (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@11) cursor@0 List__next)) (+ (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@29) null (List__state (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@11) cursor@0 List__next))) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@29) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@29) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@29) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@29) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@29) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@29) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@29) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@29) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@29) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@29) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@29) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@29) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@29)))) (=> (and (and (InsidePredicate_36821_36821 (List__state cursor@0) (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@11) null (List__state cursor@0)) (List__state (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@11) cursor@0 List__next)) (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@11) null (List__state (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@11) cursor@0 List__next)))) (state Heap@11 Mask@30)) (and (= Mask@31 Mask@30) (= (ControlFlow 0 121) 118))) anon39_correct))))
(let ((anon37_correct  (=> (and (not (= cursor@0 null)) (= Mask@28 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@27) (store (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@27) cursor@0 List__val (+ (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@27) cursor@0 List__val) FullPerm)) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@27) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@27) (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@27) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@27) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@27) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@27) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@27) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@27) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@27) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@27) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@27) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@27) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@27) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@27) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@27) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@27)))) (=> (and (and (state Heap@11 Mask@28) (not (= cursor@0 null))) (and (= Mask@29 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@28) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@28) (store (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@28) cursor@0 List__next (+ (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@28) cursor@0 List__next) FullPerm)) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@28) (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@28) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@28) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@28) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@28) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@28) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@28) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@28) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@28) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@28) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@28) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@28) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@28) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@28) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@28))) (state Heap@11 Mask@29))) (and (=> (= (ControlFlow 0 123) 121) anon98_Then_correct) (=> (= (ControlFlow 0 123) 122) anon98_Else_correct))))))
(let ((anon97_Else_correct  (=> (HasDirectPerm_36821_36822 Mask@27 null (List__state cursor@0)) (=> (and (= Heap@11 ExhaleHeap@3) (= (ControlFlow 0 125) 123)) anon37_correct))))
(let ((anon97_Then_correct  (=> (and (and (not (HasDirectPerm_36821_36822 Mask@27 null (List__state cursor@0))) (= Heap@10 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap@3) (store (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap@3) null (List__state cursor@0) newVersion@1) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| ExhaleHeap@3)))) (and (= Heap@11 Heap@10) (= (ControlFlow 0 124) 123))) anon37_correct)))
(let ((anon35_correct  (=> (= Mask@27 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@9) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@9) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@9) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@9) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@9) null (List__state cursor@0) (- (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@9) null (List__state cursor@0)) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@9) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@9) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@9) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@9) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@9) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@9) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@9) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@9) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@9) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@9) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@9) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@9) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@9))) (and (=> (= (ControlFlow 0 126) 124) anon97_Then_correct) (=> (= (ControlFlow 0 126) 125) anon97_Else_correct)))))
(let ((anon96_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 129) 126)) anon35_correct)))
(let ((anon96_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 127) (- 0 128)) (<= FullPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@9) null (List__state cursor@0)))) (=> (<= FullPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@9) null (List__state cursor@0))) (=> (= (ControlFlow 0 127) 126) anon35_correct))))))
(let ((anon95_Else_correct  (=> (and (not (= (List__get_next ExhaleHeap@3 cursor@0) null)) (state ExhaleHeap@3 Mask@9)) (=> (and (and (state ExhaleHeap@3 Mask@9) (state ExhaleHeap@3 Mask@9)) (and (|List__state#trigger_36821| ExhaleHeap@3 (List__state cursor@0)) (= (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap@3) null (List__state cursor@0)) (CombineFrames (FrameFragment_2989 (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| ExhaleHeap@3) cursor@0 List__val)) (CombineFrames (FrameFragment_36526 (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@3) cursor@0 List__next)) (FrameFragment_36441 (ite (not (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@3) cursor@0 List__next) null)) (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap@3) null (List__state (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@3) cursor@0 List__next))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 130) 127) anon96_Then_correct) (=> (= (ControlFlow 0 130) 129) anon96_Else_correct))))))
(let ((anon95_Then_correct  (and (=> (= (ControlFlow 0 61) (- 0 62)) (not (= cursor@0 null))) (=> (not (= cursor@0 null)) (=> (= (ControlFlow 0 61) (- 0 60)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@9) null (List__state cursor@0)))))))))
(let ((anon94_Then_correct  (=> (and (and (and (state ExhaleHeap@3 ZeroMask) (not (= cursor@0 null))) (and (= Mask@7 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| ZeroMask) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| ZeroMask) null (List__state cursor@0) (+ (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| ZeroMask) null (List__state cursor@0)) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| ZeroMask))) (state ExhaleHeap@3 Mask@7))) (and (and (state ExhaleHeap@3 Mask@7) (|Seq#Equal_3097| suffix@0 (List__contents ExhaleHeap@3 cursor@0))) (and (|Seq#Equal_3097| (|Seq#Append_3237| prefix@1 suffix@0) L1) (not (= l_2 null))))) (=> (and (and (and (and (= Mask@8 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@7) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@7) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@7) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@7) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@7) null (List__state l_2) (+ (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@7) null (List__state l_2)) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@7) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@7) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@7) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@7) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@7) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@7) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@7) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@7) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@7) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@7) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@7) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@7) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@7))) (state ExhaleHeap@3 Mask@8)) (and (state ExhaleHeap@3 Mask@8) (|Seq#Equal_3097| (List__contents ExhaleHeap@3 l_2) L2))) (and (and (not (= vwand@1 null)) (= Mask@9 (PolymorphicMapType_75537 (store (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@8) null (Wand_list_for_list__valid_wand vwand@1) (+ (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@8) null (Wand_list_for_list__valid_wand vwand@1)) FullPerm)) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@8) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@8) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@8) (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@8) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@8) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@8) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@8) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@8) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@8) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@8) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@8) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@8) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@8) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@8) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@8) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@8) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@8)))) (and (state ExhaleHeap@3 Mask@9) (state ExhaleHeap@3 Mask@9)))) (and (and (and (= (Wand_list_for_list__get_in_1 ExhaleHeap@3 vwand@1) cursor@0) (state ExhaleHeap@3 Mask@9)) (and (|Seq#Equal_3097| (Wand_list_for_list__get_in_1_0 ExhaleHeap@3 vwand@1) (|Seq#Append_3237| suffix@0 L2)) (state ExhaleHeap@3 Mask@9))) (and (and (= (Wand_list_for_list__get_out_1 ExhaleHeap@3 vwand@1) diz@@37) (state ExhaleHeap@3 Mask@9)) (and (|Seq#Equal_3097| (Wand_list_for_list__get_out_1_0 ExhaleHeap@3 vwand@1) (|Seq#Append_3237| L1 L2)) (state ExhaleHeap@3 Mask@9))))) (and (=> (= (ControlFlow 0 131) 61) anon95_Then_correct) (=> (= (ControlFlow 0 131) 130) anon95_Else_correct))))))
(let ((anon78_correct  (=> (and (= Mask@26 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@25) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@25) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@25) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@25) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@25) null (List__state diz@@37) (- (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@25) null (List__state diz@@37)) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@25) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@25) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@25) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@25) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@25) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@25) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@25) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@25) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@25) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@25) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@25) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@25) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@25))) (= (ControlFlow 0 11) (- 0 10))) (|Seq#Equal_3097| (List__contents ExhaleHeap@4 diz@@37) (|Seq#Append_3237| L1 L2)))))
(let ((anon117_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 14) 11)) anon78_correct)))
(let ((anon117_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (<= FullPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@25) null (List__state diz@@37)))) (=> (<= FullPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@25) null (List__state diz@@37))) (=> (= (ControlFlow 0 12) 11) anon78_correct))))))
(let ((anon76_correct  (=> (= Mask@24 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@23) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@23) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@23) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@23) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@23) null (List__state (Wand_list_for_list__get_in_1 Heap@9 vwand@1)) (- (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@23) null (List__state (Wand_list_for_list__get_in_1 Heap@9 vwand@1))) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@23) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@23) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@23) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@23) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@23) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@23) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@23) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@23) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@23) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@23) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@23) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@23) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@23))) (and (=> (= (ControlFlow 0 15) (- 0 17)) (|Seq#Equal_3097| (List__contents Heap@9 (Wand_list_for_list__get_in_1 Heap@9 vwand@1)) (Wand_list_for_list__get_in_1_0 Heap@9 vwand@1))) (=> (|Seq#Equal_3097| (List__contents Heap@9 (Wand_list_for_list__get_in_1 Heap@9 vwand@1)) (Wand_list_for_list__get_in_1_0 Heap@9 vwand@1)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (not (= (Wand_list_for_list__get_out_1 Heap@9 vwand@1) null))) (=> (not (= (Wand_list_for_list__get_out_1 Heap@9 vwand@1) null)) (=> (and (and (and (IdenticalOnKnownLocations Heap@9 ExhaleHeap@4 Mask@24) (state ExhaleHeap@4 Mask@24)) (and (= Mask@25 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@24) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@24) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@24) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@24) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@24) null (List__state (Wand_list_for_list__get_out_1 Heap@9 vwand@1)) (+ (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@24) null (List__state (Wand_list_for_list__get_out_1 Heap@9 vwand@1))) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@24) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@24) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@24) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@24) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@24) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@24) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@24) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@24) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@24) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@24) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@24) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@24) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@24))) (state ExhaleHeap@4 Mask@25))) (and (and (state ExhaleHeap@4 Mask@25) (|Seq#Equal_3097| (List__contents ExhaleHeap@4 (Wand_list_for_list__get_out_1 Heap@9 vwand@1)) (Wand_list_for_list__get_out_1_0 Heap@9 vwand@1))) (and (state ExhaleHeap@4 Mask@25) (state ExhaleHeap@4 Mask@25)))) (and (=> (= (ControlFlow 0 15) 12) anon117_Then_correct) (=> (= (ControlFlow 0 15) 14) anon117_Else_correct))))))))))
(let ((anon116_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 20) 15)) anon76_correct)))
(let ((anon116_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (<= FullPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@23) null (List__state (Wand_list_for_list__get_in_1 Heap@9 vwand@1))))) (=> (<= FullPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@23) null (List__state (Wand_list_for_list__get_in_1 Heap@9 vwand@1)))) (=> (= (ControlFlow 0 18) 15) anon76_correct))))))
(let ((anon74_correct  (=> (= Mask@23 (PolymorphicMapType_75537 (store (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@22) null (Wand_list_for_list__valid_wand vwand@1) (- (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@22) null (Wand_list_for_list__valid_wand vwand@1)) FullPerm)) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@22) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@22) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@22) (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@22) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@22) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@22) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@22) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@22) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@22) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@22) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@22) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@22) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@22) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@22) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@22) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@22) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@22))) (and (=> (= (ControlFlow 0 21) 18) anon116_Then_correct) (=> (= (ControlFlow 0 21) 20) anon116_Else_correct)))))
(let ((anon115_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 24) 21)) anon74_correct)))
(let ((anon115_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (<= FullPerm (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@22) null (Wand_list_for_list__valid_wand vwand@1)))) (=> (<= FullPerm (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@22) null (Wand_list_for_list__valid_wand vwand@1))) (=> (= (ControlFlow 0 22) 21) anon74_correct))))))
(let ((anon72_correct  (=> (and (state Heap@9 Mask@22) (state Heap@9 Mask@22)) (and (=> (= (ControlFlow 0 25) (- 0 27)) (not (= vwand@1 null))) (=> (not (= vwand@1 null)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 25) 22) anon115_Then_correct) (=> (= (ControlFlow 0 25) 24) anon115_Else_correct)))))))))
(let ((anon114_Else_correct  (=> (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next) null) (=> (and (= Heap@9 Heap@7) (= (ControlFlow 0 29) 25)) anon72_correct))))
(let ((anon114_Then_correct  (=> (not (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_3 T@Ref) (f_12 T@Field_81594_2989) ) (!  (=> (or (select (|PolymorphicMapType_76065_36523_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0))) o_3 f_12) (select (|PolymorphicMapType_76065_36523_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next)))) o_3 f_12)) (select (|PolymorphicMapType_76065_36523_2989#PolymorphicMapType_76065| newPMask@0) o_3 f_12))
 :qid |stdinbpl.6830:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_76065_36523_2989#PolymorphicMapType_76065| newPMask@0) o_3 f_12))
)) (forall ((o_3@@0 T@Ref) (f_12@@0 T@Field_75589_75590) ) (!  (=> (or (select (|PolymorphicMapType_76065_36525_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0))) o_3@@0 f_12@@0) (select (|PolymorphicMapType_76065_36525_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next)))) o_3@@0 f_12@@0)) (select (|PolymorphicMapType_76065_36525_36526#PolymorphicMapType_76065| newPMask@0) o_3@@0 f_12@@0))
 :qid |stdinbpl.6830:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_76065_36525_36526#PolymorphicMapType_76065| newPMask@0) o_3@@0 f_12@@0))
))) (forall ((o_3@@1 T@Ref) (f_12@@1 T@Field_81690_81692) ) (!  (=> (or (select (|PolymorphicMapType_76065_36528_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0))) o_3@@1 f_12@@1) (select (|PolymorphicMapType_76065_36528_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next)))) o_3@@1 f_12@@1)) (select (|PolymorphicMapType_76065_36528_91384#PolymorphicMapType_76065| newPMask@0) o_3@@1 f_12@@1))
 :qid |stdinbpl.6830:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_76065_36528_91384#PolymorphicMapType_76065| newPMask@0) o_3@@1 f_12@@1))
))) (forall ((o_3@@2 T@Ref) (f_12@@2 T@Field_75576_53) ) (!  (=> (or (select (|PolymorphicMapType_76065_36523_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0))) o_3@@2 f_12@@2) (select (|PolymorphicMapType_76065_36523_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next)))) o_3@@2 f_12@@2)) (select (|PolymorphicMapType_76065_36523_53#PolymorphicMapType_76065| newPMask@0) o_3@@2 f_12@@2))
 :qid |stdinbpl.6830:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_76065_36523_53#PolymorphicMapType_76065| newPMask@0) o_3@@2 f_12@@2))
))) (forall ((o_3@@3 T@Ref) (f_12@@3 T@Field_36525_36794) ) (!  (=> (or (select (|PolymorphicMapType_76065_36523_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0))) o_3@@3 f_12@@3) (select (|PolymorphicMapType_76065_36523_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next)))) o_3@@3 f_12@@3)) (select (|PolymorphicMapType_76065_36523_82630#PolymorphicMapType_76065| newPMask@0) o_3@@3 f_12@@3))
 :qid |stdinbpl.6830:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_76065_36523_82630#PolymorphicMapType_76065| newPMask@0) o_3@@3 f_12@@3))
))) (forall ((o_3@@4 T@Ref) (f_12@@4 T@Field_36525_90819) ) (!  (=> (or (select (|PolymorphicMapType_76065_36523_278476#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0))) o_3@@4 f_12@@4) (select (|PolymorphicMapType_76065_36523_278476#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next)))) o_3@@4 f_12@@4)) (select (|PolymorphicMapType_76065_36523_278476#PolymorphicMapType_76065| newPMask@0) o_3@@4 f_12@@4))
 :qid |stdinbpl.6830:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_76065_36523_278476#PolymorphicMapType_76065| newPMask@0) o_3@@4 f_12@@4))
))) (forall ((o_3@@5 T@Ref) (f_12@@5 T@Field_36793_3237) ) (!  (=> (or (select (|PolymorphicMapType_76065_82629_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0))) o_3@@5 f_12@@5) (select (|PolymorphicMapType_76065_82629_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next)))) o_3@@5 f_12@@5)) (select (|PolymorphicMapType_76065_82629_2989#PolymorphicMapType_76065| newPMask@0) o_3@@5 f_12@@5))
 :qid |stdinbpl.6830:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_76065_82629_2989#PolymorphicMapType_76065| newPMask@0) o_3@@5 f_12@@5))
))) (forall ((o_3@@6 T@Ref) (f_12@@6 T@Field_36793_36526) ) (!  (=> (or (select (|PolymorphicMapType_76065_82629_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0))) o_3@@6 f_12@@6) (select (|PolymorphicMapType_76065_82629_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next)))) o_3@@6 f_12@@6)) (select (|PolymorphicMapType_76065_82629_36526#PolymorphicMapType_76065| newPMask@0) o_3@@6 f_12@@6))
 :qid |stdinbpl.6830:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_76065_82629_36526#PolymorphicMapType_76065| newPMask@0) o_3@@6 f_12@@6))
))) (forall ((o_3@@7 T@Ref) (f_12@@7 T@Field_36793_103015) ) (!  (=> (or (select (|PolymorphicMapType_76065_82629_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0))) o_3@@7 f_12@@7) (select (|PolymorphicMapType_76065_82629_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next)))) o_3@@7 f_12@@7)) (select (|PolymorphicMapType_76065_82629_91384#PolymorphicMapType_76065| newPMask@0) o_3@@7 f_12@@7))
 :qid |stdinbpl.6830:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_76065_82629_91384#PolymorphicMapType_76065| newPMask@0) o_3@@7 f_12@@7))
))) (forall ((o_3@@8 T@Ref) (f_12@@8 T@Field_36793_53) ) (!  (=> (or (select (|PolymorphicMapType_76065_82629_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0))) o_3@@8 f_12@@8) (select (|PolymorphicMapType_76065_82629_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next)))) o_3@@8 f_12@@8)) (select (|PolymorphicMapType_76065_82629_53#PolymorphicMapType_76065| newPMask@0) o_3@@8 f_12@@8))
 :qid |stdinbpl.6830:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_76065_82629_53#PolymorphicMapType_76065| newPMask@0) o_3@@8 f_12@@8))
))) (forall ((o_3@@9 T@Ref) (f_12@@9 T@Field_82629_82630) ) (!  (=> (or (select (|PolymorphicMapType_76065_82629_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0))) o_3@@9 f_12@@9) (select (|PolymorphicMapType_76065_82629_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next)))) o_3@@9 f_12@@9)) (select (|PolymorphicMapType_76065_82629_82630#PolymorphicMapType_76065| newPMask@0) o_3@@9 f_12@@9))
 :qid |stdinbpl.6830:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_76065_82629_82630#PolymorphicMapType_76065| newPMask@0) o_3@@9 f_12@@9))
))) (forall ((o_3@@10 T@Ref) (f_12@@10 T@Field_90814_90819) ) (!  (=> (or (select (|PolymorphicMapType_76065_82629_279728#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0))) o_3@@10 f_12@@10) (select (|PolymorphicMapType_76065_82629_279728#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next)))) o_3@@10 f_12@@10)) (select (|PolymorphicMapType_76065_82629_279728#PolymorphicMapType_76065| newPMask@0) o_3@@10 f_12@@10))
 :qid |stdinbpl.6830:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_76065_82629_279728#PolymorphicMapType_76065| newPMask@0) o_3@@10 f_12@@10))
))) (forall ((o_3@@11 T@Ref) (f_12@@11 T@Field_36821_3237) ) (!  (=> (or (select (|PolymorphicMapType_76065_131882_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0))) o_3@@11 f_12@@11) (select (|PolymorphicMapType_76065_131882_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next)))) o_3@@11 f_12@@11)) (select (|PolymorphicMapType_76065_131882_2989#PolymorphicMapType_76065| newPMask@0) o_3@@11 f_12@@11))
 :qid |stdinbpl.6830:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_76065_131882_2989#PolymorphicMapType_76065| newPMask@0) o_3@@11 f_12@@11))
))) (forall ((o_3@@12 T@Ref) (f_12@@12 T@Field_36821_36526) ) (!  (=> (or (select (|PolymorphicMapType_76065_131882_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0))) o_3@@12 f_12@@12) (select (|PolymorphicMapType_76065_131882_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next)))) o_3@@12 f_12@@12)) (select (|PolymorphicMapType_76065_131882_36526#PolymorphicMapType_76065| newPMask@0) o_3@@12 f_12@@12))
 :qid |stdinbpl.6830:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_76065_131882_36526#PolymorphicMapType_76065| newPMask@0) o_3@@12 f_12@@12))
))) (forall ((o_3@@13 T@Ref) (f_12@@13 T@Field_36821_103015) ) (!  (=> (or (select (|PolymorphicMapType_76065_131882_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0))) o_3@@13 f_12@@13) (select (|PolymorphicMapType_76065_131882_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next)))) o_3@@13 f_12@@13)) (select (|PolymorphicMapType_76065_131882_91384#PolymorphicMapType_76065| newPMask@0) o_3@@13 f_12@@13))
 :qid |stdinbpl.6830:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_76065_131882_91384#PolymorphicMapType_76065| newPMask@0) o_3@@13 f_12@@13))
))) (forall ((o_3@@14 T@Ref) (f_12@@14 T@Field_36821_53) ) (!  (=> (or (select (|PolymorphicMapType_76065_131882_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0))) o_3@@14 f_12@@14) (select (|PolymorphicMapType_76065_131882_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next)))) o_3@@14 f_12@@14)) (select (|PolymorphicMapType_76065_131882_53#PolymorphicMapType_76065| newPMask@0) o_3@@14 f_12@@14))
 :qid |stdinbpl.6830:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_76065_131882_53#PolymorphicMapType_76065| newPMask@0) o_3@@14 f_12@@14))
))) (forall ((o_3@@15 T@Ref) (f_12@@15 T@Field_131882_131883) ) (!  (=> (or (select (|PolymorphicMapType_76065_131882_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0))) o_3@@15 f_12@@15) (select (|PolymorphicMapType_76065_131882_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next)))) o_3@@15 f_12@@15)) (select (|PolymorphicMapType_76065_131882_82630#PolymorphicMapType_76065| newPMask@0) o_3@@15 f_12@@15))
 :qid |stdinbpl.6830:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_76065_131882_82630#PolymorphicMapType_76065| newPMask@0) o_3@@15 f_12@@15))
))) (forall ((o_3@@16 T@Ref) (f_12@@16 T@Field_134696_134701) ) (!  (=> (or (select (|PolymorphicMapType_76065_131882_280980#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0))) o_3@@16 f_12@@16) (select (|PolymorphicMapType_76065_131882_280980#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) cursor@0 List__next)))) o_3@@16 f_12@@16)) (select (|PolymorphicMapType_76065_131882_280980#PolymorphicMapType_76065| newPMask@0) o_3@@16 f_12@@16))
 :qid |stdinbpl.6830:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_76065_131882_280980#PolymorphicMapType_76065| newPMask@0) o_3@@16 f_12@@16))
))) (= Heap@8 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@7) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@7) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@7) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@7) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@7) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@7) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@7) (store (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@7) null (|List__state#sm| cursor@0) newPMask@0) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@7) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@7) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@7) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@7) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@7) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@7) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@7) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@7) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@7) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@7)))) (and (= Heap@9 Heap@8) (= (ControlFlow 0 28) 25))) anon72_correct))))
(let ((anon70_correct  (=> (and (= Heap@6 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@5) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@5) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@5) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@5) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@5) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@5) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@5) (store (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0) (PolymorphicMapType_76065 (store (|PolymorphicMapType_76065_36523_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0))) cursor@0 List__val true) (|PolymorphicMapType_76065_36525_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_36528_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_36523_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_36523_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_36523_278476#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_82629_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_82629_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_82629_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_82629_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_82629_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_82629_279728#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_131882_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_131882_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_131882_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_131882_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_131882_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_131882_280980#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@5) null (|List__state#sm| cursor@0))))) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@5) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@5) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@5) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@5) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@5) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@5) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@5) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@5) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@5) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@5))) (= Heap@7 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@6) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@6) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@6) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@6) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@6) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@6) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@6) (store (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0) (PolymorphicMapType_76065 (|PolymorphicMapType_76065_36523_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0))) (store (|PolymorphicMapType_76065_36525_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0))) cursor@0 List__next true) (|PolymorphicMapType_76065_36528_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_36523_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_36523_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_36523_278476#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_82629_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_82629_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_82629_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_82629_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_82629_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_82629_279728#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_131882_2989#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_131882_36526#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_131882_91384#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_131882_53#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_131882_82630#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0))) (|PolymorphicMapType_76065_131882_280980#PolymorphicMapType_76065| (select (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@6) null (|List__state#sm| cursor@0))))) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@6) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@6) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@6) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@6) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@6) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@6) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@6) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@6) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@6) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@6)))) (and (=> (= (ControlFlow 0 30) 28) anon114_Then_correct) (=> (= (ControlFlow 0 30) 29) anon114_Else_correct)))))
(let ((anon113_Else_correct  (=> (HasDirectPerm_36821_36822 Mask@22 null (List__state cursor@0)) (=> (and (= Heap@5 Heap@2) (= (ControlFlow 0 32) 30)) anon70_correct))))
(let ((anon113_Then_correct  (=> (not (HasDirectPerm_36821_36822 Mask@22 null (List__state cursor@0))) (=> (and (and (= Heap@3 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@2) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@2) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@2) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@2) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@2) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@2) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@2) (store (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@2) null (|List__state#sm| cursor@0) ZeroPMask) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@2) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@2) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@2) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@2) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@2) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@2) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@2) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@2) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@2) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@2))) (= Heap@4 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@3) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@3) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@3) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@3) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@3) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@3) (store (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@3) null (List__state cursor@0) freshVersion@0) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@3) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@3) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@3) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@3) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@3) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@3) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@3) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@3) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@3) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@3) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@3)))) (and (= Heap@5 Heap@4) (= (ControlFlow 0 31) 30))) anon70_correct))))
(let ((anon68_correct  (=> (= Mask@22 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@21) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@21) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@21) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@21) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@21) null (List__state cursor@0) (+ (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@21) null (List__state cursor@0)) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@21) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@21) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@21) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@21) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@21) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@21) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@21) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@21) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@21) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@21) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@21) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@21) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@21))) (=> (and (and (state Heap@2 Mask@22) (state Heap@2 Mask@22)) (and (|List__state#trigger_36821| Heap@2 (List__state cursor@0)) (= (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@2) null (List__state cursor@0)) (CombineFrames (FrameFragment_2989 (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@2) cursor@0 List__val)) (CombineFrames (FrameFragment_36526 (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@2) cursor@0 List__next)) (FrameFragment_36441 (ite (not (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@2) cursor@0 List__next) null)) (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@2) null (List__state (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@2) cursor@0 List__next))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 33) 31) anon113_Then_correct) (=> (= (ControlFlow 0 33) 32) anon113_Else_correct))))))
(let ((anon67_correct  (=> (and (and (= Mask@20 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@19) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@19) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@19) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@19) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@19) null (List__state (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@2) cursor@0 List__next)) (- (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@19) null (List__state (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@2) cursor@0 List__next))) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@19) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@19) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@19) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@19) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@19) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@19) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@19) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@19) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@19) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@19) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@19) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@19) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@19))) (InsidePredicate_36821_36821 (List__state cursor@0) (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@2) null (List__state cursor@0)) (List__state (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@2) cursor@0 List__next)) (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@2) null (List__state (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@2) cursor@0 List__next))))) (and (= Mask@21 Mask@20) (= (ControlFlow 0 35) 33))) anon68_correct)))
(let ((anon112_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 38) 35)) anon67_correct)))
(let ((anon112_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (<= FullPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@19) null (List__state (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@2) cursor@0 List__next))))) (=> (<= FullPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@19) null (List__state (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@2) cursor@0 List__next)))) (=> (= (ControlFlow 0 36) 35) anon67_correct))))))
(let ((anon111_Then_correct  (=> (not (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@2) cursor@0 List__next) null)) (and (=> (= (ControlFlow 0 39) 36) anon112_Then_correct) (=> (= (ControlFlow 0 39) 38) anon112_Else_correct)))))
(let ((anon111_Else_correct  (=> (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@2) cursor@0 List__next) null) (=> (and (= Mask@21 Mask@19) (= (ControlFlow 0 34) 33)) anon68_correct))))
(let ((anon64_correct  (=> (= Mask@19 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@18) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@18) (store (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@18) cursor@0 List__next (- (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@18) cursor@0 List__next) FullPerm)) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@18) (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@18) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@18) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@18) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@18) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@18) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@18) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@18) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@18) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@18) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@18) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@18) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@18) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@18) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@18))) (and (=> (= (ControlFlow 0 40) 39) anon111_Then_correct) (=> (= (ControlFlow 0 40) 34) anon111_Else_correct)))))
(let ((anon110_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 43) 40)) anon64_correct)))
(let ((anon110_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (<= FullPerm (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@18) cursor@0 List__next))) (=> (<= FullPerm (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@18) cursor@0 List__next)) (=> (= (ControlFlow 0 41) 40) anon64_correct))))))
(let ((anon62_correct  (=> (= Mask@18 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@17) (store (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@17) cursor@0 List__val (- (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@17) cursor@0 List__val) FullPerm)) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@17) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@17) (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@17) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@17) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@17) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@17) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@17) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@17) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@17) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@17) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@17) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@17) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@17) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@17) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@17) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@17))) (and (=> (= (ControlFlow 0 44) 41) anon110_Then_correct) (=> (= (ControlFlow 0 44) 43) anon110_Else_correct)))))
(let ((anon109_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 47) 44)) anon62_correct)))
(let ((anon109_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 45) (- 0 46)) (<= FullPerm (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@17) cursor@0 List__val))) (=> (<= FullPerm (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@17) cursor@0 List__val)) (=> (= (ControlFlow 0 45) 44) anon62_correct))))))
(let ((anon60_correct  (=> (and (and (state Heap@1 Mask@17) (state Heap@1 Mask@17)) (and (state Heap@1 Mask@17) (state Heap@1 Mask@17))) (and (=> (= (ControlFlow 0 48) (- 0 49)) (= FullPerm (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@17) cursor@0 List__next))) (=> (= FullPerm (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@17) cursor@0 List__next)) (=> (and (= Heap@2 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@1) (store (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@1) cursor@0 List__next l_2) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| Heap@1) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| Heap@1) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| Heap@1) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| Heap@1) (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@1) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| Heap@1) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| Heap@1) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| Heap@1) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| Heap@1) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| Heap@1) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| Heap@1) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| Heap@1) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| Heap@1) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| Heap@1) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| Heap@1) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| Heap@1))) (state Heap@2 Mask@17)) (and (=> (= (ControlFlow 0 48) 45) anon109_Then_correct) (=> (= (ControlFlow 0 48) 47) anon109_Else_correct))))))))
(let ((anon108_Else_correct  (=> (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@1) cursor@0 List__next) null) (=> (and (= Mask@17 Mask@15) (= (ControlFlow 0 51) 48)) anon60_correct))))
(let ((anon108_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@1) cursor@0 List__next) null)) (= Mask@16 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@15) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@15) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@15) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@15) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@15) null (List__state (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@1) cursor@0 List__next)) (+ (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@15) null (List__state (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@1) cursor@0 List__next))) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@15) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@15) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@15) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@15) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@15) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@15) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@15) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@15) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@15) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@15) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@15) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@15) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@15)))) (=> (and (and (InsidePredicate_36821_36821 (List__state cursor@0) (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@1) null (List__state cursor@0)) (List__state (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@1) cursor@0 List__next)) (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| Heap@1) null (List__state (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| Heap@1) cursor@0 List__next)))) (state Heap@1 Mask@16)) (and (= Mask@17 Mask@16) (= (ControlFlow 0 50) 48))) anon60_correct))))
(let ((anon58_correct  (=> (and (not (= cursor@0 null)) (= Mask@14 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@13) (store (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@13) cursor@0 List__val (+ (select (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@13) cursor@0 List__val) FullPerm)) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@13) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@13) (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@13) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@13) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@13) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@13) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@13) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@13) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@13) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@13) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@13) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@13) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@13) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@13) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@13) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@13)))) (=> (and (and (state Heap@1 Mask@14) (not (= cursor@0 null))) (and (= Mask@15 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@14) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@14) (store (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@14) cursor@0 List__next (+ (select (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@14) cursor@0 List__next) FullPerm)) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@14) (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@14) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@14) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@14) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@14) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@14) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@14) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@14) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@14) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@14) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@14) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@14) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@14) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@14) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@14))) (state Heap@1 Mask@15))) (and (=> (= (ControlFlow 0 52) 50) anon108_Then_correct) (=> (= (ControlFlow 0 52) 51) anon108_Else_correct))))))
(let ((anon107_Else_correct  (=> (HasDirectPerm_36821_36822 Mask@13 null (List__state cursor@0)) (=> (and (= Heap@1 ExhaleHeap@3) (= (ControlFlow 0 54) 52)) anon58_correct))))
(let ((anon107_Then_correct  (=> (and (and (not (HasDirectPerm_36821_36822 Mask@13 null (List__state cursor@0))) (= Heap@0 (PolymorphicMapType_75516 (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36793_36794#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36528_83784#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36797_90906#PolymorphicMapType_75516| ExhaleHeap@3) (store (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap@3) null (List__state cursor@0) newVersion@0) (|PolymorphicMapType_75516_36825_134788#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36525_36794#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36525_273605#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36793_36526#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36793_103015#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36793_3237#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36793_53#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36821_36526#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36821_103015#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36821_3237#PolymorphicMapType_75516| ExhaleHeap@3) (|PolymorphicMapType_75516_36821_53#PolymorphicMapType_75516| ExhaleHeap@3)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 53) 52))) anon58_correct)))
(let ((anon56_correct  (=> (= Mask@13 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@12) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@12) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@12) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@12) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@12) null (List__state cursor@0) (- (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@12) null (List__state cursor@0)) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@12) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@12) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@12) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@12) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@12) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@12) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@12) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@12) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@12) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@12) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@12) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@12) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@12))) (and (=> (= (ControlFlow 0 55) 53) anon107_Then_correct) (=> (= (ControlFlow 0 55) 54) anon107_Else_correct)))))
(let ((anon106_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 58) 55)) anon56_correct)))
(let ((anon106_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 56) (- 0 57)) (<= FullPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@12) null (List__state cursor@0)))) (=> (<= FullPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@12) null (List__state cursor@0))) (=> (= (ControlFlow 0 56) 55) anon56_correct))))))
(let ((anon94_Else_correct  (=> (and (and (not (not (= (List__get_next ExhaleHeap@3 cursor@0) null))) (state ExhaleHeap@3 Mask@5)) (and (not (= cursor@0 null)) (= Mask@10 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@5) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@5) null (List__state cursor@0) (+ (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@5) null (List__state cursor@0)) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@5) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@5))))) (=> (and (and (and (state ExhaleHeap@3 Mask@10) (state ExhaleHeap@3 Mask@10)) (and (|Seq#Equal_3097| suffix@0 (List__contents ExhaleHeap@3 cursor@0)) (|Seq#Equal_3097| (|Seq#Append_3237| prefix@1 suffix@0) L1))) (and (and (not (= l_2 null)) (= Mask@11 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@10) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@10) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@10) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@10) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@10) null (List__state l_2) (+ (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@10) null (List__state l_2)) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@10) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@10) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@10) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@10) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@10) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@10) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@10) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@10) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@10) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@10) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@10) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@10) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@10)))) (and (state ExhaleHeap@3 Mask@11) (state ExhaleHeap@3 Mask@11)))) (=> (and (and (and (and (|Seq#Equal_3097| (List__contents ExhaleHeap@3 l_2) L2) (not (= vwand@1 null))) (and (= Mask@12 (PolymorphicMapType_75537 (store (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@11) null (Wand_list_for_list__valid_wand vwand@1) (+ (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@11) null (Wand_list_for_list__valid_wand vwand@1)) FullPerm)) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@11) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@11) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@11) (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@11) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@11) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@11) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@11) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@11) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@11) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@11) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@11) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@11) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@11) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@11) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@11) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@11) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@11))) (state ExhaleHeap@3 Mask@12))) (and (and (state ExhaleHeap@3 Mask@12) (= (Wand_list_for_list__get_in_1 ExhaleHeap@3 vwand@1) cursor@0)) (and (state ExhaleHeap@3 Mask@12) (|Seq#Equal_3097| (Wand_list_for_list__get_in_1_0 ExhaleHeap@3 vwand@1) (|Seq#Append_3237| suffix@0 L2))))) (and (and (and (state ExhaleHeap@3 Mask@12) (= (Wand_list_for_list__get_out_1 ExhaleHeap@3 vwand@1) diz@@37)) (and (state ExhaleHeap@3 Mask@12) (|Seq#Equal_3097| (Wand_list_for_list__get_out_1_0 ExhaleHeap@3 vwand@1) (|Seq#Append_3237| L1 L2)))) (and (and (state ExhaleHeap@3 Mask@12) (state ExhaleHeap@3 Mask@12)) (and (|List__state#trigger_36821| ExhaleHeap@3 (List__state cursor@0)) (= (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap@3) null (List__state cursor@0)) (CombineFrames (FrameFragment_2989 (select (|PolymorphicMapType_75516_36523_2989#PolymorphicMapType_75516| ExhaleHeap@3) cursor@0 List__val)) (CombineFrames (FrameFragment_36526 (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@3) cursor@0 List__next)) (FrameFragment_36441 (ite (not (= (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@3) cursor@0 List__next) null)) (select (|PolymorphicMapType_75516_36821_36822#PolymorphicMapType_75516| ExhaleHeap@3) null (List__state (select (|PolymorphicMapType_75516_36338_36339#PolymorphicMapType_75516| ExhaleHeap@3) cursor@0 List__next))) EmptyFrame))))))))) (and (=> (= (ControlFlow 0 59) 56) anon106_Then_correct) (=> (= (ControlFlow 0 59) 58) anon106_Else_correct)))))))
(let ((anon16_correct  (=> (= Mask@5 (PolymorphicMapType_75537 (store (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@4) null (Wand_list_for_list__valid_wand vwand@0) (- (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@4) null (Wand_list_for_list__valid_wand vwand@0)) FullPerm)) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@4) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@4) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@4) (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@4) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@4) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@4) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@4) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@4) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@4) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@4) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@4) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@4) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@4) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@4) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@4) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@4) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@4))) (and (=> (= (ControlFlow 0 157) (- 0 161)) (= (Wand_list_for_list__get_in_1 Heap@@79 vwand@0) diz@@37)) (=> (= (Wand_list_for_list__get_in_1 Heap@@79 vwand@0) diz@@37) (and (=> (= (ControlFlow 0 157) (- 0 160)) (|Seq#Equal_3097| (Wand_list_for_list__get_in_1_0 Heap@@79 vwand@0) (|Seq#Append_3237| __flatten_81@0 L2))) (=> (|Seq#Equal_3097| (Wand_list_for_list__get_in_1_0 Heap@@79 vwand@0) (|Seq#Append_3237| __flatten_81@0 L2)) (and (=> (= (ControlFlow 0 157) (- 0 159)) (= (Wand_list_for_list__get_out_1 Heap@@79 vwand@0) diz@@37)) (=> (= (Wand_list_for_list__get_out_1 Heap@@79 vwand@0) diz@@37) (and (=> (= (ControlFlow 0 157) (- 0 158)) (|Seq#Equal_3097| (Wand_list_for_list__get_out_1_0 Heap@@79 vwand@0) (|Seq#Append_3237| L1 L2))) (=> (|Seq#Equal_3097| (Wand_list_for_list__get_out_1_0 Heap@@79 vwand@0) (|Seq#Append_3237| L1 L2)) (=> (IdenticalOnKnownLocations Heap@@79 ExhaleHeap@3 Mask@5) (=> (and (and (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@3) vwand@1 $allocated) (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@3) cursor@0 $allocated)) (and (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@3) tmp@0 $allocated) (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| ExhaleHeap@3) __flatten_41@0 $allocated))) (and (and (=> (= (ControlFlow 0 157) 156) anon87_Then_correct) (=> (= (ControlFlow 0 157) 131) anon94_Then_correct)) (=> (= (ControlFlow 0 157) 59) anon94_Else_correct)))))))))))))))
(let ((anon86_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 164) 157)) anon16_correct)))
(let ((anon86_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 162) (- 0 163)) (<= FullPerm (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@4) null (Wand_list_for_list__valid_wand vwand@0)))) (=> (<= FullPerm (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@4) null (Wand_list_for_list__valid_wand vwand@0))) (=> (= (ControlFlow 0 162) 157) anon16_correct))))))
(let ((anon14_correct  (=> (= Mask@4 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@3) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@3) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@3) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@3) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@3) null (List__state l_2) (- (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@3) null (List__state l_2)) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@3) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@3) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@3) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@3) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@3) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@3) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@3) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@3) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@3) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@3) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@3) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@3) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@3))) (and (=> (= (ControlFlow 0 165) (- 0 167)) (|Seq#Equal_3097| (List__contents Heap@@79 l_2) L2)) (=> (|Seq#Equal_3097| (List__contents Heap@@79 l_2) L2) (and (=> (= (ControlFlow 0 165) (- 0 166)) (not (= vwand@0 null))) (=> (not (= vwand@0 null)) (and (=> (= (ControlFlow 0 165) 162) anon86_Then_correct) (=> (= (ControlFlow 0 165) 164) anon86_Else_correct)))))))))
(let ((anon85_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 170) 165)) anon14_correct)))
(let ((anon85_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 168) (- 0 169)) (<= FullPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@3) null (List__state l_2)))) (=> (<= FullPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@3) null (List__state l_2))) (=> (= (ControlFlow 0 168) 165) anon14_correct))))))
(let ((anon12_correct  (=> (= Mask@3 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@2) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@2) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@2) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@2) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@2) null (List__state diz@@37) (- (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@2) null (List__state diz@@37)) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@2) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@2) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@2) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@2) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@2) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@2) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@2) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@2) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@2) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@2) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@2) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@2) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@2))) (and (=> (= (ControlFlow 0 171) (- 0 174)) (|Seq#Equal_3097| __flatten_81@0 (List__contents Heap@@79 diz@@37))) (=> (|Seq#Equal_3097| __flatten_81@0 (List__contents Heap@@79 diz@@37)) (and (=> (= (ControlFlow 0 171) (- 0 173)) (|Seq#Equal_3097| (|Seq#Append_3237| prefix@0 __flatten_81@0) L1)) (=> (|Seq#Equal_3097| (|Seq#Append_3237| prefix@0 __flatten_81@0) L1) (and (=> (= (ControlFlow 0 171) (- 0 172)) (not (= l_2 null))) (=> (not (= l_2 null)) (and (=> (= (ControlFlow 0 171) 168) anon85_Then_correct) (=> (= (ControlFlow 0 171) 170) anon85_Else_correct)))))))))))
(let ((anon84_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 177) 171)) anon12_correct)))
(let ((anon84_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 175) (- 0 176)) (<= FullPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@2) null (List__state diz@@37)))) (=> (<= FullPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@2) null (List__state diz@@37))) (=> (= (ControlFlow 0 175) 171) anon12_correct))))))
(let ((anon83_Else_correct  (=> (and (= __flatten_81@0 (List__contents Heap@@79 diz@@37)) (state Heap@@79 Mask@1)) (=> (and (and (state Heap@@79 Mask@1) (state Heap@@79 Mask@1)) (and (= arg_in_1_0@0 (|Seq#Append_3237| L1 L2)) (= arg_out_1_0@0 (|Seq#Append_3237| L1 L2)))) (and (=> (= (ControlFlow 0 178) (- 0 188)) (not (= diz@@37 null))) (=> (not (= diz@@37 null)) (and (=> (= (ControlFlow 0 178) (- 0 187)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 178) (- 0 186)) (not (= diz@@37 null))) (=> (not (= diz@@37 null)) (and (=> (= (ControlFlow 0 178) (- 0 185)) (not (= diz@@37 null))) (=> (not (= diz@@37 null)) (and (=> (= (ControlFlow 0 178) (- 0 184)) (= diz@@37 diz@@37)) (=> (= diz@@37 diz@@37) (and (=> (= (ControlFlow 0 178) (- 0 183)) (|Seq#Equal_3097| arg_in_1_0@0 (|Seq#Append_3237| L1 L2))) (=> (|Seq#Equal_3097| arg_in_1_0@0 (|Seq#Append_3237| L1 L2)) (and (=> (= (ControlFlow 0 178) (- 0 182)) (not (= diz@@37 null))) (=> (not (= diz@@37 null)) (and (=> (= (ControlFlow 0 178) (- 0 181)) (= diz@@37 diz@@37)) (=> (= diz@@37 diz@@37) (and (=> (= (ControlFlow 0 178) (- 0 180)) (|Seq#Equal_3097| arg_out_1_0@0 (|Seq#Append_3237| L1 L2))) (=> (|Seq#Equal_3097| arg_out_1_0@0 (|Seq#Append_3237| L1 L2)) (=> (and (not (= vwand@0 null)) (= Mask@2 (PolymorphicMapType_75537 (store (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@1) null (Wand_list_for_list__valid_wand vwand@0) (+ (select (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@1) null (Wand_list_for_list__valid_wand vwand@0)) FullPerm)) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@1) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@1) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@1) (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@1) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@1) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@1) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@1) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@1) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@1) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@1) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@1) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@1) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@1) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@1) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@1) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@1) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@1)))) (=> (and (and (state Heap@@79 Mask@2) (state Heap@@79 Mask@2)) (and (= (Wand_list_for_list__get_in_1 Heap@@79 vwand@0) diz@@37) (state Heap@@79 Mask@2))) (=> (and (and (and (|Seq#Equal_3097| (Wand_list_for_list__get_in_1_0 Heap@@79 vwand@0) arg_in_1_0@0) (state Heap@@79 Mask@2)) (and (= (Wand_list_for_list__get_out_1 Heap@@79 vwand@0) diz@@37) (state Heap@@79 Mask@2))) (and (and (|Seq#Equal_3097| (Wand_list_for_list__get_out_1_0 Heap@@79 vwand@0) arg_out_1_0@0) (state Heap@@79 Mask@2)) (and (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@79) vwand@0 $allocated) (state Heap@@79 Mask@2)))) (and (=> (= (ControlFlow 0 178) (- 0 179)) (not (= diz@@37 null))) (=> (not (= diz@@37 null)) (and (=> (= (ControlFlow 0 178) 175) anon84_Then_correct) (=> (= (ControlFlow 0 178) 177) anon84_Else_correct)))))))))))))))))))))))))))))
(let ((anon83_Then_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (not (= diz@@37 null))) (=> (not (= diz@@37 null)) (=> (= (ControlFlow 0 8) (- 0 7)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@1) null (List__state diz@@37)))))))))
(let ((anon81_Else_correct  (=> (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@79) cursor $allocated) (=> (and (and (and (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@79) vwand $allocated) (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@79) __flatten_41 $allocated)) (and (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@79) __flatten_42 $allocated) (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@79) __flatten_84 $allocated))) (and (and (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@79) tmp $allocated) (state Heap@@79 Mask@1)) (and (= prefix@0 |Seq#Empty_18023|) (state Heap@@79 Mask@1)))) (and (=> (= (ControlFlow 0 189) 8) anon83_Then_correct) (=> (= (ControlFlow 0 189) 178) anon83_Else_correct))))))
(let ((anon80_Else_correct  (=> (and (|Seq#Equal_3097| (List__contents Heap@@79 l_2) L2) (state Heap@@79 Mask@1)) (and (=> (= (ControlFlow 0 195) 194) anon81_Then_correct) (=> (= (ControlFlow 0 195) 189) anon81_Else_correct)))))
(let ((anon80_Then_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (not (= l_2 null))) (=> (not (= l_2 null)) (=> (= (ControlFlow 0 5) (- 0 4)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@1) null (List__state l_2)))))))))
(let ((anon79_Else_correct  (=> (and (and (and (|Seq#Equal_3097| (List__contents Heap@@79 diz@@37) L1) (state Heap@@79 Mask@0)) (and (not (= l_2 null)) (state Heap@@79 Mask@0))) (and (and (= Mask@1 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| Mask@0) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| Mask@0) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| Mask@0) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| Mask@0) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@0) null (List__state l_2) (+ (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@0) null (List__state l_2)) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| Mask@0) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| Mask@0) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| Mask@0) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| Mask@0) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| Mask@0) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| Mask@0) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| Mask@0) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| Mask@0) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| Mask@0) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| Mask@0) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| Mask@0) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| Mask@0) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| Mask@0))) (state Heap@@79 Mask@1)) (and (state Heap@@79 Mask@1) (state Heap@@79 Mask@1)))) (and (=> (= (ControlFlow 0 196) 5) anon80_Then_correct) (=> (= (ControlFlow 0 196) 195) anon80_Else_correct)))))
(let ((anon79_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (= diz@@37 null))) (=> (not (= diz@@37 null)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| Mask@0) null (List__state diz@@37)))))))))
(let ((anon0_correct  (=> (state Heap@@79 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@79) diz@@37 $allocated) (select (|PolymorphicMapType_75516_36335_53#PolymorphicMapType_75516| Heap@@79) l_2 $allocated))) (=> (and (and (and (not (= diz@@37 null)) (state Heap@@79 ZeroMask)) (and (>= current_thread_id 0) (state Heap@@79 ZeroMask))) (and (and (= Mask@0 (PolymorphicMapType_75537 (|PolymorphicMapType_75537_36793_36794#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36523_2989#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36525_36526#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36528_85441#PolymorphicMapType_75537| ZeroMask) (store (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| ZeroMask) null (List__state diz@@37) (+ (select (|PolymorphicMapType_75537_36821_36822#PolymorphicMapType_75537| ZeroMask) null (List__state diz@@37)) FullPerm)) (|PolymorphicMapType_75537_36793_2989#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36793_36526#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36793_85441#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36793_53#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36793_289804#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36523_36794#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36523_53#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36523_290271#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36821_2989#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36821_36526#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36821_85441#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36821_53#PolymorphicMapType_75537| ZeroMask) (|PolymorphicMapType_75537_36821_290765#PolymorphicMapType_75537| ZeroMask))) (state Heap@@79 Mask@0)) (and (state Heap@@79 Mask@0) (state Heap@@79 Mask@0)))) (and (=> (= (ControlFlow 0 197) 2) anon79_Then_correct) (=> (= (ControlFlow 0 197) 196) anon79_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 198) 197) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
