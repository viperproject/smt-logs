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
(declare-sort T@Field_38257_53 0)
(declare-sort T@Field_38270_38271 0)
(declare-sort T@Field_41684_1789 0)
(declare-sort T@Field_42676_42677 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_56026_56031 0)
(declare-sort T@Field_21531_21975 0)
(declare-sort T@Field_21531_56031 0)
(declare-sort T@Field_21974_1789 0)
(declare-sort T@Field_21974_53 0)
(declare-sort T@Field_21974_38271 0)
(declare-sort T@Field_65737_1789 0)
(declare-sort T@Field_65737_65738 0)
(declare-sort T@Field_65737_53 0)
(declare-sort T@Field_65737_38271 0)
(declare-sort T@Field_65751_65756 0)
(declare-datatypes ((T@PolymorphicMapType_38218 0)) (((PolymorphicMapType_38218 (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| (Array T@Ref T@Field_41684_1789 Real)) (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| (Array T@Ref T@Field_42676_42677 Real)) (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| (Array T@Ref T@Field_21531_21975 Real)) (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| (Array T@Ref T@Field_38257_53 Real)) (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| (Array T@Ref T@Field_38270_38271 Real)) (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| (Array T@Ref T@Field_21531_56031 Real)) (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| (Array T@Ref T@Field_21974_1789 Real)) (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| (Array T@Ref T@Field_21974_53 Real)) (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| (Array T@Ref T@Field_21974_38271 Real)) (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| (Array T@Ref T@Field_56026_56031 Real)) (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| (Array T@Ref T@Field_65737_1789 Real)) (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| (Array T@Ref T@Field_65737_65738 Real)) (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| (Array T@Ref T@Field_65737_53 Real)) (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| (Array T@Ref T@Field_65737_38271 Real)) (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| (Array T@Ref T@Field_65751_65756 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_38746 0)) (((PolymorphicMapType_38746 (|PolymorphicMapType_38746_21531_1789#PolymorphicMapType_38746| (Array T@Ref T@Field_41684_1789 Bool)) (|PolymorphicMapType_38746_21531_53#PolymorphicMapType_38746| (Array T@Ref T@Field_38257_53 Bool)) (|PolymorphicMapType_38746_21531_38271#PolymorphicMapType_38746| (Array T@Ref T@Field_38270_38271 Bool)) (|PolymorphicMapType_38746_21531_42677#PolymorphicMapType_38746| (Array T@Ref T@Field_21531_21975 Bool)) (|PolymorphicMapType_38746_21531_125644#PolymorphicMapType_38746| (Array T@Ref T@Field_21531_56031 Bool)) (|PolymorphicMapType_38746_42676_1789#PolymorphicMapType_38746| (Array T@Ref T@Field_21974_1789 Bool)) (|PolymorphicMapType_38746_42676_53#PolymorphicMapType_38746| (Array T@Ref T@Field_21974_53 Bool)) (|PolymorphicMapType_38746_42676_38271#PolymorphicMapType_38746| (Array T@Ref T@Field_21974_38271 Bool)) (|PolymorphicMapType_38746_42676_42677#PolymorphicMapType_38746| (Array T@Ref T@Field_42676_42677 Bool)) (|PolymorphicMapType_38746_42676_126692#PolymorphicMapType_38746| (Array T@Ref T@Field_56026_56031 Bool)) (|PolymorphicMapType_38746_65737_1789#PolymorphicMapType_38746| (Array T@Ref T@Field_65737_1789 Bool)) (|PolymorphicMapType_38746_65737_53#PolymorphicMapType_38746| (Array T@Ref T@Field_65737_53 Bool)) (|PolymorphicMapType_38746_65737_38271#PolymorphicMapType_38746| (Array T@Ref T@Field_65737_38271 Bool)) (|PolymorphicMapType_38746_65737_42677#PolymorphicMapType_38746| (Array T@Ref T@Field_65737_65738 Bool)) (|PolymorphicMapType_38746_65737_127740#PolymorphicMapType_38746| (Array T@Ref T@Field_65751_65756 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_38197 0)) (((PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| (Array T@Ref T@Field_38257_53 Bool)) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| (Array T@Ref T@Field_38270_38271 T@Ref)) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| (Array T@Ref T@Field_41684_1789 Int)) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| (Array T@Ref T@Field_42676_42677 T@FrameType)) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| (Array T@Ref T@Field_56026_56031 T@PolymorphicMapType_38746)) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| (Array T@Ref T@Field_21531_21975 T@FrameType)) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| (Array T@Ref T@Field_21531_56031 T@PolymorphicMapType_38746)) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| (Array T@Ref T@Field_21974_1789 Int)) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| (Array T@Ref T@Field_21974_53 Bool)) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| (Array T@Ref T@Field_21974_38271 T@Ref)) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| (Array T@Ref T@Field_65737_1789 Int)) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| (Array T@Ref T@Field_65737_65738 T@FrameType)) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| (Array T@Ref T@Field_65737_53 Bool)) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| (Array T@Ref T@Field_65737_38271 T@Ref)) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| (Array T@Ref T@Field_65751_65756 T@PolymorphicMapType_38746)) ) ) ))
(declare-fun $allocated () T@Field_38257_53)
(declare-fun f_7 () T@Field_41684_1789)
(declare-fun g () T@Field_41684_1789)
(declare-fun succHeap (T@PolymorphicMapType_38197 T@PolymorphicMapType_38197) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_38197 T@PolymorphicMapType_38197) Bool)
(declare-fun state (T@PolymorphicMapType_38197 T@PolymorphicMapType_38218) Bool)
(declare-fun bar3 (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |bar3#triggerStateless| (T@Ref) Int)
(declare-fun |P#trigger_21974| (T@PolymorphicMapType_38197 T@Field_42676_42677) Bool)
(declare-fun P (T@Ref) T@Field_42676_42677)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_38218) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_38746)
(declare-fun nonAliasPred (T@Ref T@Ref) T@Field_65737_65738)
(declare-fun IsPredicateField_22000_22001 (T@Field_65737_65738) Bool)
(declare-fun |foo2'| (T@PolymorphicMapType_38197 T@Ref Bool) Int)
(declare-fun dummyFunction_1955 (Int) Bool)
(declare-fun |foo2#triggerStateless| (T@Ref Bool) Int)
(declare-fun |foo2w'| (T@PolymorphicMapType_38197 T@Ref Bool) Int)
(declare-fun |foo2w#triggerStateless| (T@Ref Bool) Int)
(declare-fun |nonAliasF'| (T@PolymorphicMapType_38197 T@Ref T@Ref) Int)
(declare-fun |nonAliasF#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |nonAliasPred#trigger_22000| (T@PolymorphicMapType_38197 T@Field_65737_65738) Bool)
(declare-fun |nonAliasPred#everUsed_22000| (T@Field_65737_65738) Bool)
(declare-fun IsPredicateField_21974_21975 (T@Field_42676_42677) Bool)
(declare-fun |foo'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo#triggerStateless| (T@Ref) Int)
(declare-fun |foop'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foop#triggerStateless| (T@Ref) Int)
(declare-fun |foo3'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo3#triggerStateless| (T@Ref) Int)
(declare-fun |foo4'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo4#triggerStateless| (T@Ref) Int)
(declare-fun |foo5'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo5#triggerStateless| (T@Ref) Int)
(declare-fun |foo5w'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo5w#triggerStateless| (T@Ref) Int)
(declare-fun |foo5p'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo5p#triggerStateless| (T@Ref) Int)
(declare-fun |foo5pw'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo5pw#triggerStateless| (T@Ref) Int)
(declare-fun |bar'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |bar#triggerStateless| (T@Ref) Int)
(declare-fun |bar2'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |bar2#triggerStateless| (T@Ref) Int)
(declare-fun |bar3'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |bar4'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |bar4#triggerStateless| (T@Ref) Int)
(declare-fun |bar5'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |bar5#triggerStateless| (T@Ref) Int)
(declare-fun |foo6'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo6#triggerStateless| (T@Ref) Int)
(declare-fun |P#everUsed_21974| (T@Field_42676_42677) Bool)
(declare-fun |foo5pw#condqp4| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |sk_foo5pw#condqp4| (Int Int) T@Ref)
(declare-fun null () T@Ref)
(declare-fun foo_2 (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun foop (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun foo3_1 (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun foo4_1 (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun foo5_1 (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun foo5w (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun foo5p (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun foo5pw (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun bar (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun bar2 (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun bar4 (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun bar5 (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun foo6 (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo6#frame| (T@FrameType T@Ref) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1789 (Int) T@FrameType)
(declare-fun |foo6#condqp5| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_38197 T@PolymorphicMapType_38197 T@PolymorphicMapType_38218) Bool)
(declare-fun PredicateMaskField_22000 (T@Field_65737_65738) T@Field_65751_65756)
(declare-fun HasDirectPerm_65737_21975 (T@PolymorphicMapType_38218 T@Ref T@Field_65737_65738) Bool)
(declare-fun PredicateMaskField_21974 (T@Field_42676_42677) T@Field_56026_56031)
(declare-fun HasDirectPerm_21974_21975 (T@PolymorphicMapType_38218 T@Ref T@Field_42676_42677) Bool)
(declare-fun IsPredicateField_21531_123847 (T@Field_21531_21975) Bool)
(declare-fun PredicateMaskField_21531 (T@Field_21531_21975) T@Field_21531_56031)
(declare-fun HasDirectPerm_21531_21975 (T@PolymorphicMapType_38218 T@Ref T@Field_21531_21975) Bool)
(declare-fun IsWandField_65737_129543 (T@Field_65737_65738) Bool)
(declare-fun WandMaskField_65737 (T@Field_65737_65738) T@Field_65751_65756)
(declare-fun IsWandField_21974_129186 (T@Field_42676_42677) Bool)
(declare-fun WandMaskField_21974 (T@Field_42676_42677) T@Field_56026_56031)
(declare-fun IsWandField_21531_128829 (T@Field_21531_21975) Bool)
(declare-fun WandMaskField_21531 (T@Field_21531_21975) T@Field_21531_56031)
(declare-fun |nonAliasPred#sm| (T@Ref T@Ref) T@Field_65751_65756)
(declare-fun |P#sm| (T@Ref) T@Field_56026_56031)
(declare-fun |foo5p#condqp3| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |sk_foo5p#condqp3| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun dummyHeap () T@PolymorphicMapType_38197)
(declare-fun ZeroMask () T@PolymorphicMapType_38218)
(declare-fun |foo4#frame| (T@FrameType T@Ref) Int)
(declare-fun InsidePredicate_65737_65737 (T@Field_65737_65738 T@FrameType T@Field_65737_65738 T@FrameType) Bool)
(declare-fun InsidePredicate_42676_42676 (T@Field_42676_42677 T@FrameType T@Field_42676_42677 T@FrameType) Bool)
(declare-fun InsidePredicate_38257_38257 (T@Field_21531_21975 T@FrameType T@Field_21531_21975 T@FrameType) Bool)
(declare-fun |nonAliasF#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun IsPredicateField_21531_1789 (T@Field_41684_1789) Bool)
(declare-fun IsWandField_21531_1789 (T@Field_41684_1789) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_65737_139876 (T@Field_65751_65756) Bool)
(declare-fun IsWandField_65737_139892 (T@Field_65751_65756) Bool)
(declare-fun IsPredicateField_65737_38271 (T@Field_65737_38271) Bool)
(declare-fun IsWandField_65737_38271 (T@Field_65737_38271) Bool)
(declare-fun IsPredicateField_65737_53 (T@Field_65737_53) Bool)
(declare-fun IsWandField_65737_53 (T@Field_65737_53) Bool)
(declare-fun IsPredicateField_65737_1789 (T@Field_65737_1789) Bool)
(declare-fun IsWandField_65737_1789 (T@Field_65737_1789) Bool)
(declare-fun IsPredicateField_21974_139045 (T@Field_56026_56031) Bool)
(declare-fun IsWandField_21974_139061 (T@Field_56026_56031) Bool)
(declare-fun IsPredicateField_21974_38271 (T@Field_21974_38271) Bool)
(declare-fun IsWandField_21974_38271 (T@Field_21974_38271) Bool)
(declare-fun IsPredicateField_21974_53 (T@Field_21974_53) Bool)
(declare-fun IsWandField_21974_53 (T@Field_21974_53) Bool)
(declare-fun IsPredicateField_21974_1789 (T@Field_21974_1789) Bool)
(declare-fun IsWandField_21974_1789 (T@Field_21974_1789) Bool)
(declare-fun IsPredicateField_21531_138214 (T@Field_21531_56031) Bool)
(declare-fun IsWandField_21531_138230 (T@Field_21531_56031) Bool)
(declare-fun IsPredicateField_21531_38271 (T@Field_38270_38271) Bool)
(declare-fun IsWandField_21531_38271 (T@Field_38270_38271) Bool)
(declare-fun IsPredicateField_21531_53 (T@Field_38257_53) Bool)
(declare-fun IsWandField_21531_53 (T@Field_38257_53) Bool)
(declare-fun nonAliasF (T@PolymorphicMapType_38197 T@Ref T@Ref) Int)
(declare-fun HasDirectPerm_65737_123559 (T@PolymorphicMapType_38218 T@Ref T@Field_65751_65756) Bool)
(declare-fun HasDirectPerm_65737_38271 (T@PolymorphicMapType_38218 T@Ref T@Field_65737_38271) Bool)
(declare-fun HasDirectPerm_65737_53 (T@PolymorphicMapType_38218 T@Ref T@Field_65737_53) Bool)
(declare-fun HasDirectPerm_65737_1789 (T@PolymorphicMapType_38218 T@Ref T@Field_65737_1789) Bool)
(declare-fun HasDirectPerm_21974_122424 (T@PolymorphicMapType_38218 T@Ref T@Field_56026_56031) Bool)
(declare-fun HasDirectPerm_21974_38271 (T@PolymorphicMapType_38218 T@Ref T@Field_21974_38271) Bool)
(declare-fun HasDirectPerm_21974_53 (T@PolymorphicMapType_38218 T@Ref T@Field_21974_53) Bool)
(declare-fun HasDirectPerm_21974_1789 (T@PolymorphicMapType_38218 T@Ref T@Field_21974_1789) Bool)
(declare-fun HasDirectPerm_21531_121283 (T@PolymorphicMapType_38218 T@Ref T@Field_21531_56031) Bool)
(declare-fun HasDirectPerm_21531_38271 (T@PolymorphicMapType_38218 T@Ref T@Field_38270_38271) Bool)
(declare-fun HasDirectPerm_21531_53 (T@PolymorphicMapType_38218 T@Ref T@Field_38257_53) Bool)
(declare-fun HasDirectPerm_21531_1789 (T@PolymorphicMapType_38218 T@Ref T@Field_41684_1789) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun foo2_1 (T@PolymorphicMapType_38197 T@Ref Bool) Int)
(declare-fun foo2w (T@PolymorphicMapType_38197 T@Ref Bool) Int)
(declare-fun sumMask (T@PolymorphicMapType_38218 T@PolymorphicMapType_38218 T@PolymorphicMapType_38218) Bool)
(declare-fun getPredWandId_22000_22001 (T@Field_65737_65738) Int)
(declare-fun |foo#frame| (T@FrameType T@Ref) Int)
(declare-fun |foop#frame| (T@FrameType T@Ref) Int)
(declare-fun |foo3#frame| (T@FrameType T@Ref) Int)
(declare-fun |bar#frame| (T@FrameType T@Ref) Int)
(declare-fun |bar3#frame| (T@FrameType T@Ref) Int)
(declare-fun |bar4#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_21974_21975 (T@Field_42676_42677) Int)
(declare-fun |bar5#frame| (T@FrameType T@Ref) Int)
(declare-fun |bar2#frame| (T@FrameType T@Ref) Int)
(declare-fun |foo5#frame| (T@FrameType T@Ref) Int)
(declare-fun |foo5#condqp1| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo5w#frame| (T@FrameType T@Ref) Int)
(declare-fun |foo5w#condqp2| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo5p#frame| (T@FrameType T@Ref) Int)
(declare-fun |foo5pw#frame| (T@FrameType T@Ref) Int)
(declare-fun |sk_foo5w#condqp2| (Int Int) T@Ref)
(declare-fun InsidePredicate_65737_42676 (T@Field_65737_65738 T@FrameType T@Field_42676_42677 T@FrameType) Bool)
(declare-fun InsidePredicate_65737_38257 (T@Field_65737_65738 T@FrameType T@Field_21531_21975 T@FrameType) Bool)
(declare-fun InsidePredicate_42676_65737 (T@Field_42676_42677 T@FrameType T@Field_65737_65738 T@FrameType) Bool)
(declare-fun InsidePredicate_42676_38257 (T@Field_42676_42677 T@FrameType T@Field_21531_21975 T@FrameType) Bool)
(declare-fun InsidePredicate_38257_65737 (T@Field_21531_21975 T@FrameType T@Field_65737_65738 T@FrameType) Bool)
(declare-fun InsidePredicate_38257_42676 (T@Field_21531_21975 T@FrameType T@Field_42676_42677 T@FrameType) Bool)
(declare-fun |sk_foo5#condqp1| (Int Int) T@Ref)
(declare-fun |foo2#frame| (T@FrameType T@Ref Bool) Int)
(declare-fun |foo2w#frame| (T@FrameType T@Ref Bool) Int)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_38197) (Heap1 T@PolymorphicMapType_38197) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_38197) (Mask T@PolymorphicMapType_38218) (x T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 11)) (= (bar3 Heap x) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap) x g)))
 :qid |stdinbpl.1297:15|
 :skolemid |94|
 :pattern ( (state Heap Mask) (bar3 Heap x))
 :pattern ( (state Heap Mask) (|bar3#triggerStateless| x) (|P#trigger_21974| Heap (P x)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_38197) (Mask@@0 T@PolymorphicMapType_38218) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_38197) (Heap1@@0 T@PolymorphicMapType_38197) (Heap2 T@PolymorphicMapType_38197) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_65751_65756) ) (!  (not (select (|PolymorphicMapType_38746_65737_127740#PolymorphicMapType_38746| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_65737_127740#PolymorphicMapType_38746| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_65737_65738) ) (!  (not (select (|PolymorphicMapType_38746_65737_42677#PolymorphicMapType_38746| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_65737_42677#PolymorphicMapType_38746| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_65737_38271) ) (!  (not (select (|PolymorphicMapType_38746_65737_38271#PolymorphicMapType_38746| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_65737_38271#PolymorphicMapType_38746| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_65737_53) ) (!  (not (select (|PolymorphicMapType_38746_65737_53#PolymorphicMapType_38746| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_65737_53#PolymorphicMapType_38746| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_65737_1789) ) (!  (not (select (|PolymorphicMapType_38746_65737_1789#PolymorphicMapType_38746| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_65737_1789#PolymorphicMapType_38746| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_56026_56031) ) (!  (not (select (|PolymorphicMapType_38746_42676_126692#PolymorphicMapType_38746| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_42676_126692#PolymorphicMapType_38746| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_42676_42677) ) (!  (not (select (|PolymorphicMapType_38746_42676_42677#PolymorphicMapType_38746| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_42676_42677#PolymorphicMapType_38746| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_21974_38271) ) (!  (not (select (|PolymorphicMapType_38746_42676_38271#PolymorphicMapType_38746| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_42676_38271#PolymorphicMapType_38746| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_21974_53) ) (!  (not (select (|PolymorphicMapType_38746_42676_53#PolymorphicMapType_38746| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_42676_53#PolymorphicMapType_38746| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_21974_1789) ) (!  (not (select (|PolymorphicMapType_38746_42676_1789#PolymorphicMapType_38746| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_42676_1789#PolymorphicMapType_38746| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_21531_56031) ) (!  (not (select (|PolymorphicMapType_38746_21531_125644#PolymorphicMapType_38746| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_21531_125644#PolymorphicMapType_38746| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_21531_21975) ) (!  (not (select (|PolymorphicMapType_38746_21531_42677#PolymorphicMapType_38746| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_21531_42677#PolymorphicMapType_38746| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_38270_38271) ) (!  (not (select (|PolymorphicMapType_38746_21531_38271#PolymorphicMapType_38746| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_21531_38271#PolymorphicMapType_38746| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_38257_53) ) (!  (not (select (|PolymorphicMapType_38746_21531_53#PolymorphicMapType_38746| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_21531_53#PolymorphicMapType_38746| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_41684_1789) ) (!  (not (select (|PolymorphicMapType_38746_21531_1789#PolymorphicMapType_38746| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_21531_1789#PolymorphicMapType_38746| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((x@@0 T@Ref) (y T@Ref) ) (! (IsPredicateField_22000_22001 (nonAliasPred x@@0 y))
 :qid |stdinbpl.1701:15|
 :skolemid |115|
 :pattern ( (nonAliasPred x@@0 y))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_38197) (x@@1 T@Ref) (b_24 Bool) ) (! (dummyFunction_1955 (|foo2#triggerStateless| x@@1 b_24))
 :qid |stdinbpl.403:15|
 :skolemid |29|
 :pattern ( (|foo2'| Heap@@1 x@@1 b_24))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_38197) (x@@2 T@Ref) (b_24@@0 Bool) ) (! (dummyFunction_1955 (|foo2w#triggerStateless| x@@2 b_24@@0))
 :qid |stdinbpl.455:15|
 :skolemid |32|
 :pattern ( (|foo2w'| Heap@@2 x@@2 b_24@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_38197) (x@@3 T@Ref) (y@@0 T@Ref) ) (! (dummyFunction_1955 (|nonAliasF#triggerStateless| x@@3 y@@0))
 :qid |stdinbpl.1000:15|
 :skolemid |81|
 :pattern ( (|nonAliasF'| Heap@@3 x@@3 y@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_38197) (x@@4 T@Ref) (y@@1 T@Ref) ) (! (|nonAliasPred#everUsed_22000| (nonAliasPred x@@4 y@@1))
 :qid |stdinbpl.1720:15|
 :skolemid |119|
 :pattern ( (|nonAliasPred#trigger_22000| Heap@@4 (nonAliasPred x@@4 y@@1)))
)))
(assert (forall ((x@@5 T@Ref) ) (! (IsPredicateField_21974_21975 (P x@@5))
 :qid |stdinbpl.1646:15|
 :skolemid |109|
 :pattern ( (P x@@5))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_38197) (x@@6 T@Ref) ) (! (dummyFunction_1955 (|foo#triggerStateless| x@@6))
 :qid |stdinbpl.304:15|
 :skolemid |23|
 :pattern ( (|foo'| Heap@@5 x@@6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_38197) (x@@7 T@Ref) ) (! (dummyFunction_1955 (|foop#triggerStateless| x@@7))
 :qid |stdinbpl.354:15|
 :skolemid |26|
 :pattern ( (|foop'| Heap@@6 x@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_38197) (x@@8 T@Ref) ) (! (dummyFunction_1955 (|foo3#triggerStateless| x@@8))
 :qid |stdinbpl.507:15|
 :skolemid |35|
 :pattern ( (|foo3'| Heap@@7 x@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_38197) (x@@9 T@Ref) ) (! (dummyFunction_1955 (|foo4#triggerStateless| x@@9))
 :qid |stdinbpl.559:15|
 :skolemid |38|
 :pattern ( (|foo4'| Heap@@8 x@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_38197) (x@@10 T@Ref) ) (! (dummyFunction_1955 (|foo5#triggerStateless| x@@10))
 :qid |stdinbpl.613:15|
 :skolemid |41|
 :pattern ( (|foo5'| Heap@@9 x@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_38197) (x@@11 T@Ref) ) (! (dummyFunction_1955 (|foo5w#triggerStateless| x@@11))
 :qid |stdinbpl.708:15|
 :skolemid |51|
 :pattern ( (|foo5w'| Heap@@10 x@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_38197) (x@@12 T@Ref) ) (! (dummyFunction_1955 (|foo5p#triggerStateless| x@@12))
 :qid |stdinbpl.804:15|
 :skolemid |61|
 :pattern ( (|foo5p'| Heap@@11 x@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_38197) (x@@13 T@Ref) ) (! (dummyFunction_1955 (|foo5pw#triggerStateless| x@@13))
 :qid |stdinbpl.901:15|
 :skolemid |71|
 :pattern ( (|foo5pw'| Heap@@12 x@@13))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_38197) (x@@14 T@Ref) ) (! (dummyFunction_1955 (|bar#triggerStateless| x@@14))
 :qid |stdinbpl.1083:15|
 :skolemid |85|
 :pattern ( (|bar'| Heap@@13 x@@14))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_38197) (x@@15 T@Ref) ) (! (dummyFunction_1955 (|bar2#triggerStateless| x@@15))
 :qid |stdinbpl.1188:15|
 :skolemid |89|
 :pattern ( (|bar2'| Heap@@14 x@@15))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_38197) (x@@16 T@Ref) ) (! (dummyFunction_1955 (|bar3#triggerStateless| x@@16))
 :qid |stdinbpl.1291:15|
 :skolemid |93|
 :pattern ( (|bar3'| Heap@@15 x@@16))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_38197) (x@@17 T@Ref) ) (! (dummyFunction_1955 (|bar4#triggerStateless| x@@17))
 :qid |stdinbpl.1381:15|
 :skolemid |97|
 :pattern ( (|bar4'| Heap@@16 x@@17))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_38197) (x@@18 T@Ref) ) (! (dummyFunction_1955 (|bar5#triggerStateless| x@@18))
 :qid |stdinbpl.1473:15|
 :skolemid |100|
 :pattern ( (|bar5'| Heap@@17 x@@18))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_38197) (x@@19 T@Ref) ) (! (dummyFunction_1955 (|foo6#triggerStateless| x@@19))
 :qid |stdinbpl.1560:15|
 :skolemid |103|
 :pattern ( (|foo6'| Heap@@18 x@@19))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_38197) (x@@20 T@Ref) ) (! (|P#everUsed_21974| (P x@@20))
 :qid |stdinbpl.1665:15|
 :skolemid |113|
 :pattern ( (|P#trigger_21974| Heap@@19 (P x@@20)))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_38197) (Heap1Heap T@PolymorphicMapType_38197) (x@@21 T@Ref) ) (!  (=> (and (= (= (|sk_foo5pw#condqp4| (|foo5pw#condqp4| Heap2Heap x@@21) (|foo5pw#condqp4| Heap1Heap x@@21)) x@@21) (= (|sk_foo5pw#condqp4| (|foo5pw#condqp4| Heap2Heap x@@21) (|foo5pw#condqp4| Heap1Heap x@@21)) x@@21)) (=> (= (|sk_foo5pw#condqp4| (|foo5pw#condqp4| Heap2Heap x@@21) (|foo5pw#condqp4| Heap1Heap x@@21)) x@@21) (= (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap2Heap) null (P (|sk_foo5pw#condqp4| (|foo5pw#condqp4| Heap2Heap x@@21) (|foo5pw#condqp4| Heap1Heap x@@21)))) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap1Heap) null (P (|sk_foo5pw#condqp4| (|foo5pw#condqp4| Heap2Heap x@@21) (|foo5pw#condqp4| Heap1Heap x@@21))))))) (= (|foo5pw#condqp4| Heap2Heap x@@21) (|foo5pw#condqp4| Heap1Heap x@@21)))
 :qid |stdinbpl.918:15|
 :skolemid |73|
 :pattern ( (|foo5pw#condqp4| Heap2Heap x@@21) (|foo5pw#condqp4| Heap1Heap x@@21) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_38197) (x@@22 T@Ref) ) (!  (and (= (foo_2 Heap@@20 x@@22) (|foo'| Heap@@20 x@@22)) (dummyFunction_1955 (|foo#triggerStateless| x@@22)))
 :qid |stdinbpl.300:15|
 :skolemid |22|
 :pattern ( (foo_2 Heap@@20 x@@22))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_38197) (x@@23 T@Ref) ) (!  (and (= (foop Heap@@21 x@@23) (|foop'| Heap@@21 x@@23)) (dummyFunction_1955 (|foop#triggerStateless| x@@23)))
 :qid |stdinbpl.350:15|
 :skolemid |25|
 :pattern ( (foop Heap@@21 x@@23))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_38197) (x@@24 T@Ref) ) (!  (and (= (foo3_1 Heap@@22 x@@24) (|foo3'| Heap@@22 x@@24)) (dummyFunction_1955 (|foo3#triggerStateless| x@@24)))
 :qid |stdinbpl.503:15|
 :skolemid |34|
 :pattern ( (foo3_1 Heap@@22 x@@24))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_38197) (x@@25 T@Ref) ) (!  (and (= (foo4_1 Heap@@23 x@@25) (|foo4'| Heap@@23 x@@25)) (dummyFunction_1955 (|foo4#triggerStateless| x@@25)))
 :qid |stdinbpl.555:15|
 :skolemid |37|
 :pattern ( (foo4_1 Heap@@23 x@@25))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_38197) (x@@26 T@Ref) ) (!  (and (= (foo5_1 Heap@@24 x@@26) (|foo5'| Heap@@24 x@@26)) (dummyFunction_1955 (|foo5#triggerStateless| x@@26)))
 :qid |stdinbpl.609:15|
 :skolemid |40|
 :pattern ( (foo5_1 Heap@@24 x@@26))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_38197) (x@@27 T@Ref) ) (!  (and (= (foo5w Heap@@25 x@@27) (|foo5w'| Heap@@25 x@@27)) (dummyFunction_1955 (|foo5w#triggerStateless| x@@27)))
 :qid |stdinbpl.704:15|
 :skolemid |50|
 :pattern ( (foo5w Heap@@25 x@@27))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_38197) (x@@28 T@Ref) ) (!  (and (= (foo5p Heap@@26 x@@28) (|foo5p'| Heap@@26 x@@28)) (dummyFunction_1955 (|foo5p#triggerStateless| x@@28)))
 :qid |stdinbpl.800:15|
 :skolemid |60|
 :pattern ( (foo5p Heap@@26 x@@28))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_38197) (x@@29 T@Ref) ) (!  (and (= (foo5pw Heap@@27 x@@29) (|foo5pw'| Heap@@27 x@@29)) (dummyFunction_1955 (|foo5pw#triggerStateless| x@@29)))
 :qid |stdinbpl.897:15|
 :skolemid |70|
 :pattern ( (foo5pw Heap@@27 x@@29))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_38197) (x@@30 T@Ref) ) (!  (and (= (bar Heap@@28 x@@30) (|bar'| Heap@@28 x@@30)) (dummyFunction_1955 (|bar#triggerStateless| x@@30)))
 :qid |stdinbpl.1079:15|
 :skolemid |84|
 :pattern ( (bar Heap@@28 x@@30))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_38197) (x@@31 T@Ref) ) (!  (and (= (bar2 Heap@@29 x@@31) (|bar2'| Heap@@29 x@@31)) (dummyFunction_1955 (|bar2#triggerStateless| x@@31)))
 :qid |stdinbpl.1184:15|
 :skolemid |88|
 :pattern ( (bar2 Heap@@29 x@@31))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_38197) (x@@32 T@Ref) ) (!  (and (= (bar3 Heap@@30 x@@32) (|bar3'| Heap@@30 x@@32)) (dummyFunction_1955 (|bar3#triggerStateless| x@@32)))
 :qid |stdinbpl.1287:15|
 :skolemid |92|
 :pattern ( (bar3 Heap@@30 x@@32))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_38197) (x@@33 T@Ref) ) (!  (and (= (bar4 Heap@@31 x@@33) (|bar4'| Heap@@31 x@@33)) (dummyFunction_1955 (|bar4#triggerStateless| x@@33)))
 :qid |stdinbpl.1377:15|
 :skolemid |96|
 :pattern ( (bar4 Heap@@31 x@@33))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_38197) (x@@34 T@Ref) ) (!  (and (= (bar5 Heap@@32 x@@34) (|bar5'| Heap@@32 x@@34)) (dummyFunction_1955 (|bar5#triggerStateless| x@@34)))
 :qid |stdinbpl.1469:15|
 :skolemid |99|
 :pattern ( (bar5 Heap@@32 x@@34))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_38197) (x@@35 T@Ref) ) (!  (and (= (foo6 Heap@@33 x@@35) (|foo6'| Heap@@33 x@@35)) (dummyFunction_1955 (|foo6#triggerStateless| x@@35)))
 :qid |stdinbpl.1556:15|
 :skolemid |102|
 :pattern ( (foo6 Heap@@33 x@@35))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_38197) (Mask@@1 T@PolymorphicMapType_38218) (x@@36 T@Ref) ) (!  (=> (state Heap@@34 Mask@@1) (= (|foo6'| Heap@@34 x@@36) (|foo6#frame| (CombineFrames (FrameFragment_1789 (|foo6#condqp5| Heap@@34 x@@36)) (FrameFragment_1789 (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@34) x@@36 f_7))) x@@36)))
 :qid |stdinbpl.1567:15|
 :skolemid |104|
 :pattern ( (state Heap@@34 Mask@@1) (|foo6'| Heap@@34 x@@36))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_38197) (ExhaleHeap T@PolymorphicMapType_38197) (Mask@@2 T@PolymorphicMapType_38218) (pm_f_15 T@Field_65737_65738) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_65737_21975 Mask@@2 null pm_f_15) (IsPredicateField_22000_22001 pm_f_15)) (= (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@35) null (PredicateMaskField_22000 pm_f_15)) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap) null (PredicateMaskField_22000 pm_f_15)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap Mask@@2) (IsPredicateField_22000_22001 pm_f_15) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap) null (PredicateMaskField_22000 pm_f_15)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_38197) (ExhaleHeap@@0 T@PolymorphicMapType_38197) (Mask@@3 T@PolymorphicMapType_38218) (pm_f_15@@0 T@Field_42676_42677) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_21974_21975 Mask@@3 null pm_f_15@@0) (IsPredicateField_21974_21975 pm_f_15@@0)) (= (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@36) null (PredicateMaskField_21974 pm_f_15@@0)) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@0) null (PredicateMaskField_21974 pm_f_15@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@0 Mask@@3) (IsPredicateField_21974_21975 pm_f_15@@0) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@0) null (PredicateMaskField_21974 pm_f_15@@0)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_38197) (ExhaleHeap@@1 T@PolymorphicMapType_38197) (Mask@@4 T@PolymorphicMapType_38218) (pm_f_15@@1 T@Field_21531_21975) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_21531_21975 Mask@@4 null pm_f_15@@1) (IsPredicateField_21531_123847 pm_f_15@@1)) (= (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@37) null (PredicateMaskField_21531 pm_f_15@@1)) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@1) null (PredicateMaskField_21531 pm_f_15@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@1 Mask@@4) (IsPredicateField_21531_123847 pm_f_15@@1) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@1) null (PredicateMaskField_21531 pm_f_15@@1)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_38197) (ExhaleHeap@@2 T@PolymorphicMapType_38197) (Mask@@5 T@PolymorphicMapType_38218) (pm_f_15@@2 T@Field_65737_65738) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_65737_21975 Mask@@5 null pm_f_15@@2) (IsWandField_65737_129543 pm_f_15@@2)) (= (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@38) null (WandMaskField_65737 pm_f_15@@2)) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@2) null (WandMaskField_65737 pm_f_15@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@2 Mask@@5) (IsWandField_65737_129543 pm_f_15@@2) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@2) null (WandMaskField_65737 pm_f_15@@2)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_38197) (ExhaleHeap@@3 T@PolymorphicMapType_38197) (Mask@@6 T@PolymorphicMapType_38218) (pm_f_15@@3 T@Field_42676_42677) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@3 Mask@@6) (=> (and (HasDirectPerm_21974_21975 Mask@@6 null pm_f_15@@3) (IsWandField_21974_129186 pm_f_15@@3)) (= (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@39) null (WandMaskField_21974 pm_f_15@@3)) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@3) null (WandMaskField_21974 pm_f_15@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@3 Mask@@6) (IsWandField_21974_129186 pm_f_15@@3) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@3) null (WandMaskField_21974 pm_f_15@@3)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_38197) (ExhaleHeap@@4 T@PolymorphicMapType_38197) (Mask@@7 T@PolymorphicMapType_38218) (pm_f_15@@4 T@Field_21531_21975) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@4 Mask@@7) (=> (and (HasDirectPerm_21531_21975 Mask@@7 null pm_f_15@@4) (IsWandField_21531_128829 pm_f_15@@4)) (= (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@40) null (WandMaskField_21531 pm_f_15@@4)) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@4) null (WandMaskField_21531 pm_f_15@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@4 Mask@@7) (IsWandField_21531_128829 pm_f_15@@4) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@4) null (WandMaskField_21531 pm_f_15@@4)))
)))
(assert (forall ((x@@37 T@Ref) (y@@2 T@Ref) (x2 T@Ref) (y2 T@Ref) ) (!  (=> (= (nonAliasPred x@@37 y@@2) (nonAliasPred x2 y2)) (and (= x@@37 x2) (= y@@2 y2)))
 :qid |stdinbpl.1711:15|
 :skolemid |117|
 :pattern ( (nonAliasPred x@@37 y@@2) (nonAliasPred x2 y2))
)))
(assert (forall ((x@@38 T@Ref) (y@@3 T@Ref) (x2@@0 T@Ref) (y2@@0 T@Ref) ) (!  (=> (= (|nonAliasPred#sm| x@@38 y@@3) (|nonAliasPred#sm| x2@@0 y2@@0)) (and (= x@@38 x2@@0) (= y@@3 y2@@0)))
 :qid |stdinbpl.1715:15|
 :skolemid |118|
 :pattern ( (|nonAliasPred#sm| x@@38 y@@3) (|nonAliasPred#sm| x2@@0 y2@@0))
)))
(assert (forall ((x@@39 T@Ref) (x2@@1 T@Ref) ) (!  (=> (= (P x@@39) (P x2@@1)) (= x@@39 x2@@1))
 :qid |stdinbpl.1656:15|
 :skolemid |111|
 :pattern ( (P x@@39) (P x2@@1))
)))
(assert (forall ((x@@40 T@Ref) (x2@@2 T@Ref) ) (!  (=> (= (|P#sm| x@@40) (|P#sm| x2@@2)) (= x@@40 x2@@2))
 :qid |stdinbpl.1660:15|
 :skolemid |112|
 :pattern ( (|P#sm| x@@40) (|P#sm| x2@@2))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_38197) (Heap1Heap@@0 T@PolymorphicMapType_38197) (x@@41 T@Ref) ) (!  (=> (and (=  (and (= (|sk_foo5p#condqp3| (|foo5p#condqp3| Heap2Heap@@0 x@@41) (|foo5p#condqp3| Heap1Heap@@0 x@@41)) x@@41) (< NoPerm FullPerm))  (and (= (|sk_foo5p#condqp3| (|foo5p#condqp3| Heap2Heap@@0 x@@41) (|foo5p#condqp3| Heap1Heap@@0 x@@41)) x@@41) (< NoPerm FullPerm))) (=> (and (= (|sk_foo5p#condqp3| (|foo5p#condqp3| Heap2Heap@@0 x@@41) (|foo5p#condqp3| Heap1Heap@@0 x@@41)) x@@41) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap2Heap@@0) null (P (|sk_foo5p#condqp3| (|foo5p#condqp3| Heap2Heap@@0 x@@41) (|foo5p#condqp3| Heap1Heap@@0 x@@41)))) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap1Heap@@0) null (P (|sk_foo5p#condqp3| (|foo5p#condqp3| Heap2Heap@@0 x@@41) (|foo5p#condqp3| Heap1Heap@@0 x@@41))))))) (= (|foo5p#condqp3| Heap2Heap@@0 x@@41) (|foo5p#condqp3| Heap1Heap@@0 x@@41)))
 :qid |stdinbpl.821:15|
 :skolemid |63|
 :pattern ( (|foo5p#condqp3| Heap2Heap@@0 x@@41) (|foo5p#condqp3| Heap1Heap@@0 x@@41) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@41 T@PolymorphicMapType_38197) (Mask@@8 T@PolymorphicMapType_38218) (x@@42 T@Ref) ) (!  (=> (state Heap@@41 Mask@@8) (= (|foo4'| Heap@@41 x@@42) (|foo4#frame| (CombineFrames (FrameFragment_1789 (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@41) x@@42 f_7)) (FrameFragment_1789 (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@41) x@@42 f_7))) x@@42)))
 :qid |stdinbpl.566:15|
 :skolemid |39|
 :pattern ( (state Heap@@41 Mask@@8) (|foo4'| Heap@@41 x@@42))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_38197) (ExhaleHeap@@5 T@PolymorphicMapType_38197) (Mask@@9 T@PolymorphicMapType_38218) (o_39 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@5 Mask@@9) (=> (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@42) o_39 $allocated) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@5) o_39 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@5 Mask@@9) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@5) o_39 $allocated))
)))
(assert (forall ((p T@Field_65737_65738) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_65737_65737 p v_1 p w))
 :qid |stdinbpl.277:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_65737_65737 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_42676_42677) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_42676_42676 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.277:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_42676_42676 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_21531_21975) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_38257_38257 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.277:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_38257_38257 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_38197) (Mask@@10 T@PolymorphicMapType_38218) (x@@43 T@Ref) (y@@4 T@Ref) ) (!  (=> (state Heap@@43 Mask@@10) (= (|nonAliasF'| Heap@@43 x@@43 y@@4) (|nonAliasF#frame| (CombineFrames (FrameFragment_1789 (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@43) x@@43 f_7)) (FrameFragment_1789 (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@43) y@@4 f_7))) x@@43 y@@4)))
 :qid |stdinbpl.1013:15|
 :skolemid |83|
 :pattern ( (state Heap@@43 Mask@@10) (|nonAliasF'| Heap@@43 x@@43 y@@4))
)))
(assert  (not (IsPredicateField_21531_1789 f_7)))
(assert  (not (IsWandField_21531_1789 f_7)))
(assert  (not (IsPredicateField_21531_1789 g)))
(assert  (not (IsWandField_21531_1789 g)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_38197) (ExhaleHeap@@6 T@PolymorphicMapType_38197) (Mask@@11 T@PolymorphicMapType_38218) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@6 Mask@@11) (succHeap Heap@@44 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@6 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_38218) (o_2@@14 T@Ref) (f_4@@14 T@Field_65751_65756) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| Mask@@12) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_65737_139876 f_4@@14))) (not (IsWandField_65737_139892 f_4@@14))) (<= (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| Mask@@12) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| Mask@@12) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_38218) (o_2@@15 T@Ref) (f_4@@15 T@Field_65737_38271) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| Mask@@13) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_65737_38271 f_4@@15))) (not (IsWandField_65737_38271 f_4@@15))) (<= (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| Mask@@13) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| Mask@@13) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_38218) (o_2@@16 T@Ref) (f_4@@16 T@Field_65737_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| Mask@@14) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_65737_53 f_4@@16))) (not (IsWandField_65737_53 f_4@@16))) (<= (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| Mask@@14) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| Mask@@14) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_38218) (o_2@@17 T@Ref) (f_4@@17 T@Field_65737_65738) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| Mask@@15) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_22000_22001 f_4@@17))) (not (IsWandField_65737_129543 f_4@@17))) (<= (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| Mask@@15) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| Mask@@15) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_38218) (o_2@@18 T@Ref) (f_4@@18 T@Field_65737_1789) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| Mask@@16) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_65737_1789 f_4@@18))) (not (IsWandField_65737_1789 f_4@@18))) (<= (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| Mask@@16) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| Mask@@16) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_38218) (o_2@@19 T@Ref) (f_4@@19 T@Field_56026_56031) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| Mask@@17) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_21974_139045 f_4@@19))) (not (IsWandField_21974_139061 f_4@@19))) (<= (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| Mask@@17) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| Mask@@17) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_38218) (o_2@@20 T@Ref) (f_4@@20 T@Field_21974_38271) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| Mask@@18) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_21974_38271 f_4@@20))) (not (IsWandField_21974_38271 f_4@@20))) (<= (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| Mask@@18) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| Mask@@18) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_38218) (o_2@@21 T@Ref) (f_4@@21 T@Field_21974_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| Mask@@19) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_21974_53 f_4@@21))) (not (IsWandField_21974_53 f_4@@21))) (<= (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| Mask@@19) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| Mask@@19) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_38218) (o_2@@22 T@Ref) (f_4@@22 T@Field_42676_42677) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| Mask@@20) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_21974_21975 f_4@@22))) (not (IsWandField_21974_129186 f_4@@22))) (<= (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| Mask@@20) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| Mask@@20) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_38218) (o_2@@23 T@Ref) (f_4@@23 T@Field_21974_1789) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| Mask@@21) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_21974_1789 f_4@@23))) (not (IsWandField_21974_1789 f_4@@23))) (<= (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| Mask@@21) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| Mask@@21) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_38218) (o_2@@24 T@Ref) (f_4@@24 T@Field_21531_56031) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| Mask@@22) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_21531_138214 f_4@@24))) (not (IsWandField_21531_138230 f_4@@24))) (<= (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| Mask@@22) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| Mask@@22) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_38218) (o_2@@25 T@Ref) (f_4@@25 T@Field_38270_38271) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| Mask@@23) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_21531_38271 f_4@@25))) (not (IsWandField_21531_38271 f_4@@25))) (<= (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| Mask@@23) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| Mask@@23) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_38218) (o_2@@26 T@Ref) (f_4@@26 T@Field_38257_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| Mask@@24) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_21531_53 f_4@@26))) (not (IsWandField_21531_53 f_4@@26))) (<= (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| Mask@@24) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| Mask@@24) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_38218) (o_2@@27 T@Ref) (f_4@@27 T@Field_21531_21975) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| Mask@@25) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_21531_123847 f_4@@27))) (not (IsWandField_21531_128829 f_4@@27))) (<= (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| Mask@@25) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| Mask@@25) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_38218) (o_2@@28 T@Ref) (f_4@@28 T@Field_41684_1789) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| Mask@@26) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_21531_1789 f_4@@28))) (not (IsWandField_21531_1789 f_4@@28))) (<= (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| Mask@@26) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| Mask@@26) o_2@@28 f_4@@28))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_38197) (Mask@@27 T@PolymorphicMapType_38218) (x@@44 T@Ref) (y@@5 T@Ref) ) (!  (=> (and (state Heap@@45 Mask@@27) (< AssumeFunctionsAbove 13)) (= (nonAliasF Heap@@45 x@@44 y@@5) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@45) x@@44 f_7)))
 :qid |stdinbpl.1006:15|
 :skolemid |82|
 :pattern ( (state Heap@@45 Mask@@27) (nonAliasF Heap@@45 x@@44 y@@5))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_38218) (o_2@@29 T@Ref) (f_4@@29 T@Field_65751_65756) ) (! (= (HasDirectPerm_65737_123559 Mask@@28 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| Mask@@28) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_65737_123559 Mask@@28 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_38218) (o_2@@30 T@Ref) (f_4@@30 T@Field_65737_38271) ) (! (= (HasDirectPerm_65737_38271 Mask@@29 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| Mask@@29) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_65737_38271 Mask@@29 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_38218) (o_2@@31 T@Ref) (f_4@@31 T@Field_65737_53) ) (! (= (HasDirectPerm_65737_53 Mask@@30 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| Mask@@30) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_65737_53 Mask@@30 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_38218) (o_2@@32 T@Ref) (f_4@@32 T@Field_65737_65738) ) (! (= (HasDirectPerm_65737_21975 Mask@@31 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| Mask@@31) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_65737_21975 Mask@@31 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_38218) (o_2@@33 T@Ref) (f_4@@33 T@Field_65737_1789) ) (! (= (HasDirectPerm_65737_1789 Mask@@32 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| Mask@@32) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_65737_1789 Mask@@32 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_38218) (o_2@@34 T@Ref) (f_4@@34 T@Field_56026_56031) ) (! (= (HasDirectPerm_21974_122424 Mask@@33 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| Mask@@33) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21974_122424 Mask@@33 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_38218) (o_2@@35 T@Ref) (f_4@@35 T@Field_21974_38271) ) (! (= (HasDirectPerm_21974_38271 Mask@@34 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| Mask@@34) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21974_38271 Mask@@34 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_38218) (o_2@@36 T@Ref) (f_4@@36 T@Field_21974_53) ) (! (= (HasDirectPerm_21974_53 Mask@@35 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| Mask@@35) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21974_53 Mask@@35 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_38218) (o_2@@37 T@Ref) (f_4@@37 T@Field_42676_42677) ) (! (= (HasDirectPerm_21974_21975 Mask@@36 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| Mask@@36) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21974_21975 Mask@@36 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_38218) (o_2@@38 T@Ref) (f_4@@38 T@Field_21974_1789) ) (! (= (HasDirectPerm_21974_1789 Mask@@37 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| Mask@@37) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21974_1789 Mask@@37 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_38218) (o_2@@39 T@Ref) (f_4@@39 T@Field_21531_56031) ) (! (= (HasDirectPerm_21531_121283 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21531_121283 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_38218) (o_2@@40 T@Ref) (f_4@@40 T@Field_38270_38271) ) (! (= (HasDirectPerm_21531_38271 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21531_38271 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_38218) (o_2@@41 T@Ref) (f_4@@41 T@Field_38257_53) ) (! (= (HasDirectPerm_21531_53 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21531_53 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_38218) (o_2@@42 T@Ref) (f_4@@42 T@Field_21531_21975) ) (! (= (HasDirectPerm_21531_21975 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21531_21975 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_38218) (o_2@@43 T@Ref) (f_4@@43 T@Field_41684_1789) ) (! (= (HasDirectPerm_21531_1789 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21531_1789 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.265:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_38197) (ExhaleHeap@@7 T@PolymorphicMapType_38197) (Mask@@43 T@PolymorphicMapType_38218) (o_39@@0 T@Ref) (f_45 T@Field_65751_65756) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@7 Mask@@43) (=> (HasDirectPerm_65737_123559 Mask@@43 o_39@@0 f_45) (= (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@46) o_39@@0 f_45) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@7) o_39@@0 f_45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@7 Mask@@43) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@7) o_39@@0 f_45))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_38197) (ExhaleHeap@@8 T@PolymorphicMapType_38197) (Mask@@44 T@PolymorphicMapType_38218) (o_39@@1 T@Ref) (f_45@@0 T@Field_65737_38271) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@8 Mask@@44) (=> (HasDirectPerm_65737_38271 Mask@@44 o_39@@1 f_45@@0) (= (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@47) o_39@@1 f_45@@0) (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@8) o_39@@1 f_45@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@8 Mask@@44) (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@8) o_39@@1 f_45@@0))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_38197) (ExhaleHeap@@9 T@PolymorphicMapType_38197) (Mask@@45 T@PolymorphicMapType_38218) (o_39@@2 T@Ref) (f_45@@1 T@Field_65737_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@9 Mask@@45) (=> (HasDirectPerm_65737_53 Mask@@45 o_39@@2 f_45@@1) (= (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@48) o_39@@2 f_45@@1) (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@9) o_39@@2 f_45@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@9 Mask@@45) (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@9) o_39@@2 f_45@@1))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_38197) (ExhaleHeap@@10 T@PolymorphicMapType_38197) (Mask@@46 T@PolymorphicMapType_38218) (o_39@@3 T@Ref) (f_45@@2 T@Field_65737_65738) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@10 Mask@@46) (=> (HasDirectPerm_65737_21975 Mask@@46 o_39@@3 f_45@@2) (= (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@49) o_39@@3 f_45@@2) (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@10) o_39@@3 f_45@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@10 Mask@@46) (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@10) o_39@@3 f_45@@2))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_38197) (ExhaleHeap@@11 T@PolymorphicMapType_38197) (Mask@@47 T@PolymorphicMapType_38218) (o_39@@4 T@Ref) (f_45@@3 T@Field_65737_1789) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@11 Mask@@47) (=> (HasDirectPerm_65737_1789 Mask@@47 o_39@@4 f_45@@3) (= (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@50) o_39@@4 f_45@@3) (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@11) o_39@@4 f_45@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@11 Mask@@47) (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@11) o_39@@4 f_45@@3))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_38197) (ExhaleHeap@@12 T@PolymorphicMapType_38197) (Mask@@48 T@PolymorphicMapType_38218) (o_39@@5 T@Ref) (f_45@@4 T@Field_56026_56031) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@12 Mask@@48) (=> (HasDirectPerm_21974_122424 Mask@@48 o_39@@5 f_45@@4) (= (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@51) o_39@@5 f_45@@4) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@12) o_39@@5 f_45@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@12 Mask@@48) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@12) o_39@@5 f_45@@4))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_38197) (ExhaleHeap@@13 T@PolymorphicMapType_38197) (Mask@@49 T@PolymorphicMapType_38218) (o_39@@6 T@Ref) (f_45@@5 T@Field_21974_38271) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@13 Mask@@49) (=> (HasDirectPerm_21974_38271 Mask@@49 o_39@@6 f_45@@5) (= (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@52) o_39@@6 f_45@@5) (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@13) o_39@@6 f_45@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@13 Mask@@49) (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@13) o_39@@6 f_45@@5))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_38197) (ExhaleHeap@@14 T@PolymorphicMapType_38197) (Mask@@50 T@PolymorphicMapType_38218) (o_39@@7 T@Ref) (f_45@@6 T@Field_21974_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@14 Mask@@50) (=> (HasDirectPerm_21974_53 Mask@@50 o_39@@7 f_45@@6) (= (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@53) o_39@@7 f_45@@6) (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@14) o_39@@7 f_45@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@14 Mask@@50) (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@14) o_39@@7 f_45@@6))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_38197) (ExhaleHeap@@15 T@PolymorphicMapType_38197) (Mask@@51 T@PolymorphicMapType_38218) (o_39@@8 T@Ref) (f_45@@7 T@Field_42676_42677) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@15 Mask@@51) (=> (HasDirectPerm_21974_21975 Mask@@51 o_39@@8 f_45@@7) (= (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@54) o_39@@8 f_45@@7) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@15) o_39@@8 f_45@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@15 Mask@@51) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@15) o_39@@8 f_45@@7))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_38197) (ExhaleHeap@@16 T@PolymorphicMapType_38197) (Mask@@52 T@PolymorphicMapType_38218) (o_39@@9 T@Ref) (f_45@@8 T@Field_21974_1789) ) (!  (=> (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@16 Mask@@52) (=> (HasDirectPerm_21974_1789 Mask@@52 o_39@@9 f_45@@8) (= (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@55) o_39@@9 f_45@@8) (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@16) o_39@@9 f_45@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@16 Mask@@52) (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@16) o_39@@9 f_45@@8))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_38197) (ExhaleHeap@@17 T@PolymorphicMapType_38197) (Mask@@53 T@PolymorphicMapType_38218) (o_39@@10 T@Ref) (f_45@@9 T@Field_21531_56031) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@17 Mask@@53) (=> (HasDirectPerm_21531_121283 Mask@@53 o_39@@10 f_45@@9) (= (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@56) o_39@@10 f_45@@9) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@17) o_39@@10 f_45@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@17 Mask@@53) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@17) o_39@@10 f_45@@9))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_38197) (ExhaleHeap@@18 T@PolymorphicMapType_38197) (Mask@@54 T@PolymorphicMapType_38218) (o_39@@11 T@Ref) (f_45@@10 T@Field_38270_38271) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@18 Mask@@54) (=> (HasDirectPerm_21531_38271 Mask@@54 o_39@@11 f_45@@10) (= (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@57) o_39@@11 f_45@@10) (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@18) o_39@@11 f_45@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@18 Mask@@54) (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@18) o_39@@11 f_45@@10))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_38197) (ExhaleHeap@@19 T@PolymorphicMapType_38197) (Mask@@55 T@PolymorphicMapType_38218) (o_39@@12 T@Ref) (f_45@@11 T@Field_38257_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@19 Mask@@55) (=> (HasDirectPerm_21531_53 Mask@@55 o_39@@12 f_45@@11) (= (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@58) o_39@@12 f_45@@11) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@19) o_39@@12 f_45@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@19 Mask@@55) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@19) o_39@@12 f_45@@11))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_38197) (ExhaleHeap@@20 T@PolymorphicMapType_38197) (Mask@@56 T@PolymorphicMapType_38218) (o_39@@13 T@Ref) (f_45@@12 T@Field_21531_21975) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@20 Mask@@56) (=> (HasDirectPerm_21531_21975 Mask@@56 o_39@@13 f_45@@12) (= (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@59) o_39@@13 f_45@@12) (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@20) o_39@@13 f_45@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@20 Mask@@56) (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@20) o_39@@13 f_45@@12))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_38197) (ExhaleHeap@@21 T@PolymorphicMapType_38197) (Mask@@57 T@PolymorphicMapType_38218) (o_39@@14 T@Ref) (f_45@@13 T@Field_41684_1789) ) (!  (=> (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@21 Mask@@57) (=> (HasDirectPerm_21531_1789 Mask@@57 o_39@@14 f_45@@13) (= (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@60) o_39@@14 f_45@@13) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@21) o_39@@14 f_45@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@21 Mask@@57) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@21) o_39@@14 f_45@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_65751_65756) ) (! (= (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_65737_38271) ) (! (= (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_65737_53) ) (! (= (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_65737_65738) ) (! (= (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_65737_1789) ) (! (= (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_56026_56031) ) (! (= (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_21974_38271) ) (! (= (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_21974_53) ) (! (= (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_42676_42677) ) (! (= (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_21974_1789) ) (! (= (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_21531_56031) ) (! (= (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_38270_38271) ) (! (= (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_38257_53) ) (! (= (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_21531_21975) ) (! (= (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_41684_1789) ) (! (= (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_38197) (x@@45 T@Ref) (b_24@@1 Bool) ) (!  (and (= (foo2_1 Heap@@61 x@@45 b_24@@1) (|foo2'| Heap@@61 x@@45 b_24@@1)) (dummyFunction_1955 (|foo2#triggerStateless| x@@45 b_24@@1)))
 :qid |stdinbpl.399:15|
 :skolemid |28|
 :pattern ( (foo2_1 Heap@@61 x@@45 b_24@@1))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_38197) (x@@46 T@Ref) (b_24@@2 Bool) ) (!  (and (= (foo2w Heap@@62 x@@46 b_24@@2) (|foo2w'| Heap@@62 x@@46 b_24@@2)) (dummyFunction_1955 (|foo2w#triggerStateless| x@@46 b_24@@2)))
 :qid |stdinbpl.451:15|
 :skolemid |31|
 :pattern ( (foo2w Heap@@62 x@@46 b_24@@2))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_38197) (x@@47 T@Ref) (y@@6 T@Ref) ) (!  (and (= (nonAliasF Heap@@63 x@@47 y@@6) (|nonAliasF'| Heap@@63 x@@47 y@@6)) (dummyFunction_1955 (|nonAliasF#triggerStateless| x@@47 y@@6)))
 :qid |stdinbpl.996:15|
 :skolemid |80|
 :pattern ( (nonAliasF Heap@@63 x@@47 y@@6))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_38218) (SummandMask1 T@PolymorphicMapType_38218) (SummandMask2 T@PolymorphicMapType_38218) (o_2@@59 T@Ref) (f_4@@59 T@Field_65751_65756) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_38218) (SummandMask1@@0 T@PolymorphicMapType_38218) (SummandMask2@@0 T@PolymorphicMapType_38218) (o_2@@60 T@Ref) (f_4@@60 T@Field_65737_38271) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_38218) (SummandMask1@@1 T@PolymorphicMapType_38218) (SummandMask2@@1 T@PolymorphicMapType_38218) (o_2@@61 T@Ref) (f_4@@61 T@Field_65737_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_38218) (SummandMask1@@2 T@PolymorphicMapType_38218) (SummandMask2@@2 T@PolymorphicMapType_38218) (o_2@@62 T@Ref) (f_4@@62 T@Field_65737_65738) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_38218) (SummandMask1@@3 T@PolymorphicMapType_38218) (SummandMask2@@3 T@PolymorphicMapType_38218) (o_2@@63 T@Ref) (f_4@@63 T@Field_65737_1789) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_38218) (SummandMask1@@4 T@PolymorphicMapType_38218) (SummandMask2@@4 T@PolymorphicMapType_38218) (o_2@@64 T@Ref) (f_4@@64 T@Field_56026_56031) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_38218) (SummandMask1@@5 T@PolymorphicMapType_38218) (SummandMask2@@5 T@PolymorphicMapType_38218) (o_2@@65 T@Ref) (f_4@@65 T@Field_21974_38271) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_38218) (SummandMask1@@6 T@PolymorphicMapType_38218) (SummandMask2@@6 T@PolymorphicMapType_38218) (o_2@@66 T@Ref) (f_4@@66 T@Field_21974_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_38218) (SummandMask1@@7 T@PolymorphicMapType_38218) (SummandMask2@@7 T@PolymorphicMapType_38218) (o_2@@67 T@Ref) (f_4@@67 T@Field_42676_42677) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_38218) (SummandMask1@@8 T@PolymorphicMapType_38218) (SummandMask2@@8 T@PolymorphicMapType_38218) (o_2@@68 T@Ref) (f_4@@68 T@Field_21974_1789) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_38218) (SummandMask1@@9 T@PolymorphicMapType_38218) (SummandMask2@@9 T@PolymorphicMapType_38218) (o_2@@69 T@Ref) (f_4@@69 T@Field_21531_56031) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_38218) (SummandMask1@@10 T@PolymorphicMapType_38218) (SummandMask2@@10 T@PolymorphicMapType_38218) (o_2@@70 T@Ref) (f_4@@70 T@Field_38270_38271) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_38218) (SummandMask1@@11 T@PolymorphicMapType_38218) (SummandMask2@@11 T@PolymorphicMapType_38218) (o_2@@71 T@Ref) (f_4@@71 T@Field_38257_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_38218) (SummandMask1@@12 T@PolymorphicMapType_38218) (SummandMask2@@12 T@PolymorphicMapType_38218) (o_2@@72 T@Ref) (f_4@@72 T@Field_21531_21975) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_38218) (SummandMask1@@13 T@PolymorphicMapType_38218) (SummandMask2@@13 T@PolymorphicMapType_38218) (o_2@@73 T@Ref) (f_4@@73 T@Field_41684_1789) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_38197) (ExhaleHeap@@22 T@PolymorphicMapType_38197) (Mask@@58 T@PolymorphicMapType_38218) (pm_f_15@@5 T@Field_65737_65738) ) (!  (=> (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@22 Mask@@58) (=> (and (HasDirectPerm_65737_21975 Mask@@58 null pm_f_15@@5) (IsPredicateField_22000_22001 pm_f_15@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_15 T@Ref) (f_45@@14 T@Field_41684_1789) ) (!  (=> (select (|PolymorphicMapType_38746_21531_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15 f_45@@14) (= (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@64) o2_15 f_45@@14) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15 f_45@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15 f_45@@14))
)) (forall ((o2_15@@0 T@Ref) (f_45@@15 T@Field_38257_53) ) (!  (=> (select (|PolymorphicMapType_38746_21531_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@0 f_45@@15) (= (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@64) o2_15@@0 f_45@@15) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@0 f_45@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@0 f_45@@15))
))) (forall ((o2_15@@1 T@Ref) (f_45@@16 T@Field_38270_38271) ) (!  (=> (select (|PolymorphicMapType_38746_21531_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@1 f_45@@16) (= (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@64) o2_15@@1 f_45@@16) (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@1 f_45@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@1 f_45@@16))
))) (forall ((o2_15@@2 T@Ref) (f_45@@17 T@Field_21531_21975) ) (!  (=> (select (|PolymorphicMapType_38746_21531_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@2 f_45@@17) (= (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@64) o2_15@@2 f_45@@17) (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@2 f_45@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@2 f_45@@17))
))) (forall ((o2_15@@3 T@Ref) (f_45@@18 T@Field_21531_56031) ) (!  (=> (select (|PolymorphicMapType_38746_21531_125644#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@3 f_45@@18) (= (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@64) o2_15@@3 f_45@@18) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@3 f_45@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@3 f_45@@18))
))) (forall ((o2_15@@4 T@Ref) (f_45@@19 T@Field_21974_1789) ) (!  (=> (select (|PolymorphicMapType_38746_42676_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@4 f_45@@19) (= (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@64) o2_15@@4 f_45@@19) (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@4 f_45@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@4 f_45@@19))
))) (forall ((o2_15@@5 T@Ref) (f_45@@20 T@Field_21974_53) ) (!  (=> (select (|PolymorphicMapType_38746_42676_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@5 f_45@@20) (= (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@64) o2_15@@5 f_45@@20) (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@5 f_45@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@5 f_45@@20))
))) (forall ((o2_15@@6 T@Ref) (f_45@@21 T@Field_21974_38271) ) (!  (=> (select (|PolymorphicMapType_38746_42676_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@6 f_45@@21) (= (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@64) o2_15@@6 f_45@@21) (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@6 f_45@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@6 f_45@@21))
))) (forall ((o2_15@@7 T@Ref) (f_45@@22 T@Field_42676_42677) ) (!  (=> (select (|PolymorphicMapType_38746_42676_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@7 f_45@@22) (= (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@64) o2_15@@7 f_45@@22) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@7 f_45@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@7 f_45@@22))
))) (forall ((o2_15@@8 T@Ref) (f_45@@23 T@Field_56026_56031) ) (!  (=> (select (|PolymorphicMapType_38746_42676_126692#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@8 f_45@@23) (= (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@64) o2_15@@8 f_45@@23) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@8 f_45@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@8 f_45@@23))
))) (forall ((o2_15@@9 T@Ref) (f_45@@24 T@Field_65737_1789) ) (!  (=> (select (|PolymorphicMapType_38746_65737_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@9 f_45@@24) (= (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@64) o2_15@@9 f_45@@24) (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@9 f_45@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@9 f_45@@24))
))) (forall ((o2_15@@10 T@Ref) (f_45@@25 T@Field_65737_53) ) (!  (=> (select (|PolymorphicMapType_38746_65737_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@10 f_45@@25) (= (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@64) o2_15@@10 f_45@@25) (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@10 f_45@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@10 f_45@@25))
))) (forall ((o2_15@@11 T@Ref) (f_45@@26 T@Field_65737_38271) ) (!  (=> (select (|PolymorphicMapType_38746_65737_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@11 f_45@@26) (= (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@64) o2_15@@11 f_45@@26) (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@11 f_45@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@11 f_45@@26))
))) (forall ((o2_15@@12 T@Ref) (f_45@@27 T@Field_65737_65738) ) (!  (=> (select (|PolymorphicMapType_38746_65737_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@12 f_45@@27) (= (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@64) o2_15@@12 f_45@@27) (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@12 f_45@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@12 f_45@@27))
))) (forall ((o2_15@@13 T@Ref) (f_45@@28 T@Field_65751_65756) ) (!  (=> (select (|PolymorphicMapType_38746_65737_127740#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@13 f_45@@28) (= (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) o2_15@@13 f_45@@28) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@13 f_45@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@13 f_45@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@22 Mask@@58) (IsPredicateField_22000_22001 pm_f_15@@5))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_38197) (ExhaleHeap@@23 T@PolymorphicMapType_38197) (Mask@@59 T@PolymorphicMapType_38218) (pm_f_15@@6 T@Field_42676_42677) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@23 Mask@@59) (=> (and (HasDirectPerm_21974_21975 Mask@@59 null pm_f_15@@6) (IsPredicateField_21974_21975 pm_f_15@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_15@@14 T@Ref) (f_45@@29 T@Field_41684_1789) ) (!  (=> (select (|PolymorphicMapType_38746_21531_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@14 f_45@@29) (= (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@65) o2_15@@14 f_45@@29) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@14 f_45@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@14 f_45@@29))
)) (forall ((o2_15@@15 T@Ref) (f_45@@30 T@Field_38257_53) ) (!  (=> (select (|PolymorphicMapType_38746_21531_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@15 f_45@@30) (= (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@65) o2_15@@15 f_45@@30) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@15 f_45@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@15 f_45@@30))
))) (forall ((o2_15@@16 T@Ref) (f_45@@31 T@Field_38270_38271) ) (!  (=> (select (|PolymorphicMapType_38746_21531_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@16 f_45@@31) (= (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@65) o2_15@@16 f_45@@31) (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@16 f_45@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@16 f_45@@31))
))) (forall ((o2_15@@17 T@Ref) (f_45@@32 T@Field_21531_21975) ) (!  (=> (select (|PolymorphicMapType_38746_21531_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@17 f_45@@32) (= (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@65) o2_15@@17 f_45@@32) (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@17 f_45@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@17 f_45@@32))
))) (forall ((o2_15@@18 T@Ref) (f_45@@33 T@Field_21531_56031) ) (!  (=> (select (|PolymorphicMapType_38746_21531_125644#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@18 f_45@@33) (= (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@65) o2_15@@18 f_45@@33) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@18 f_45@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@18 f_45@@33))
))) (forall ((o2_15@@19 T@Ref) (f_45@@34 T@Field_21974_1789) ) (!  (=> (select (|PolymorphicMapType_38746_42676_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@19 f_45@@34) (= (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@65) o2_15@@19 f_45@@34) (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@19 f_45@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@19 f_45@@34))
))) (forall ((o2_15@@20 T@Ref) (f_45@@35 T@Field_21974_53) ) (!  (=> (select (|PolymorphicMapType_38746_42676_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@20 f_45@@35) (= (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@65) o2_15@@20 f_45@@35) (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@20 f_45@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@20 f_45@@35))
))) (forall ((o2_15@@21 T@Ref) (f_45@@36 T@Field_21974_38271) ) (!  (=> (select (|PolymorphicMapType_38746_42676_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@21 f_45@@36) (= (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@65) o2_15@@21 f_45@@36) (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@21 f_45@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@21 f_45@@36))
))) (forall ((o2_15@@22 T@Ref) (f_45@@37 T@Field_42676_42677) ) (!  (=> (select (|PolymorphicMapType_38746_42676_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@22 f_45@@37) (= (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@65) o2_15@@22 f_45@@37) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@22 f_45@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@22 f_45@@37))
))) (forall ((o2_15@@23 T@Ref) (f_45@@38 T@Field_56026_56031) ) (!  (=> (select (|PolymorphicMapType_38746_42676_126692#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@23 f_45@@38) (= (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) o2_15@@23 f_45@@38) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@23 f_45@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@23 f_45@@38))
))) (forall ((o2_15@@24 T@Ref) (f_45@@39 T@Field_65737_1789) ) (!  (=> (select (|PolymorphicMapType_38746_65737_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@24 f_45@@39) (= (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@65) o2_15@@24 f_45@@39) (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@24 f_45@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@24 f_45@@39))
))) (forall ((o2_15@@25 T@Ref) (f_45@@40 T@Field_65737_53) ) (!  (=> (select (|PolymorphicMapType_38746_65737_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@25 f_45@@40) (= (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@65) o2_15@@25 f_45@@40) (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@25 f_45@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@25 f_45@@40))
))) (forall ((o2_15@@26 T@Ref) (f_45@@41 T@Field_65737_38271) ) (!  (=> (select (|PolymorphicMapType_38746_65737_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@26 f_45@@41) (= (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@65) o2_15@@26 f_45@@41) (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@26 f_45@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@26 f_45@@41))
))) (forall ((o2_15@@27 T@Ref) (f_45@@42 T@Field_65737_65738) ) (!  (=> (select (|PolymorphicMapType_38746_65737_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@27 f_45@@42) (= (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@65) o2_15@@27 f_45@@42) (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@27 f_45@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@27 f_45@@42))
))) (forall ((o2_15@@28 T@Ref) (f_45@@43 T@Field_65751_65756) ) (!  (=> (select (|PolymorphicMapType_38746_65737_127740#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@28 f_45@@43) (= (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@65) o2_15@@28 f_45@@43) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@28 f_45@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@28 f_45@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@23 Mask@@59) (IsPredicateField_21974_21975 pm_f_15@@6))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_38197) (ExhaleHeap@@24 T@PolymorphicMapType_38197) (Mask@@60 T@PolymorphicMapType_38218) (pm_f_15@@7 T@Field_21531_21975) ) (!  (=> (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@24 Mask@@60) (=> (and (HasDirectPerm_21531_21975 Mask@@60 null pm_f_15@@7) (IsPredicateField_21531_123847 pm_f_15@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_15@@29 T@Ref) (f_45@@44 T@Field_41684_1789) ) (!  (=> (select (|PolymorphicMapType_38746_21531_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@29 f_45@@44) (= (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@66) o2_15@@29 f_45@@44) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@29 f_45@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@29 f_45@@44))
)) (forall ((o2_15@@30 T@Ref) (f_45@@45 T@Field_38257_53) ) (!  (=> (select (|PolymorphicMapType_38746_21531_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@30 f_45@@45) (= (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@66) o2_15@@30 f_45@@45) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@30 f_45@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@30 f_45@@45))
))) (forall ((o2_15@@31 T@Ref) (f_45@@46 T@Field_38270_38271) ) (!  (=> (select (|PolymorphicMapType_38746_21531_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@31 f_45@@46) (= (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@66) o2_15@@31 f_45@@46) (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@31 f_45@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@31 f_45@@46))
))) (forall ((o2_15@@32 T@Ref) (f_45@@47 T@Field_21531_21975) ) (!  (=> (select (|PolymorphicMapType_38746_21531_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@32 f_45@@47) (= (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@66) o2_15@@32 f_45@@47) (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@32 f_45@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@32 f_45@@47))
))) (forall ((o2_15@@33 T@Ref) (f_45@@48 T@Field_21531_56031) ) (!  (=> (select (|PolymorphicMapType_38746_21531_125644#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@33 f_45@@48) (= (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) o2_15@@33 f_45@@48) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@33 f_45@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@33 f_45@@48))
))) (forall ((o2_15@@34 T@Ref) (f_45@@49 T@Field_21974_1789) ) (!  (=> (select (|PolymorphicMapType_38746_42676_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@34 f_45@@49) (= (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@66) o2_15@@34 f_45@@49) (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@34 f_45@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@34 f_45@@49))
))) (forall ((o2_15@@35 T@Ref) (f_45@@50 T@Field_21974_53) ) (!  (=> (select (|PolymorphicMapType_38746_42676_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@35 f_45@@50) (= (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@66) o2_15@@35 f_45@@50) (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@35 f_45@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@35 f_45@@50))
))) (forall ((o2_15@@36 T@Ref) (f_45@@51 T@Field_21974_38271) ) (!  (=> (select (|PolymorphicMapType_38746_42676_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@36 f_45@@51) (= (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@66) o2_15@@36 f_45@@51) (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@36 f_45@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@36 f_45@@51))
))) (forall ((o2_15@@37 T@Ref) (f_45@@52 T@Field_42676_42677) ) (!  (=> (select (|PolymorphicMapType_38746_42676_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@37 f_45@@52) (= (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@66) o2_15@@37 f_45@@52) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@37 f_45@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@37 f_45@@52))
))) (forall ((o2_15@@38 T@Ref) (f_45@@53 T@Field_56026_56031) ) (!  (=> (select (|PolymorphicMapType_38746_42676_126692#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@38 f_45@@53) (= (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@66) o2_15@@38 f_45@@53) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@38 f_45@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@38 f_45@@53))
))) (forall ((o2_15@@39 T@Ref) (f_45@@54 T@Field_65737_1789) ) (!  (=> (select (|PolymorphicMapType_38746_65737_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@39 f_45@@54) (= (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@66) o2_15@@39 f_45@@54) (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@39 f_45@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@39 f_45@@54))
))) (forall ((o2_15@@40 T@Ref) (f_45@@55 T@Field_65737_53) ) (!  (=> (select (|PolymorphicMapType_38746_65737_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@40 f_45@@55) (= (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@66) o2_15@@40 f_45@@55) (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@40 f_45@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@40 f_45@@55))
))) (forall ((o2_15@@41 T@Ref) (f_45@@56 T@Field_65737_38271) ) (!  (=> (select (|PolymorphicMapType_38746_65737_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@41 f_45@@56) (= (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@66) o2_15@@41 f_45@@56) (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@41 f_45@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@41 f_45@@56))
))) (forall ((o2_15@@42 T@Ref) (f_45@@57 T@Field_65737_65738) ) (!  (=> (select (|PolymorphicMapType_38746_65737_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@42 f_45@@57) (= (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@66) o2_15@@42 f_45@@57) (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@42 f_45@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@42 f_45@@57))
))) (forall ((o2_15@@43 T@Ref) (f_45@@58 T@Field_65751_65756) ) (!  (=> (select (|PolymorphicMapType_38746_65737_127740#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@43 f_45@@58) (= (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@66) o2_15@@43 f_45@@58) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@43 f_45@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@43 f_45@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@24 Mask@@60) (IsPredicateField_21531_123847 pm_f_15@@7))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_38197) (ExhaleHeap@@25 T@PolymorphicMapType_38197) (Mask@@61 T@PolymorphicMapType_38218) (pm_f_15@@8 T@Field_65737_65738) ) (!  (=> (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@25 Mask@@61) (=> (and (HasDirectPerm_65737_21975 Mask@@61 null pm_f_15@@8) (IsWandField_65737_129543 pm_f_15@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_15@@44 T@Ref) (f_45@@59 T@Field_41684_1789) ) (!  (=> (select (|PolymorphicMapType_38746_21531_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@44 f_45@@59) (= (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@67) o2_15@@44 f_45@@59) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@44 f_45@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@44 f_45@@59))
)) (forall ((o2_15@@45 T@Ref) (f_45@@60 T@Field_38257_53) ) (!  (=> (select (|PolymorphicMapType_38746_21531_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@45 f_45@@60) (= (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@67) o2_15@@45 f_45@@60) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@45 f_45@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@45 f_45@@60))
))) (forall ((o2_15@@46 T@Ref) (f_45@@61 T@Field_38270_38271) ) (!  (=> (select (|PolymorphicMapType_38746_21531_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@46 f_45@@61) (= (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@67) o2_15@@46 f_45@@61) (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@46 f_45@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@46 f_45@@61))
))) (forall ((o2_15@@47 T@Ref) (f_45@@62 T@Field_21531_21975) ) (!  (=> (select (|PolymorphicMapType_38746_21531_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@47 f_45@@62) (= (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@67) o2_15@@47 f_45@@62) (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@47 f_45@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@47 f_45@@62))
))) (forall ((o2_15@@48 T@Ref) (f_45@@63 T@Field_21531_56031) ) (!  (=> (select (|PolymorphicMapType_38746_21531_125644#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@48 f_45@@63) (= (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@67) o2_15@@48 f_45@@63) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@48 f_45@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@48 f_45@@63))
))) (forall ((o2_15@@49 T@Ref) (f_45@@64 T@Field_21974_1789) ) (!  (=> (select (|PolymorphicMapType_38746_42676_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@49 f_45@@64) (= (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@67) o2_15@@49 f_45@@64) (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@49 f_45@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@49 f_45@@64))
))) (forall ((o2_15@@50 T@Ref) (f_45@@65 T@Field_21974_53) ) (!  (=> (select (|PolymorphicMapType_38746_42676_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@50 f_45@@65) (= (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@67) o2_15@@50 f_45@@65) (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@50 f_45@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@50 f_45@@65))
))) (forall ((o2_15@@51 T@Ref) (f_45@@66 T@Field_21974_38271) ) (!  (=> (select (|PolymorphicMapType_38746_42676_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@51 f_45@@66) (= (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@67) o2_15@@51 f_45@@66) (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@51 f_45@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@51 f_45@@66))
))) (forall ((o2_15@@52 T@Ref) (f_45@@67 T@Field_42676_42677) ) (!  (=> (select (|PolymorphicMapType_38746_42676_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@52 f_45@@67) (= (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@67) o2_15@@52 f_45@@67) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@52 f_45@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@52 f_45@@67))
))) (forall ((o2_15@@53 T@Ref) (f_45@@68 T@Field_56026_56031) ) (!  (=> (select (|PolymorphicMapType_38746_42676_126692#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@53 f_45@@68) (= (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@67) o2_15@@53 f_45@@68) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@53 f_45@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@53 f_45@@68))
))) (forall ((o2_15@@54 T@Ref) (f_45@@69 T@Field_65737_1789) ) (!  (=> (select (|PolymorphicMapType_38746_65737_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@54 f_45@@69) (= (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@67) o2_15@@54 f_45@@69) (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@54 f_45@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@54 f_45@@69))
))) (forall ((o2_15@@55 T@Ref) (f_45@@70 T@Field_65737_53) ) (!  (=> (select (|PolymorphicMapType_38746_65737_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@55 f_45@@70) (= (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@67) o2_15@@55 f_45@@70) (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@55 f_45@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@55 f_45@@70))
))) (forall ((o2_15@@56 T@Ref) (f_45@@71 T@Field_65737_38271) ) (!  (=> (select (|PolymorphicMapType_38746_65737_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@56 f_45@@71) (= (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@67) o2_15@@56 f_45@@71) (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@56 f_45@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@56 f_45@@71))
))) (forall ((o2_15@@57 T@Ref) (f_45@@72 T@Field_65737_65738) ) (!  (=> (select (|PolymorphicMapType_38746_65737_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@57 f_45@@72) (= (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@67) o2_15@@57 f_45@@72) (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@57 f_45@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@57 f_45@@72))
))) (forall ((o2_15@@58 T@Ref) (f_45@@73 T@Field_65751_65756) ) (!  (=> (select (|PolymorphicMapType_38746_65737_127740#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@58 f_45@@73) (= (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) o2_15@@58 f_45@@73) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@58 f_45@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@58 f_45@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@25 Mask@@61) (IsWandField_65737_129543 pm_f_15@@8))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_38197) (ExhaleHeap@@26 T@PolymorphicMapType_38197) (Mask@@62 T@PolymorphicMapType_38218) (pm_f_15@@9 T@Field_42676_42677) ) (!  (=> (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@26 Mask@@62) (=> (and (HasDirectPerm_21974_21975 Mask@@62 null pm_f_15@@9) (IsWandField_21974_129186 pm_f_15@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_15@@59 T@Ref) (f_45@@74 T@Field_41684_1789) ) (!  (=> (select (|PolymorphicMapType_38746_21531_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@59 f_45@@74) (= (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@68) o2_15@@59 f_45@@74) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@59 f_45@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@59 f_45@@74))
)) (forall ((o2_15@@60 T@Ref) (f_45@@75 T@Field_38257_53) ) (!  (=> (select (|PolymorphicMapType_38746_21531_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@60 f_45@@75) (= (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@68) o2_15@@60 f_45@@75) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@60 f_45@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@60 f_45@@75))
))) (forall ((o2_15@@61 T@Ref) (f_45@@76 T@Field_38270_38271) ) (!  (=> (select (|PolymorphicMapType_38746_21531_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@61 f_45@@76) (= (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@68) o2_15@@61 f_45@@76) (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@61 f_45@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@61 f_45@@76))
))) (forall ((o2_15@@62 T@Ref) (f_45@@77 T@Field_21531_21975) ) (!  (=> (select (|PolymorphicMapType_38746_21531_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@62 f_45@@77) (= (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@68) o2_15@@62 f_45@@77) (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@62 f_45@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@62 f_45@@77))
))) (forall ((o2_15@@63 T@Ref) (f_45@@78 T@Field_21531_56031) ) (!  (=> (select (|PolymorphicMapType_38746_21531_125644#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@63 f_45@@78) (= (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@68) o2_15@@63 f_45@@78) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@63 f_45@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@63 f_45@@78))
))) (forall ((o2_15@@64 T@Ref) (f_45@@79 T@Field_21974_1789) ) (!  (=> (select (|PolymorphicMapType_38746_42676_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@64 f_45@@79) (= (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@68) o2_15@@64 f_45@@79) (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@64 f_45@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@64 f_45@@79))
))) (forall ((o2_15@@65 T@Ref) (f_45@@80 T@Field_21974_53) ) (!  (=> (select (|PolymorphicMapType_38746_42676_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@65 f_45@@80) (= (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@68) o2_15@@65 f_45@@80) (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@65 f_45@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@65 f_45@@80))
))) (forall ((o2_15@@66 T@Ref) (f_45@@81 T@Field_21974_38271) ) (!  (=> (select (|PolymorphicMapType_38746_42676_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@66 f_45@@81) (= (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@68) o2_15@@66 f_45@@81) (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@66 f_45@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@66 f_45@@81))
))) (forall ((o2_15@@67 T@Ref) (f_45@@82 T@Field_42676_42677) ) (!  (=> (select (|PolymorphicMapType_38746_42676_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@67 f_45@@82) (= (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@68) o2_15@@67 f_45@@82) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@67 f_45@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@67 f_45@@82))
))) (forall ((o2_15@@68 T@Ref) (f_45@@83 T@Field_56026_56031) ) (!  (=> (select (|PolymorphicMapType_38746_42676_126692#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@68 f_45@@83) (= (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) o2_15@@68 f_45@@83) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@68 f_45@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@68 f_45@@83))
))) (forall ((o2_15@@69 T@Ref) (f_45@@84 T@Field_65737_1789) ) (!  (=> (select (|PolymorphicMapType_38746_65737_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@69 f_45@@84) (= (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@68) o2_15@@69 f_45@@84) (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@69 f_45@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@69 f_45@@84))
))) (forall ((o2_15@@70 T@Ref) (f_45@@85 T@Field_65737_53) ) (!  (=> (select (|PolymorphicMapType_38746_65737_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@70 f_45@@85) (= (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@68) o2_15@@70 f_45@@85) (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@70 f_45@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@70 f_45@@85))
))) (forall ((o2_15@@71 T@Ref) (f_45@@86 T@Field_65737_38271) ) (!  (=> (select (|PolymorphicMapType_38746_65737_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@71 f_45@@86) (= (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@68) o2_15@@71 f_45@@86) (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@71 f_45@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@71 f_45@@86))
))) (forall ((o2_15@@72 T@Ref) (f_45@@87 T@Field_65737_65738) ) (!  (=> (select (|PolymorphicMapType_38746_65737_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@72 f_45@@87) (= (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@68) o2_15@@72 f_45@@87) (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@72 f_45@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@72 f_45@@87))
))) (forall ((o2_15@@73 T@Ref) (f_45@@88 T@Field_65751_65756) ) (!  (=> (select (|PolymorphicMapType_38746_65737_127740#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@73 f_45@@88) (= (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@68) o2_15@@73 f_45@@88) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@73 f_45@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@73 f_45@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@26 Mask@@62) (IsWandField_21974_129186 pm_f_15@@9))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_38197) (ExhaleHeap@@27 T@PolymorphicMapType_38197) (Mask@@63 T@PolymorphicMapType_38218) (pm_f_15@@10 T@Field_21531_21975) ) (!  (=> (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@27 Mask@@63) (=> (and (HasDirectPerm_21531_21975 Mask@@63 null pm_f_15@@10) (IsWandField_21531_128829 pm_f_15@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_15@@74 T@Ref) (f_45@@89 T@Field_41684_1789) ) (!  (=> (select (|PolymorphicMapType_38746_21531_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@74 f_45@@89) (= (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@69) o2_15@@74 f_45@@89) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@74 f_45@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@74 f_45@@89))
)) (forall ((o2_15@@75 T@Ref) (f_45@@90 T@Field_38257_53) ) (!  (=> (select (|PolymorphicMapType_38746_21531_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@75 f_45@@90) (= (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@69) o2_15@@75 f_45@@90) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@75 f_45@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@75 f_45@@90))
))) (forall ((o2_15@@76 T@Ref) (f_45@@91 T@Field_38270_38271) ) (!  (=> (select (|PolymorphicMapType_38746_21531_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@76 f_45@@91) (= (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@69) o2_15@@76 f_45@@91) (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@76 f_45@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@76 f_45@@91))
))) (forall ((o2_15@@77 T@Ref) (f_45@@92 T@Field_21531_21975) ) (!  (=> (select (|PolymorphicMapType_38746_21531_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@77 f_45@@92) (= (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@69) o2_15@@77 f_45@@92) (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@77 f_45@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@77 f_45@@92))
))) (forall ((o2_15@@78 T@Ref) (f_45@@93 T@Field_21531_56031) ) (!  (=> (select (|PolymorphicMapType_38746_21531_125644#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@78 f_45@@93) (= (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) o2_15@@78 f_45@@93) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@78 f_45@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@78 f_45@@93))
))) (forall ((o2_15@@79 T@Ref) (f_45@@94 T@Field_21974_1789) ) (!  (=> (select (|PolymorphicMapType_38746_42676_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@79 f_45@@94) (= (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@69) o2_15@@79 f_45@@94) (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@79 f_45@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@79 f_45@@94))
))) (forall ((o2_15@@80 T@Ref) (f_45@@95 T@Field_21974_53) ) (!  (=> (select (|PolymorphicMapType_38746_42676_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@80 f_45@@95) (= (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@69) o2_15@@80 f_45@@95) (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@80 f_45@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@80 f_45@@95))
))) (forall ((o2_15@@81 T@Ref) (f_45@@96 T@Field_21974_38271) ) (!  (=> (select (|PolymorphicMapType_38746_42676_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@81 f_45@@96) (= (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@69) o2_15@@81 f_45@@96) (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@81 f_45@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@81 f_45@@96))
))) (forall ((o2_15@@82 T@Ref) (f_45@@97 T@Field_42676_42677) ) (!  (=> (select (|PolymorphicMapType_38746_42676_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@82 f_45@@97) (= (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@69) o2_15@@82 f_45@@97) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@82 f_45@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@82 f_45@@97))
))) (forall ((o2_15@@83 T@Ref) (f_45@@98 T@Field_56026_56031) ) (!  (=> (select (|PolymorphicMapType_38746_42676_126692#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@83 f_45@@98) (= (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@69) o2_15@@83 f_45@@98) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@83 f_45@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@83 f_45@@98))
))) (forall ((o2_15@@84 T@Ref) (f_45@@99 T@Field_65737_1789) ) (!  (=> (select (|PolymorphicMapType_38746_65737_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@84 f_45@@99) (= (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@69) o2_15@@84 f_45@@99) (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@84 f_45@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@84 f_45@@99))
))) (forall ((o2_15@@85 T@Ref) (f_45@@100 T@Field_65737_53) ) (!  (=> (select (|PolymorphicMapType_38746_65737_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@85 f_45@@100) (= (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@69) o2_15@@85 f_45@@100) (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@85 f_45@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@85 f_45@@100))
))) (forall ((o2_15@@86 T@Ref) (f_45@@101 T@Field_65737_38271) ) (!  (=> (select (|PolymorphicMapType_38746_65737_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@86 f_45@@101) (= (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@69) o2_15@@86 f_45@@101) (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@86 f_45@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@86 f_45@@101))
))) (forall ((o2_15@@87 T@Ref) (f_45@@102 T@Field_65737_65738) ) (!  (=> (select (|PolymorphicMapType_38746_65737_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@87 f_45@@102) (= (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@69) o2_15@@87 f_45@@102) (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@87 f_45@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@87 f_45@@102))
))) (forall ((o2_15@@88 T@Ref) (f_45@@103 T@Field_65751_65756) ) (!  (=> (select (|PolymorphicMapType_38746_65737_127740#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@88 f_45@@103) (= (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@69) o2_15@@88 f_45@@103) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@88 f_45@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@88 f_45@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@27 Mask@@63) (IsWandField_21531_128829 pm_f_15@@10))
)))
(assert (forall ((x@@48 T@Ref) (y@@7 T@Ref) ) (! (= (getPredWandId_22000_22001 (nonAliasPred x@@48 y@@7)) 1)
 :qid |stdinbpl.1705:15|
 :skolemid |116|
 :pattern ( (nonAliasPred x@@48 y@@7))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_38197) (Mask@@64 T@PolymorphicMapType_38218) (x@@49 T@Ref) ) (!  (=> (state Heap@@70 Mask@@64) (= (|foo'| Heap@@70 x@@49) (|foo#frame| (FrameFragment_1789 (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@70) x@@49 f_7)) x@@49)))
 :qid |stdinbpl.311:15|
 :skolemid |24|
 :pattern ( (state Heap@@70 Mask@@64) (|foo'| Heap@@70 x@@49))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_38197) (Mask@@65 T@PolymorphicMapType_38218) (x@@50 T@Ref) ) (!  (=> (state Heap@@71 Mask@@65) (= (|foop'| Heap@@71 x@@50) (|foop#frame| (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@71) null (P x@@50)) x@@50)))
 :qid |stdinbpl.361:15|
 :skolemid |27|
 :pattern ( (state Heap@@71 Mask@@65) (|foop'| Heap@@71 x@@50))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_38197) (Mask@@66 T@PolymorphicMapType_38218) (x@@51 T@Ref) ) (!  (=> (state Heap@@72 Mask@@66) (= (|foo3'| Heap@@72 x@@51) (|foo3#frame| (FrameFragment_1789 (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@72) x@@51 f_7)) x@@51)))
 :qid |stdinbpl.514:15|
 :skolemid |36|
 :pattern ( (state Heap@@72 Mask@@66) (|foo3'| Heap@@72 x@@51))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_38197) (Mask@@67 T@PolymorphicMapType_38218) (x@@52 T@Ref) ) (!  (=> (state Heap@@73 Mask@@67) (= (|bar'| Heap@@73 x@@52) (|bar#frame| (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@73) null (P x@@52)) x@@52)))
 :qid |stdinbpl.1096:15|
 :skolemid |87|
 :pattern ( (state Heap@@73 Mask@@67) (|bar'| Heap@@73 x@@52))
 :pattern ( (state Heap@@73 Mask@@67) (|bar#triggerStateless| x@@52) (|P#trigger_21974| Heap@@73 (P x@@52)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_38197) (Mask@@68 T@PolymorphicMapType_38218) (x@@53 T@Ref) ) (!  (=> (state Heap@@74 Mask@@68) (= (|bar3'| Heap@@74 x@@53) (|bar3#frame| (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@74) null (P x@@53)) x@@53)))
 :qid |stdinbpl.1304:15|
 :skolemid |95|
 :pattern ( (state Heap@@74 Mask@@68) (|bar3'| Heap@@74 x@@53))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_38197) (Mask@@69 T@PolymorphicMapType_38218) (x@@54 T@Ref) ) (!  (=> (state Heap@@75 Mask@@69) (= (|bar4'| Heap@@75 x@@54) (|bar4#frame| (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@75) null (P x@@54)) x@@54)))
 :qid |stdinbpl.1388:15|
 :skolemid |98|
 :pattern ( (state Heap@@75 Mask@@69) (|bar4'| Heap@@75 x@@54))
)))
(assert (forall ((x@@55 T@Ref) ) (! (= (getPredWandId_21974_21975 (P x@@55)) 0)
 :qid |stdinbpl.1650:15|
 :skolemid |110|
 :pattern ( (P x@@55))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_38197) (Mask@@70 T@PolymorphicMapType_38218) (x@@56 T@Ref) ) (!  (=> (state Heap@@76 Mask@@70) (= (|bar5'| Heap@@76 x@@56) (|bar5#frame| EmptyFrame x@@56)))
 :qid |stdinbpl.1480:15|
 :skolemid |101|
 :pattern ( (state Heap@@76 Mask@@70) (|bar5'| Heap@@76 x@@56))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_38197) (Heap1Heap@@1 T@PolymorphicMapType_38197) (x@@57 T@Ref) ) (!  (=> (= false false) (= (|foo6#condqp5| Heap2Heap@@1 x@@57) (|foo6#condqp5| Heap1Heap@@1 x@@57)))
 :qid |stdinbpl.1577:15|
 :skolemid |105|
 :pattern ( (|foo6#condqp5| Heap2Heap@@1 x@@57) (|foo6#condqp5| Heap1Heap@@1 x@@57) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_38197) (Mask@@71 T@PolymorphicMapType_38218) (x@@58 T@Ref) ) (!  (=> (state Heap@@77 Mask@@71) (= (|bar2'| Heap@@77 x@@58) (|bar2#frame| (ConditionalFrame NoPerm (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@77) null (P x@@58))) x@@58)))
 :qid |stdinbpl.1201:15|
 :skolemid |91|
 :pattern ( (state Heap@@77 Mask@@71) (|bar2'| Heap@@77 x@@58))
 :pattern ( (state Heap@@77 Mask@@71) (|bar2#triggerStateless| x@@58) (|P#trigger_21974| Heap@@77 (P x@@58)))
)))
(assert (forall ((x@@59 T@Ref) (y@@8 T@Ref) ) (! (= (PredicateMaskField_22000 (nonAliasPred x@@59 y@@8)) (|nonAliasPred#sm| x@@59 y@@8))
 :qid |stdinbpl.1697:15|
 :skolemid |114|
 :pattern ( (PredicateMaskField_22000 (nonAliasPred x@@59 y@@8)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_38197) (o_38 T@Ref) (f_40 T@Field_65751_65756) (v T@PolymorphicMapType_38746) ) (! (succHeap Heap@@78 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@78) (store (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@78) o_38 f_40 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@78) (store (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@78) o_38 f_40 v)))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_38197) (o_38@@0 T@Ref) (f_40@@0 T@Field_65737_65738) (v@@0 T@FrameType) ) (! (succHeap Heap@@79 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@79) (store (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@79) o_38@@0 f_40@@0 v@@0) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@79)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@79) (store (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@79) o_38@@0 f_40@@0 v@@0) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@79)))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_38197) (o_38@@1 T@Ref) (f_40@@1 T@Field_65737_1789) (v@@1 Int) ) (! (succHeap Heap@@80 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@80) (store (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@80) o_38@@1 f_40@@1 v@@1) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@80)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@80) (store (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@80) o_38@@1 f_40@@1 v@@1) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@80)))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_38197) (o_38@@2 T@Ref) (f_40@@2 T@Field_65737_38271) (v@@2 T@Ref) ) (! (succHeap Heap@@81 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@81) (store (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@81) o_38@@2 f_40@@2 v@@2) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@81)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@81) (store (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@81) o_38@@2 f_40@@2 v@@2) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@81)))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_38197) (o_38@@3 T@Ref) (f_40@@3 T@Field_65737_53) (v@@3 Bool) ) (! (succHeap Heap@@82 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@82) (store (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@82) o_38@@3 f_40@@3 v@@3) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@82)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@82) (store (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@82) o_38@@3 f_40@@3 v@@3) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@82)))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_38197) (o_38@@4 T@Ref) (f_40@@4 T@Field_56026_56031) (v@@4 T@PolymorphicMapType_38746) ) (! (succHeap Heap@@83 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@83) (store (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@83) o_38@@4 f_40@@4 v@@4) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@83)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@83) (store (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@83) o_38@@4 f_40@@4 v@@4) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@83)))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_38197) (o_38@@5 T@Ref) (f_40@@5 T@Field_42676_42677) (v@@5 T@FrameType) ) (! (succHeap Heap@@84 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@84) (store (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@84) o_38@@5 f_40@@5 v@@5) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@84)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@84) (store (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@84) o_38@@5 f_40@@5 v@@5) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@84)))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_38197) (o_38@@6 T@Ref) (f_40@@6 T@Field_21974_1789) (v@@6 Int) ) (! (succHeap Heap@@85 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@85) (store (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@85) o_38@@6 f_40@@6 v@@6) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@85)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@85) (store (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@85) o_38@@6 f_40@@6 v@@6) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@85)))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_38197) (o_38@@7 T@Ref) (f_40@@7 T@Field_21974_38271) (v@@7 T@Ref) ) (! (succHeap Heap@@86 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@86) (store (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@86) o_38@@7 f_40@@7 v@@7) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@86)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@86) (store (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@86) o_38@@7 f_40@@7 v@@7) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@86)))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_38197) (o_38@@8 T@Ref) (f_40@@8 T@Field_21974_53) (v@@8 Bool) ) (! (succHeap Heap@@87 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@87) (store (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@87) o_38@@8 f_40@@8 v@@8) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@87)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@87) (store (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@87) o_38@@8 f_40@@8 v@@8) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@87)))
)))
(assert (forall ((Heap@@88 T@PolymorphicMapType_38197) (o_38@@9 T@Ref) (f_40@@9 T@Field_21531_56031) (v@@9 T@PolymorphicMapType_38746) ) (! (succHeap Heap@@88 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@88) (store (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@88) o_38@@9 f_40@@9 v@@9) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@88)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@88) (store (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@88) o_38@@9 f_40@@9 v@@9) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@88)))
)))
(assert (forall ((Heap@@89 T@PolymorphicMapType_38197) (o_38@@10 T@Ref) (f_40@@10 T@Field_21531_21975) (v@@10 T@FrameType) ) (! (succHeap Heap@@89 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@89) (store (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@89) o_38@@10 f_40@@10 v@@10) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@89)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@89) (store (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@89) o_38@@10 f_40@@10 v@@10) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@89)))
)))
(assert (forall ((Heap@@90 T@PolymorphicMapType_38197) (o_38@@11 T@Ref) (f_40@@11 T@Field_41684_1789) (v@@11 Int) ) (! (succHeap Heap@@90 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@90) (store (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@90) o_38@@11 f_40@@11 v@@11) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@90)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@90) (store (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@90) o_38@@11 f_40@@11 v@@11) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@90)))
)))
(assert (forall ((Heap@@91 T@PolymorphicMapType_38197) (o_38@@12 T@Ref) (f_40@@12 T@Field_38270_38271) (v@@12 T@Ref) ) (! (succHeap Heap@@91 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@91) (store (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@91) o_38@@12 f_40@@12 v@@12) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@91)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@91) (store (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@91) o_38@@12 f_40@@12 v@@12) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@91)))
)))
(assert (forall ((Heap@@92 T@PolymorphicMapType_38197) (o_38@@13 T@Ref) (f_40@@13 T@Field_38257_53) (v@@13 Bool) ) (! (succHeap Heap@@92 (PolymorphicMapType_38197 (store (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@92) o_38@@13 f_40@@13 v@@13) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@92)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (store (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@92) o_38@@13 f_40@@13 v@@13) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@92)))
)))
(assert (forall ((x@@60 T@Ref) ) (! (= (PredicateMaskField_21974 (P x@@60)) (|P#sm| x@@60))
 :qid |stdinbpl.1642:15|
 :skolemid |108|
 :pattern ( (PredicateMaskField_21974 (P x@@60)))
)))
(assert (forall ((Heap@@93 T@PolymorphicMapType_38197) (Mask@@72 T@PolymorphicMapType_38218) (x@@61 T@Ref) ) (!  (=> (state Heap@@93 Mask@@72) (= (|foo5'| Heap@@93 x@@61) (|foo5#frame| (FrameFragment_1789 (|foo5#condqp1| Heap@@93 x@@61)) x@@61)))
 :qid |stdinbpl.620:15|
 :skolemid |42|
 :pattern ( (state Heap@@93 Mask@@72) (|foo5'| Heap@@93 x@@61))
)))
(assert (forall ((Heap@@94 T@PolymorphicMapType_38197) (Mask@@73 T@PolymorphicMapType_38218) (x@@62 T@Ref) ) (!  (=> (state Heap@@94 Mask@@73) (= (|foo5w'| Heap@@94 x@@62) (|foo5w#frame| (FrameFragment_1789 (|foo5w#condqp2| Heap@@94 x@@62)) x@@62)))
 :qid |stdinbpl.715:15|
 :skolemid |52|
 :pattern ( (state Heap@@94 Mask@@73) (|foo5w'| Heap@@94 x@@62))
)))
(assert (forall ((Heap@@95 T@PolymorphicMapType_38197) (Mask@@74 T@PolymorphicMapType_38218) (x@@63 T@Ref) ) (!  (=> (state Heap@@95 Mask@@74) (= (|foo5p'| Heap@@95 x@@63) (|foo5p#frame| (FrameFragment_1789 (|foo5p#condqp3| Heap@@95 x@@63)) x@@63)))
 :qid |stdinbpl.811:15|
 :skolemid |62|
 :pattern ( (state Heap@@95 Mask@@74) (|foo5p'| Heap@@95 x@@63))
)))
(assert (forall ((Heap@@96 T@PolymorphicMapType_38197) (Mask@@75 T@PolymorphicMapType_38218) (x@@64 T@Ref) ) (!  (=> (state Heap@@96 Mask@@75) (= (|foo5pw'| Heap@@96 x@@64) (|foo5pw#frame| (FrameFragment_1789 (|foo5pw#condqp4| Heap@@96 x@@64)) x@@64)))
 :qid |stdinbpl.908:15|
 :skolemid |72|
 :pattern ( (state Heap@@96 Mask@@75) (|foo5pw'| Heap@@96 x@@64))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_38197) (Heap1Heap@@2 T@PolymorphicMapType_38197) (x@@65 T@Ref) ) (!  (=> (and (= (= (|sk_foo5w#condqp2| (|foo5w#condqp2| Heap2Heap@@2 x@@65) (|foo5w#condqp2| Heap1Heap@@2 x@@65)) x@@65) (= (|sk_foo5w#condqp2| (|foo5w#condqp2| Heap2Heap@@2 x@@65) (|foo5w#condqp2| Heap1Heap@@2 x@@65)) x@@65)) (=> (= (|sk_foo5w#condqp2| (|foo5w#condqp2| Heap2Heap@@2 x@@65) (|foo5w#condqp2| Heap1Heap@@2 x@@65)) x@@65) (= (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap2Heap@@2) (|sk_foo5w#condqp2| (|foo5w#condqp2| Heap2Heap@@2 x@@65) (|foo5w#condqp2| Heap1Heap@@2 x@@65)) f_7) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap1Heap@@2) (|sk_foo5w#condqp2| (|foo5w#condqp2| Heap2Heap@@2 x@@65) (|foo5w#condqp2| Heap1Heap@@2 x@@65)) f_7)))) (= (|foo5w#condqp2| Heap2Heap@@2 x@@65) (|foo5w#condqp2| Heap1Heap@@2 x@@65)))
 :qid |stdinbpl.725:15|
 :skolemid |53|
 :pattern ( (|foo5w#condqp2| Heap2Heap@@2 x@@65) (|foo5w#condqp2| Heap1Heap@@2 x@@65) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((o_38@@14 T@Ref) (f_44 T@Field_38270_38271) (Heap@@97 T@PolymorphicMapType_38197) ) (!  (=> (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@97) o_38@@14 $allocated) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@97) (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@97) o_38@@14 f_44) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@97) o_38@@14 f_44))
)))
(assert (forall ((p@@3 T@Field_65737_65738) (v_1@@2 T@FrameType) (q T@Field_65737_65738) (w@@2 T@FrameType) (r T@Field_65737_65738) (u T@FrameType) ) (!  (=> (and (InsidePredicate_65737_65737 p@@3 v_1@@2 q w@@2) (InsidePredicate_65737_65737 q w@@2 r u)) (InsidePredicate_65737_65737 p@@3 v_1@@2 r u))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_65737_65737 p@@3 v_1@@2 q w@@2) (InsidePredicate_65737_65737 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_65737_65738) (v_1@@3 T@FrameType) (q@@0 T@Field_65737_65738) (w@@3 T@FrameType) (r@@0 T@Field_42676_42677) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_65737_65737 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_65737_42676 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_65737_42676 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_65737_65737 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_65737_42676 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_65737_65738) (v_1@@4 T@FrameType) (q@@1 T@Field_65737_65738) (w@@4 T@FrameType) (r@@1 T@Field_21531_21975) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_65737_65737 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_65737_38257 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_65737_38257 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_65737_65737 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_65737_38257 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_65737_65738) (v_1@@5 T@FrameType) (q@@2 T@Field_42676_42677) (w@@5 T@FrameType) (r@@2 T@Field_65737_65738) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_65737_42676 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_42676_65737 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_65737_65737 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_65737_42676 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_42676_65737 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_65737_65738) (v_1@@6 T@FrameType) (q@@3 T@Field_42676_42677) (w@@6 T@FrameType) (r@@3 T@Field_42676_42677) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_65737_42676 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_42676_42676 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_65737_42676 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_65737_42676 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_42676_42676 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_65737_65738) (v_1@@7 T@FrameType) (q@@4 T@Field_42676_42677) (w@@7 T@FrameType) (r@@4 T@Field_21531_21975) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_65737_42676 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_42676_38257 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_65737_38257 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_65737_42676 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_42676_38257 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_65737_65738) (v_1@@8 T@FrameType) (q@@5 T@Field_21531_21975) (w@@8 T@FrameType) (r@@5 T@Field_65737_65738) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_65737_38257 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_38257_65737 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_65737_65737 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_65737_38257 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_38257_65737 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_65737_65738) (v_1@@9 T@FrameType) (q@@6 T@Field_21531_21975) (w@@9 T@FrameType) (r@@6 T@Field_42676_42677) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_65737_38257 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_38257_42676 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_65737_42676 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_65737_38257 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_38257_42676 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_65737_65738) (v_1@@10 T@FrameType) (q@@7 T@Field_21531_21975) (w@@10 T@FrameType) (r@@7 T@Field_21531_21975) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_65737_38257 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_38257_38257 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_65737_38257 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_65737_38257 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_38257_38257 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_42676_42677) (v_1@@11 T@FrameType) (q@@8 T@Field_65737_65738) (w@@11 T@FrameType) (r@@8 T@Field_65737_65738) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_42676_65737 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_65737_65737 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_42676_65737 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42676_65737 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_65737_65737 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_42676_42677) (v_1@@12 T@FrameType) (q@@9 T@Field_65737_65738) (w@@12 T@FrameType) (r@@9 T@Field_42676_42677) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_42676_65737 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_65737_42676 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_42676_42676 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42676_65737 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_65737_42676 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_42676_42677) (v_1@@13 T@FrameType) (q@@10 T@Field_65737_65738) (w@@13 T@FrameType) (r@@10 T@Field_21531_21975) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_42676_65737 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_65737_38257 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_42676_38257 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42676_65737 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_65737_38257 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_42676_42677) (v_1@@14 T@FrameType) (q@@11 T@Field_42676_42677) (w@@14 T@FrameType) (r@@11 T@Field_65737_65738) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_42676_42676 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_42676_65737 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_42676_65737 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42676_42676 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_42676_65737 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_42676_42677) (v_1@@15 T@FrameType) (q@@12 T@Field_42676_42677) (w@@15 T@FrameType) (r@@12 T@Field_42676_42677) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_42676_42676 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_42676_42676 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_42676_42676 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42676_42676 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_42676_42676 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_42676_42677) (v_1@@16 T@FrameType) (q@@13 T@Field_42676_42677) (w@@16 T@FrameType) (r@@13 T@Field_21531_21975) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_42676_42676 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_42676_38257 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_42676_38257 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42676_42676 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_42676_38257 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_42676_42677) (v_1@@17 T@FrameType) (q@@14 T@Field_21531_21975) (w@@17 T@FrameType) (r@@14 T@Field_65737_65738) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_42676_38257 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_38257_65737 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_42676_65737 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42676_38257 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_38257_65737 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_42676_42677) (v_1@@18 T@FrameType) (q@@15 T@Field_21531_21975) (w@@18 T@FrameType) (r@@15 T@Field_42676_42677) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_42676_38257 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_38257_42676 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_42676_42676 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42676_38257 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_38257_42676 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_42676_42677) (v_1@@19 T@FrameType) (q@@16 T@Field_21531_21975) (w@@19 T@FrameType) (r@@16 T@Field_21531_21975) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_42676_38257 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_38257_38257 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_42676_38257 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42676_38257 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_38257_38257 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_21531_21975) (v_1@@20 T@FrameType) (q@@17 T@Field_65737_65738) (w@@20 T@FrameType) (r@@17 T@Field_65737_65738) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_38257_65737 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_65737_65737 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_38257_65737 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38257_65737 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_65737_65737 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_21531_21975) (v_1@@21 T@FrameType) (q@@18 T@Field_65737_65738) (w@@21 T@FrameType) (r@@18 T@Field_42676_42677) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_38257_65737 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_65737_42676 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_38257_42676 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38257_65737 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_65737_42676 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_21531_21975) (v_1@@22 T@FrameType) (q@@19 T@Field_65737_65738) (w@@22 T@FrameType) (r@@19 T@Field_21531_21975) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_38257_65737 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_65737_38257 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_38257_38257 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38257_65737 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_65737_38257 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_21531_21975) (v_1@@23 T@FrameType) (q@@20 T@Field_42676_42677) (w@@23 T@FrameType) (r@@20 T@Field_65737_65738) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_38257_42676 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_42676_65737 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_38257_65737 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38257_42676 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_42676_65737 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_21531_21975) (v_1@@24 T@FrameType) (q@@21 T@Field_42676_42677) (w@@24 T@FrameType) (r@@21 T@Field_42676_42677) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_38257_42676 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_42676_42676 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_38257_42676 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38257_42676 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_42676_42676 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_21531_21975) (v_1@@25 T@FrameType) (q@@22 T@Field_42676_42677) (w@@25 T@FrameType) (r@@22 T@Field_21531_21975) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_38257_42676 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_42676_38257 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_38257_38257 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38257_42676 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_42676_38257 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_21531_21975) (v_1@@26 T@FrameType) (q@@23 T@Field_21531_21975) (w@@26 T@FrameType) (r@@23 T@Field_65737_65738) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_38257_38257 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_38257_65737 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_38257_65737 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38257_38257 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_38257_65737 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_21531_21975) (v_1@@27 T@FrameType) (q@@24 T@Field_21531_21975) (w@@27 T@FrameType) (r@@24 T@Field_42676_42677) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_38257_38257 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_38257_42676 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_38257_42676 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38257_38257 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_38257_42676 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_21531_21975) (v_1@@28 T@FrameType) (q@@25 T@Field_21531_21975) (w@@28 T@FrameType) (r@@25 T@Field_21531_21975) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_38257_38257 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_38257_38257 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_38257_38257 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38257_38257 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_38257_38257 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap2Heap@@3 T@PolymorphicMapType_38197) (Heap1Heap@@3 T@PolymorphicMapType_38197) (x@@66 T@Ref) ) (!  (=> (and (=  (and (= (|sk_foo5#condqp1| (|foo5#condqp1| Heap2Heap@@3 x@@66) (|foo5#condqp1| Heap1Heap@@3 x@@66)) x@@66) (< NoPerm FullPerm))  (and (= (|sk_foo5#condqp1| (|foo5#condqp1| Heap2Heap@@3 x@@66) (|foo5#condqp1| Heap1Heap@@3 x@@66)) x@@66) (< NoPerm FullPerm))) (=> (and (= (|sk_foo5#condqp1| (|foo5#condqp1| Heap2Heap@@3 x@@66) (|foo5#condqp1| Heap1Heap@@3 x@@66)) x@@66) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap2Heap@@3) (|sk_foo5#condqp1| (|foo5#condqp1| Heap2Heap@@3 x@@66) (|foo5#condqp1| Heap1Heap@@3 x@@66)) f_7) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap1Heap@@3) (|sk_foo5#condqp1| (|foo5#condqp1| Heap2Heap@@3 x@@66) (|foo5#condqp1| Heap1Heap@@3 x@@66)) f_7)))) (= (|foo5#condqp1| Heap2Heap@@3 x@@66) (|foo5#condqp1| Heap1Heap@@3 x@@66)))
 :qid |stdinbpl.630:15|
 :skolemid |43|
 :pattern ( (|foo5#condqp1| Heap2Heap@@3 x@@66) (|foo5#condqp1| Heap1Heap@@3 x@@66) (succHeapTrans Heap2Heap@@3 Heap1Heap@@3))
)))
(assert (forall ((Heap@@98 T@PolymorphicMapType_38197) (Mask@@76 T@PolymorphicMapType_38218) (x@@67 T@Ref) (b_24@@3 Bool) ) (!  (=> (state Heap@@98 Mask@@76) (= (|foo2'| Heap@@98 x@@67 b_24@@3) (|foo2#frame| (ConditionalFrame (ite b_24@@3 FullPerm NoPerm) (FrameFragment_1789 (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@98) x@@67 f_7))) x@@67 b_24@@3)))
 :qid |stdinbpl.410:15|
 :skolemid |30|
 :pattern ( (state Heap@@98 Mask@@76) (|foo2'| Heap@@98 x@@67 b_24@@3))
)))
(assert (forall ((Heap@@99 T@PolymorphicMapType_38197) (Mask@@77 T@PolymorphicMapType_38218) (x@@68 T@Ref) (b_24@@4 Bool) ) (!  (=> (state Heap@@99 Mask@@77) (= (|foo2w'| Heap@@99 x@@68 b_24@@4) (|foo2w#frame| (ConditionalFrame (ite b_24@@4 FullPerm NoPerm) (FrameFragment_1789 (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@99) x@@68 f_7))) x@@68 b_24@@4)))
 :qid |stdinbpl.462:15|
 :skolemid |33|
 :pattern ( (state Heap@@99 Mask@@77) (|foo2w'| Heap@@99 x@@68 b_24@@4))
)))
(assert (forall ((Heap@@100 T@PolymorphicMapType_38197) (Mask@@78 T@PolymorphicMapType_38218) (x@@69 T@Ref) ) (!  (=> (and (state Heap@@100 Mask@@78) (< AssumeFunctionsAbove 1)) (= (bar Heap@@100 x@@69) (foo_2 Heap@@100 x@@69)))
 :qid |stdinbpl.1089:15|
 :skolemid |86|
 :pattern ( (state Heap@@100 Mask@@78) (bar Heap@@100 x@@69))
 :pattern ( (state Heap@@100 Mask@@78) (|bar#triggerStateless| x@@69) (|P#trigger_21974| Heap@@100 (P x@@69)))
)))
(assert (forall ((Heap@@101 T@PolymorphicMapType_38197) (Mask@@79 T@PolymorphicMapType_38218) (x@@70 T@Ref) ) (!  (=> (and (state Heap@@101 Mask@@79) (< AssumeFunctionsAbove 5)) (= (bar2 Heap@@101 x@@70) (foo_2 Heap@@101 x@@70)))
 :qid |stdinbpl.1194:15|
 :skolemid |90|
 :pattern ( (state Heap@@101 Mask@@79) (bar2 Heap@@101 x@@70))
 :pattern ( (state Heap@@101 Mask@@79) (|bar2#triggerStateless| x@@70) (|P#trigger_21974| Heap@@101 (P x@@70)))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_38218)
(declare-fun x@@71 () T@Ref)
(declare-fun Heap@@102 () T@PolymorphicMapType_38197)
(set-info :boogie-vc-id test1p)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| Mask@0) null (P x@@71)))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@102 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@102) x@@71 $allocated))) (and (and (= Mask@0 (PolymorphicMapType_38218 (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| ZeroMask) (store (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| ZeroMask) null (P x@@71) (+ (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| ZeroMask) null (P x@@71)) NoPerm)) (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| ZeroMask) (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| ZeroMask) (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| ZeroMask) (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| ZeroMask) (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| ZeroMask) (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| ZeroMask) (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| ZeroMask) (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| ZeroMask) (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| ZeroMask) (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| ZeroMask) (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| ZeroMask) (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| ZeroMask) (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| ZeroMask))) (state Heap@@102 Mask@0)) (and (state Heap@@102 Mask@0) (state Heap@@102 Mask@0)))) (and (=> (= (ControlFlow 0 4) 2) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
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
(declare-sort T@Field_38257_53 0)
(declare-sort T@Field_38270_38271 0)
(declare-sort T@Field_41684_1789 0)
(declare-sort T@Field_42676_42677 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_56026_56031 0)
(declare-sort T@Field_21531_21975 0)
(declare-sort T@Field_21531_56031 0)
(declare-sort T@Field_21974_1789 0)
(declare-sort T@Field_21974_53 0)
(declare-sort T@Field_21974_38271 0)
(declare-sort T@Field_65737_1789 0)
(declare-sort T@Field_65737_65738 0)
(declare-sort T@Field_65737_53 0)
(declare-sort T@Field_65737_38271 0)
(declare-sort T@Field_65751_65756 0)
(declare-datatypes ((T@PolymorphicMapType_38218 0)) (((PolymorphicMapType_38218 (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| (Array T@Ref T@Field_41684_1789 Real)) (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| (Array T@Ref T@Field_42676_42677 Real)) (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| (Array T@Ref T@Field_21531_21975 Real)) (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| (Array T@Ref T@Field_38257_53 Real)) (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| (Array T@Ref T@Field_38270_38271 Real)) (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| (Array T@Ref T@Field_21531_56031 Real)) (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| (Array T@Ref T@Field_21974_1789 Real)) (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| (Array T@Ref T@Field_21974_53 Real)) (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| (Array T@Ref T@Field_21974_38271 Real)) (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| (Array T@Ref T@Field_56026_56031 Real)) (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| (Array T@Ref T@Field_65737_1789 Real)) (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| (Array T@Ref T@Field_65737_65738 Real)) (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| (Array T@Ref T@Field_65737_53 Real)) (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| (Array T@Ref T@Field_65737_38271 Real)) (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| (Array T@Ref T@Field_65751_65756 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_38746 0)) (((PolymorphicMapType_38746 (|PolymorphicMapType_38746_21531_1789#PolymorphicMapType_38746| (Array T@Ref T@Field_41684_1789 Bool)) (|PolymorphicMapType_38746_21531_53#PolymorphicMapType_38746| (Array T@Ref T@Field_38257_53 Bool)) (|PolymorphicMapType_38746_21531_38271#PolymorphicMapType_38746| (Array T@Ref T@Field_38270_38271 Bool)) (|PolymorphicMapType_38746_21531_42677#PolymorphicMapType_38746| (Array T@Ref T@Field_21531_21975 Bool)) (|PolymorphicMapType_38746_21531_125644#PolymorphicMapType_38746| (Array T@Ref T@Field_21531_56031 Bool)) (|PolymorphicMapType_38746_42676_1789#PolymorphicMapType_38746| (Array T@Ref T@Field_21974_1789 Bool)) (|PolymorphicMapType_38746_42676_53#PolymorphicMapType_38746| (Array T@Ref T@Field_21974_53 Bool)) (|PolymorphicMapType_38746_42676_38271#PolymorphicMapType_38746| (Array T@Ref T@Field_21974_38271 Bool)) (|PolymorphicMapType_38746_42676_42677#PolymorphicMapType_38746| (Array T@Ref T@Field_42676_42677 Bool)) (|PolymorphicMapType_38746_42676_126692#PolymorphicMapType_38746| (Array T@Ref T@Field_56026_56031 Bool)) (|PolymorphicMapType_38746_65737_1789#PolymorphicMapType_38746| (Array T@Ref T@Field_65737_1789 Bool)) (|PolymorphicMapType_38746_65737_53#PolymorphicMapType_38746| (Array T@Ref T@Field_65737_53 Bool)) (|PolymorphicMapType_38746_65737_38271#PolymorphicMapType_38746| (Array T@Ref T@Field_65737_38271 Bool)) (|PolymorphicMapType_38746_65737_42677#PolymorphicMapType_38746| (Array T@Ref T@Field_65737_65738 Bool)) (|PolymorphicMapType_38746_65737_127740#PolymorphicMapType_38746| (Array T@Ref T@Field_65751_65756 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_38197 0)) (((PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| (Array T@Ref T@Field_38257_53 Bool)) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| (Array T@Ref T@Field_38270_38271 T@Ref)) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| (Array T@Ref T@Field_41684_1789 Int)) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| (Array T@Ref T@Field_42676_42677 T@FrameType)) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| (Array T@Ref T@Field_56026_56031 T@PolymorphicMapType_38746)) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| (Array T@Ref T@Field_21531_21975 T@FrameType)) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| (Array T@Ref T@Field_21531_56031 T@PolymorphicMapType_38746)) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| (Array T@Ref T@Field_21974_1789 Int)) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| (Array T@Ref T@Field_21974_53 Bool)) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| (Array T@Ref T@Field_21974_38271 T@Ref)) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| (Array T@Ref T@Field_65737_1789 Int)) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| (Array T@Ref T@Field_65737_65738 T@FrameType)) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| (Array T@Ref T@Field_65737_53 Bool)) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| (Array T@Ref T@Field_65737_38271 T@Ref)) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| (Array T@Ref T@Field_65751_65756 T@PolymorphicMapType_38746)) ) ) ))
(declare-fun $allocated () T@Field_38257_53)
(declare-fun f_7 () T@Field_41684_1789)
(declare-fun g () T@Field_41684_1789)
(declare-fun succHeap (T@PolymorphicMapType_38197 T@PolymorphicMapType_38197) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_38197 T@PolymorphicMapType_38197) Bool)
(declare-fun state (T@PolymorphicMapType_38197 T@PolymorphicMapType_38218) Bool)
(declare-fun bar3 (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |bar3#triggerStateless| (T@Ref) Int)
(declare-fun |P#trigger_21974| (T@PolymorphicMapType_38197 T@Field_42676_42677) Bool)
(declare-fun P (T@Ref) T@Field_42676_42677)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_38218) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_38746)
(declare-fun nonAliasPred (T@Ref T@Ref) T@Field_65737_65738)
(declare-fun IsPredicateField_22000_22001 (T@Field_65737_65738) Bool)
(declare-fun |foo2'| (T@PolymorphicMapType_38197 T@Ref Bool) Int)
(declare-fun dummyFunction_1955 (Int) Bool)
(declare-fun |foo2#triggerStateless| (T@Ref Bool) Int)
(declare-fun |foo2w'| (T@PolymorphicMapType_38197 T@Ref Bool) Int)
(declare-fun |foo2w#triggerStateless| (T@Ref Bool) Int)
(declare-fun |nonAliasF'| (T@PolymorphicMapType_38197 T@Ref T@Ref) Int)
(declare-fun |nonAliasF#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |nonAliasPred#trigger_22000| (T@PolymorphicMapType_38197 T@Field_65737_65738) Bool)
(declare-fun |nonAliasPred#everUsed_22000| (T@Field_65737_65738) Bool)
(declare-fun IsPredicateField_21974_21975 (T@Field_42676_42677) Bool)
(declare-fun |foo'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo#triggerStateless| (T@Ref) Int)
(declare-fun |foop'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foop#triggerStateless| (T@Ref) Int)
(declare-fun |foo3'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo3#triggerStateless| (T@Ref) Int)
(declare-fun |foo4'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo4#triggerStateless| (T@Ref) Int)
(declare-fun |foo5'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo5#triggerStateless| (T@Ref) Int)
(declare-fun |foo5w'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo5w#triggerStateless| (T@Ref) Int)
(declare-fun |foo5p'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo5p#triggerStateless| (T@Ref) Int)
(declare-fun |foo5pw'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo5pw#triggerStateless| (T@Ref) Int)
(declare-fun |bar'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |bar#triggerStateless| (T@Ref) Int)
(declare-fun |bar2'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |bar2#triggerStateless| (T@Ref) Int)
(declare-fun |bar3'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |bar4'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |bar4#triggerStateless| (T@Ref) Int)
(declare-fun |bar5'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |bar5#triggerStateless| (T@Ref) Int)
(declare-fun |foo6'| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo6#triggerStateless| (T@Ref) Int)
(declare-fun |P#everUsed_21974| (T@Field_42676_42677) Bool)
(declare-fun |foo5pw#condqp4| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |sk_foo5pw#condqp4| (Int Int) T@Ref)
(declare-fun null () T@Ref)
(declare-fun foo_2 (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun foop (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun foo3_1 (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun foo4_1 (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun foo5_1 (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun foo5w (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun foo5p (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun foo5pw (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun bar (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun bar2 (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun bar4 (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun bar5 (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun foo6 (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo6#frame| (T@FrameType T@Ref) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1789 (Int) T@FrameType)
(declare-fun |foo6#condqp5| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_38197 T@PolymorphicMapType_38197 T@PolymorphicMapType_38218) Bool)
(declare-fun PredicateMaskField_22000 (T@Field_65737_65738) T@Field_65751_65756)
(declare-fun HasDirectPerm_65737_21975 (T@PolymorphicMapType_38218 T@Ref T@Field_65737_65738) Bool)
(declare-fun PredicateMaskField_21974 (T@Field_42676_42677) T@Field_56026_56031)
(declare-fun HasDirectPerm_21974_21975 (T@PolymorphicMapType_38218 T@Ref T@Field_42676_42677) Bool)
(declare-fun IsPredicateField_21531_123847 (T@Field_21531_21975) Bool)
(declare-fun PredicateMaskField_21531 (T@Field_21531_21975) T@Field_21531_56031)
(declare-fun HasDirectPerm_21531_21975 (T@PolymorphicMapType_38218 T@Ref T@Field_21531_21975) Bool)
(declare-fun IsWandField_65737_129543 (T@Field_65737_65738) Bool)
(declare-fun WandMaskField_65737 (T@Field_65737_65738) T@Field_65751_65756)
(declare-fun IsWandField_21974_129186 (T@Field_42676_42677) Bool)
(declare-fun WandMaskField_21974 (T@Field_42676_42677) T@Field_56026_56031)
(declare-fun IsWandField_21531_128829 (T@Field_21531_21975) Bool)
(declare-fun WandMaskField_21531 (T@Field_21531_21975) T@Field_21531_56031)
(declare-fun |nonAliasPred#sm| (T@Ref T@Ref) T@Field_65751_65756)
(declare-fun |P#sm| (T@Ref) T@Field_56026_56031)
(declare-fun |foo5p#condqp3| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |sk_foo5p#condqp3| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun dummyHeap () T@PolymorphicMapType_38197)
(declare-fun ZeroMask () T@PolymorphicMapType_38218)
(declare-fun |foo4#frame| (T@FrameType T@Ref) Int)
(declare-fun InsidePredicate_65737_65737 (T@Field_65737_65738 T@FrameType T@Field_65737_65738 T@FrameType) Bool)
(declare-fun InsidePredicate_42676_42676 (T@Field_42676_42677 T@FrameType T@Field_42676_42677 T@FrameType) Bool)
(declare-fun InsidePredicate_38257_38257 (T@Field_21531_21975 T@FrameType T@Field_21531_21975 T@FrameType) Bool)
(declare-fun |nonAliasF#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun IsPredicateField_21531_1789 (T@Field_41684_1789) Bool)
(declare-fun IsWandField_21531_1789 (T@Field_41684_1789) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_65737_139876 (T@Field_65751_65756) Bool)
(declare-fun IsWandField_65737_139892 (T@Field_65751_65756) Bool)
(declare-fun IsPredicateField_65737_38271 (T@Field_65737_38271) Bool)
(declare-fun IsWandField_65737_38271 (T@Field_65737_38271) Bool)
(declare-fun IsPredicateField_65737_53 (T@Field_65737_53) Bool)
(declare-fun IsWandField_65737_53 (T@Field_65737_53) Bool)
(declare-fun IsPredicateField_65737_1789 (T@Field_65737_1789) Bool)
(declare-fun IsWandField_65737_1789 (T@Field_65737_1789) Bool)
(declare-fun IsPredicateField_21974_139045 (T@Field_56026_56031) Bool)
(declare-fun IsWandField_21974_139061 (T@Field_56026_56031) Bool)
(declare-fun IsPredicateField_21974_38271 (T@Field_21974_38271) Bool)
(declare-fun IsWandField_21974_38271 (T@Field_21974_38271) Bool)
(declare-fun IsPredicateField_21974_53 (T@Field_21974_53) Bool)
(declare-fun IsWandField_21974_53 (T@Field_21974_53) Bool)
(declare-fun IsPredicateField_21974_1789 (T@Field_21974_1789) Bool)
(declare-fun IsWandField_21974_1789 (T@Field_21974_1789) Bool)
(declare-fun IsPredicateField_21531_138214 (T@Field_21531_56031) Bool)
(declare-fun IsWandField_21531_138230 (T@Field_21531_56031) Bool)
(declare-fun IsPredicateField_21531_38271 (T@Field_38270_38271) Bool)
(declare-fun IsWandField_21531_38271 (T@Field_38270_38271) Bool)
(declare-fun IsPredicateField_21531_53 (T@Field_38257_53) Bool)
(declare-fun IsWandField_21531_53 (T@Field_38257_53) Bool)
(declare-fun nonAliasF (T@PolymorphicMapType_38197 T@Ref T@Ref) Int)
(declare-fun HasDirectPerm_65737_123559 (T@PolymorphicMapType_38218 T@Ref T@Field_65751_65756) Bool)
(declare-fun HasDirectPerm_65737_38271 (T@PolymorphicMapType_38218 T@Ref T@Field_65737_38271) Bool)
(declare-fun HasDirectPerm_65737_53 (T@PolymorphicMapType_38218 T@Ref T@Field_65737_53) Bool)
(declare-fun HasDirectPerm_65737_1789 (T@PolymorphicMapType_38218 T@Ref T@Field_65737_1789) Bool)
(declare-fun HasDirectPerm_21974_122424 (T@PolymorphicMapType_38218 T@Ref T@Field_56026_56031) Bool)
(declare-fun HasDirectPerm_21974_38271 (T@PolymorphicMapType_38218 T@Ref T@Field_21974_38271) Bool)
(declare-fun HasDirectPerm_21974_53 (T@PolymorphicMapType_38218 T@Ref T@Field_21974_53) Bool)
(declare-fun HasDirectPerm_21974_1789 (T@PolymorphicMapType_38218 T@Ref T@Field_21974_1789) Bool)
(declare-fun HasDirectPerm_21531_121283 (T@PolymorphicMapType_38218 T@Ref T@Field_21531_56031) Bool)
(declare-fun HasDirectPerm_21531_38271 (T@PolymorphicMapType_38218 T@Ref T@Field_38270_38271) Bool)
(declare-fun HasDirectPerm_21531_53 (T@PolymorphicMapType_38218 T@Ref T@Field_38257_53) Bool)
(declare-fun HasDirectPerm_21531_1789 (T@PolymorphicMapType_38218 T@Ref T@Field_41684_1789) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun foo2_1 (T@PolymorphicMapType_38197 T@Ref Bool) Int)
(declare-fun foo2w (T@PolymorphicMapType_38197 T@Ref Bool) Int)
(declare-fun sumMask (T@PolymorphicMapType_38218 T@PolymorphicMapType_38218 T@PolymorphicMapType_38218) Bool)
(declare-fun getPredWandId_22000_22001 (T@Field_65737_65738) Int)
(declare-fun |foo#frame| (T@FrameType T@Ref) Int)
(declare-fun |foop#frame| (T@FrameType T@Ref) Int)
(declare-fun |foo3#frame| (T@FrameType T@Ref) Int)
(declare-fun |bar#frame| (T@FrameType T@Ref) Int)
(declare-fun |bar3#frame| (T@FrameType T@Ref) Int)
(declare-fun |bar4#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_21974_21975 (T@Field_42676_42677) Int)
(declare-fun |bar5#frame| (T@FrameType T@Ref) Int)
(declare-fun |bar2#frame| (T@FrameType T@Ref) Int)
(declare-fun |foo5#frame| (T@FrameType T@Ref) Int)
(declare-fun |foo5#condqp1| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo5w#frame| (T@FrameType T@Ref) Int)
(declare-fun |foo5w#condqp2| (T@PolymorphicMapType_38197 T@Ref) Int)
(declare-fun |foo5p#frame| (T@FrameType T@Ref) Int)
(declare-fun |foo5pw#frame| (T@FrameType T@Ref) Int)
(declare-fun |sk_foo5w#condqp2| (Int Int) T@Ref)
(declare-fun InsidePredicate_65737_42676 (T@Field_65737_65738 T@FrameType T@Field_42676_42677 T@FrameType) Bool)
(declare-fun InsidePredicate_65737_38257 (T@Field_65737_65738 T@FrameType T@Field_21531_21975 T@FrameType) Bool)
(declare-fun InsidePredicate_42676_65737 (T@Field_42676_42677 T@FrameType T@Field_65737_65738 T@FrameType) Bool)
(declare-fun InsidePredicate_42676_38257 (T@Field_42676_42677 T@FrameType T@Field_21531_21975 T@FrameType) Bool)
(declare-fun InsidePredicate_38257_65737 (T@Field_21531_21975 T@FrameType T@Field_65737_65738 T@FrameType) Bool)
(declare-fun InsidePredicate_38257_42676 (T@Field_21531_21975 T@FrameType T@Field_42676_42677 T@FrameType) Bool)
(declare-fun |sk_foo5#condqp1| (Int Int) T@Ref)
(declare-fun |foo2#frame| (T@FrameType T@Ref Bool) Int)
(declare-fun |foo2w#frame| (T@FrameType T@Ref Bool) Int)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_38197) (Heap1 T@PolymorphicMapType_38197) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_38197) (Mask T@PolymorphicMapType_38218) (x T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 11)) (= (bar3 Heap x) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap) x g)))
 :qid |stdinbpl.1297:15|
 :skolemid |94|
 :pattern ( (state Heap Mask) (bar3 Heap x))
 :pattern ( (state Heap Mask) (|bar3#triggerStateless| x) (|P#trigger_21974| Heap (P x)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_38197) (Mask@@0 T@PolymorphicMapType_38218) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_38197) (Heap1@@0 T@PolymorphicMapType_38197) (Heap2 T@PolymorphicMapType_38197) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_65751_65756) ) (!  (not (select (|PolymorphicMapType_38746_65737_127740#PolymorphicMapType_38746| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_65737_127740#PolymorphicMapType_38746| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_65737_65738) ) (!  (not (select (|PolymorphicMapType_38746_65737_42677#PolymorphicMapType_38746| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_65737_42677#PolymorphicMapType_38746| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_65737_38271) ) (!  (not (select (|PolymorphicMapType_38746_65737_38271#PolymorphicMapType_38746| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_65737_38271#PolymorphicMapType_38746| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_65737_53) ) (!  (not (select (|PolymorphicMapType_38746_65737_53#PolymorphicMapType_38746| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_65737_53#PolymorphicMapType_38746| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_65737_1789) ) (!  (not (select (|PolymorphicMapType_38746_65737_1789#PolymorphicMapType_38746| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_65737_1789#PolymorphicMapType_38746| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_56026_56031) ) (!  (not (select (|PolymorphicMapType_38746_42676_126692#PolymorphicMapType_38746| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_42676_126692#PolymorphicMapType_38746| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_42676_42677) ) (!  (not (select (|PolymorphicMapType_38746_42676_42677#PolymorphicMapType_38746| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_42676_42677#PolymorphicMapType_38746| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_21974_38271) ) (!  (not (select (|PolymorphicMapType_38746_42676_38271#PolymorphicMapType_38746| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_42676_38271#PolymorphicMapType_38746| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_21974_53) ) (!  (not (select (|PolymorphicMapType_38746_42676_53#PolymorphicMapType_38746| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_42676_53#PolymorphicMapType_38746| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_21974_1789) ) (!  (not (select (|PolymorphicMapType_38746_42676_1789#PolymorphicMapType_38746| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_42676_1789#PolymorphicMapType_38746| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_21531_56031) ) (!  (not (select (|PolymorphicMapType_38746_21531_125644#PolymorphicMapType_38746| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_21531_125644#PolymorphicMapType_38746| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_21531_21975) ) (!  (not (select (|PolymorphicMapType_38746_21531_42677#PolymorphicMapType_38746| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_21531_42677#PolymorphicMapType_38746| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_38270_38271) ) (!  (not (select (|PolymorphicMapType_38746_21531_38271#PolymorphicMapType_38746| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_21531_38271#PolymorphicMapType_38746| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_38257_53) ) (!  (not (select (|PolymorphicMapType_38746_21531_53#PolymorphicMapType_38746| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_21531_53#PolymorphicMapType_38746| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_41684_1789) ) (!  (not (select (|PolymorphicMapType_38746_21531_1789#PolymorphicMapType_38746| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38746_21531_1789#PolymorphicMapType_38746| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((x@@0 T@Ref) (y T@Ref) ) (! (IsPredicateField_22000_22001 (nonAliasPred x@@0 y))
 :qid |stdinbpl.1701:15|
 :skolemid |115|
 :pattern ( (nonAliasPred x@@0 y))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_38197) (x@@1 T@Ref) (b_24 Bool) ) (! (dummyFunction_1955 (|foo2#triggerStateless| x@@1 b_24))
 :qid |stdinbpl.403:15|
 :skolemid |29|
 :pattern ( (|foo2'| Heap@@1 x@@1 b_24))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_38197) (x@@2 T@Ref) (b_24@@0 Bool) ) (! (dummyFunction_1955 (|foo2w#triggerStateless| x@@2 b_24@@0))
 :qid |stdinbpl.455:15|
 :skolemid |32|
 :pattern ( (|foo2w'| Heap@@2 x@@2 b_24@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_38197) (x@@3 T@Ref) (y@@0 T@Ref) ) (! (dummyFunction_1955 (|nonAliasF#triggerStateless| x@@3 y@@0))
 :qid |stdinbpl.1000:15|
 :skolemid |81|
 :pattern ( (|nonAliasF'| Heap@@3 x@@3 y@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_38197) (x@@4 T@Ref) (y@@1 T@Ref) ) (! (|nonAliasPred#everUsed_22000| (nonAliasPred x@@4 y@@1))
 :qid |stdinbpl.1720:15|
 :skolemid |119|
 :pattern ( (|nonAliasPred#trigger_22000| Heap@@4 (nonAliasPred x@@4 y@@1)))
)))
(assert (forall ((x@@5 T@Ref) ) (! (IsPredicateField_21974_21975 (P x@@5))
 :qid |stdinbpl.1646:15|
 :skolemid |109|
 :pattern ( (P x@@5))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_38197) (x@@6 T@Ref) ) (! (dummyFunction_1955 (|foo#triggerStateless| x@@6))
 :qid |stdinbpl.304:15|
 :skolemid |23|
 :pattern ( (|foo'| Heap@@5 x@@6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_38197) (x@@7 T@Ref) ) (! (dummyFunction_1955 (|foop#triggerStateless| x@@7))
 :qid |stdinbpl.354:15|
 :skolemid |26|
 :pattern ( (|foop'| Heap@@6 x@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_38197) (x@@8 T@Ref) ) (! (dummyFunction_1955 (|foo3#triggerStateless| x@@8))
 :qid |stdinbpl.507:15|
 :skolemid |35|
 :pattern ( (|foo3'| Heap@@7 x@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_38197) (x@@9 T@Ref) ) (! (dummyFunction_1955 (|foo4#triggerStateless| x@@9))
 :qid |stdinbpl.559:15|
 :skolemid |38|
 :pattern ( (|foo4'| Heap@@8 x@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_38197) (x@@10 T@Ref) ) (! (dummyFunction_1955 (|foo5#triggerStateless| x@@10))
 :qid |stdinbpl.613:15|
 :skolemid |41|
 :pattern ( (|foo5'| Heap@@9 x@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_38197) (x@@11 T@Ref) ) (! (dummyFunction_1955 (|foo5w#triggerStateless| x@@11))
 :qid |stdinbpl.708:15|
 :skolemid |51|
 :pattern ( (|foo5w'| Heap@@10 x@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_38197) (x@@12 T@Ref) ) (! (dummyFunction_1955 (|foo5p#triggerStateless| x@@12))
 :qid |stdinbpl.804:15|
 :skolemid |61|
 :pattern ( (|foo5p'| Heap@@11 x@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_38197) (x@@13 T@Ref) ) (! (dummyFunction_1955 (|foo5pw#triggerStateless| x@@13))
 :qid |stdinbpl.901:15|
 :skolemid |71|
 :pattern ( (|foo5pw'| Heap@@12 x@@13))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_38197) (x@@14 T@Ref) ) (! (dummyFunction_1955 (|bar#triggerStateless| x@@14))
 :qid |stdinbpl.1083:15|
 :skolemid |85|
 :pattern ( (|bar'| Heap@@13 x@@14))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_38197) (x@@15 T@Ref) ) (! (dummyFunction_1955 (|bar2#triggerStateless| x@@15))
 :qid |stdinbpl.1188:15|
 :skolemid |89|
 :pattern ( (|bar2'| Heap@@14 x@@15))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_38197) (x@@16 T@Ref) ) (! (dummyFunction_1955 (|bar3#triggerStateless| x@@16))
 :qid |stdinbpl.1291:15|
 :skolemid |93|
 :pattern ( (|bar3'| Heap@@15 x@@16))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_38197) (x@@17 T@Ref) ) (! (dummyFunction_1955 (|bar4#triggerStateless| x@@17))
 :qid |stdinbpl.1381:15|
 :skolemid |97|
 :pattern ( (|bar4'| Heap@@16 x@@17))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_38197) (x@@18 T@Ref) ) (! (dummyFunction_1955 (|bar5#triggerStateless| x@@18))
 :qid |stdinbpl.1473:15|
 :skolemid |100|
 :pattern ( (|bar5'| Heap@@17 x@@18))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_38197) (x@@19 T@Ref) ) (! (dummyFunction_1955 (|foo6#triggerStateless| x@@19))
 :qid |stdinbpl.1560:15|
 :skolemid |103|
 :pattern ( (|foo6'| Heap@@18 x@@19))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_38197) (x@@20 T@Ref) ) (! (|P#everUsed_21974| (P x@@20))
 :qid |stdinbpl.1665:15|
 :skolemid |113|
 :pattern ( (|P#trigger_21974| Heap@@19 (P x@@20)))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_38197) (Heap1Heap T@PolymorphicMapType_38197) (x@@21 T@Ref) ) (!  (=> (and (= (= (|sk_foo5pw#condqp4| (|foo5pw#condqp4| Heap2Heap x@@21) (|foo5pw#condqp4| Heap1Heap x@@21)) x@@21) (= (|sk_foo5pw#condqp4| (|foo5pw#condqp4| Heap2Heap x@@21) (|foo5pw#condqp4| Heap1Heap x@@21)) x@@21)) (=> (= (|sk_foo5pw#condqp4| (|foo5pw#condqp4| Heap2Heap x@@21) (|foo5pw#condqp4| Heap1Heap x@@21)) x@@21) (= (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap2Heap) null (P (|sk_foo5pw#condqp4| (|foo5pw#condqp4| Heap2Heap x@@21) (|foo5pw#condqp4| Heap1Heap x@@21)))) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap1Heap) null (P (|sk_foo5pw#condqp4| (|foo5pw#condqp4| Heap2Heap x@@21) (|foo5pw#condqp4| Heap1Heap x@@21))))))) (= (|foo5pw#condqp4| Heap2Heap x@@21) (|foo5pw#condqp4| Heap1Heap x@@21)))
 :qid |stdinbpl.918:15|
 :skolemid |73|
 :pattern ( (|foo5pw#condqp4| Heap2Heap x@@21) (|foo5pw#condqp4| Heap1Heap x@@21) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_38197) (x@@22 T@Ref) ) (!  (and (= (foo_2 Heap@@20 x@@22) (|foo'| Heap@@20 x@@22)) (dummyFunction_1955 (|foo#triggerStateless| x@@22)))
 :qid |stdinbpl.300:15|
 :skolemid |22|
 :pattern ( (foo_2 Heap@@20 x@@22))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_38197) (x@@23 T@Ref) ) (!  (and (= (foop Heap@@21 x@@23) (|foop'| Heap@@21 x@@23)) (dummyFunction_1955 (|foop#triggerStateless| x@@23)))
 :qid |stdinbpl.350:15|
 :skolemid |25|
 :pattern ( (foop Heap@@21 x@@23))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_38197) (x@@24 T@Ref) ) (!  (and (= (foo3_1 Heap@@22 x@@24) (|foo3'| Heap@@22 x@@24)) (dummyFunction_1955 (|foo3#triggerStateless| x@@24)))
 :qid |stdinbpl.503:15|
 :skolemid |34|
 :pattern ( (foo3_1 Heap@@22 x@@24))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_38197) (x@@25 T@Ref) ) (!  (and (= (foo4_1 Heap@@23 x@@25) (|foo4'| Heap@@23 x@@25)) (dummyFunction_1955 (|foo4#triggerStateless| x@@25)))
 :qid |stdinbpl.555:15|
 :skolemid |37|
 :pattern ( (foo4_1 Heap@@23 x@@25))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_38197) (x@@26 T@Ref) ) (!  (and (= (foo5_1 Heap@@24 x@@26) (|foo5'| Heap@@24 x@@26)) (dummyFunction_1955 (|foo5#triggerStateless| x@@26)))
 :qid |stdinbpl.609:15|
 :skolemid |40|
 :pattern ( (foo5_1 Heap@@24 x@@26))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_38197) (x@@27 T@Ref) ) (!  (and (= (foo5w Heap@@25 x@@27) (|foo5w'| Heap@@25 x@@27)) (dummyFunction_1955 (|foo5w#triggerStateless| x@@27)))
 :qid |stdinbpl.704:15|
 :skolemid |50|
 :pattern ( (foo5w Heap@@25 x@@27))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_38197) (x@@28 T@Ref) ) (!  (and (= (foo5p Heap@@26 x@@28) (|foo5p'| Heap@@26 x@@28)) (dummyFunction_1955 (|foo5p#triggerStateless| x@@28)))
 :qid |stdinbpl.800:15|
 :skolemid |60|
 :pattern ( (foo5p Heap@@26 x@@28))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_38197) (x@@29 T@Ref) ) (!  (and (= (foo5pw Heap@@27 x@@29) (|foo5pw'| Heap@@27 x@@29)) (dummyFunction_1955 (|foo5pw#triggerStateless| x@@29)))
 :qid |stdinbpl.897:15|
 :skolemid |70|
 :pattern ( (foo5pw Heap@@27 x@@29))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_38197) (x@@30 T@Ref) ) (!  (and (= (bar Heap@@28 x@@30) (|bar'| Heap@@28 x@@30)) (dummyFunction_1955 (|bar#triggerStateless| x@@30)))
 :qid |stdinbpl.1079:15|
 :skolemid |84|
 :pattern ( (bar Heap@@28 x@@30))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_38197) (x@@31 T@Ref) ) (!  (and (= (bar2 Heap@@29 x@@31) (|bar2'| Heap@@29 x@@31)) (dummyFunction_1955 (|bar2#triggerStateless| x@@31)))
 :qid |stdinbpl.1184:15|
 :skolemid |88|
 :pattern ( (bar2 Heap@@29 x@@31))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_38197) (x@@32 T@Ref) ) (!  (and (= (bar3 Heap@@30 x@@32) (|bar3'| Heap@@30 x@@32)) (dummyFunction_1955 (|bar3#triggerStateless| x@@32)))
 :qid |stdinbpl.1287:15|
 :skolemid |92|
 :pattern ( (bar3 Heap@@30 x@@32))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_38197) (x@@33 T@Ref) ) (!  (and (= (bar4 Heap@@31 x@@33) (|bar4'| Heap@@31 x@@33)) (dummyFunction_1955 (|bar4#triggerStateless| x@@33)))
 :qid |stdinbpl.1377:15|
 :skolemid |96|
 :pattern ( (bar4 Heap@@31 x@@33))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_38197) (x@@34 T@Ref) ) (!  (and (= (bar5 Heap@@32 x@@34) (|bar5'| Heap@@32 x@@34)) (dummyFunction_1955 (|bar5#triggerStateless| x@@34)))
 :qid |stdinbpl.1469:15|
 :skolemid |99|
 :pattern ( (bar5 Heap@@32 x@@34))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_38197) (x@@35 T@Ref) ) (!  (and (= (foo6 Heap@@33 x@@35) (|foo6'| Heap@@33 x@@35)) (dummyFunction_1955 (|foo6#triggerStateless| x@@35)))
 :qid |stdinbpl.1556:15|
 :skolemid |102|
 :pattern ( (foo6 Heap@@33 x@@35))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_38197) (Mask@@1 T@PolymorphicMapType_38218) (x@@36 T@Ref) ) (!  (=> (state Heap@@34 Mask@@1) (= (|foo6'| Heap@@34 x@@36) (|foo6#frame| (CombineFrames (FrameFragment_1789 (|foo6#condqp5| Heap@@34 x@@36)) (FrameFragment_1789 (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@34) x@@36 f_7))) x@@36)))
 :qid |stdinbpl.1567:15|
 :skolemid |104|
 :pattern ( (state Heap@@34 Mask@@1) (|foo6'| Heap@@34 x@@36))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_38197) (ExhaleHeap T@PolymorphicMapType_38197) (Mask@@2 T@PolymorphicMapType_38218) (pm_f_15 T@Field_65737_65738) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_65737_21975 Mask@@2 null pm_f_15) (IsPredicateField_22000_22001 pm_f_15)) (= (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@35) null (PredicateMaskField_22000 pm_f_15)) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap) null (PredicateMaskField_22000 pm_f_15)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap Mask@@2) (IsPredicateField_22000_22001 pm_f_15) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap) null (PredicateMaskField_22000 pm_f_15)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_38197) (ExhaleHeap@@0 T@PolymorphicMapType_38197) (Mask@@3 T@PolymorphicMapType_38218) (pm_f_15@@0 T@Field_42676_42677) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_21974_21975 Mask@@3 null pm_f_15@@0) (IsPredicateField_21974_21975 pm_f_15@@0)) (= (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@36) null (PredicateMaskField_21974 pm_f_15@@0)) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@0) null (PredicateMaskField_21974 pm_f_15@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@0 Mask@@3) (IsPredicateField_21974_21975 pm_f_15@@0) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@0) null (PredicateMaskField_21974 pm_f_15@@0)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_38197) (ExhaleHeap@@1 T@PolymorphicMapType_38197) (Mask@@4 T@PolymorphicMapType_38218) (pm_f_15@@1 T@Field_21531_21975) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_21531_21975 Mask@@4 null pm_f_15@@1) (IsPredicateField_21531_123847 pm_f_15@@1)) (= (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@37) null (PredicateMaskField_21531 pm_f_15@@1)) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@1) null (PredicateMaskField_21531 pm_f_15@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@1 Mask@@4) (IsPredicateField_21531_123847 pm_f_15@@1) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@1) null (PredicateMaskField_21531 pm_f_15@@1)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_38197) (ExhaleHeap@@2 T@PolymorphicMapType_38197) (Mask@@5 T@PolymorphicMapType_38218) (pm_f_15@@2 T@Field_65737_65738) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_65737_21975 Mask@@5 null pm_f_15@@2) (IsWandField_65737_129543 pm_f_15@@2)) (= (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@38) null (WandMaskField_65737 pm_f_15@@2)) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@2) null (WandMaskField_65737 pm_f_15@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@2 Mask@@5) (IsWandField_65737_129543 pm_f_15@@2) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@2) null (WandMaskField_65737 pm_f_15@@2)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_38197) (ExhaleHeap@@3 T@PolymorphicMapType_38197) (Mask@@6 T@PolymorphicMapType_38218) (pm_f_15@@3 T@Field_42676_42677) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@3 Mask@@6) (=> (and (HasDirectPerm_21974_21975 Mask@@6 null pm_f_15@@3) (IsWandField_21974_129186 pm_f_15@@3)) (= (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@39) null (WandMaskField_21974 pm_f_15@@3)) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@3) null (WandMaskField_21974 pm_f_15@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@3 Mask@@6) (IsWandField_21974_129186 pm_f_15@@3) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@3) null (WandMaskField_21974 pm_f_15@@3)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_38197) (ExhaleHeap@@4 T@PolymorphicMapType_38197) (Mask@@7 T@PolymorphicMapType_38218) (pm_f_15@@4 T@Field_21531_21975) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@4 Mask@@7) (=> (and (HasDirectPerm_21531_21975 Mask@@7 null pm_f_15@@4) (IsWandField_21531_128829 pm_f_15@@4)) (= (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@40) null (WandMaskField_21531 pm_f_15@@4)) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@4) null (WandMaskField_21531 pm_f_15@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@4 Mask@@7) (IsWandField_21531_128829 pm_f_15@@4) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@4) null (WandMaskField_21531 pm_f_15@@4)))
)))
(assert (forall ((x@@37 T@Ref) (y@@2 T@Ref) (x2 T@Ref) (y2 T@Ref) ) (!  (=> (= (nonAliasPred x@@37 y@@2) (nonAliasPred x2 y2)) (and (= x@@37 x2) (= y@@2 y2)))
 :qid |stdinbpl.1711:15|
 :skolemid |117|
 :pattern ( (nonAliasPred x@@37 y@@2) (nonAliasPred x2 y2))
)))
(assert (forall ((x@@38 T@Ref) (y@@3 T@Ref) (x2@@0 T@Ref) (y2@@0 T@Ref) ) (!  (=> (= (|nonAliasPred#sm| x@@38 y@@3) (|nonAliasPred#sm| x2@@0 y2@@0)) (and (= x@@38 x2@@0) (= y@@3 y2@@0)))
 :qid |stdinbpl.1715:15|
 :skolemid |118|
 :pattern ( (|nonAliasPred#sm| x@@38 y@@3) (|nonAliasPred#sm| x2@@0 y2@@0))
)))
(assert (forall ((x@@39 T@Ref) (x2@@1 T@Ref) ) (!  (=> (= (P x@@39) (P x2@@1)) (= x@@39 x2@@1))
 :qid |stdinbpl.1656:15|
 :skolemid |111|
 :pattern ( (P x@@39) (P x2@@1))
)))
(assert (forall ((x@@40 T@Ref) (x2@@2 T@Ref) ) (!  (=> (= (|P#sm| x@@40) (|P#sm| x2@@2)) (= x@@40 x2@@2))
 :qid |stdinbpl.1660:15|
 :skolemid |112|
 :pattern ( (|P#sm| x@@40) (|P#sm| x2@@2))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_38197) (Heap1Heap@@0 T@PolymorphicMapType_38197) (x@@41 T@Ref) ) (!  (=> (and (=  (and (= (|sk_foo5p#condqp3| (|foo5p#condqp3| Heap2Heap@@0 x@@41) (|foo5p#condqp3| Heap1Heap@@0 x@@41)) x@@41) (< NoPerm FullPerm))  (and (= (|sk_foo5p#condqp3| (|foo5p#condqp3| Heap2Heap@@0 x@@41) (|foo5p#condqp3| Heap1Heap@@0 x@@41)) x@@41) (< NoPerm FullPerm))) (=> (and (= (|sk_foo5p#condqp3| (|foo5p#condqp3| Heap2Heap@@0 x@@41) (|foo5p#condqp3| Heap1Heap@@0 x@@41)) x@@41) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap2Heap@@0) null (P (|sk_foo5p#condqp3| (|foo5p#condqp3| Heap2Heap@@0 x@@41) (|foo5p#condqp3| Heap1Heap@@0 x@@41)))) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap1Heap@@0) null (P (|sk_foo5p#condqp3| (|foo5p#condqp3| Heap2Heap@@0 x@@41) (|foo5p#condqp3| Heap1Heap@@0 x@@41))))))) (= (|foo5p#condqp3| Heap2Heap@@0 x@@41) (|foo5p#condqp3| Heap1Heap@@0 x@@41)))
 :qid |stdinbpl.821:15|
 :skolemid |63|
 :pattern ( (|foo5p#condqp3| Heap2Heap@@0 x@@41) (|foo5p#condqp3| Heap1Heap@@0 x@@41) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@41 T@PolymorphicMapType_38197) (Mask@@8 T@PolymorphicMapType_38218) (x@@42 T@Ref) ) (!  (=> (state Heap@@41 Mask@@8) (= (|foo4'| Heap@@41 x@@42) (|foo4#frame| (CombineFrames (FrameFragment_1789 (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@41) x@@42 f_7)) (FrameFragment_1789 (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@41) x@@42 f_7))) x@@42)))
 :qid |stdinbpl.566:15|
 :skolemid |39|
 :pattern ( (state Heap@@41 Mask@@8) (|foo4'| Heap@@41 x@@42))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_38197) (ExhaleHeap@@5 T@PolymorphicMapType_38197) (Mask@@9 T@PolymorphicMapType_38218) (o_39 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@5 Mask@@9) (=> (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@42) o_39 $allocated) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@5) o_39 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@5 Mask@@9) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@5) o_39 $allocated))
)))
(assert (forall ((p T@Field_65737_65738) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_65737_65737 p v_1 p w))
 :qid |stdinbpl.277:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_65737_65737 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_42676_42677) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_42676_42676 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.277:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_42676_42676 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_21531_21975) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_38257_38257 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.277:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_38257_38257 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_38197) (Mask@@10 T@PolymorphicMapType_38218) (x@@43 T@Ref) (y@@4 T@Ref) ) (!  (=> (state Heap@@43 Mask@@10) (= (|nonAliasF'| Heap@@43 x@@43 y@@4) (|nonAliasF#frame| (CombineFrames (FrameFragment_1789 (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@43) x@@43 f_7)) (FrameFragment_1789 (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@43) y@@4 f_7))) x@@43 y@@4)))
 :qid |stdinbpl.1013:15|
 :skolemid |83|
 :pattern ( (state Heap@@43 Mask@@10) (|nonAliasF'| Heap@@43 x@@43 y@@4))
)))
(assert  (not (IsPredicateField_21531_1789 f_7)))
(assert  (not (IsWandField_21531_1789 f_7)))
(assert  (not (IsPredicateField_21531_1789 g)))
(assert  (not (IsWandField_21531_1789 g)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_38197) (ExhaleHeap@@6 T@PolymorphicMapType_38197) (Mask@@11 T@PolymorphicMapType_38218) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@6 Mask@@11) (succHeap Heap@@44 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@6 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_38218) (o_2@@14 T@Ref) (f_4@@14 T@Field_65751_65756) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| Mask@@12) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_65737_139876 f_4@@14))) (not (IsWandField_65737_139892 f_4@@14))) (<= (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| Mask@@12) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| Mask@@12) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_38218) (o_2@@15 T@Ref) (f_4@@15 T@Field_65737_38271) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| Mask@@13) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_65737_38271 f_4@@15))) (not (IsWandField_65737_38271 f_4@@15))) (<= (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| Mask@@13) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| Mask@@13) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_38218) (o_2@@16 T@Ref) (f_4@@16 T@Field_65737_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| Mask@@14) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_65737_53 f_4@@16))) (not (IsWandField_65737_53 f_4@@16))) (<= (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| Mask@@14) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| Mask@@14) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_38218) (o_2@@17 T@Ref) (f_4@@17 T@Field_65737_65738) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| Mask@@15) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_22000_22001 f_4@@17))) (not (IsWandField_65737_129543 f_4@@17))) (<= (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| Mask@@15) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| Mask@@15) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_38218) (o_2@@18 T@Ref) (f_4@@18 T@Field_65737_1789) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| Mask@@16) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_65737_1789 f_4@@18))) (not (IsWandField_65737_1789 f_4@@18))) (<= (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| Mask@@16) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| Mask@@16) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_38218) (o_2@@19 T@Ref) (f_4@@19 T@Field_56026_56031) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| Mask@@17) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_21974_139045 f_4@@19))) (not (IsWandField_21974_139061 f_4@@19))) (<= (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| Mask@@17) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| Mask@@17) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_38218) (o_2@@20 T@Ref) (f_4@@20 T@Field_21974_38271) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| Mask@@18) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_21974_38271 f_4@@20))) (not (IsWandField_21974_38271 f_4@@20))) (<= (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| Mask@@18) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| Mask@@18) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_38218) (o_2@@21 T@Ref) (f_4@@21 T@Field_21974_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| Mask@@19) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_21974_53 f_4@@21))) (not (IsWandField_21974_53 f_4@@21))) (<= (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| Mask@@19) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| Mask@@19) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_38218) (o_2@@22 T@Ref) (f_4@@22 T@Field_42676_42677) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| Mask@@20) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_21974_21975 f_4@@22))) (not (IsWandField_21974_129186 f_4@@22))) (<= (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| Mask@@20) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| Mask@@20) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_38218) (o_2@@23 T@Ref) (f_4@@23 T@Field_21974_1789) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| Mask@@21) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_21974_1789 f_4@@23))) (not (IsWandField_21974_1789 f_4@@23))) (<= (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| Mask@@21) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| Mask@@21) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_38218) (o_2@@24 T@Ref) (f_4@@24 T@Field_21531_56031) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| Mask@@22) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_21531_138214 f_4@@24))) (not (IsWandField_21531_138230 f_4@@24))) (<= (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| Mask@@22) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| Mask@@22) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_38218) (o_2@@25 T@Ref) (f_4@@25 T@Field_38270_38271) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| Mask@@23) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_21531_38271 f_4@@25))) (not (IsWandField_21531_38271 f_4@@25))) (<= (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| Mask@@23) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| Mask@@23) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_38218) (o_2@@26 T@Ref) (f_4@@26 T@Field_38257_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| Mask@@24) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_21531_53 f_4@@26))) (not (IsWandField_21531_53 f_4@@26))) (<= (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| Mask@@24) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| Mask@@24) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_38218) (o_2@@27 T@Ref) (f_4@@27 T@Field_21531_21975) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| Mask@@25) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_21531_123847 f_4@@27))) (not (IsWandField_21531_128829 f_4@@27))) (<= (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| Mask@@25) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| Mask@@25) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_38218) (o_2@@28 T@Ref) (f_4@@28 T@Field_41684_1789) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| Mask@@26) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_21531_1789 f_4@@28))) (not (IsWandField_21531_1789 f_4@@28))) (<= (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| Mask@@26) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| Mask@@26) o_2@@28 f_4@@28))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_38197) (Mask@@27 T@PolymorphicMapType_38218) (x@@44 T@Ref) (y@@5 T@Ref) ) (!  (=> (and (state Heap@@45 Mask@@27) (< AssumeFunctionsAbove 13)) (= (nonAliasF Heap@@45 x@@44 y@@5) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@45) x@@44 f_7)))
 :qid |stdinbpl.1006:15|
 :skolemid |82|
 :pattern ( (state Heap@@45 Mask@@27) (nonAliasF Heap@@45 x@@44 y@@5))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_38218) (o_2@@29 T@Ref) (f_4@@29 T@Field_65751_65756) ) (! (= (HasDirectPerm_65737_123559 Mask@@28 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| Mask@@28) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_65737_123559 Mask@@28 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_38218) (o_2@@30 T@Ref) (f_4@@30 T@Field_65737_38271) ) (! (= (HasDirectPerm_65737_38271 Mask@@29 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| Mask@@29) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_65737_38271 Mask@@29 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_38218) (o_2@@31 T@Ref) (f_4@@31 T@Field_65737_53) ) (! (= (HasDirectPerm_65737_53 Mask@@30 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| Mask@@30) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_65737_53 Mask@@30 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_38218) (o_2@@32 T@Ref) (f_4@@32 T@Field_65737_65738) ) (! (= (HasDirectPerm_65737_21975 Mask@@31 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| Mask@@31) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_65737_21975 Mask@@31 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_38218) (o_2@@33 T@Ref) (f_4@@33 T@Field_65737_1789) ) (! (= (HasDirectPerm_65737_1789 Mask@@32 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| Mask@@32) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_65737_1789 Mask@@32 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_38218) (o_2@@34 T@Ref) (f_4@@34 T@Field_56026_56031) ) (! (= (HasDirectPerm_21974_122424 Mask@@33 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| Mask@@33) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21974_122424 Mask@@33 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_38218) (o_2@@35 T@Ref) (f_4@@35 T@Field_21974_38271) ) (! (= (HasDirectPerm_21974_38271 Mask@@34 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| Mask@@34) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21974_38271 Mask@@34 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_38218) (o_2@@36 T@Ref) (f_4@@36 T@Field_21974_53) ) (! (= (HasDirectPerm_21974_53 Mask@@35 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| Mask@@35) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21974_53 Mask@@35 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_38218) (o_2@@37 T@Ref) (f_4@@37 T@Field_42676_42677) ) (! (= (HasDirectPerm_21974_21975 Mask@@36 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| Mask@@36) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21974_21975 Mask@@36 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_38218) (o_2@@38 T@Ref) (f_4@@38 T@Field_21974_1789) ) (! (= (HasDirectPerm_21974_1789 Mask@@37 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| Mask@@37) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21974_1789 Mask@@37 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_38218) (o_2@@39 T@Ref) (f_4@@39 T@Field_21531_56031) ) (! (= (HasDirectPerm_21531_121283 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21531_121283 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_38218) (o_2@@40 T@Ref) (f_4@@40 T@Field_38270_38271) ) (! (= (HasDirectPerm_21531_38271 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21531_38271 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_38218) (o_2@@41 T@Ref) (f_4@@41 T@Field_38257_53) ) (! (= (HasDirectPerm_21531_53 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21531_53 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_38218) (o_2@@42 T@Ref) (f_4@@42 T@Field_21531_21975) ) (! (= (HasDirectPerm_21531_21975 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21531_21975 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_38218) (o_2@@43 T@Ref) (f_4@@43 T@Field_41684_1789) ) (! (= (HasDirectPerm_21531_1789 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21531_1789 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.265:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_38197) (ExhaleHeap@@7 T@PolymorphicMapType_38197) (Mask@@43 T@PolymorphicMapType_38218) (o_39@@0 T@Ref) (f_45 T@Field_65751_65756) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@7 Mask@@43) (=> (HasDirectPerm_65737_123559 Mask@@43 o_39@@0 f_45) (= (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@46) o_39@@0 f_45) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@7) o_39@@0 f_45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@7 Mask@@43) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@7) o_39@@0 f_45))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_38197) (ExhaleHeap@@8 T@PolymorphicMapType_38197) (Mask@@44 T@PolymorphicMapType_38218) (o_39@@1 T@Ref) (f_45@@0 T@Field_65737_38271) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@8 Mask@@44) (=> (HasDirectPerm_65737_38271 Mask@@44 o_39@@1 f_45@@0) (= (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@47) o_39@@1 f_45@@0) (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@8) o_39@@1 f_45@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@8 Mask@@44) (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@8) o_39@@1 f_45@@0))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_38197) (ExhaleHeap@@9 T@PolymorphicMapType_38197) (Mask@@45 T@PolymorphicMapType_38218) (o_39@@2 T@Ref) (f_45@@1 T@Field_65737_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@9 Mask@@45) (=> (HasDirectPerm_65737_53 Mask@@45 o_39@@2 f_45@@1) (= (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@48) o_39@@2 f_45@@1) (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@9) o_39@@2 f_45@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@9 Mask@@45) (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@9) o_39@@2 f_45@@1))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_38197) (ExhaleHeap@@10 T@PolymorphicMapType_38197) (Mask@@46 T@PolymorphicMapType_38218) (o_39@@3 T@Ref) (f_45@@2 T@Field_65737_65738) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@10 Mask@@46) (=> (HasDirectPerm_65737_21975 Mask@@46 o_39@@3 f_45@@2) (= (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@49) o_39@@3 f_45@@2) (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@10) o_39@@3 f_45@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@10 Mask@@46) (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@10) o_39@@3 f_45@@2))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_38197) (ExhaleHeap@@11 T@PolymorphicMapType_38197) (Mask@@47 T@PolymorphicMapType_38218) (o_39@@4 T@Ref) (f_45@@3 T@Field_65737_1789) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@11 Mask@@47) (=> (HasDirectPerm_65737_1789 Mask@@47 o_39@@4 f_45@@3) (= (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@50) o_39@@4 f_45@@3) (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@11) o_39@@4 f_45@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@11 Mask@@47) (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@11) o_39@@4 f_45@@3))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_38197) (ExhaleHeap@@12 T@PolymorphicMapType_38197) (Mask@@48 T@PolymorphicMapType_38218) (o_39@@5 T@Ref) (f_45@@4 T@Field_56026_56031) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@12 Mask@@48) (=> (HasDirectPerm_21974_122424 Mask@@48 o_39@@5 f_45@@4) (= (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@51) o_39@@5 f_45@@4) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@12) o_39@@5 f_45@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@12 Mask@@48) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@12) o_39@@5 f_45@@4))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_38197) (ExhaleHeap@@13 T@PolymorphicMapType_38197) (Mask@@49 T@PolymorphicMapType_38218) (o_39@@6 T@Ref) (f_45@@5 T@Field_21974_38271) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@13 Mask@@49) (=> (HasDirectPerm_21974_38271 Mask@@49 o_39@@6 f_45@@5) (= (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@52) o_39@@6 f_45@@5) (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@13) o_39@@6 f_45@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@13 Mask@@49) (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@13) o_39@@6 f_45@@5))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_38197) (ExhaleHeap@@14 T@PolymorphicMapType_38197) (Mask@@50 T@PolymorphicMapType_38218) (o_39@@7 T@Ref) (f_45@@6 T@Field_21974_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@14 Mask@@50) (=> (HasDirectPerm_21974_53 Mask@@50 o_39@@7 f_45@@6) (= (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@53) o_39@@7 f_45@@6) (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@14) o_39@@7 f_45@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@14 Mask@@50) (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@14) o_39@@7 f_45@@6))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_38197) (ExhaleHeap@@15 T@PolymorphicMapType_38197) (Mask@@51 T@PolymorphicMapType_38218) (o_39@@8 T@Ref) (f_45@@7 T@Field_42676_42677) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@15 Mask@@51) (=> (HasDirectPerm_21974_21975 Mask@@51 o_39@@8 f_45@@7) (= (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@54) o_39@@8 f_45@@7) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@15) o_39@@8 f_45@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@15 Mask@@51) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@15) o_39@@8 f_45@@7))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_38197) (ExhaleHeap@@16 T@PolymorphicMapType_38197) (Mask@@52 T@PolymorphicMapType_38218) (o_39@@9 T@Ref) (f_45@@8 T@Field_21974_1789) ) (!  (=> (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@16 Mask@@52) (=> (HasDirectPerm_21974_1789 Mask@@52 o_39@@9 f_45@@8) (= (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@55) o_39@@9 f_45@@8) (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@16) o_39@@9 f_45@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@16 Mask@@52) (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@16) o_39@@9 f_45@@8))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_38197) (ExhaleHeap@@17 T@PolymorphicMapType_38197) (Mask@@53 T@PolymorphicMapType_38218) (o_39@@10 T@Ref) (f_45@@9 T@Field_21531_56031) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@17 Mask@@53) (=> (HasDirectPerm_21531_121283 Mask@@53 o_39@@10 f_45@@9) (= (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@56) o_39@@10 f_45@@9) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@17) o_39@@10 f_45@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@17 Mask@@53) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@17) o_39@@10 f_45@@9))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_38197) (ExhaleHeap@@18 T@PolymorphicMapType_38197) (Mask@@54 T@PolymorphicMapType_38218) (o_39@@11 T@Ref) (f_45@@10 T@Field_38270_38271) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@18 Mask@@54) (=> (HasDirectPerm_21531_38271 Mask@@54 o_39@@11 f_45@@10) (= (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@57) o_39@@11 f_45@@10) (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@18) o_39@@11 f_45@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@18 Mask@@54) (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@18) o_39@@11 f_45@@10))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_38197) (ExhaleHeap@@19 T@PolymorphicMapType_38197) (Mask@@55 T@PolymorphicMapType_38218) (o_39@@12 T@Ref) (f_45@@11 T@Field_38257_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@19 Mask@@55) (=> (HasDirectPerm_21531_53 Mask@@55 o_39@@12 f_45@@11) (= (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@58) o_39@@12 f_45@@11) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@19) o_39@@12 f_45@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@19 Mask@@55) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@19) o_39@@12 f_45@@11))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_38197) (ExhaleHeap@@20 T@PolymorphicMapType_38197) (Mask@@56 T@PolymorphicMapType_38218) (o_39@@13 T@Ref) (f_45@@12 T@Field_21531_21975) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@20 Mask@@56) (=> (HasDirectPerm_21531_21975 Mask@@56 o_39@@13 f_45@@12) (= (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@59) o_39@@13 f_45@@12) (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@20) o_39@@13 f_45@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@20 Mask@@56) (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@20) o_39@@13 f_45@@12))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_38197) (ExhaleHeap@@21 T@PolymorphicMapType_38197) (Mask@@57 T@PolymorphicMapType_38218) (o_39@@14 T@Ref) (f_45@@13 T@Field_41684_1789) ) (!  (=> (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@21 Mask@@57) (=> (HasDirectPerm_21531_1789 Mask@@57 o_39@@14 f_45@@13) (= (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@60) o_39@@14 f_45@@13) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@21) o_39@@14 f_45@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@21 Mask@@57) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@21) o_39@@14 f_45@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_65751_65756) ) (! (= (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_65737_38271) ) (! (= (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_65737_53) ) (! (= (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_65737_65738) ) (! (= (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_65737_1789) ) (! (= (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_56026_56031) ) (! (= (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_21974_38271) ) (! (= (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_21974_53) ) (! (= (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_42676_42677) ) (! (= (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_21974_1789) ) (! (= (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_21531_56031) ) (! (= (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_38270_38271) ) (! (= (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_38257_53) ) (! (= (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_21531_21975) ) (! (= (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_41684_1789) ) (! (= (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_38197) (x@@45 T@Ref) (b_24@@1 Bool) ) (!  (and (= (foo2_1 Heap@@61 x@@45 b_24@@1) (|foo2'| Heap@@61 x@@45 b_24@@1)) (dummyFunction_1955 (|foo2#triggerStateless| x@@45 b_24@@1)))
 :qid |stdinbpl.399:15|
 :skolemid |28|
 :pattern ( (foo2_1 Heap@@61 x@@45 b_24@@1))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_38197) (x@@46 T@Ref) (b_24@@2 Bool) ) (!  (and (= (foo2w Heap@@62 x@@46 b_24@@2) (|foo2w'| Heap@@62 x@@46 b_24@@2)) (dummyFunction_1955 (|foo2w#triggerStateless| x@@46 b_24@@2)))
 :qid |stdinbpl.451:15|
 :skolemid |31|
 :pattern ( (foo2w Heap@@62 x@@46 b_24@@2))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_38197) (x@@47 T@Ref) (y@@6 T@Ref) ) (!  (and (= (nonAliasF Heap@@63 x@@47 y@@6) (|nonAliasF'| Heap@@63 x@@47 y@@6)) (dummyFunction_1955 (|nonAliasF#triggerStateless| x@@47 y@@6)))
 :qid |stdinbpl.996:15|
 :skolemid |80|
 :pattern ( (nonAliasF Heap@@63 x@@47 y@@6))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_38218) (SummandMask1 T@PolymorphicMapType_38218) (SummandMask2 T@PolymorphicMapType_38218) (o_2@@59 T@Ref) (f_4@@59 T@Field_65751_65756) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_38218_65737_136421#PolymorphicMapType_38218| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_38218) (SummandMask1@@0 T@PolymorphicMapType_38218) (SummandMask2@@0 T@PolymorphicMapType_38218) (o_2@@60 T@Ref) (f_4@@60 T@Field_65737_38271) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_38218_65737_38271#PolymorphicMapType_38218| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_38218) (SummandMask1@@1 T@PolymorphicMapType_38218) (SummandMask2@@1 T@PolymorphicMapType_38218) (o_2@@61 T@Ref) (f_4@@61 T@Field_65737_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_38218_65737_53#PolymorphicMapType_38218| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_38218) (SummandMask1@@2 T@PolymorphicMapType_38218) (SummandMask2@@2 T@PolymorphicMapType_38218) (o_2@@62 T@Ref) (f_4@@62 T@Field_65737_65738) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_38218_65737_21975#PolymorphicMapType_38218| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_38218) (SummandMask1@@3 T@PolymorphicMapType_38218) (SummandMask2@@3 T@PolymorphicMapType_38218) (o_2@@63 T@Ref) (f_4@@63 T@Field_65737_1789) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_38218_65737_1789#PolymorphicMapType_38218| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_38218) (SummandMask1@@4 T@PolymorphicMapType_38218) (SummandMask2@@4 T@PolymorphicMapType_38218) (o_2@@64 T@Ref) (f_4@@64 T@Field_56026_56031) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_38218_21974_135995#PolymorphicMapType_38218| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_38218) (SummandMask1@@5 T@PolymorphicMapType_38218) (SummandMask2@@5 T@PolymorphicMapType_38218) (o_2@@65 T@Ref) (f_4@@65 T@Field_21974_38271) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_38218_21974_38271#PolymorphicMapType_38218| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_38218) (SummandMask1@@6 T@PolymorphicMapType_38218) (SummandMask2@@6 T@PolymorphicMapType_38218) (o_2@@66 T@Ref) (f_4@@66 T@Field_21974_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_38218_21974_53#PolymorphicMapType_38218| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_38218) (SummandMask1@@7 T@PolymorphicMapType_38218) (SummandMask2@@7 T@PolymorphicMapType_38218) (o_2@@67 T@Ref) (f_4@@67 T@Field_42676_42677) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_38218_21974_21975#PolymorphicMapType_38218| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_38218) (SummandMask1@@8 T@PolymorphicMapType_38218) (SummandMask2@@8 T@PolymorphicMapType_38218) (o_2@@68 T@Ref) (f_4@@68 T@Field_21974_1789) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_38218_21974_1789#PolymorphicMapType_38218| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_38218) (SummandMask1@@9 T@PolymorphicMapType_38218) (SummandMask2@@9 T@PolymorphicMapType_38218) (o_2@@69 T@Ref) (f_4@@69 T@Field_21531_56031) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_38218_21531_135584#PolymorphicMapType_38218| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_38218) (SummandMask1@@10 T@PolymorphicMapType_38218) (SummandMask2@@10 T@PolymorphicMapType_38218) (o_2@@70 T@Ref) (f_4@@70 T@Field_38270_38271) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_38218_21531_38271#PolymorphicMapType_38218| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_38218) (SummandMask1@@11 T@PolymorphicMapType_38218) (SummandMask2@@11 T@PolymorphicMapType_38218) (o_2@@71 T@Ref) (f_4@@71 T@Field_38257_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_38218_21531_53#PolymorphicMapType_38218| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_38218) (SummandMask1@@12 T@PolymorphicMapType_38218) (SummandMask2@@12 T@PolymorphicMapType_38218) (o_2@@72 T@Ref) (f_4@@72 T@Field_21531_21975) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_38218_21531_21975#PolymorphicMapType_38218| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_38218) (SummandMask1@@13 T@PolymorphicMapType_38218) (SummandMask2@@13 T@PolymorphicMapType_38218) (o_2@@73 T@Ref) (f_4@@73 T@Field_41684_1789) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_38218_21531_1789#PolymorphicMapType_38218| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_38197) (ExhaleHeap@@22 T@PolymorphicMapType_38197) (Mask@@58 T@PolymorphicMapType_38218) (pm_f_15@@5 T@Field_65737_65738) ) (!  (=> (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@22 Mask@@58) (=> (and (HasDirectPerm_65737_21975 Mask@@58 null pm_f_15@@5) (IsPredicateField_22000_22001 pm_f_15@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_15 T@Ref) (f_45@@14 T@Field_41684_1789) ) (!  (=> (select (|PolymorphicMapType_38746_21531_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15 f_45@@14) (= (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@64) o2_15 f_45@@14) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15 f_45@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15 f_45@@14))
)) (forall ((o2_15@@0 T@Ref) (f_45@@15 T@Field_38257_53) ) (!  (=> (select (|PolymorphicMapType_38746_21531_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@0 f_45@@15) (= (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@64) o2_15@@0 f_45@@15) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@0 f_45@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@0 f_45@@15))
))) (forall ((o2_15@@1 T@Ref) (f_45@@16 T@Field_38270_38271) ) (!  (=> (select (|PolymorphicMapType_38746_21531_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@1 f_45@@16) (= (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@64) o2_15@@1 f_45@@16) (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@1 f_45@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@1 f_45@@16))
))) (forall ((o2_15@@2 T@Ref) (f_45@@17 T@Field_21531_21975) ) (!  (=> (select (|PolymorphicMapType_38746_21531_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@2 f_45@@17) (= (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@64) o2_15@@2 f_45@@17) (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@2 f_45@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@2 f_45@@17))
))) (forall ((o2_15@@3 T@Ref) (f_45@@18 T@Field_21531_56031) ) (!  (=> (select (|PolymorphicMapType_38746_21531_125644#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@3 f_45@@18) (= (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@64) o2_15@@3 f_45@@18) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@3 f_45@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@3 f_45@@18))
))) (forall ((o2_15@@4 T@Ref) (f_45@@19 T@Field_21974_1789) ) (!  (=> (select (|PolymorphicMapType_38746_42676_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@4 f_45@@19) (= (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@64) o2_15@@4 f_45@@19) (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@4 f_45@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@4 f_45@@19))
))) (forall ((o2_15@@5 T@Ref) (f_45@@20 T@Field_21974_53) ) (!  (=> (select (|PolymorphicMapType_38746_42676_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@5 f_45@@20) (= (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@64) o2_15@@5 f_45@@20) (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@5 f_45@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@5 f_45@@20))
))) (forall ((o2_15@@6 T@Ref) (f_45@@21 T@Field_21974_38271) ) (!  (=> (select (|PolymorphicMapType_38746_42676_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@6 f_45@@21) (= (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@64) o2_15@@6 f_45@@21) (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@6 f_45@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@6 f_45@@21))
))) (forall ((o2_15@@7 T@Ref) (f_45@@22 T@Field_42676_42677) ) (!  (=> (select (|PolymorphicMapType_38746_42676_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@7 f_45@@22) (= (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@64) o2_15@@7 f_45@@22) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@7 f_45@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@7 f_45@@22))
))) (forall ((o2_15@@8 T@Ref) (f_45@@23 T@Field_56026_56031) ) (!  (=> (select (|PolymorphicMapType_38746_42676_126692#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@8 f_45@@23) (= (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@64) o2_15@@8 f_45@@23) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@8 f_45@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@8 f_45@@23))
))) (forall ((o2_15@@9 T@Ref) (f_45@@24 T@Field_65737_1789) ) (!  (=> (select (|PolymorphicMapType_38746_65737_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@9 f_45@@24) (= (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@64) o2_15@@9 f_45@@24) (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@9 f_45@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@9 f_45@@24))
))) (forall ((o2_15@@10 T@Ref) (f_45@@25 T@Field_65737_53) ) (!  (=> (select (|PolymorphicMapType_38746_65737_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@10 f_45@@25) (= (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@64) o2_15@@10 f_45@@25) (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@10 f_45@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@10 f_45@@25))
))) (forall ((o2_15@@11 T@Ref) (f_45@@26 T@Field_65737_38271) ) (!  (=> (select (|PolymorphicMapType_38746_65737_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@11 f_45@@26) (= (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@64) o2_15@@11 f_45@@26) (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@11 f_45@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@11 f_45@@26))
))) (forall ((o2_15@@12 T@Ref) (f_45@@27 T@Field_65737_65738) ) (!  (=> (select (|PolymorphicMapType_38746_65737_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@12 f_45@@27) (= (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@64) o2_15@@12 f_45@@27) (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@12 f_45@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@12 f_45@@27))
))) (forall ((o2_15@@13 T@Ref) (f_45@@28 T@Field_65751_65756) ) (!  (=> (select (|PolymorphicMapType_38746_65737_127740#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) null (PredicateMaskField_22000 pm_f_15@@5))) o2_15@@13 f_45@@28) (= (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@64) o2_15@@13 f_45@@28) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@13 f_45@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@22) o2_15@@13 f_45@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@22 Mask@@58) (IsPredicateField_22000_22001 pm_f_15@@5))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_38197) (ExhaleHeap@@23 T@PolymorphicMapType_38197) (Mask@@59 T@PolymorphicMapType_38218) (pm_f_15@@6 T@Field_42676_42677) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@23 Mask@@59) (=> (and (HasDirectPerm_21974_21975 Mask@@59 null pm_f_15@@6) (IsPredicateField_21974_21975 pm_f_15@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_15@@14 T@Ref) (f_45@@29 T@Field_41684_1789) ) (!  (=> (select (|PolymorphicMapType_38746_21531_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@14 f_45@@29) (= (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@65) o2_15@@14 f_45@@29) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@14 f_45@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@14 f_45@@29))
)) (forall ((o2_15@@15 T@Ref) (f_45@@30 T@Field_38257_53) ) (!  (=> (select (|PolymorphicMapType_38746_21531_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@15 f_45@@30) (= (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@65) o2_15@@15 f_45@@30) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@15 f_45@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@15 f_45@@30))
))) (forall ((o2_15@@16 T@Ref) (f_45@@31 T@Field_38270_38271) ) (!  (=> (select (|PolymorphicMapType_38746_21531_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@16 f_45@@31) (= (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@65) o2_15@@16 f_45@@31) (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@16 f_45@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@16 f_45@@31))
))) (forall ((o2_15@@17 T@Ref) (f_45@@32 T@Field_21531_21975) ) (!  (=> (select (|PolymorphicMapType_38746_21531_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@17 f_45@@32) (= (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@65) o2_15@@17 f_45@@32) (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@17 f_45@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@17 f_45@@32))
))) (forall ((o2_15@@18 T@Ref) (f_45@@33 T@Field_21531_56031) ) (!  (=> (select (|PolymorphicMapType_38746_21531_125644#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@18 f_45@@33) (= (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@65) o2_15@@18 f_45@@33) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@18 f_45@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@18 f_45@@33))
))) (forall ((o2_15@@19 T@Ref) (f_45@@34 T@Field_21974_1789) ) (!  (=> (select (|PolymorphicMapType_38746_42676_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@19 f_45@@34) (= (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@65) o2_15@@19 f_45@@34) (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@19 f_45@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@19 f_45@@34))
))) (forall ((o2_15@@20 T@Ref) (f_45@@35 T@Field_21974_53) ) (!  (=> (select (|PolymorphicMapType_38746_42676_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@20 f_45@@35) (= (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@65) o2_15@@20 f_45@@35) (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@20 f_45@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@20 f_45@@35))
))) (forall ((o2_15@@21 T@Ref) (f_45@@36 T@Field_21974_38271) ) (!  (=> (select (|PolymorphicMapType_38746_42676_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@21 f_45@@36) (= (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@65) o2_15@@21 f_45@@36) (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@21 f_45@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@21 f_45@@36))
))) (forall ((o2_15@@22 T@Ref) (f_45@@37 T@Field_42676_42677) ) (!  (=> (select (|PolymorphicMapType_38746_42676_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@22 f_45@@37) (= (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@65) o2_15@@22 f_45@@37) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@22 f_45@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@22 f_45@@37))
))) (forall ((o2_15@@23 T@Ref) (f_45@@38 T@Field_56026_56031) ) (!  (=> (select (|PolymorphicMapType_38746_42676_126692#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@23 f_45@@38) (= (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) o2_15@@23 f_45@@38) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@23 f_45@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@23 f_45@@38))
))) (forall ((o2_15@@24 T@Ref) (f_45@@39 T@Field_65737_1789) ) (!  (=> (select (|PolymorphicMapType_38746_65737_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@24 f_45@@39) (= (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@65) o2_15@@24 f_45@@39) (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@24 f_45@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@24 f_45@@39))
))) (forall ((o2_15@@25 T@Ref) (f_45@@40 T@Field_65737_53) ) (!  (=> (select (|PolymorphicMapType_38746_65737_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@25 f_45@@40) (= (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@65) o2_15@@25 f_45@@40) (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@25 f_45@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@25 f_45@@40))
))) (forall ((o2_15@@26 T@Ref) (f_45@@41 T@Field_65737_38271) ) (!  (=> (select (|PolymorphicMapType_38746_65737_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@26 f_45@@41) (= (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@65) o2_15@@26 f_45@@41) (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@26 f_45@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@26 f_45@@41))
))) (forall ((o2_15@@27 T@Ref) (f_45@@42 T@Field_65737_65738) ) (!  (=> (select (|PolymorphicMapType_38746_65737_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@27 f_45@@42) (= (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@65) o2_15@@27 f_45@@42) (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@27 f_45@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@27 f_45@@42))
))) (forall ((o2_15@@28 T@Ref) (f_45@@43 T@Field_65751_65756) ) (!  (=> (select (|PolymorphicMapType_38746_65737_127740#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@65) null (PredicateMaskField_21974 pm_f_15@@6))) o2_15@@28 f_45@@43) (= (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@65) o2_15@@28 f_45@@43) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@28 f_45@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@23) o2_15@@28 f_45@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@23 Mask@@59) (IsPredicateField_21974_21975 pm_f_15@@6))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_38197) (ExhaleHeap@@24 T@PolymorphicMapType_38197) (Mask@@60 T@PolymorphicMapType_38218) (pm_f_15@@7 T@Field_21531_21975) ) (!  (=> (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@24 Mask@@60) (=> (and (HasDirectPerm_21531_21975 Mask@@60 null pm_f_15@@7) (IsPredicateField_21531_123847 pm_f_15@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_15@@29 T@Ref) (f_45@@44 T@Field_41684_1789) ) (!  (=> (select (|PolymorphicMapType_38746_21531_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@29 f_45@@44) (= (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@66) o2_15@@29 f_45@@44) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@29 f_45@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@29 f_45@@44))
)) (forall ((o2_15@@30 T@Ref) (f_45@@45 T@Field_38257_53) ) (!  (=> (select (|PolymorphicMapType_38746_21531_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@30 f_45@@45) (= (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@66) o2_15@@30 f_45@@45) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@30 f_45@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@30 f_45@@45))
))) (forall ((o2_15@@31 T@Ref) (f_45@@46 T@Field_38270_38271) ) (!  (=> (select (|PolymorphicMapType_38746_21531_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@31 f_45@@46) (= (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@66) o2_15@@31 f_45@@46) (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@31 f_45@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@31 f_45@@46))
))) (forall ((o2_15@@32 T@Ref) (f_45@@47 T@Field_21531_21975) ) (!  (=> (select (|PolymorphicMapType_38746_21531_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@32 f_45@@47) (= (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@66) o2_15@@32 f_45@@47) (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@32 f_45@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@32 f_45@@47))
))) (forall ((o2_15@@33 T@Ref) (f_45@@48 T@Field_21531_56031) ) (!  (=> (select (|PolymorphicMapType_38746_21531_125644#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@33 f_45@@48) (= (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) o2_15@@33 f_45@@48) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@33 f_45@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@33 f_45@@48))
))) (forall ((o2_15@@34 T@Ref) (f_45@@49 T@Field_21974_1789) ) (!  (=> (select (|PolymorphicMapType_38746_42676_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@34 f_45@@49) (= (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@66) o2_15@@34 f_45@@49) (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@34 f_45@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@34 f_45@@49))
))) (forall ((o2_15@@35 T@Ref) (f_45@@50 T@Field_21974_53) ) (!  (=> (select (|PolymorphicMapType_38746_42676_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@35 f_45@@50) (= (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@66) o2_15@@35 f_45@@50) (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@35 f_45@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@35 f_45@@50))
))) (forall ((o2_15@@36 T@Ref) (f_45@@51 T@Field_21974_38271) ) (!  (=> (select (|PolymorphicMapType_38746_42676_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@36 f_45@@51) (= (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@66) o2_15@@36 f_45@@51) (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@36 f_45@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@36 f_45@@51))
))) (forall ((o2_15@@37 T@Ref) (f_45@@52 T@Field_42676_42677) ) (!  (=> (select (|PolymorphicMapType_38746_42676_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@37 f_45@@52) (= (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@66) o2_15@@37 f_45@@52) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@37 f_45@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@37 f_45@@52))
))) (forall ((o2_15@@38 T@Ref) (f_45@@53 T@Field_56026_56031) ) (!  (=> (select (|PolymorphicMapType_38746_42676_126692#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@38 f_45@@53) (= (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@66) o2_15@@38 f_45@@53) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@38 f_45@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@38 f_45@@53))
))) (forall ((o2_15@@39 T@Ref) (f_45@@54 T@Field_65737_1789) ) (!  (=> (select (|PolymorphicMapType_38746_65737_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@39 f_45@@54) (= (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@66) o2_15@@39 f_45@@54) (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@39 f_45@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@39 f_45@@54))
))) (forall ((o2_15@@40 T@Ref) (f_45@@55 T@Field_65737_53) ) (!  (=> (select (|PolymorphicMapType_38746_65737_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@40 f_45@@55) (= (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@66) o2_15@@40 f_45@@55) (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@40 f_45@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@40 f_45@@55))
))) (forall ((o2_15@@41 T@Ref) (f_45@@56 T@Field_65737_38271) ) (!  (=> (select (|PolymorphicMapType_38746_65737_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@41 f_45@@56) (= (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@66) o2_15@@41 f_45@@56) (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@41 f_45@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@41 f_45@@56))
))) (forall ((o2_15@@42 T@Ref) (f_45@@57 T@Field_65737_65738) ) (!  (=> (select (|PolymorphicMapType_38746_65737_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@42 f_45@@57) (= (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@66) o2_15@@42 f_45@@57) (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@42 f_45@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@42 f_45@@57))
))) (forall ((o2_15@@43 T@Ref) (f_45@@58 T@Field_65751_65756) ) (!  (=> (select (|PolymorphicMapType_38746_65737_127740#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@66) null (PredicateMaskField_21531 pm_f_15@@7))) o2_15@@43 f_45@@58) (= (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@66) o2_15@@43 f_45@@58) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@43 f_45@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@24) o2_15@@43 f_45@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@24 Mask@@60) (IsPredicateField_21531_123847 pm_f_15@@7))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_38197) (ExhaleHeap@@25 T@PolymorphicMapType_38197) (Mask@@61 T@PolymorphicMapType_38218) (pm_f_15@@8 T@Field_65737_65738) ) (!  (=> (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@25 Mask@@61) (=> (and (HasDirectPerm_65737_21975 Mask@@61 null pm_f_15@@8) (IsWandField_65737_129543 pm_f_15@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_15@@44 T@Ref) (f_45@@59 T@Field_41684_1789) ) (!  (=> (select (|PolymorphicMapType_38746_21531_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@44 f_45@@59) (= (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@67) o2_15@@44 f_45@@59) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@44 f_45@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@44 f_45@@59))
)) (forall ((o2_15@@45 T@Ref) (f_45@@60 T@Field_38257_53) ) (!  (=> (select (|PolymorphicMapType_38746_21531_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@45 f_45@@60) (= (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@67) o2_15@@45 f_45@@60) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@45 f_45@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@45 f_45@@60))
))) (forall ((o2_15@@46 T@Ref) (f_45@@61 T@Field_38270_38271) ) (!  (=> (select (|PolymorphicMapType_38746_21531_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@46 f_45@@61) (= (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@67) o2_15@@46 f_45@@61) (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@46 f_45@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@46 f_45@@61))
))) (forall ((o2_15@@47 T@Ref) (f_45@@62 T@Field_21531_21975) ) (!  (=> (select (|PolymorphicMapType_38746_21531_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@47 f_45@@62) (= (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@67) o2_15@@47 f_45@@62) (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@47 f_45@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@47 f_45@@62))
))) (forall ((o2_15@@48 T@Ref) (f_45@@63 T@Field_21531_56031) ) (!  (=> (select (|PolymorphicMapType_38746_21531_125644#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@48 f_45@@63) (= (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@67) o2_15@@48 f_45@@63) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@48 f_45@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@48 f_45@@63))
))) (forall ((o2_15@@49 T@Ref) (f_45@@64 T@Field_21974_1789) ) (!  (=> (select (|PolymorphicMapType_38746_42676_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@49 f_45@@64) (= (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@67) o2_15@@49 f_45@@64) (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@49 f_45@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@49 f_45@@64))
))) (forall ((o2_15@@50 T@Ref) (f_45@@65 T@Field_21974_53) ) (!  (=> (select (|PolymorphicMapType_38746_42676_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@50 f_45@@65) (= (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@67) o2_15@@50 f_45@@65) (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@50 f_45@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@50 f_45@@65))
))) (forall ((o2_15@@51 T@Ref) (f_45@@66 T@Field_21974_38271) ) (!  (=> (select (|PolymorphicMapType_38746_42676_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@51 f_45@@66) (= (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@67) o2_15@@51 f_45@@66) (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@51 f_45@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@51 f_45@@66))
))) (forall ((o2_15@@52 T@Ref) (f_45@@67 T@Field_42676_42677) ) (!  (=> (select (|PolymorphicMapType_38746_42676_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@52 f_45@@67) (= (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@67) o2_15@@52 f_45@@67) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@52 f_45@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@52 f_45@@67))
))) (forall ((o2_15@@53 T@Ref) (f_45@@68 T@Field_56026_56031) ) (!  (=> (select (|PolymorphicMapType_38746_42676_126692#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@53 f_45@@68) (= (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@67) o2_15@@53 f_45@@68) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@53 f_45@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@53 f_45@@68))
))) (forall ((o2_15@@54 T@Ref) (f_45@@69 T@Field_65737_1789) ) (!  (=> (select (|PolymorphicMapType_38746_65737_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@54 f_45@@69) (= (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@67) o2_15@@54 f_45@@69) (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@54 f_45@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@54 f_45@@69))
))) (forall ((o2_15@@55 T@Ref) (f_45@@70 T@Field_65737_53) ) (!  (=> (select (|PolymorphicMapType_38746_65737_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@55 f_45@@70) (= (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@67) o2_15@@55 f_45@@70) (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@55 f_45@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@55 f_45@@70))
))) (forall ((o2_15@@56 T@Ref) (f_45@@71 T@Field_65737_38271) ) (!  (=> (select (|PolymorphicMapType_38746_65737_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@56 f_45@@71) (= (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@67) o2_15@@56 f_45@@71) (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@56 f_45@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@56 f_45@@71))
))) (forall ((o2_15@@57 T@Ref) (f_45@@72 T@Field_65737_65738) ) (!  (=> (select (|PolymorphicMapType_38746_65737_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@57 f_45@@72) (= (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@67) o2_15@@57 f_45@@72) (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@57 f_45@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@57 f_45@@72))
))) (forall ((o2_15@@58 T@Ref) (f_45@@73 T@Field_65751_65756) ) (!  (=> (select (|PolymorphicMapType_38746_65737_127740#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) null (WandMaskField_65737 pm_f_15@@8))) o2_15@@58 f_45@@73) (= (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@67) o2_15@@58 f_45@@73) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@58 f_45@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@25) o2_15@@58 f_45@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@25 Mask@@61) (IsWandField_65737_129543 pm_f_15@@8))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_38197) (ExhaleHeap@@26 T@PolymorphicMapType_38197) (Mask@@62 T@PolymorphicMapType_38218) (pm_f_15@@9 T@Field_42676_42677) ) (!  (=> (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@26 Mask@@62) (=> (and (HasDirectPerm_21974_21975 Mask@@62 null pm_f_15@@9) (IsWandField_21974_129186 pm_f_15@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_15@@59 T@Ref) (f_45@@74 T@Field_41684_1789) ) (!  (=> (select (|PolymorphicMapType_38746_21531_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@59 f_45@@74) (= (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@68) o2_15@@59 f_45@@74) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@59 f_45@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@59 f_45@@74))
)) (forall ((o2_15@@60 T@Ref) (f_45@@75 T@Field_38257_53) ) (!  (=> (select (|PolymorphicMapType_38746_21531_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@60 f_45@@75) (= (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@68) o2_15@@60 f_45@@75) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@60 f_45@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@60 f_45@@75))
))) (forall ((o2_15@@61 T@Ref) (f_45@@76 T@Field_38270_38271) ) (!  (=> (select (|PolymorphicMapType_38746_21531_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@61 f_45@@76) (= (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@68) o2_15@@61 f_45@@76) (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@61 f_45@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@61 f_45@@76))
))) (forall ((o2_15@@62 T@Ref) (f_45@@77 T@Field_21531_21975) ) (!  (=> (select (|PolymorphicMapType_38746_21531_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@62 f_45@@77) (= (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@68) o2_15@@62 f_45@@77) (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@62 f_45@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@62 f_45@@77))
))) (forall ((o2_15@@63 T@Ref) (f_45@@78 T@Field_21531_56031) ) (!  (=> (select (|PolymorphicMapType_38746_21531_125644#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@63 f_45@@78) (= (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@68) o2_15@@63 f_45@@78) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@63 f_45@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@63 f_45@@78))
))) (forall ((o2_15@@64 T@Ref) (f_45@@79 T@Field_21974_1789) ) (!  (=> (select (|PolymorphicMapType_38746_42676_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@64 f_45@@79) (= (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@68) o2_15@@64 f_45@@79) (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@64 f_45@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@64 f_45@@79))
))) (forall ((o2_15@@65 T@Ref) (f_45@@80 T@Field_21974_53) ) (!  (=> (select (|PolymorphicMapType_38746_42676_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@65 f_45@@80) (= (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@68) o2_15@@65 f_45@@80) (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@65 f_45@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@65 f_45@@80))
))) (forall ((o2_15@@66 T@Ref) (f_45@@81 T@Field_21974_38271) ) (!  (=> (select (|PolymorphicMapType_38746_42676_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@66 f_45@@81) (= (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@68) o2_15@@66 f_45@@81) (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@66 f_45@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@66 f_45@@81))
))) (forall ((o2_15@@67 T@Ref) (f_45@@82 T@Field_42676_42677) ) (!  (=> (select (|PolymorphicMapType_38746_42676_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@67 f_45@@82) (= (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@68) o2_15@@67 f_45@@82) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@67 f_45@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@67 f_45@@82))
))) (forall ((o2_15@@68 T@Ref) (f_45@@83 T@Field_56026_56031) ) (!  (=> (select (|PolymorphicMapType_38746_42676_126692#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@68 f_45@@83) (= (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) o2_15@@68 f_45@@83) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@68 f_45@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@68 f_45@@83))
))) (forall ((o2_15@@69 T@Ref) (f_45@@84 T@Field_65737_1789) ) (!  (=> (select (|PolymorphicMapType_38746_65737_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@69 f_45@@84) (= (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@68) o2_15@@69 f_45@@84) (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@69 f_45@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@69 f_45@@84))
))) (forall ((o2_15@@70 T@Ref) (f_45@@85 T@Field_65737_53) ) (!  (=> (select (|PolymorphicMapType_38746_65737_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@70 f_45@@85) (= (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@68) o2_15@@70 f_45@@85) (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@70 f_45@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@70 f_45@@85))
))) (forall ((o2_15@@71 T@Ref) (f_45@@86 T@Field_65737_38271) ) (!  (=> (select (|PolymorphicMapType_38746_65737_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@71 f_45@@86) (= (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@68) o2_15@@71 f_45@@86) (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@71 f_45@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@71 f_45@@86))
))) (forall ((o2_15@@72 T@Ref) (f_45@@87 T@Field_65737_65738) ) (!  (=> (select (|PolymorphicMapType_38746_65737_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@72 f_45@@87) (= (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@68) o2_15@@72 f_45@@87) (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@72 f_45@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@72 f_45@@87))
))) (forall ((o2_15@@73 T@Ref) (f_45@@88 T@Field_65751_65756) ) (!  (=> (select (|PolymorphicMapType_38746_65737_127740#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@68) null (WandMaskField_21974 pm_f_15@@9))) o2_15@@73 f_45@@88) (= (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@68) o2_15@@73 f_45@@88) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@73 f_45@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@26) o2_15@@73 f_45@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@26 Mask@@62) (IsWandField_21974_129186 pm_f_15@@9))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_38197) (ExhaleHeap@@27 T@PolymorphicMapType_38197) (Mask@@63 T@PolymorphicMapType_38218) (pm_f_15@@10 T@Field_21531_21975) ) (!  (=> (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@27 Mask@@63) (=> (and (HasDirectPerm_21531_21975 Mask@@63 null pm_f_15@@10) (IsWandField_21531_128829 pm_f_15@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_15@@74 T@Ref) (f_45@@89 T@Field_41684_1789) ) (!  (=> (select (|PolymorphicMapType_38746_21531_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@74 f_45@@89) (= (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@69) o2_15@@74 f_45@@89) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@74 f_45@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@74 f_45@@89))
)) (forall ((o2_15@@75 T@Ref) (f_45@@90 T@Field_38257_53) ) (!  (=> (select (|PolymorphicMapType_38746_21531_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@75 f_45@@90) (= (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@69) o2_15@@75 f_45@@90) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@75 f_45@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@75 f_45@@90))
))) (forall ((o2_15@@76 T@Ref) (f_45@@91 T@Field_38270_38271) ) (!  (=> (select (|PolymorphicMapType_38746_21531_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@76 f_45@@91) (= (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@69) o2_15@@76 f_45@@91) (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@76 f_45@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@76 f_45@@91))
))) (forall ((o2_15@@77 T@Ref) (f_45@@92 T@Field_21531_21975) ) (!  (=> (select (|PolymorphicMapType_38746_21531_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@77 f_45@@92) (= (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@69) o2_15@@77 f_45@@92) (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@77 f_45@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@77 f_45@@92))
))) (forall ((o2_15@@78 T@Ref) (f_45@@93 T@Field_21531_56031) ) (!  (=> (select (|PolymorphicMapType_38746_21531_125644#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@78 f_45@@93) (= (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) o2_15@@78 f_45@@93) (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@78 f_45@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@78 f_45@@93))
))) (forall ((o2_15@@79 T@Ref) (f_45@@94 T@Field_21974_1789) ) (!  (=> (select (|PolymorphicMapType_38746_42676_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@79 f_45@@94) (= (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@69) o2_15@@79 f_45@@94) (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@79 f_45@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@79 f_45@@94))
))) (forall ((o2_15@@80 T@Ref) (f_45@@95 T@Field_21974_53) ) (!  (=> (select (|PolymorphicMapType_38746_42676_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@80 f_45@@95) (= (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@69) o2_15@@80 f_45@@95) (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@80 f_45@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@80 f_45@@95))
))) (forall ((o2_15@@81 T@Ref) (f_45@@96 T@Field_21974_38271) ) (!  (=> (select (|PolymorphicMapType_38746_42676_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@81 f_45@@96) (= (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@69) o2_15@@81 f_45@@96) (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@81 f_45@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@81 f_45@@96))
))) (forall ((o2_15@@82 T@Ref) (f_45@@97 T@Field_42676_42677) ) (!  (=> (select (|PolymorphicMapType_38746_42676_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@82 f_45@@97) (= (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@69) o2_15@@82 f_45@@97) (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@82 f_45@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@82 f_45@@97))
))) (forall ((o2_15@@83 T@Ref) (f_45@@98 T@Field_56026_56031) ) (!  (=> (select (|PolymorphicMapType_38746_42676_126692#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@83 f_45@@98) (= (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@69) o2_15@@83 f_45@@98) (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@83 f_45@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@83 f_45@@98))
))) (forall ((o2_15@@84 T@Ref) (f_45@@99 T@Field_65737_1789) ) (!  (=> (select (|PolymorphicMapType_38746_65737_1789#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@84 f_45@@99) (= (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@69) o2_15@@84 f_45@@99) (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@84 f_45@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@84 f_45@@99))
))) (forall ((o2_15@@85 T@Ref) (f_45@@100 T@Field_65737_53) ) (!  (=> (select (|PolymorphicMapType_38746_65737_53#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@85 f_45@@100) (= (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@69) o2_15@@85 f_45@@100) (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@85 f_45@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@85 f_45@@100))
))) (forall ((o2_15@@86 T@Ref) (f_45@@101 T@Field_65737_38271) ) (!  (=> (select (|PolymorphicMapType_38746_65737_38271#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@86 f_45@@101) (= (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@69) o2_15@@86 f_45@@101) (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@86 f_45@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@86 f_45@@101))
))) (forall ((o2_15@@87 T@Ref) (f_45@@102 T@Field_65737_65738) ) (!  (=> (select (|PolymorphicMapType_38746_65737_42677#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@87 f_45@@102) (= (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@69) o2_15@@87 f_45@@102) (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@87 f_45@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@87 f_45@@102))
))) (forall ((o2_15@@88 T@Ref) (f_45@@103 T@Field_65751_65756) ) (!  (=> (select (|PolymorphicMapType_38746_65737_127740#PolymorphicMapType_38746| (select (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@69) null (WandMaskField_21531 pm_f_15@@10))) o2_15@@88 f_45@@103) (= (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@69) o2_15@@88 f_45@@103) (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@88 f_45@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| ExhaleHeap@@27) o2_15@@88 f_45@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@27 Mask@@63) (IsWandField_21531_128829 pm_f_15@@10))
)))
(assert (forall ((x@@48 T@Ref) (y@@7 T@Ref) ) (! (= (getPredWandId_22000_22001 (nonAliasPred x@@48 y@@7)) 1)
 :qid |stdinbpl.1705:15|
 :skolemid |116|
 :pattern ( (nonAliasPred x@@48 y@@7))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_38197) (Mask@@64 T@PolymorphicMapType_38218) (x@@49 T@Ref) ) (!  (=> (state Heap@@70 Mask@@64) (= (|foo'| Heap@@70 x@@49) (|foo#frame| (FrameFragment_1789 (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@70) x@@49 f_7)) x@@49)))
 :qid |stdinbpl.311:15|
 :skolemid |24|
 :pattern ( (state Heap@@70 Mask@@64) (|foo'| Heap@@70 x@@49))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_38197) (Mask@@65 T@PolymorphicMapType_38218) (x@@50 T@Ref) ) (!  (=> (state Heap@@71 Mask@@65) (= (|foop'| Heap@@71 x@@50) (|foop#frame| (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@71) null (P x@@50)) x@@50)))
 :qid |stdinbpl.361:15|
 :skolemid |27|
 :pattern ( (state Heap@@71 Mask@@65) (|foop'| Heap@@71 x@@50))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_38197) (Mask@@66 T@PolymorphicMapType_38218) (x@@51 T@Ref) ) (!  (=> (state Heap@@72 Mask@@66) (= (|foo3'| Heap@@72 x@@51) (|foo3#frame| (FrameFragment_1789 (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@72) x@@51 f_7)) x@@51)))
 :qid |stdinbpl.514:15|
 :skolemid |36|
 :pattern ( (state Heap@@72 Mask@@66) (|foo3'| Heap@@72 x@@51))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_38197) (Mask@@67 T@PolymorphicMapType_38218) (x@@52 T@Ref) ) (!  (=> (state Heap@@73 Mask@@67) (= (|bar'| Heap@@73 x@@52) (|bar#frame| (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@73) null (P x@@52)) x@@52)))
 :qid |stdinbpl.1096:15|
 :skolemid |87|
 :pattern ( (state Heap@@73 Mask@@67) (|bar'| Heap@@73 x@@52))
 :pattern ( (state Heap@@73 Mask@@67) (|bar#triggerStateless| x@@52) (|P#trigger_21974| Heap@@73 (P x@@52)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_38197) (Mask@@68 T@PolymorphicMapType_38218) (x@@53 T@Ref) ) (!  (=> (state Heap@@74 Mask@@68) (= (|bar3'| Heap@@74 x@@53) (|bar3#frame| (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@74) null (P x@@53)) x@@53)))
 :qid |stdinbpl.1304:15|
 :skolemid |95|
 :pattern ( (state Heap@@74 Mask@@68) (|bar3'| Heap@@74 x@@53))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_38197) (Mask@@69 T@PolymorphicMapType_38218) (x@@54 T@Ref) ) (!  (=> (state Heap@@75 Mask@@69) (= (|bar4'| Heap@@75 x@@54) (|bar4#frame| (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@75) null (P x@@54)) x@@54)))
 :qid |stdinbpl.1388:15|
 :skolemid |98|
 :pattern ( (state Heap@@75 Mask@@69) (|bar4'| Heap@@75 x@@54))
)))
(assert (forall ((x@@55 T@Ref) ) (! (= (getPredWandId_21974_21975 (P x@@55)) 0)
 :qid |stdinbpl.1650:15|
 :skolemid |110|
 :pattern ( (P x@@55))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_38197) (Mask@@70 T@PolymorphicMapType_38218) (x@@56 T@Ref) ) (!  (=> (state Heap@@76 Mask@@70) (= (|bar5'| Heap@@76 x@@56) (|bar5#frame| EmptyFrame x@@56)))
 :qid |stdinbpl.1480:15|
 :skolemid |101|
 :pattern ( (state Heap@@76 Mask@@70) (|bar5'| Heap@@76 x@@56))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_38197) (Heap1Heap@@1 T@PolymorphicMapType_38197) (x@@57 T@Ref) ) (!  (=> (= false false) (= (|foo6#condqp5| Heap2Heap@@1 x@@57) (|foo6#condqp5| Heap1Heap@@1 x@@57)))
 :qid |stdinbpl.1577:15|
 :skolemid |105|
 :pattern ( (|foo6#condqp5| Heap2Heap@@1 x@@57) (|foo6#condqp5| Heap1Heap@@1 x@@57) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_38197) (Mask@@71 T@PolymorphicMapType_38218) (x@@58 T@Ref) ) (!  (=> (state Heap@@77 Mask@@71) (= (|bar2'| Heap@@77 x@@58) (|bar2#frame| (ConditionalFrame NoPerm (select (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@77) null (P x@@58))) x@@58)))
 :qid |stdinbpl.1201:15|
 :skolemid |91|
 :pattern ( (state Heap@@77 Mask@@71) (|bar2'| Heap@@77 x@@58))
 :pattern ( (state Heap@@77 Mask@@71) (|bar2#triggerStateless| x@@58) (|P#trigger_21974| Heap@@77 (P x@@58)))
)))
(assert (forall ((x@@59 T@Ref) (y@@8 T@Ref) ) (! (= (PredicateMaskField_22000 (nonAliasPred x@@59 y@@8)) (|nonAliasPred#sm| x@@59 y@@8))
 :qid |stdinbpl.1697:15|
 :skolemid |114|
 :pattern ( (PredicateMaskField_22000 (nonAliasPred x@@59 y@@8)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_38197) (o_38 T@Ref) (f_40 T@Field_65751_65756) (v T@PolymorphicMapType_38746) ) (! (succHeap Heap@@78 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@78) (store (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@78) o_38 f_40 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@78) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@78) (store (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@78) o_38 f_40 v)))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_38197) (o_38@@0 T@Ref) (f_40@@0 T@Field_65737_65738) (v@@0 T@FrameType) ) (! (succHeap Heap@@79 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@79) (store (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@79) o_38@@0 f_40@@0 v@@0) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@79)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@79) (store (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@79) o_38@@0 f_40@@0 v@@0) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@79) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@79)))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_38197) (o_38@@1 T@Ref) (f_40@@1 T@Field_65737_1789) (v@@1 Int) ) (! (succHeap Heap@@80 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@80) (store (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@80) o_38@@1 f_40@@1 v@@1) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@80)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@80) (store (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@80) o_38@@1 f_40@@1 v@@1) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@80) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@80)))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_38197) (o_38@@2 T@Ref) (f_40@@2 T@Field_65737_38271) (v@@2 T@Ref) ) (! (succHeap Heap@@81 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@81) (store (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@81) o_38@@2 f_40@@2 v@@2) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@81)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@81) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@81) (store (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@81) o_38@@2 f_40@@2 v@@2) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@81)))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_38197) (o_38@@3 T@Ref) (f_40@@3 T@Field_65737_53) (v@@3 Bool) ) (! (succHeap Heap@@82 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@82) (store (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@82) o_38@@3 f_40@@3 v@@3) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@82)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@82) (store (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@82) o_38@@3 f_40@@3 v@@3) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@82) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@82)))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_38197) (o_38@@4 T@Ref) (f_40@@4 T@Field_56026_56031) (v@@4 T@PolymorphicMapType_38746) ) (! (succHeap Heap@@83 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@83) (store (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@83) o_38@@4 f_40@@4 v@@4) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@83)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@83) (store (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@83) o_38@@4 f_40@@4 v@@4) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@83) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@83)))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_38197) (o_38@@5 T@Ref) (f_40@@5 T@Field_42676_42677) (v@@5 T@FrameType) ) (! (succHeap Heap@@84 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@84) (store (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@84) o_38@@5 f_40@@5 v@@5) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@84)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@84) (store (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@84) o_38@@5 f_40@@5 v@@5) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@84) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@84)))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_38197) (o_38@@6 T@Ref) (f_40@@6 T@Field_21974_1789) (v@@6 Int) ) (! (succHeap Heap@@85 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@85) (store (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@85) o_38@@6 f_40@@6 v@@6) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@85)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@85) (store (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@85) o_38@@6 f_40@@6 v@@6) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@85) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@85)))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_38197) (o_38@@7 T@Ref) (f_40@@7 T@Field_21974_38271) (v@@7 T@Ref) ) (! (succHeap Heap@@86 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@86) (store (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@86) o_38@@7 f_40@@7 v@@7) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@86)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@86) (store (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@86) o_38@@7 f_40@@7 v@@7) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@86) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@86)))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_38197) (o_38@@8 T@Ref) (f_40@@8 T@Field_21974_53) (v@@8 Bool) ) (! (succHeap Heap@@87 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@87) (store (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@87) o_38@@8 f_40@@8 v@@8) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@87)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@87) (store (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@87) o_38@@8 f_40@@8 v@@8) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@87) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@87)))
)))
(assert (forall ((Heap@@88 T@PolymorphicMapType_38197) (o_38@@9 T@Ref) (f_40@@9 T@Field_21531_56031) (v@@9 T@PolymorphicMapType_38746) ) (! (succHeap Heap@@88 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@88) (store (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@88) o_38@@9 f_40@@9 v@@9) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@88)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@88) (store (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@88) o_38@@9 f_40@@9 v@@9) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@88) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@88)))
)))
(assert (forall ((Heap@@89 T@PolymorphicMapType_38197) (o_38@@10 T@Ref) (f_40@@10 T@Field_21531_21975) (v@@10 T@FrameType) ) (! (succHeap Heap@@89 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@89) (store (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@89) o_38@@10 f_40@@10 v@@10) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@89)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@89) (store (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@89) o_38@@10 f_40@@10 v@@10) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@89) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@89)))
)))
(assert (forall ((Heap@@90 T@PolymorphicMapType_38197) (o_38@@11 T@Ref) (f_40@@11 T@Field_41684_1789) (v@@11 Int) ) (! (succHeap Heap@@90 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@90) (store (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@90) o_38@@11 f_40@@11 v@@11) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@90)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@90) (store (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@90) o_38@@11 f_40@@11 v@@11) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@90) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@90)))
)))
(assert (forall ((Heap@@91 T@PolymorphicMapType_38197) (o_38@@12 T@Ref) (f_40@@12 T@Field_38270_38271) (v@@12 T@Ref) ) (! (succHeap Heap@@91 (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@91) (store (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@91) o_38@@12 f_40@@12 v@@12) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@91)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@91) (store (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@91) o_38@@12 f_40@@12 v@@12) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@91) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@91)))
)))
(assert (forall ((Heap@@92 T@PolymorphicMapType_38197) (o_38@@13 T@Ref) (f_40@@13 T@Field_38257_53) (v@@13 Bool) ) (! (succHeap Heap@@92 (PolymorphicMapType_38197 (store (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@92) o_38@@13 f_40@@13 v@@13) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@92)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38197 (store (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@92) o_38@@13 f_40@@13 v@@13) (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21974_21975#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21978_56118#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21531_21975#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21531_121325#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21974_1789#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21974_53#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_21974_38271#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_1789#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_21975#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_53#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_38271#PolymorphicMapType_38197| Heap@@92) (|PolymorphicMapType_38197_65737_123601#PolymorphicMapType_38197| Heap@@92)))
)))
(assert (forall ((x@@60 T@Ref) ) (! (= (PredicateMaskField_21974 (P x@@60)) (|P#sm| x@@60))
 :qid |stdinbpl.1642:15|
 :skolemid |108|
 :pattern ( (PredicateMaskField_21974 (P x@@60)))
)))
(assert (forall ((Heap@@93 T@PolymorphicMapType_38197) (Mask@@72 T@PolymorphicMapType_38218) (x@@61 T@Ref) ) (!  (=> (state Heap@@93 Mask@@72) (= (|foo5'| Heap@@93 x@@61) (|foo5#frame| (FrameFragment_1789 (|foo5#condqp1| Heap@@93 x@@61)) x@@61)))
 :qid |stdinbpl.620:15|
 :skolemid |42|
 :pattern ( (state Heap@@93 Mask@@72) (|foo5'| Heap@@93 x@@61))
)))
(assert (forall ((Heap@@94 T@PolymorphicMapType_38197) (Mask@@73 T@PolymorphicMapType_38218) (x@@62 T@Ref) ) (!  (=> (state Heap@@94 Mask@@73) (= (|foo5w'| Heap@@94 x@@62) (|foo5w#frame| (FrameFragment_1789 (|foo5w#condqp2| Heap@@94 x@@62)) x@@62)))
 :qid |stdinbpl.715:15|
 :skolemid |52|
 :pattern ( (state Heap@@94 Mask@@73) (|foo5w'| Heap@@94 x@@62))
)))
(assert (forall ((Heap@@95 T@PolymorphicMapType_38197) (Mask@@74 T@PolymorphicMapType_38218) (x@@63 T@Ref) ) (!  (=> (state Heap@@95 Mask@@74) (= (|foo5p'| Heap@@95 x@@63) (|foo5p#frame| (FrameFragment_1789 (|foo5p#condqp3| Heap@@95 x@@63)) x@@63)))
 :qid |stdinbpl.811:15|
 :skolemid |62|
 :pattern ( (state Heap@@95 Mask@@74) (|foo5p'| Heap@@95 x@@63))
)))
(assert (forall ((Heap@@96 T@PolymorphicMapType_38197) (Mask@@75 T@PolymorphicMapType_38218) (x@@64 T@Ref) ) (!  (=> (state Heap@@96 Mask@@75) (= (|foo5pw'| Heap@@96 x@@64) (|foo5pw#frame| (FrameFragment_1789 (|foo5pw#condqp4| Heap@@96 x@@64)) x@@64)))
 :qid |stdinbpl.908:15|
 :skolemid |72|
 :pattern ( (state Heap@@96 Mask@@75) (|foo5pw'| Heap@@96 x@@64))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_38197) (Heap1Heap@@2 T@PolymorphicMapType_38197) (x@@65 T@Ref) ) (!  (=> (and (= (= (|sk_foo5w#condqp2| (|foo5w#condqp2| Heap2Heap@@2 x@@65) (|foo5w#condqp2| Heap1Heap@@2 x@@65)) x@@65) (= (|sk_foo5w#condqp2| (|foo5w#condqp2| Heap2Heap@@2 x@@65) (|foo5w#condqp2| Heap1Heap@@2 x@@65)) x@@65)) (=> (= (|sk_foo5w#condqp2| (|foo5w#condqp2| Heap2Heap@@2 x@@65) (|foo5w#condqp2| Heap1Heap@@2 x@@65)) x@@65) (= (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap2Heap@@2) (|sk_foo5w#condqp2| (|foo5w#condqp2| Heap2Heap@@2 x@@65) (|foo5w#condqp2| Heap1Heap@@2 x@@65)) f_7) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap1Heap@@2) (|sk_foo5w#condqp2| (|foo5w#condqp2| Heap2Heap@@2 x@@65) (|foo5w#condqp2| Heap1Heap@@2 x@@65)) f_7)))) (= (|foo5w#condqp2| Heap2Heap@@2 x@@65) (|foo5w#condqp2| Heap1Heap@@2 x@@65)))
 :qid |stdinbpl.725:15|
 :skolemid |53|
 :pattern ( (|foo5w#condqp2| Heap2Heap@@2 x@@65) (|foo5w#condqp2| Heap1Heap@@2 x@@65) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((o_38@@14 T@Ref) (f_44 T@Field_38270_38271) (Heap@@97 T@PolymorphicMapType_38197) ) (!  (=> (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@97) o_38@@14 $allocated) (select (|PolymorphicMapType_38197_21303_53#PolymorphicMapType_38197| Heap@@97) (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@97) o_38@@14 f_44) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_38197_21306_21307#PolymorphicMapType_38197| Heap@@97) o_38@@14 f_44))
)))
(assert (forall ((p@@3 T@Field_65737_65738) (v_1@@2 T@FrameType) (q T@Field_65737_65738) (w@@2 T@FrameType) (r T@Field_65737_65738) (u T@FrameType) ) (!  (=> (and (InsidePredicate_65737_65737 p@@3 v_1@@2 q w@@2) (InsidePredicate_65737_65737 q w@@2 r u)) (InsidePredicate_65737_65737 p@@3 v_1@@2 r u))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_65737_65737 p@@3 v_1@@2 q w@@2) (InsidePredicate_65737_65737 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_65737_65738) (v_1@@3 T@FrameType) (q@@0 T@Field_65737_65738) (w@@3 T@FrameType) (r@@0 T@Field_42676_42677) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_65737_65737 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_65737_42676 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_65737_42676 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_65737_65737 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_65737_42676 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_65737_65738) (v_1@@4 T@FrameType) (q@@1 T@Field_65737_65738) (w@@4 T@FrameType) (r@@1 T@Field_21531_21975) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_65737_65737 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_65737_38257 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_65737_38257 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_65737_65737 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_65737_38257 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_65737_65738) (v_1@@5 T@FrameType) (q@@2 T@Field_42676_42677) (w@@5 T@FrameType) (r@@2 T@Field_65737_65738) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_65737_42676 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_42676_65737 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_65737_65737 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_65737_42676 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_42676_65737 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_65737_65738) (v_1@@6 T@FrameType) (q@@3 T@Field_42676_42677) (w@@6 T@FrameType) (r@@3 T@Field_42676_42677) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_65737_42676 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_42676_42676 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_65737_42676 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_65737_42676 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_42676_42676 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_65737_65738) (v_1@@7 T@FrameType) (q@@4 T@Field_42676_42677) (w@@7 T@FrameType) (r@@4 T@Field_21531_21975) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_65737_42676 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_42676_38257 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_65737_38257 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_65737_42676 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_42676_38257 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_65737_65738) (v_1@@8 T@FrameType) (q@@5 T@Field_21531_21975) (w@@8 T@FrameType) (r@@5 T@Field_65737_65738) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_65737_38257 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_38257_65737 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_65737_65737 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_65737_38257 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_38257_65737 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_65737_65738) (v_1@@9 T@FrameType) (q@@6 T@Field_21531_21975) (w@@9 T@FrameType) (r@@6 T@Field_42676_42677) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_65737_38257 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_38257_42676 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_65737_42676 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_65737_38257 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_38257_42676 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_65737_65738) (v_1@@10 T@FrameType) (q@@7 T@Field_21531_21975) (w@@10 T@FrameType) (r@@7 T@Field_21531_21975) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_65737_38257 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_38257_38257 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_65737_38257 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_65737_38257 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_38257_38257 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_42676_42677) (v_1@@11 T@FrameType) (q@@8 T@Field_65737_65738) (w@@11 T@FrameType) (r@@8 T@Field_65737_65738) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_42676_65737 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_65737_65737 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_42676_65737 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42676_65737 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_65737_65737 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_42676_42677) (v_1@@12 T@FrameType) (q@@9 T@Field_65737_65738) (w@@12 T@FrameType) (r@@9 T@Field_42676_42677) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_42676_65737 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_65737_42676 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_42676_42676 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42676_65737 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_65737_42676 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_42676_42677) (v_1@@13 T@FrameType) (q@@10 T@Field_65737_65738) (w@@13 T@FrameType) (r@@10 T@Field_21531_21975) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_42676_65737 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_65737_38257 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_42676_38257 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42676_65737 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_65737_38257 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_42676_42677) (v_1@@14 T@FrameType) (q@@11 T@Field_42676_42677) (w@@14 T@FrameType) (r@@11 T@Field_65737_65738) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_42676_42676 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_42676_65737 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_42676_65737 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42676_42676 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_42676_65737 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_42676_42677) (v_1@@15 T@FrameType) (q@@12 T@Field_42676_42677) (w@@15 T@FrameType) (r@@12 T@Field_42676_42677) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_42676_42676 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_42676_42676 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_42676_42676 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42676_42676 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_42676_42676 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_42676_42677) (v_1@@16 T@FrameType) (q@@13 T@Field_42676_42677) (w@@16 T@FrameType) (r@@13 T@Field_21531_21975) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_42676_42676 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_42676_38257 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_42676_38257 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42676_42676 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_42676_38257 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_42676_42677) (v_1@@17 T@FrameType) (q@@14 T@Field_21531_21975) (w@@17 T@FrameType) (r@@14 T@Field_65737_65738) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_42676_38257 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_38257_65737 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_42676_65737 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42676_38257 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_38257_65737 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_42676_42677) (v_1@@18 T@FrameType) (q@@15 T@Field_21531_21975) (w@@18 T@FrameType) (r@@15 T@Field_42676_42677) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_42676_38257 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_38257_42676 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_42676_42676 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42676_38257 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_38257_42676 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_42676_42677) (v_1@@19 T@FrameType) (q@@16 T@Field_21531_21975) (w@@19 T@FrameType) (r@@16 T@Field_21531_21975) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_42676_38257 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_38257_38257 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_42676_38257 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42676_38257 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_38257_38257 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_21531_21975) (v_1@@20 T@FrameType) (q@@17 T@Field_65737_65738) (w@@20 T@FrameType) (r@@17 T@Field_65737_65738) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_38257_65737 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_65737_65737 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_38257_65737 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38257_65737 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_65737_65737 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_21531_21975) (v_1@@21 T@FrameType) (q@@18 T@Field_65737_65738) (w@@21 T@FrameType) (r@@18 T@Field_42676_42677) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_38257_65737 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_65737_42676 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_38257_42676 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38257_65737 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_65737_42676 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_21531_21975) (v_1@@22 T@FrameType) (q@@19 T@Field_65737_65738) (w@@22 T@FrameType) (r@@19 T@Field_21531_21975) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_38257_65737 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_65737_38257 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_38257_38257 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38257_65737 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_65737_38257 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_21531_21975) (v_1@@23 T@FrameType) (q@@20 T@Field_42676_42677) (w@@23 T@FrameType) (r@@20 T@Field_65737_65738) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_38257_42676 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_42676_65737 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_38257_65737 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38257_42676 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_42676_65737 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_21531_21975) (v_1@@24 T@FrameType) (q@@21 T@Field_42676_42677) (w@@24 T@FrameType) (r@@21 T@Field_42676_42677) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_38257_42676 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_42676_42676 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_38257_42676 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38257_42676 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_42676_42676 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_21531_21975) (v_1@@25 T@FrameType) (q@@22 T@Field_42676_42677) (w@@25 T@FrameType) (r@@22 T@Field_21531_21975) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_38257_42676 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_42676_38257 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_38257_38257 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38257_42676 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_42676_38257 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_21531_21975) (v_1@@26 T@FrameType) (q@@23 T@Field_21531_21975) (w@@26 T@FrameType) (r@@23 T@Field_65737_65738) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_38257_38257 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_38257_65737 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_38257_65737 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38257_38257 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_38257_65737 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_21531_21975) (v_1@@27 T@FrameType) (q@@24 T@Field_21531_21975) (w@@27 T@FrameType) (r@@24 T@Field_42676_42677) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_38257_38257 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_38257_42676 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_38257_42676 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38257_38257 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_38257_42676 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_21531_21975) (v_1@@28 T@FrameType) (q@@25 T@Field_21531_21975) (w@@28 T@FrameType) (r@@25 T@Field_21531_21975) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_38257_38257 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_38257_38257 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_38257_38257 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.272:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38257_38257 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_38257_38257 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap2Heap@@3 T@PolymorphicMapType_38197) (Heap1Heap@@3 T@PolymorphicMapType_38197) (x@@66 T@Ref) ) (!  (=> (and (=  (and (= (|sk_foo5#condqp1| (|foo5#condqp1| Heap2Heap@@3 x@@66) (|foo5#condqp1| Heap1Heap@@3 x@@66)) x@@66) (< NoPerm FullPerm))  (and (= (|sk_foo5#condqp1| (|foo5#condqp1| Heap2Heap@@3 x@@66) (|foo5#condqp1| Heap1Heap@@3 x@@66)) x@@66) (< NoPerm FullPerm))) (=> (and (= (|sk_foo5#condqp1| (|foo5#condqp1| Heap2Heap@@3 x@@66) (|foo5#condqp1| Heap1Heap@@3 x@@66)) x@@66) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap2Heap@@3) (|sk_foo5#condqp1| (|foo5#condqp1| Heap2Heap@@3 x@@66) (|foo5#condqp1| Heap1Heap@@3 x@@66)) f_7) (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap1Heap@@3) (|sk_foo5#condqp1| (|foo5#condqp1| Heap2Heap@@3 x@@66) (|foo5#condqp1| Heap1Heap@@3 x@@66)) f_7)))) (= (|foo5#condqp1| Heap2Heap@@3 x@@66) (|foo5#condqp1| Heap1Heap@@3 x@@66)))
 :qid |stdinbpl.630:15|
 :skolemid |43|
 :pattern ( (|foo5#condqp1| Heap2Heap@@3 x@@66) (|foo5#condqp1| Heap1Heap@@3 x@@66) (succHeapTrans Heap2Heap@@3 Heap1Heap@@3))
)))
(assert (forall ((Heap@@98 T@PolymorphicMapType_38197) (Mask@@76 T@PolymorphicMapType_38218) (x@@67 T@Ref) (b_24@@3 Bool) ) (!  (=> (state Heap@@98 Mask@@76) (= (|foo2'| Heap@@98 x@@67 b_24@@3) (|foo2#frame| (ConditionalFrame (ite b_24@@3 FullPerm NoPerm) (FrameFragment_1789 (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@98) x@@67 f_7))) x@@67 b_24@@3)))
 :qid |stdinbpl.410:15|
 :skolemid |30|
 :pattern ( (state Heap@@98 Mask@@76) (|foo2'| Heap@@98 x@@67 b_24@@3))
)))
(assert (forall ((Heap@@99 T@PolymorphicMapType_38197) (Mask@@77 T@PolymorphicMapType_38218) (x@@68 T@Ref) (b_24@@4 Bool) ) (!  (=> (state Heap@@99 Mask@@77) (= (|foo2w'| Heap@@99 x@@68 b_24@@4) (|foo2w#frame| (ConditionalFrame (ite b_24@@4 FullPerm NoPerm) (FrameFragment_1789 (select (|PolymorphicMapType_38197_21531_1789#PolymorphicMapType_38197| Heap@@99) x@@68 f_7))) x@@68 b_24@@4)))
 :qid |stdinbpl.462:15|
 :skolemid |33|
 :pattern ( (state Heap@@99 Mask@@77) (|foo2w'| Heap@@99 x@@68 b_24@@4))
)))
(assert (forall ((Heap@@100 T@PolymorphicMapType_38197) (Mask@@78 T@PolymorphicMapType_38218) (x@@69 T@Ref) ) (!  (=> (and (state Heap@@100 Mask@@78) (< AssumeFunctionsAbove 1)) (= (bar Heap@@100 x@@69) (foo_2 Heap@@100 x@@69)))
 :qid |stdinbpl.1089:15|
 :skolemid |86|
 :pattern ( (state Heap@@100 Mask@@78) (bar Heap@@100 x@@69))
 :pattern ( (state Heap@@100 Mask@@78) (|bar#triggerStateless| x@@69) (|P#trigger_21974| Heap@@100 (P x@@69)))
)))
(assert (forall ((Heap@@101 T@PolymorphicMapType_38197) (Mask@@79 T@PolymorphicMapType_38218) (x@@70 T@Ref) ) (!  (=> (and (state Heap@@101 Mask@@79) (< AssumeFunctionsAbove 5)) (= (bar2 Heap@@101 x@@70) (foo_2 Heap@@101 x@@70)))
 :qid |stdinbpl.1194:15|
 :skolemid |90|
 :pattern ( (state Heap@@101 Mask@@79) (bar2 Heap@@101 x@@70))
 :pattern ( (state Heap@@101 Mask@@79) (|bar2#triggerStateless| x@@70) (|P#trigger_21974| Heap@@101 (P x@@70)))
)))
; Invalid

