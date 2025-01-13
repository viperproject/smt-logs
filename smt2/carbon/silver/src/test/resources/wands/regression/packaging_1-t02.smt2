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
(declare-sort T@Field_13574_53 0)
(declare-sort T@Field_13587_13588 0)
(declare-sort T@Field_21288_3574 0)
(declare-sort T@Field_16915_16920 0)
(declare-sort T@Field_17559_17564 0)
(declare-sort T@Field_19669_19674 0)
(declare-sort T@Field_18819_18824 0)
(declare-sort T@Field_8623_16920 0)
(declare-sort T@Field_8623_16932 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_16902_1203 0)
(declare-sort T@Field_16902_53 0)
(declare-sort T@Field_16902_13588 0)
(declare-sort T@Field_16931_16932 0)
(declare-sort T@Field_17546_1529 0)
(declare-sort T@Field_17546_53 0)
(declare-sort T@Field_17546_13588 0)
(declare-sort T@Field_17575_17576 0)
(declare-sort T@Field_18247_1900 0)
(declare-sort T@Field_18247_53 0)
(declare-sort T@Field_18247_13588 0)
(declare-sort T@Field_18259_18264 0)
(declare-sort T@Field_18274_18275 0)
(declare-sort T@Field_18805_2181 0)
(declare-sort T@Field_18805_53 0)
(declare-sort T@Field_18805_13588 0)
(declare-sort T@Field_18836_18837 0)
(declare-sort T@Field_19654_2678 0)
(declare-sort T@Field_19654_53 0)
(declare-sort T@Field_19654_13588 0)
(declare-sort T@Field_19687_19688 0)
(declare-sort T@Field_20588_3216 0)
(declare-sort T@Field_20588_53 0)
(declare-sort T@Field_20588_13588 0)
(declare-sort T@Field_20601_20606 0)
(declare-sort T@Field_20617_20618 0)
(declare-datatypes ((T@PolymorphicMapType_13535 0)) (((PolymorphicMapType_13535 (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| (Array T@Ref T@Field_21288_3574 Real)) (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| (Array T@Ref T@Field_16902_1203 Real)) (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| (Array T@Ref T@Field_18247_1900 Real)) (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| (Array T@Ref T@Field_17546_1529 Real)) (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| (Array T@Ref T@Field_19654_2678 Real)) (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| (Array T@Ref T@Field_20588_3216 Real)) (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| (Array T@Ref T@Field_18805_2181 Real)) (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| (Array T@Ref T@Field_13574_53 Real)) (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| (Array T@Ref T@Field_13587_13588 Real)) (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| (Array T@Ref T@Field_8623_16920 Real)) (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| (Array T@Ref T@Field_8623_16932 Real)) (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| (Array T@Ref T@Field_16902_53 Real)) (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| (Array T@Ref T@Field_16902_13588 Real)) (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| (Array T@Ref T@Field_16915_16920 Real)) (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| (Array T@Ref T@Field_16931_16932 Real)) (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| (Array T@Ref T@Field_18247_53 Real)) (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| (Array T@Ref T@Field_18247_13588 Real)) (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| (Array T@Ref T@Field_18259_18264 Real)) (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| (Array T@Ref T@Field_18274_18275 Real)) (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| (Array T@Ref T@Field_17546_53 Real)) (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| (Array T@Ref T@Field_17546_13588 Real)) (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| (Array T@Ref T@Field_17559_17564 Real)) (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| (Array T@Ref T@Field_17575_17576 Real)) (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| (Array T@Ref T@Field_19654_53 Real)) (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| (Array T@Ref T@Field_19654_13588 Real)) (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| (Array T@Ref T@Field_19669_19674 Real)) (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| (Array T@Ref T@Field_19687_19688 Real)) (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| (Array T@Ref T@Field_20588_53 Real)) (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| (Array T@Ref T@Field_20588_13588 Real)) (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| (Array T@Ref T@Field_20601_20606 Real)) (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| (Array T@Ref T@Field_20617_20618 Real)) (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| (Array T@Ref T@Field_18805_53 Real)) (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| (Array T@Ref T@Field_18805_13588 Real)) (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| (Array T@Ref T@Field_18819_18824 Real)) (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| (Array T@Ref T@Field_18836_18837 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14063 0)) (((PolymorphicMapType_14063 (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| (Array T@Ref T@Field_21288_3574 Bool)) (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| (Array T@Ref T@Field_13574_53 Bool)) (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| (Array T@Ref T@Field_13587_13588 Bool)) (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| (Array T@Ref T@Field_8623_16920 Bool)) (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| (Array T@Ref T@Field_8623_16932 Bool)) (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| (Array T@Ref T@Field_16902_1203 Bool)) (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| (Array T@Ref T@Field_16902_53 Bool)) (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| (Array T@Ref T@Field_16902_13588 Bool)) (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| (Array T@Ref T@Field_16915_16920 Bool)) (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| (Array T@Ref T@Field_16931_16932 Bool)) (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| (Array T@Ref T@Field_17546_1529 Bool)) (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| (Array T@Ref T@Field_17546_53 Bool)) (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| (Array T@Ref T@Field_17546_13588 Bool)) (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| (Array T@Ref T@Field_17559_17564 Bool)) (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| (Array T@Ref T@Field_17575_17576 Bool)) (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| (Array T@Ref T@Field_18247_1900 Bool)) (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| (Array T@Ref T@Field_18247_53 Bool)) (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| (Array T@Ref T@Field_18247_13588 Bool)) (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| (Array T@Ref T@Field_18259_18264 Bool)) (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| (Array T@Ref T@Field_18274_18275 Bool)) (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| (Array T@Ref T@Field_18805_2181 Bool)) (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| (Array T@Ref T@Field_18805_53 Bool)) (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| (Array T@Ref T@Field_18805_13588 Bool)) (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| (Array T@Ref T@Field_18819_18824 Bool)) (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| (Array T@Ref T@Field_18836_18837 Bool)) (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| (Array T@Ref T@Field_19654_2678 Bool)) (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| (Array T@Ref T@Field_19654_53 Bool)) (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| (Array T@Ref T@Field_19654_13588 Bool)) (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| (Array T@Ref T@Field_19669_19674 Bool)) (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| (Array T@Ref T@Field_19687_19688 Bool)) (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| (Array T@Ref T@Field_20588_3216 Bool)) (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| (Array T@Ref T@Field_20588_53 Bool)) (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| (Array T@Ref T@Field_20588_13588 Bool)) (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| (Array T@Ref T@Field_20601_20606 Bool)) (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| (Array T@Ref T@Field_20617_20618 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13514 0)) (((PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| (Array T@Ref T@Field_13574_53 Bool)) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| (Array T@Ref T@Field_13587_13588 T@Ref)) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| (Array T@Ref T@Field_21288_3574 Int)) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| (Array T@Ref T@Field_16915_16920 T@PolymorphicMapType_14063)) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| (Array T@Ref T@Field_17559_17564 T@PolymorphicMapType_14063)) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| (Array T@Ref T@Field_19669_19674 T@PolymorphicMapType_14063)) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| (Array T@Ref T@Field_18819_18824 T@PolymorphicMapType_14063)) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| (Array T@Ref T@Field_8623_16920 T@PolymorphicMapType_14063)) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| (Array T@Ref T@Field_8623_16932 T@FrameType)) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| (Array T@Ref T@Field_16902_1203 Int)) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| (Array T@Ref T@Field_16902_53 Bool)) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| (Array T@Ref T@Field_16902_13588 T@Ref)) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| (Array T@Ref T@Field_16931_16932 T@FrameType)) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| (Array T@Ref T@Field_17546_1529 Int)) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| (Array T@Ref T@Field_17546_53 Bool)) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| (Array T@Ref T@Field_17546_13588 T@Ref)) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| (Array T@Ref T@Field_17575_17576 T@FrameType)) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| (Array T@Ref T@Field_18247_1900 Int)) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| (Array T@Ref T@Field_18247_53 Bool)) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| (Array T@Ref T@Field_18247_13588 T@Ref)) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| (Array T@Ref T@Field_18259_18264 T@PolymorphicMapType_14063)) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| (Array T@Ref T@Field_18274_18275 T@FrameType)) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| (Array T@Ref T@Field_18805_2181 Int)) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| (Array T@Ref T@Field_18805_53 Bool)) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| (Array T@Ref T@Field_18805_13588 T@Ref)) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| (Array T@Ref T@Field_18836_18837 T@FrameType)) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| (Array T@Ref T@Field_19654_2678 Int)) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| (Array T@Ref T@Field_19654_53 Bool)) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| (Array T@Ref T@Field_19654_13588 T@Ref)) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| (Array T@Ref T@Field_19687_19688 T@FrameType)) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| (Array T@Ref T@Field_20588_3216 Int)) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| (Array T@Ref T@Field_20588_53 Bool)) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| (Array T@Ref T@Field_20588_13588 T@Ref)) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| (Array T@Ref T@Field_20601_20606 T@PolymorphicMapType_14063)) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| (Array T@Ref T@Field_20617_20618 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_13574_53)
(declare-fun f_7 () T@Field_21288_3574)
(declare-fun next () T@Field_13587_13588)
(declare-fun WandMaskField_8531 (T@Field_19687_19688) T@Field_19669_19674)
(declare-fun |wand_2#ft| (T@Ref Real T@Ref Int T@Ref Real T@Ref Int) T@Field_19687_19688)
(declare-fun |wand_2#sm| (T@Ref Real T@Ref Int T@Ref Real T@Ref Int) T@Field_19669_19674)
(declare-fun succHeap (T@PolymorphicMapType_13514 T@PolymorphicMapType_13514) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_13514 T@PolymorphicMapType_13514) Bool)
(declare-fun wand_1 (T@Ref Real T@Ref Real) T@Field_16902_1203)
(declare-fun getPredWandId_8326_1203 (T@Field_16902_1203) Int)
(declare-fun wand_4 (T@Ref Real T@Ref Int Bool) T@Field_20588_3216)
(declare-fun state (T@PolymorphicMapType_13514 T@PolymorphicMapType_13535) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_13535) Bool)
(declare-fun wand (T@Ref Real Bool) T@Field_18247_1900)
(declare-fun IsWandField_8417_1900 (T@Field_18247_1900) Bool)
(declare-fun |wand#ft| (T@Ref Real Bool) T@Field_18274_18275)
(declare-fun IsWandField_8426_8427 (T@Field_18274_18275) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_14063)
(declare-fun getPredWandId_8417_1900 (T@Field_18247_1900) Int)
(declare-fun IsPredicateField_8417_1900 (T@Field_18247_1900) Bool)
(declare-fun IsPredicateField_8426_8427 (T@Field_18274_18275) Bool)
(declare-fun wand_5 (T@Ref Real T@Ref Int T@Ref Real Bool) T@Field_18805_2181)
(declare-fun WandMaskField_8426 (T@Field_18274_18275) T@Field_18259_18264)
(declare-fun |wand#sm| (T@Ref Real Bool) T@Field_18259_18264)
(declare-fun wand_3 (Bool T@Ref Real T@Ref Int) T@Field_17546_1529)
(declare-fun getPredWandId_8377_1529 (T@Field_17546_1529) Int)
(declare-fun getPredWandId_8585_3216 (T@Field_20588_3216) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_13514 T@PolymorphicMapType_13514 T@PolymorphicMapType_13535) Bool)
(declare-fun IsPredicateField_8596_8597 (T@Field_20617_20618) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_20588 (T@Field_20617_20618) T@Field_20601_20606)
(declare-fun HasDirectPerm_20588_16932 (T@PolymorphicMapType_13535 T@Ref T@Field_20617_20618) Bool)
(declare-fun IsPredicateField_8531_8532 (T@Field_19687_19688) Bool)
(declare-fun PredicateMaskField_19654 (T@Field_19687_19688) T@Field_19669_19674)
(declare-fun HasDirectPerm_19654_16932 (T@PolymorphicMapType_13535 T@Ref T@Field_19687_19688) Bool)
(declare-fun IsPredicateField_8465_8466 (T@Field_18836_18837) Bool)
(declare-fun PredicateMaskField_18805 (T@Field_18836_18837) T@Field_18819_18824)
(declare-fun HasDirectPerm_18805_16932 (T@PolymorphicMapType_13535 T@Ref T@Field_18836_18837) Bool)
(declare-fun PredicateMaskField_18247 (T@Field_18274_18275) T@Field_18259_18264)
(declare-fun HasDirectPerm_18247_16932 (T@PolymorphicMapType_13535 T@Ref T@Field_18274_18275) Bool)
(declare-fun IsPredicateField_8388_8389 (T@Field_17575_17576) Bool)
(declare-fun PredicateMaskField_17546 (T@Field_17575_17576) T@Field_17559_17564)
(declare-fun HasDirectPerm_17546_16932 (T@PolymorphicMapType_13535 T@Ref T@Field_17575_17576) Bool)
(declare-fun IsPredicateField_8339_8340 (T@Field_16931_16932) Bool)
(declare-fun PredicateMaskField_16902 (T@Field_16931_16932) T@Field_16915_16920)
(declare-fun HasDirectPerm_16902_16932 (T@PolymorphicMapType_13535 T@Ref T@Field_16931_16932) Bool)
(declare-fun IsPredicateField_8623_47932 (T@Field_8623_16932) Bool)
(declare-fun PredicateMaskField_8623 (T@Field_8623_16932) T@Field_8623_16920)
(declare-fun HasDirectPerm_8623_16932 (T@PolymorphicMapType_13535 T@Ref T@Field_8623_16932) Bool)
(declare-fun IsWandField_8596_8597 (T@Field_20617_20618) Bool)
(declare-fun WandMaskField_8596 (T@Field_20617_20618) T@Field_20601_20606)
(declare-fun IsWandField_8531_8532 (T@Field_19687_19688) Bool)
(declare-fun IsWandField_8465_8466 (T@Field_18836_18837) Bool)
(declare-fun WandMaskField_8465 (T@Field_18836_18837) T@Field_18819_18824)
(declare-fun IsWandField_8388_8389 (T@Field_17575_17576) Bool)
(declare-fun WandMaskField_8388 (T@Field_17575_17576) T@Field_17559_17564)
(declare-fun IsWandField_8339_8340 (T@Field_16931_16932) Bool)
(declare-fun WandMaskField_8339 (T@Field_16931_16932) T@Field_16915_16920)
(declare-fun IsWandField_8623_59680 (T@Field_8623_16932) Bool)
(declare-fun WandMaskField_8623 (T@Field_8623_16932) T@Field_8623_16920)
(declare-fun wand_2 (T@Ref Real T@Ref Int T@Ref Real T@Ref Int) T@Field_19654_2678)
(declare-fun IsWandField_8514_2678 (T@Field_19654_2678) Bool)
(declare-fun IsPredicateField_8514_2678 (T@Field_19654_2678) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_13514)
(declare-fun ZeroMask () T@PolymorphicMapType_13535)
(declare-fun InsidePredicate_20588_20588 (T@Field_20617_20618 T@FrameType T@Field_20617_20618 T@FrameType) Bool)
(declare-fun InsidePredicate_19654_19654 (T@Field_19687_19688 T@FrameType T@Field_19687_19688 T@FrameType) Bool)
(declare-fun InsidePredicate_18805_18805 (T@Field_18836_18837 T@FrameType T@Field_18836_18837 T@FrameType) Bool)
(declare-fun InsidePredicate_18247_18247 (T@Field_18274_18275 T@FrameType T@Field_18274_18275 T@FrameType) Bool)
(declare-fun InsidePredicate_17546_17546 (T@Field_17575_17576 T@FrameType T@Field_17575_17576 T@FrameType) Bool)
(declare-fun InsidePredicate_16902_16902 (T@Field_16931_16932 T@FrameType T@Field_16931_16932 T@FrameType) Bool)
(declare-fun InsidePredicate_13574_13574 (T@Field_8623_16932 T@FrameType T@Field_8623_16932 T@FrameType) Bool)
(declare-fun IsWandField_8377_1529 (T@Field_17546_1529) Bool)
(declare-fun |wand_3#ft| (Bool T@Ref Real T@Ref Int) T@Field_17575_17576)
(declare-fun IsWandField_8585_3216 (T@Field_20588_3216) Bool)
(declare-fun |wand_4#ft| (T@Ref Real T@Ref Int Bool) T@Field_20617_20618)
(declare-fun IsPredicateField_8623_3574 (T@Field_21288_3574) Bool)
(declare-fun IsWandField_8623_3574 (T@Field_21288_3574) Bool)
(declare-fun IsPredicateField_8625_8626 (T@Field_13587_13588) Bool)
(declare-fun IsWandField_8625_8626 (T@Field_13587_13588) Bool)
(declare-fun IsPredicateField_8377_1529 (T@Field_17546_1529) Bool)
(declare-fun IsPredicateField_8585_3216 (T@Field_20588_3216) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8450_85258 (T@Field_18819_18824) Bool)
(declare-fun IsWandField_8450_85274 (T@Field_18819_18824) Bool)
(declare-fun IsPredicateField_8450_13588 (T@Field_18805_13588) Bool)
(declare-fun IsWandField_8450_13588 (T@Field_18805_13588) Bool)
(declare-fun IsPredicateField_8450_53 (T@Field_18805_53) Bool)
(declare-fun IsWandField_8450_53 (T@Field_18805_53) Bool)
(declare-fun IsPredicateField_8450_2181 (T@Field_18805_2181) Bool)
(declare-fun IsWandField_8450_2181 (T@Field_18805_2181) Bool)
(declare-fun IsPredicateField_8585_84441 (T@Field_20601_20606) Bool)
(declare-fun IsWandField_8585_84457 (T@Field_20601_20606) Bool)
(declare-fun IsPredicateField_8585_13588 (T@Field_20588_13588) Bool)
(declare-fun IsWandField_8585_13588 (T@Field_20588_13588) Bool)
(declare-fun IsPredicateField_8585_53 (T@Field_20588_53) Bool)
(declare-fun IsWandField_8585_53 (T@Field_20588_53) Bool)
(declare-fun IsPredicateField_8514_83624 (T@Field_19669_19674) Bool)
(declare-fun IsWandField_8514_83640 (T@Field_19669_19674) Bool)
(declare-fun IsPredicateField_8514_13588 (T@Field_19654_13588) Bool)
(declare-fun IsWandField_8514_13588 (T@Field_19654_13588) Bool)
(declare-fun IsPredicateField_8514_53 (T@Field_19654_53) Bool)
(declare-fun IsWandField_8514_53 (T@Field_19654_53) Bool)
(declare-fun IsPredicateField_8377_82807 (T@Field_17559_17564) Bool)
(declare-fun IsWandField_8377_82823 (T@Field_17559_17564) Bool)
(declare-fun IsPredicateField_8377_13588 (T@Field_17546_13588) Bool)
(declare-fun IsWandField_8377_13588 (T@Field_17546_13588) Bool)
(declare-fun IsPredicateField_8377_53 (T@Field_17546_53) Bool)
(declare-fun IsWandField_8377_53 (T@Field_17546_53) Bool)
(declare-fun IsPredicateField_8417_81990 (T@Field_18259_18264) Bool)
(declare-fun IsWandField_8417_82006 (T@Field_18259_18264) Bool)
(declare-fun IsPredicateField_8417_13588 (T@Field_18247_13588) Bool)
(declare-fun IsWandField_8417_13588 (T@Field_18247_13588) Bool)
(declare-fun IsPredicateField_8417_53 (T@Field_18247_53) Bool)
(declare-fun IsWandField_8417_53 (T@Field_18247_53) Bool)
(declare-fun IsPredicateField_8326_81173 (T@Field_16915_16920) Bool)
(declare-fun IsWandField_8326_81189 (T@Field_16915_16920) Bool)
(declare-fun IsPredicateField_8326_13588 (T@Field_16902_13588) Bool)
(declare-fun IsWandField_8326_13588 (T@Field_16902_13588) Bool)
(declare-fun IsPredicateField_8326_53 (T@Field_16902_53) Bool)
(declare-fun IsWandField_8326_53 (T@Field_16902_53) Bool)
(declare-fun IsPredicateField_8326_1203 (T@Field_16902_1203) Bool)
(declare-fun IsWandField_8326_1203 (T@Field_16902_1203) Bool)
(declare-fun IsPredicateField_8623_80356 (T@Field_8623_16920) Bool)
(declare-fun IsWandField_8623_80372 (T@Field_8623_16920) Bool)
(declare-fun IsPredicateField_8623_53 (T@Field_13574_53) Bool)
(declare-fun IsWandField_8623_53 (T@Field_13574_53) Bool)
(declare-fun HasDirectPerm_20588_47416 (T@PolymorphicMapType_13535 T@Ref T@Field_20601_20606) Bool)
(declare-fun HasDirectPerm_20588_13588 (T@PolymorphicMapType_13535 T@Ref T@Field_20588_13588) Bool)
(declare-fun HasDirectPerm_20588_53 (T@PolymorphicMapType_13535 T@Ref T@Field_20588_53) Bool)
(declare-fun HasDirectPerm_20588_3574 (T@PolymorphicMapType_13535 T@Ref T@Field_20588_3216) Bool)
(declare-fun HasDirectPerm_19654_46282 (T@PolymorphicMapType_13535 T@Ref T@Field_19669_19674) Bool)
(declare-fun HasDirectPerm_19654_13588 (T@PolymorphicMapType_13535 T@Ref T@Field_19654_13588) Bool)
(declare-fun HasDirectPerm_19654_53 (T@PolymorphicMapType_13535 T@Ref T@Field_19654_53) Bool)
(declare-fun HasDirectPerm_19654_3574 (T@PolymorphicMapType_13535 T@Ref T@Field_19654_2678) Bool)
(declare-fun HasDirectPerm_18805_45148 (T@PolymorphicMapType_13535 T@Ref T@Field_18819_18824) Bool)
(declare-fun HasDirectPerm_18805_13588 (T@PolymorphicMapType_13535 T@Ref T@Field_18805_13588) Bool)
(declare-fun HasDirectPerm_18805_53 (T@PolymorphicMapType_13535 T@Ref T@Field_18805_53) Bool)
(declare-fun HasDirectPerm_18805_3574 (T@PolymorphicMapType_13535 T@Ref T@Field_18805_2181) Bool)
(declare-fun HasDirectPerm_18247_43971 (T@PolymorphicMapType_13535 T@Ref T@Field_18259_18264) Bool)
(declare-fun HasDirectPerm_18247_13588 (T@PolymorphicMapType_13535 T@Ref T@Field_18247_13588) Bool)
(declare-fun HasDirectPerm_18247_53 (T@PolymorphicMapType_13535 T@Ref T@Field_18247_53) Bool)
(declare-fun HasDirectPerm_18247_3574 (T@PolymorphicMapType_13535 T@Ref T@Field_18247_1900) Bool)
(declare-fun HasDirectPerm_17546_42837 (T@PolymorphicMapType_13535 T@Ref T@Field_17559_17564) Bool)
(declare-fun HasDirectPerm_17546_13588 (T@PolymorphicMapType_13535 T@Ref T@Field_17546_13588) Bool)
(declare-fun HasDirectPerm_17546_53 (T@PolymorphicMapType_13535 T@Ref T@Field_17546_53) Bool)
(declare-fun HasDirectPerm_17546_3574 (T@PolymorphicMapType_13535 T@Ref T@Field_17546_1529) Bool)
(declare-fun HasDirectPerm_16902_41703 (T@PolymorphicMapType_13535 T@Ref T@Field_16915_16920) Bool)
(declare-fun HasDirectPerm_16902_13588 (T@PolymorphicMapType_13535 T@Ref T@Field_16902_13588) Bool)
(declare-fun HasDirectPerm_16902_53 (T@PolymorphicMapType_13535 T@Ref T@Field_16902_53) Bool)
(declare-fun HasDirectPerm_16902_3574 (T@PolymorphicMapType_13535 T@Ref T@Field_16902_1203) Bool)
(declare-fun HasDirectPerm_8623_40525 (T@PolymorphicMapType_13535 T@Ref T@Field_8623_16920) Bool)
(declare-fun HasDirectPerm_8623_13588 (T@PolymorphicMapType_13535 T@Ref T@Field_13587_13588) Bool)
(declare-fun HasDirectPerm_8623_53 (T@PolymorphicMapType_13535 T@Ref T@Field_13574_53) Bool)
(declare-fun HasDirectPerm_8623_3574 (T@PolymorphicMapType_13535 T@Ref T@Field_21288_3574) Bool)
(declare-fun |wand_1#ft| (T@Ref Real T@Ref Real) T@Field_16931_16932)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand_1#sm| (T@Ref Real T@Ref Real) T@Field_16915_16920)
(declare-fun sumMask (T@PolymorphicMapType_13535 T@PolymorphicMapType_13535 T@PolymorphicMapType_13535) Bool)
(declare-fun |wand_3#sm| (Bool T@Ref Real T@Ref Int) T@Field_17559_17564)
(declare-fun |wand_4#sm| (T@Ref Real T@Ref Int Bool) T@Field_20601_20606)
(declare-fun getPredWandId_8514_2678 (T@Field_19654_2678) Int)
(declare-fun |wand_5#ft| (T@Ref Real T@Ref Int T@Ref Real Bool) T@Field_18836_18837)
(declare-fun |wand_5#sm| (T@Ref Real T@Ref Int T@Ref Real Bool) T@Field_18819_18824)
(declare-fun InsidePredicate_20588_19654 (T@Field_20617_20618 T@FrameType T@Field_19687_19688 T@FrameType) Bool)
(declare-fun InsidePredicate_20588_18805 (T@Field_20617_20618 T@FrameType T@Field_18836_18837 T@FrameType) Bool)
(declare-fun InsidePredicate_20588_18247 (T@Field_20617_20618 T@FrameType T@Field_18274_18275 T@FrameType) Bool)
(declare-fun InsidePredicate_20588_17546 (T@Field_20617_20618 T@FrameType T@Field_17575_17576 T@FrameType) Bool)
(declare-fun InsidePredicate_20588_16902 (T@Field_20617_20618 T@FrameType T@Field_16931_16932 T@FrameType) Bool)
(declare-fun InsidePredicate_20588_13574 (T@Field_20617_20618 T@FrameType T@Field_8623_16932 T@FrameType) Bool)
(declare-fun InsidePredicate_19654_20588 (T@Field_19687_19688 T@FrameType T@Field_20617_20618 T@FrameType) Bool)
(declare-fun InsidePredicate_19654_18805 (T@Field_19687_19688 T@FrameType T@Field_18836_18837 T@FrameType) Bool)
(declare-fun InsidePredicate_19654_18247 (T@Field_19687_19688 T@FrameType T@Field_18274_18275 T@FrameType) Bool)
(declare-fun InsidePredicate_19654_17546 (T@Field_19687_19688 T@FrameType T@Field_17575_17576 T@FrameType) Bool)
(declare-fun InsidePredicate_19654_16902 (T@Field_19687_19688 T@FrameType T@Field_16931_16932 T@FrameType) Bool)
(declare-fun InsidePredicate_19654_13574 (T@Field_19687_19688 T@FrameType T@Field_8623_16932 T@FrameType) Bool)
(declare-fun InsidePredicate_18805_20588 (T@Field_18836_18837 T@FrameType T@Field_20617_20618 T@FrameType) Bool)
(declare-fun InsidePredicate_18805_19654 (T@Field_18836_18837 T@FrameType T@Field_19687_19688 T@FrameType) Bool)
(declare-fun InsidePredicate_18805_18247 (T@Field_18836_18837 T@FrameType T@Field_18274_18275 T@FrameType) Bool)
(declare-fun InsidePredicate_18805_17546 (T@Field_18836_18837 T@FrameType T@Field_17575_17576 T@FrameType) Bool)
(declare-fun InsidePredicate_18805_16902 (T@Field_18836_18837 T@FrameType T@Field_16931_16932 T@FrameType) Bool)
(declare-fun InsidePredicate_18805_13574 (T@Field_18836_18837 T@FrameType T@Field_8623_16932 T@FrameType) Bool)
(declare-fun InsidePredicate_18247_20588 (T@Field_18274_18275 T@FrameType T@Field_20617_20618 T@FrameType) Bool)
(declare-fun InsidePredicate_18247_19654 (T@Field_18274_18275 T@FrameType T@Field_19687_19688 T@FrameType) Bool)
(declare-fun InsidePredicate_18247_18805 (T@Field_18274_18275 T@FrameType T@Field_18836_18837 T@FrameType) Bool)
(declare-fun InsidePredicate_18247_17546 (T@Field_18274_18275 T@FrameType T@Field_17575_17576 T@FrameType) Bool)
(declare-fun InsidePredicate_18247_16902 (T@Field_18274_18275 T@FrameType T@Field_16931_16932 T@FrameType) Bool)
(declare-fun InsidePredicate_18247_13574 (T@Field_18274_18275 T@FrameType T@Field_8623_16932 T@FrameType) Bool)
(declare-fun InsidePredicate_17546_20588 (T@Field_17575_17576 T@FrameType T@Field_20617_20618 T@FrameType) Bool)
(declare-fun InsidePredicate_17546_19654 (T@Field_17575_17576 T@FrameType T@Field_19687_19688 T@FrameType) Bool)
(declare-fun InsidePredicate_17546_18805 (T@Field_17575_17576 T@FrameType T@Field_18836_18837 T@FrameType) Bool)
(declare-fun InsidePredicate_17546_18247 (T@Field_17575_17576 T@FrameType T@Field_18274_18275 T@FrameType) Bool)
(declare-fun InsidePredicate_17546_16902 (T@Field_17575_17576 T@FrameType T@Field_16931_16932 T@FrameType) Bool)
(declare-fun InsidePredicate_17546_13574 (T@Field_17575_17576 T@FrameType T@Field_8623_16932 T@FrameType) Bool)
(declare-fun InsidePredicate_16902_20588 (T@Field_16931_16932 T@FrameType T@Field_20617_20618 T@FrameType) Bool)
(declare-fun InsidePredicate_16902_19654 (T@Field_16931_16932 T@FrameType T@Field_19687_19688 T@FrameType) Bool)
(declare-fun InsidePredicate_16902_18805 (T@Field_16931_16932 T@FrameType T@Field_18836_18837 T@FrameType) Bool)
(declare-fun InsidePredicate_16902_18247 (T@Field_16931_16932 T@FrameType T@Field_18274_18275 T@FrameType) Bool)
(declare-fun InsidePredicate_16902_17546 (T@Field_16931_16932 T@FrameType T@Field_17575_17576 T@FrameType) Bool)
(declare-fun InsidePredicate_16902_13574 (T@Field_16931_16932 T@FrameType T@Field_8623_16932 T@FrameType) Bool)
(declare-fun InsidePredicate_13574_20588 (T@Field_8623_16932 T@FrameType T@Field_20617_20618 T@FrameType) Bool)
(declare-fun InsidePredicate_13574_19654 (T@Field_8623_16932 T@FrameType T@Field_19687_19688 T@FrameType) Bool)
(declare-fun InsidePredicate_13574_18805 (T@Field_8623_16932 T@FrameType T@Field_18836_18837 T@FrameType) Bool)
(declare-fun InsidePredicate_13574_18247 (T@Field_8623_16932 T@FrameType T@Field_18274_18275 T@FrameType) Bool)
(declare-fun InsidePredicate_13574_17546 (T@Field_8623_16932 T@FrameType T@Field_17575_17576 T@FrameType) Bool)
(declare-fun InsidePredicate_13574_16902 (T@Field_8623_16932 T@FrameType T@Field_16931_16932 T@FrameType) Bool)
(declare-fun getPredWandId_8450_2181 (T@Field_18805_2181) Int)
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 Int) (arg5 T@Ref) (arg6 Real) (arg7 T@Ref) (arg8 Int) ) (! (= (|wand_2#sm| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8) (WandMaskField_8531 (|wand_2#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8)))
 :qid |stdinbpl.328:15|
 :skolemid |54|
 :pattern ( (WandMaskField_8531 (|wand_2#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8)))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_13514) (Heap1 T@PolymorphicMapType_13514) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 T@Ref) (arg4@@0 Real) ) (! (= (getPredWandId_8326_1203 (wand_1 arg1@@0 arg2@@0 arg3@@0 arg4@@0)) 0)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand_1 arg1@@0 arg2@@0 arg3@@0 arg4@@0))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 T@Ref) (arg4@@1 Int) (arg5@@0 Bool) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 Int) (arg5_2 Bool) ) (!  (=> (= (wand_4 arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@0) (wand_4 arg1_2 arg2_2 arg3_2 arg4_2 arg5_2)) (and (= arg1@@1 arg1_2) (and (= arg2@@1 arg2_2) (and (= arg3@@1 arg3_2) (and (= arg4@@1 arg4_2) (= arg5@@0 arg5_2))))))
 :qid |stdinbpl.368:15|
 :skolemid |63|
 :pattern ( (wand_4 arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@0) (wand_4 arg1_2 arg2_2 arg3_2 arg4_2 arg5_2))
)))
(assert (forall ((Heap T@PolymorphicMapType_13514) (Mask T@PolymorphicMapType_13535) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_13514) (Heap1@@0 T@PolymorphicMapType_13514) (Heap2 T@PolymorphicMapType_13514) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 Bool) ) (! (IsWandField_8417_1900 (wand arg1@@2 arg2@@2 arg3@@2))
 :qid |stdinbpl.248:15|
 :skolemid |36|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 Bool) ) (! (IsWandField_8426_8427 (|wand#ft| arg1@@3 arg2@@3 arg3@@3))
 :qid |stdinbpl.252:15|
 :skolemid |37|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3 arg3@@3))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_20617_20618) ) (!  (not (select (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_20601_20606) ) (!  (not (select (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20588_13588) ) (!  (not (select (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20588_53) ) (!  (not (select (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_20588_3216) ) (!  (not (select (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_19687_19688) ) (!  (not (select (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_19669_19674) ) (!  (not (select (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_19654_13588) ) (!  (not (select (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_19654_53) ) (!  (not (select (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_19654_2678) ) (!  (not (select (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_18836_18837) ) (!  (not (select (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_18819_18824) ) (!  (not (select (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_18805_13588) ) (!  (not (select (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_18805_53) ) (!  (not (select (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_18805_2181) ) (!  (not (select (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_18274_18275) ) (!  (not (select (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_18259_18264) ) (!  (not (select (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_18247_13588) ) (!  (not (select (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_18247_53) ) (!  (not (select (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_18247_1900) ) (!  (not (select (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_17575_17576) ) (!  (not (select (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_17559_17564) ) (!  (not (select (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_17546_13588) ) (!  (not (select (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_17546_53) ) (!  (not (select (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_17546_1529) ) (!  (not (select (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_16931_16932) ) (!  (not (select (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| ZeroPMask) o_2@@24 f_4@@24))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| ZeroPMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_16915_16920) ) (!  (not (select (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| ZeroPMask) o_2@@25 f_4@@25))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| ZeroPMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_16902_13588) ) (!  (not (select (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| ZeroPMask) o_2@@26 f_4@@26))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| ZeroPMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_16902_53) ) (!  (not (select (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| ZeroPMask) o_2@@27 f_4@@27))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| ZeroPMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_16902_1203) ) (!  (not (select (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| ZeroPMask) o_2@@28 f_4@@28))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| ZeroPMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_8623_16932) ) (!  (not (select (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| ZeroPMask) o_2@@29 f_4@@29))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| ZeroPMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_8623_16920) ) (!  (not (select (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| ZeroPMask) o_2@@30 f_4@@30))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| ZeroPMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_13587_13588) ) (!  (not (select (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| ZeroPMask) o_2@@31 f_4@@31))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| ZeroPMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_13574_53) ) (!  (not (select (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| ZeroPMask) o_2@@32 f_4@@32))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| ZeroPMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_21288_3574) ) (!  (not (select (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| ZeroPMask) o_2@@33 f_4@@33))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| ZeroPMask) o_2@@33 f_4@@33))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 Bool) ) (! (= (getPredWandId_8417_1900 (wand arg1@@4 arg2@@4 arg3@@4)) 2)
 :qid |stdinbpl.268:15|
 :skolemid |41|
 :pattern ( (wand arg1@@4 arg2@@4 arg3@@4))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 Bool) ) (!  (not (IsPredicateField_8417_1900 (wand arg1@@5 arg2@@5 arg3@@5)))
 :qid |stdinbpl.256:15|
 :skolemid |38|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5))
)))
(assert (forall ((arg1@@6 T@Ref) (arg2@@6 Real) (arg3@@6 Bool) ) (!  (not (IsPredicateField_8426_8427 (|wand#ft| arg1@@6 arg2@@6 arg3@@6)))
 :qid |stdinbpl.260:15|
 :skolemid |39|
 :pattern ( (|wand#ft| arg1@@6 arg2@@6 arg3@@6))
)))
(assert (forall ((arg1@@7 T@Ref) (arg2@@7 Real) (arg3@@7 Bool) (arg1_2@@0 T@Ref) (arg2_2@@0 Real) (arg3_2@@0 Bool) ) (!  (=> (= (wand arg1@@7 arg2@@7 arg3@@7) (wand arg1_2@@0 arg2_2@@0 arg3_2@@0)) (and (= arg1@@7 arg1_2@@0) (and (= arg2@@7 arg2_2@@0) (= arg3@@7 arg3_2@@0))))
 :qid |stdinbpl.272:15|
 :skolemid |42|
 :pattern ( (wand arg1@@7 arg2@@7 arg3@@7) (wand arg1_2@@0 arg2_2@@0 arg3_2@@0))
)))
(assert (forall ((arg1@@8 T@Ref) (arg2@@8 Real) (arg3@@8 T@Ref) (arg4@@2 Int) (arg5@@1 T@Ref) (arg6@@0 Real) (arg7@@0 Bool) (arg1_2@@1 T@Ref) (arg2_2@@1 Real) (arg3_2@@1 T@Ref) (arg4_2@@0 Int) (arg5_2@@0 T@Ref) (arg6_2 Real) (arg7_2 Bool) ) (!  (=> (= (wand_5 arg1@@8 arg2@@8 arg3@@8 arg4@@2 arg5@@1 arg6@@0 arg7@@0) (wand_5 arg1_2@@1 arg2_2@@1 arg3_2@@1 arg4_2@@0 arg5_2@@0 arg6_2 arg7_2)) (and (= arg1@@8 arg1_2@@1) (and (= arg2@@8 arg2_2@@1) (and (= arg3@@8 arg3_2@@1) (and (= arg4@@2 arg4_2@@0) (and (= arg5@@1 arg5_2@@0) (and (= arg6@@0 arg6_2) (= arg7@@0 arg7_2))))))))
 :qid |stdinbpl.304:15|
 :skolemid |49|
 :pattern ( (wand_5 arg1@@8 arg2@@8 arg3@@8 arg4@@2 arg5@@1 arg6@@0 arg7@@0) (wand_5 arg1_2@@1 arg2_2@@1 arg3_2@@1 arg4_2@@0 arg5_2@@0 arg6_2 arg7_2))
)))
(assert (forall ((arg1@@9 T@Ref) (arg2@@9 Real) (arg3@@9 Bool) ) (! (= (|wand#sm| arg1@@9 arg2@@9 arg3@@9) (WandMaskField_8426 (|wand#ft| arg1@@9 arg2@@9 arg3@@9)))
 :qid |stdinbpl.264:15|
 :skolemid |40|
 :pattern ( (WandMaskField_8426 (|wand#ft| arg1@@9 arg2@@9 arg3@@9)))
)))
(assert (forall ((arg1@@10 Bool) (arg2@@10 T@Ref) (arg3@@10 Real) (arg4@@3 T@Ref) (arg5@@2 Int) ) (! (= (getPredWandId_8377_1529 (wand_3 arg1@@10 arg2@@10 arg3@@10 arg4@@3 arg5@@2)) 1)
 :qid |stdinbpl.236:15|
 :skolemid |34|
 :pattern ( (wand_3 arg1@@10 arg2@@10 arg3@@10 arg4@@3 arg5@@2))
)))
(assert (forall ((arg1@@11 T@Ref) (arg2@@11 Real) (arg3@@11 T@Ref) (arg4@@4 Int) (arg5@@3 Bool) ) (! (= (getPredWandId_8585_3216 (wand_4 arg1@@11 arg2@@11 arg3@@11 arg4@@4 arg5@@3)) 5)
 :qid |stdinbpl.364:15|
 :skolemid |62|
 :pattern ( (wand_4 arg1@@11 arg2@@11 arg3@@11 arg4@@4 arg5@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_13514) (ExhaleHeap T@PolymorphicMapType_13514) (Mask@@0 T@PolymorphicMapType_13535) (pm_f T@Field_20617_20618) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_20588_16932 Mask@@0 null pm_f) (IsPredicateField_8596_8597 pm_f)) (= (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@0) null (PredicateMaskField_20588 pm_f)) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap) null (PredicateMaskField_20588 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_8596_8597 pm_f) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap) null (PredicateMaskField_20588 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_13514) (ExhaleHeap@@0 T@PolymorphicMapType_13514) (Mask@@1 T@PolymorphicMapType_13535) (pm_f@@0 T@Field_19687_19688) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_19654_16932 Mask@@1 null pm_f@@0) (IsPredicateField_8531_8532 pm_f@@0)) (= (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@1) null (PredicateMaskField_19654 pm_f@@0)) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@0) null (PredicateMaskField_19654 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_8531_8532 pm_f@@0) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@0) null (PredicateMaskField_19654 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_13514) (ExhaleHeap@@1 T@PolymorphicMapType_13514) (Mask@@2 T@PolymorphicMapType_13535) (pm_f@@1 T@Field_18836_18837) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_18805_16932 Mask@@2 null pm_f@@1) (IsPredicateField_8465_8466 pm_f@@1)) (= (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@2) null (PredicateMaskField_18805 pm_f@@1)) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@1) null (PredicateMaskField_18805 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_8465_8466 pm_f@@1) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@1) null (PredicateMaskField_18805 pm_f@@1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_13514) (ExhaleHeap@@2 T@PolymorphicMapType_13514) (Mask@@3 T@PolymorphicMapType_13535) (pm_f@@2 T@Field_18274_18275) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_18247_16932 Mask@@3 null pm_f@@2) (IsPredicateField_8426_8427 pm_f@@2)) (= (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@3) null (PredicateMaskField_18247 pm_f@@2)) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@2) null (PredicateMaskField_18247 pm_f@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsPredicateField_8426_8427 pm_f@@2) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@2) null (PredicateMaskField_18247 pm_f@@2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_13514) (ExhaleHeap@@3 T@PolymorphicMapType_13514) (Mask@@4 T@PolymorphicMapType_13535) (pm_f@@3 T@Field_17575_17576) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_17546_16932 Mask@@4 null pm_f@@3) (IsPredicateField_8388_8389 pm_f@@3)) (= (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@4) null (PredicateMaskField_17546 pm_f@@3)) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@3) null (PredicateMaskField_17546 pm_f@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (IsPredicateField_8388_8389 pm_f@@3) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@3) null (PredicateMaskField_17546 pm_f@@3)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_13514) (ExhaleHeap@@4 T@PolymorphicMapType_13514) (Mask@@5 T@PolymorphicMapType_13535) (pm_f@@4 T@Field_16931_16932) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_16902_16932 Mask@@5 null pm_f@@4) (IsPredicateField_8339_8340 pm_f@@4)) (= (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@5) null (PredicateMaskField_16902 pm_f@@4)) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@4) null (PredicateMaskField_16902 pm_f@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (IsPredicateField_8339_8340 pm_f@@4) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@4) null (PredicateMaskField_16902 pm_f@@4)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_13514) (ExhaleHeap@@5 T@PolymorphicMapType_13514) (Mask@@6 T@PolymorphicMapType_13535) (pm_f@@5 T@Field_8623_16932) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_8623_16932 Mask@@6 null pm_f@@5) (IsPredicateField_8623_47932 pm_f@@5)) (= (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@6) null (PredicateMaskField_8623 pm_f@@5)) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@5) null (PredicateMaskField_8623 pm_f@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (IsPredicateField_8623_47932 pm_f@@5) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@5) null (PredicateMaskField_8623 pm_f@@5)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_13514) (ExhaleHeap@@6 T@PolymorphicMapType_13514) (Mask@@7 T@PolymorphicMapType_13535) (pm_f@@6 T@Field_20617_20618) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_20588_16932 Mask@@7 null pm_f@@6) (IsWandField_8596_8597 pm_f@@6)) (= (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@7) null (WandMaskField_8596 pm_f@@6)) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@6) null (WandMaskField_8596 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (IsWandField_8596_8597 pm_f@@6) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@6) null (WandMaskField_8596 pm_f@@6)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_13514) (ExhaleHeap@@7 T@PolymorphicMapType_13514) (Mask@@8 T@PolymorphicMapType_13535) (pm_f@@7 T@Field_19687_19688) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_19654_16932 Mask@@8 null pm_f@@7) (IsWandField_8531_8532 pm_f@@7)) (= (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@8) null (WandMaskField_8531 pm_f@@7)) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@7) null (WandMaskField_8531 pm_f@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (IsWandField_8531_8532 pm_f@@7) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@7) null (WandMaskField_8531 pm_f@@7)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_13514) (ExhaleHeap@@8 T@PolymorphicMapType_13514) (Mask@@9 T@PolymorphicMapType_13535) (pm_f@@8 T@Field_18836_18837) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_18805_16932 Mask@@9 null pm_f@@8) (IsWandField_8465_8466 pm_f@@8)) (= (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@9) null (WandMaskField_8465 pm_f@@8)) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@8) null (WandMaskField_8465 pm_f@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@9) (IsWandField_8465_8466 pm_f@@8) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@8) null (WandMaskField_8465 pm_f@@8)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_13514) (ExhaleHeap@@9 T@PolymorphicMapType_13514) (Mask@@10 T@PolymorphicMapType_13535) (pm_f@@9 T@Field_18274_18275) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_18247_16932 Mask@@10 null pm_f@@9) (IsWandField_8426_8427 pm_f@@9)) (= (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@10) null (WandMaskField_8426 pm_f@@9)) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@9) null (WandMaskField_8426 pm_f@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@10) (IsWandField_8426_8427 pm_f@@9) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@9) null (WandMaskField_8426 pm_f@@9)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_13514) (ExhaleHeap@@10 T@PolymorphicMapType_13514) (Mask@@11 T@PolymorphicMapType_13535) (pm_f@@10 T@Field_17575_17576) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_17546_16932 Mask@@11 null pm_f@@10) (IsWandField_8388_8389 pm_f@@10)) (= (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@11) null (WandMaskField_8388 pm_f@@10)) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@10) null (WandMaskField_8388 pm_f@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@11) (IsWandField_8388_8389 pm_f@@10) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@10) null (WandMaskField_8388 pm_f@@10)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_13514) (ExhaleHeap@@11 T@PolymorphicMapType_13514) (Mask@@12 T@PolymorphicMapType_13535) (pm_f@@11 T@Field_16931_16932) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_16902_16932 Mask@@12 null pm_f@@11) (IsWandField_8339_8340 pm_f@@11)) (= (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@12) null (WandMaskField_8339 pm_f@@11)) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@11) null (WandMaskField_8339 pm_f@@11)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@12) (IsWandField_8339_8340 pm_f@@11) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@11) null (WandMaskField_8339 pm_f@@11)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_13514) (ExhaleHeap@@12 T@PolymorphicMapType_13514) (Mask@@13 T@PolymorphicMapType_13535) (pm_f@@12 T@Field_8623_16932) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_8623_16932 Mask@@13 null pm_f@@12) (IsWandField_8623_59680 pm_f@@12)) (= (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@13) null (WandMaskField_8623 pm_f@@12)) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@12) null (WandMaskField_8623 pm_f@@12)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@13) (IsWandField_8623_59680 pm_f@@12) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@12) null (WandMaskField_8623 pm_f@@12)))
)))
(assert (forall ((arg1@@12 T@Ref) (arg2@@12 Real) (arg3@@12 T@Ref) (arg4@@5 Int) (arg5@@4 T@Ref) (arg6@@1 Real) (arg7@@1 T@Ref) (arg8@@0 Int) ) (! (IsWandField_8514_2678 (wand_2 arg1@@12 arg2@@12 arg3@@12 arg4@@5 arg5@@4 arg6@@1 arg7@@1 arg8@@0))
 :qid |stdinbpl.312:15|
 :skolemid |50|
 :pattern ( (wand_2 arg1@@12 arg2@@12 arg3@@12 arg4@@5 arg5@@4 arg6@@1 arg7@@1 arg8@@0))
)))
(assert (forall ((arg1@@13 T@Ref) (arg2@@13 Real) (arg3@@13 T@Ref) (arg4@@6 Int) (arg5@@5 T@Ref) (arg6@@2 Real) (arg7@@2 T@Ref) (arg8@@1 Int) ) (! (IsWandField_8531_8532 (|wand_2#ft| arg1@@13 arg2@@13 arg3@@13 arg4@@6 arg5@@5 arg6@@2 arg7@@2 arg8@@1))
 :qid |stdinbpl.316:15|
 :skolemid |51|
 :pattern ( (|wand_2#ft| arg1@@13 arg2@@13 arg3@@13 arg4@@6 arg5@@5 arg6@@2 arg7@@2 arg8@@1))
)))
(assert (forall ((arg1@@14 T@Ref) (arg2@@14 Real) (arg3@@14 T@Ref) (arg4@@7 Int) (arg5@@6 T@Ref) (arg6@@3 Real) (arg7@@3 T@Ref) (arg8@@2 Int) ) (!  (not (IsPredicateField_8514_2678 (wand_2 arg1@@14 arg2@@14 arg3@@14 arg4@@7 arg5@@6 arg6@@3 arg7@@3 arg8@@2)))
 :qid |stdinbpl.320:15|
 :skolemid |52|
 :pattern ( (wand_2 arg1@@14 arg2@@14 arg3@@14 arg4@@7 arg5@@6 arg6@@3 arg7@@3 arg8@@2))
)))
(assert (forall ((arg1@@15 T@Ref) (arg2@@15 Real) (arg3@@15 T@Ref) (arg4@@8 Int) (arg5@@7 T@Ref) (arg6@@4 Real) (arg7@@4 T@Ref) (arg8@@3 Int) ) (!  (not (IsPredicateField_8531_8532 (|wand_2#ft| arg1@@15 arg2@@15 arg3@@15 arg4@@8 arg5@@7 arg6@@4 arg7@@4 arg8@@3)))
 :qid |stdinbpl.324:15|
 :skolemid |53|
 :pattern ( (|wand_2#ft| arg1@@15 arg2@@15 arg3@@15 arg4@@8 arg5@@7 arg6@@4 arg7@@4 arg8@@3))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_13514) (ExhaleHeap@@13 T@PolymorphicMapType_13514) (Mask@@14 T@PolymorphicMapType_13535) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@14) (=> (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@14) o_1 $allocated) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@13) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@14) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@13) o_1 $allocated))
)))
(assert (forall ((p T@Field_20617_20618) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_20588_20588 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20588_20588 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_19687_19688) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_19654_19654 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19654_19654 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_18836_18837) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_18805_18805 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18805_18805 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_18274_18275) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_18247_18247 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18247_18247 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_17575_17576) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_17546_17546 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17546_17546 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert (forall ((p@@4 T@Field_16931_16932) (v_1@@4 T@FrameType) (w@@4 T@FrameType) ) (!  (not (InsidePredicate_16902_16902 p@@4 v_1@@4 p@@4 w@@4))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16902_16902 p@@4 v_1@@4 p@@4 w@@4))
)))
(assert (forall ((p@@5 T@Field_8623_16932) (v_1@@5 T@FrameType) (w@@5 T@FrameType) ) (!  (not (InsidePredicate_13574_13574 p@@5 v_1@@5 p@@5 w@@5))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13574_13574 p@@5 v_1@@5 p@@5 w@@5))
)))
(assert (forall ((arg1@@16 Bool) (arg2@@16 T@Ref) (arg3@@16 Real) (arg4@@9 T@Ref) (arg5@@8 Int) ) (! (IsWandField_8377_1529 (wand_3 arg1@@16 arg2@@16 arg3@@16 arg4@@9 arg5@@8))
 :qid |stdinbpl.216:15|
 :skolemid |29|
 :pattern ( (wand_3 arg1@@16 arg2@@16 arg3@@16 arg4@@9 arg5@@8))
)))
(assert (forall ((arg1@@17 Bool) (arg2@@17 T@Ref) (arg3@@17 Real) (arg4@@10 T@Ref) (arg5@@9 Int) ) (! (IsWandField_8388_8389 (|wand_3#ft| arg1@@17 arg2@@17 arg3@@17 arg4@@10 arg5@@9))
 :qid |stdinbpl.220:15|
 :skolemid |30|
 :pattern ( (|wand_3#ft| arg1@@17 arg2@@17 arg3@@17 arg4@@10 arg5@@9))
)))
(assert (forall ((arg1@@18 T@Ref) (arg2@@18 Real) (arg3@@18 T@Ref) (arg4@@11 Int) (arg5@@10 Bool) ) (! (IsWandField_8585_3216 (wand_4 arg1@@18 arg2@@18 arg3@@18 arg4@@11 arg5@@10))
 :qid |stdinbpl.344:15|
 :skolemid |57|
 :pattern ( (wand_4 arg1@@18 arg2@@18 arg3@@18 arg4@@11 arg5@@10))
)))
(assert (forall ((arg1@@19 T@Ref) (arg2@@19 Real) (arg3@@19 T@Ref) (arg4@@12 Int) (arg5@@11 Bool) ) (! (IsWandField_8596_8597 (|wand_4#ft| arg1@@19 arg2@@19 arg3@@19 arg4@@12 arg5@@11))
 :qid |stdinbpl.348:15|
 :skolemid |58|
 :pattern ( (|wand_4#ft| arg1@@19 arg2@@19 arg3@@19 arg4@@12 arg5@@11))
)))
(assert  (not (IsPredicateField_8623_3574 f_7)))
(assert  (not (IsWandField_8623_3574 f_7)))
(assert  (not (IsPredicateField_8625_8626 next)))
(assert  (not (IsWandField_8625_8626 next)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_13514) (ExhaleHeap@@14 T@PolymorphicMapType_13514) (Mask@@15 T@PolymorphicMapType_13535) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@15) (succHeap Heap@@15 ExhaleHeap@@14))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@15))
)))
(assert (forall ((arg1@@20 Bool) (arg2@@20 T@Ref) (arg3@@20 Real) (arg4@@13 T@Ref) (arg5@@12 Int) ) (!  (not (IsPredicateField_8377_1529 (wand_3 arg1@@20 arg2@@20 arg3@@20 arg4@@13 arg5@@12)))
 :qid |stdinbpl.224:15|
 :skolemid |31|
 :pattern ( (wand_3 arg1@@20 arg2@@20 arg3@@20 arg4@@13 arg5@@12))
)))
(assert (forall ((arg1@@21 Bool) (arg2@@21 T@Ref) (arg3@@21 Real) (arg4@@14 T@Ref) (arg5@@13 Int) ) (!  (not (IsPredicateField_8388_8389 (|wand_3#ft| arg1@@21 arg2@@21 arg3@@21 arg4@@14 arg5@@13)))
 :qid |stdinbpl.228:15|
 :skolemid |32|
 :pattern ( (|wand_3#ft| arg1@@21 arg2@@21 arg3@@21 arg4@@14 arg5@@13))
)))
(assert (forall ((arg1@@22 T@Ref) (arg2@@22 Real) (arg3@@22 T@Ref) (arg4@@15 Int) (arg5@@14 Bool) ) (!  (not (IsPredicateField_8585_3216 (wand_4 arg1@@22 arg2@@22 arg3@@22 arg4@@15 arg5@@14)))
 :qid |stdinbpl.352:15|
 :skolemid |59|
 :pattern ( (wand_4 arg1@@22 arg2@@22 arg3@@22 arg4@@15 arg5@@14))
)))
(assert (forall ((arg1@@23 T@Ref) (arg2@@23 Real) (arg3@@23 T@Ref) (arg4@@16 Int) (arg5@@15 Bool) ) (!  (not (IsPredicateField_8596_8597 (|wand_4#ft| arg1@@23 arg2@@23 arg3@@23 arg4@@16 arg5@@15)))
 :qid |stdinbpl.356:15|
 :skolemid |60|
 :pattern ( (|wand_4#ft| arg1@@23 arg2@@23 arg3@@23 arg4@@16 arg5@@15))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_13535) (o_2@@34 T@Ref) (f_4@@34 T@Field_18836_18837) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| Mask@@16) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_8465_8466 f_4@@34))) (not (IsWandField_8465_8466 f_4@@34))) (<= (select (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| Mask@@16) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| Mask@@16) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_13535) (o_2@@35 T@Ref) (f_4@@35 T@Field_18819_18824) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| Mask@@17) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8450_85258 f_4@@35))) (not (IsWandField_8450_85274 f_4@@35))) (<= (select (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| Mask@@17) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| Mask@@17) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_13535) (o_2@@36 T@Ref) (f_4@@36 T@Field_18805_13588) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| Mask@@18) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8450_13588 f_4@@36))) (not (IsWandField_8450_13588 f_4@@36))) (<= (select (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| Mask@@18) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| Mask@@18) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_13535) (o_2@@37 T@Ref) (f_4@@37 T@Field_18805_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| Mask@@19) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_8450_53 f_4@@37))) (not (IsWandField_8450_53 f_4@@37))) (<= (select (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| Mask@@19) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| Mask@@19) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_13535) (o_2@@38 T@Ref) (f_4@@38 T@Field_18805_2181) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| Mask@@20) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_8450_2181 f_4@@38))) (not (IsWandField_8450_2181 f_4@@38))) (<= (select (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| Mask@@20) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| Mask@@20) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_13535) (o_2@@39 T@Ref) (f_4@@39 T@Field_20617_20618) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| Mask@@21) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_8596_8597 f_4@@39))) (not (IsWandField_8596_8597 f_4@@39))) (<= (select (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| Mask@@21) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| Mask@@21) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_13535) (o_2@@40 T@Ref) (f_4@@40 T@Field_20601_20606) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| Mask@@22) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_8585_84441 f_4@@40))) (not (IsWandField_8585_84457 f_4@@40))) (<= (select (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| Mask@@22) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| Mask@@22) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_13535) (o_2@@41 T@Ref) (f_4@@41 T@Field_20588_13588) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| Mask@@23) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_8585_13588 f_4@@41))) (not (IsWandField_8585_13588 f_4@@41))) (<= (select (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| Mask@@23) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| Mask@@23) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_13535) (o_2@@42 T@Ref) (f_4@@42 T@Field_20588_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| Mask@@24) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_8585_53 f_4@@42))) (not (IsWandField_8585_53 f_4@@42))) (<= (select (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| Mask@@24) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| Mask@@24) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_13535) (o_2@@43 T@Ref) (f_4@@43 T@Field_20588_3216) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| Mask@@25) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_8585_3216 f_4@@43))) (not (IsWandField_8585_3216 f_4@@43))) (<= (select (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| Mask@@25) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| Mask@@25) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_13535) (o_2@@44 T@Ref) (f_4@@44 T@Field_19687_19688) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| Mask@@26) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_8531_8532 f_4@@44))) (not (IsWandField_8531_8532 f_4@@44))) (<= (select (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| Mask@@26) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| Mask@@26) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_13535) (o_2@@45 T@Ref) (f_4@@45 T@Field_19669_19674) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| Mask@@27) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_8514_83624 f_4@@45))) (not (IsWandField_8514_83640 f_4@@45))) (<= (select (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| Mask@@27) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| Mask@@27) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_13535) (o_2@@46 T@Ref) (f_4@@46 T@Field_19654_13588) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| Mask@@28) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_8514_13588 f_4@@46))) (not (IsWandField_8514_13588 f_4@@46))) (<= (select (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| Mask@@28) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| Mask@@28) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_13535) (o_2@@47 T@Ref) (f_4@@47 T@Field_19654_53) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| Mask@@29) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_8514_53 f_4@@47))) (not (IsWandField_8514_53 f_4@@47))) (<= (select (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| Mask@@29) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| Mask@@29) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_13535) (o_2@@48 T@Ref) (f_4@@48 T@Field_19654_2678) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| Mask@@30) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_8514_2678 f_4@@48))) (not (IsWandField_8514_2678 f_4@@48))) (<= (select (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| Mask@@30) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| Mask@@30) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_13535) (o_2@@49 T@Ref) (f_4@@49 T@Field_17575_17576) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| Mask@@31) o_2@@49 f_4@@49) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_8388_8389 f_4@@49))) (not (IsWandField_8388_8389 f_4@@49))) (<= (select (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| Mask@@31) o_2@@49 f_4@@49) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| Mask@@31) o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_13535) (o_2@@50 T@Ref) (f_4@@50 T@Field_17559_17564) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| Mask@@32) o_2@@50 f_4@@50) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_8377_82807 f_4@@50))) (not (IsWandField_8377_82823 f_4@@50))) (<= (select (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| Mask@@32) o_2@@50 f_4@@50) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| Mask@@32) o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_13535) (o_2@@51 T@Ref) (f_4@@51 T@Field_17546_13588) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| Mask@@33) o_2@@51 f_4@@51) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_8377_13588 f_4@@51))) (not (IsWandField_8377_13588 f_4@@51))) (<= (select (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| Mask@@33) o_2@@51 f_4@@51) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| Mask@@33) o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_13535) (o_2@@52 T@Ref) (f_4@@52 T@Field_17546_53) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| Mask@@34) o_2@@52 f_4@@52) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_8377_53 f_4@@52))) (not (IsWandField_8377_53 f_4@@52))) (<= (select (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| Mask@@34) o_2@@52 f_4@@52) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| Mask@@34) o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_13535) (o_2@@53 T@Ref) (f_4@@53 T@Field_17546_1529) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| Mask@@35) o_2@@53 f_4@@53) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_8377_1529 f_4@@53))) (not (IsWandField_8377_1529 f_4@@53))) (<= (select (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| Mask@@35) o_2@@53 f_4@@53) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| Mask@@35) o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_13535) (o_2@@54 T@Ref) (f_4@@54 T@Field_18274_18275) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| Mask@@36) o_2@@54 f_4@@54) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_8426_8427 f_4@@54))) (not (IsWandField_8426_8427 f_4@@54))) (<= (select (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| Mask@@36) o_2@@54 f_4@@54) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| Mask@@36) o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_13535) (o_2@@55 T@Ref) (f_4@@55 T@Field_18259_18264) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| Mask@@37) o_2@@55 f_4@@55) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_8417_81990 f_4@@55))) (not (IsWandField_8417_82006 f_4@@55))) (<= (select (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| Mask@@37) o_2@@55 f_4@@55) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| Mask@@37) o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_13535) (o_2@@56 T@Ref) (f_4@@56 T@Field_18247_13588) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| Mask@@38) o_2@@56 f_4@@56) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_8417_13588 f_4@@56))) (not (IsWandField_8417_13588 f_4@@56))) (<= (select (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| Mask@@38) o_2@@56 f_4@@56) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| Mask@@38) o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_13535) (o_2@@57 T@Ref) (f_4@@57 T@Field_18247_53) ) (!  (=> (GoodMask Mask@@39) (and (>= (select (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| Mask@@39) o_2@@57 f_4@@57) NoPerm) (=> (and (and (and (GoodMask Mask@@39) AssumePermUpperBound) (not (IsPredicateField_8417_53 f_4@@57))) (not (IsWandField_8417_53 f_4@@57))) (<= (select (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| Mask@@39) o_2@@57 f_4@@57) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@39) (select (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| Mask@@39) o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_13535) (o_2@@58 T@Ref) (f_4@@58 T@Field_18247_1900) ) (!  (=> (GoodMask Mask@@40) (and (>= (select (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| Mask@@40) o_2@@58 f_4@@58) NoPerm) (=> (and (and (and (GoodMask Mask@@40) AssumePermUpperBound) (not (IsPredicateField_8417_1900 f_4@@58))) (not (IsWandField_8417_1900 f_4@@58))) (<= (select (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| Mask@@40) o_2@@58 f_4@@58) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@40) (select (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| Mask@@40) o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_13535) (o_2@@59 T@Ref) (f_4@@59 T@Field_16931_16932) ) (!  (=> (GoodMask Mask@@41) (and (>= (select (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| Mask@@41) o_2@@59 f_4@@59) NoPerm) (=> (and (and (and (GoodMask Mask@@41) AssumePermUpperBound) (not (IsPredicateField_8339_8340 f_4@@59))) (not (IsWandField_8339_8340 f_4@@59))) (<= (select (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| Mask@@41) o_2@@59 f_4@@59) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@41) (select (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| Mask@@41) o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_13535) (o_2@@60 T@Ref) (f_4@@60 T@Field_16915_16920) ) (!  (=> (GoodMask Mask@@42) (and (>= (select (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| Mask@@42) o_2@@60 f_4@@60) NoPerm) (=> (and (and (and (GoodMask Mask@@42) AssumePermUpperBound) (not (IsPredicateField_8326_81173 f_4@@60))) (not (IsWandField_8326_81189 f_4@@60))) (<= (select (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| Mask@@42) o_2@@60 f_4@@60) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@42) (select (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| Mask@@42) o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_13535) (o_2@@61 T@Ref) (f_4@@61 T@Field_16902_13588) ) (!  (=> (GoodMask Mask@@43) (and (>= (select (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| Mask@@43) o_2@@61 f_4@@61) NoPerm) (=> (and (and (and (GoodMask Mask@@43) AssumePermUpperBound) (not (IsPredicateField_8326_13588 f_4@@61))) (not (IsWandField_8326_13588 f_4@@61))) (<= (select (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| Mask@@43) o_2@@61 f_4@@61) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@43) (select (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| Mask@@43) o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_13535) (o_2@@62 T@Ref) (f_4@@62 T@Field_16902_53) ) (!  (=> (GoodMask Mask@@44) (and (>= (select (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| Mask@@44) o_2@@62 f_4@@62) NoPerm) (=> (and (and (and (GoodMask Mask@@44) AssumePermUpperBound) (not (IsPredicateField_8326_53 f_4@@62))) (not (IsWandField_8326_53 f_4@@62))) (<= (select (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| Mask@@44) o_2@@62 f_4@@62) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@44) (select (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| Mask@@44) o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_13535) (o_2@@63 T@Ref) (f_4@@63 T@Field_16902_1203) ) (!  (=> (GoodMask Mask@@45) (and (>= (select (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| Mask@@45) o_2@@63 f_4@@63) NoPerm) (=> (and (and (and (GoodMask Mask@@45) AssumePermUpperBound) (not (IsPredicateField_8326_1203 f_4@@63))) (not (IsWandField_8326_1203 f_4@@63))) (<= (select (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| Mask@@45) o_2@@63 f_4@@63) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@45) (select (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| Mask@@45) o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_13535) (o_2@@64 T@Ref) (f_4@@64 T@Field_8623_16932) ) (!  (=> (GoodMask Mask@@46) (and (>= (select (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| Mask@@46) o_2@@64 f_4@@64) NoPerm) (=> (and (and (and (GoodMask Mask@@46) AssumePermUpperBound) (not (IsPredicateField_8623_47932 f_4@@64))) (not (IsWandField_8623_59680 f_4@@64))) (<= (select (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| Mask@@46) o_2@@64 f_4@@64) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@46) (select (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| Mask@@46) o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_13535) (o_2@@65 T@Ref) (f_4@@65 T@Field_8623_16920) ) (!  (=> (GoodMask Mask@@47) (and (>= (select (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| Mask@@47) o_2@@65 f_4@@65) NoPerm) (=> (and (and (and (GoodMask Mask@@47) AssumePermUpperBound) (not (IsPredicateField_8623_80356 f_4@@65))) (not (IsWandField_8623_80372 f_4@@65))) (<= (select (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| Mask@@47) o_2@@65 f_4@@65) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@47) (select (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| Mask@@47) o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_13535) (o_2@@66 T@Ref) (f_4@@66 T@Field_13587_13588) ) (!  (=> (GoodMask Mask@@48) (and (>= (select (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| Mask@@48) o_2@@66 f_4@@66) NoPerm) (=> (and (and (and (GoodMask Mask@@48) AssumePermUpperBound) (not (IsPredicateField_8625_8626 f_4@@66))) (not (IsWandField_8625_8626 f_4@@66))) (<= (select (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| Mask@@48) o_2@@66 f_4@@66) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@48) (select (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| Mask@@48) o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_13535) (o_2@@67 T@Ref) (f_4@@67 T@Field_13574_53) ) (!  (=> (GoodMask Mask@@49) (and (>= (select (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| Mask@@49) o_2@@67 f_4@@67) NoPerm) (=> (and (and (and (GoodMask Mask@@49) AssumePermUpperBound) (not (IsPredicateField_8623_53 f_4@@67))) (not (IsWandField_8623_53 f_4@@67))) (<= (select (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| Mask@@49) o_2@@67 f_4@@67) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@49) (select (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| Mask@@49) o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_13535) (o_2@@68 T@Ref) (f_4@@68 T@Field_21288_3574) ) (!  (=> (GoodMask Mask@@50) (and (>= (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Mask@@50) o_2@@68 f_4@@68) NoPerm) (=> (and (and (and (GoodMask Mask@@50) AssumePermUpperBound) (not (IsPredicateField_8623_3574 f_4@@68))) (not (IsWandField_8623_3574 f_4@@68))) (<= (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Mask@@50) o_2@@68 f_4@@68) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@50) (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Mask@@50) o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_13535) (o_2@@69 T@Ref) (f_4@@69 T@Field_20617_20618) ) (! (= (HasDirectPerm_20588_16932 Mask@@51 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| Mask@@51) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20588_16932 Mask@@51 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_13535) (o_2@@70 T@Ref) (f_4@@70 T@Field_20601_20606) ) (! (= (HasDirectPerm_20588_47416 Mask@@52 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| Mask@@52) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20588_47416 Mask@@52 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_13535) (o_2@@71 T@Ref) (f_4@@71 T@Field_20588_13588) ) (! (= (HasDirectPerm_20588_13588 Mask@@53 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| Mask@@53) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20588_13588 Mask@@53 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_13535) (o_2@@72 T@Ref) (f_4@@72 T@Field_20588_53) ) (! (= (HasDirectPerm_20588_53 Mask@@54 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| Mask@@54) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20588_53 Mask@@54 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_13535) (o_2@@73 T@Ref) (f_4@@73 T@Field_20588_3216) ) (! (= (HasDirectPerm_20588_3574 Mask@@55 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| Mask@@55) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20588_3574 Mask@@55 o_2@@73 f_4@@73))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_13535) (o_2@@74 T@Ref) (f_4@@74 T@Field_19687_19688) ) (! (= (HasDirectPerm_19654_16932 Mask@@56 o_2@@74 f_4@@74) (> (select (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| Mask@@56) o_2@@74 f_4@@74) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19654_16932 Mask@@56 o_2@@74 f_4@@74))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_13535) (o_2@@75 T@Ref) (f_4@@75 T@Field_19669_19674) ) (! (= (HasDirectPerm_19654_46282 Mask@@57 o_2@@75 f_4@@75) (> (select (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| Mask@@57) o_2@@75 f_4@@75) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19654_46282 Mask@@57 o_2@@75 f_4@@75))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_13535) (o_2@@76 T@Ref) (f_4@@76 T@Field_19654_13588) ) (! (= (HasDirectPerm_19654_13588 Mask@@58 o_2@@76 f_4@@76) (> (select (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| Mask@@58) o_2@@76 f_4@@76) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19654_13588 Mask@@58 o_2@@76 f_4@@76))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_13535) (o_2@@77 T@Ref) (f_4@@77 T@Field_19654_53) ) (! (= (HasDirectPerm_19654_53 Mask@@59 o_2@@77 f_4@@77) (> (select (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| Mask@@59) o_2@@77 f_4@@77) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19654_53 Mask@@59 o_2@@77 f_4@@77))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_13535) (o_2@@78 T@Ref) (f_4@@78 T@Field_19654_2678) ) (! (= (HasDirectPerm_19654_3574 Mask@@60 o_2@@78 f_4@@78) (> (select (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| Mask@@60) o_2@@78 f_4@@78) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19654_3574 Mask@@60 o_2@@78 f_4@@78))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_13535) (o_2@@79 T@Ref) (f_4@@79 T@Field_18836_18837) ) (! (= (HasDirectPerm_18805_16932 Mask@@61 o_2@@79 f_4@@79) (> (select (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| Mask@@61) o_2@@79 f_4@@79) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18805_16932 Mask@@61 o_2@@79 f_4@@79))
)))
(assert (forall ((Mask@@62 T@PolymorphicMapType_13535) (o_2@@80 T@Ref) (f_4@@80 T@Field_18819_18824) ) (! (= (HasDirectPerm_18805_45148 Mask@@62 o_2@@80 f_4@@80) (> (select (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| Mask@@62) o_2@@80 f_4@@80) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18805_45148 Mask@@62 o_2@@80 f_4@@80))
)))
(assert (forall ((Mask@@63 T@PolymorphicMapType_13535) (o_2@@81 T@Ref) (f_4@@81 T@Field_18805_13588) ) (! (= (HasDirectPerm_18805_13588 Mask@@63 o_2@@81 f_4@@81) (> (select (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| Mask@@63) o_2@@81 f_4@@81) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18805_13588 Mask@@63 o_2@@81 f_4@@81))
)))
(assert (forall ((Mask@@64 T@PolymorphicMapType_13535) (o_2@@82 T@Ref) (f_4@@82 T@Field_18805_53) ) (! (= (HasDirectPerm_18805_53 Mask@@64 o_2@@82 f_4@@82) (> (select (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| Mask@@64) o_2@@82 f_4@@82) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18805_53 Mask@@64 o_2@@82 f_4@@82))
)))
(assert (forall ((Mask@@65 T@PolymorphicMapType_13535) (o_2@@83 T@Ref) (f_4@@83 T@Field_18805_2181) ) (! (= (HasDirectPerm_18805_3574 Mask@@65 o_2@@83 f_4@@83) (> (select (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| Mask@@65) o_2@@83 f_4@@83) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18805_3574 Mask@@65 o_2@@83 f_4@@83))
)))
(assert (forall ((Mask@@66 T@PolymorphicMapType_13535) (o_2@@84 T@Ref) (f_4@@84 T@Field_18274_18275) ) (! (= (HasDirectPerm_18247_16932 Mask@@66 o_2@@84 f_4@@84) (> (select (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| Mask@@66) o_2@@84 f_4@@84) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18247_16932 Mask@@66 o_2@@84 f_4@@84))
)))
(assert (forall ((Mask@@67 T@PolymorphicMapType_13535) (o_2@@85 T@Ref) (f_4@@85 T@Field_18259_18264) ) (! (= (HasDirectPerm_18247_43971 Mask@@67 o_2@@85 f_4@@85) (> (select (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| Mask@@67) o_2@@85 f_4@@85) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18247_43971 Mask@@67 o_2@@85 f_4@@85))
)))
(assert (forall ((Mask@@68 T@PolymorphicMapType_13535) (o_2@@86 T@Ref) (f_4@@86 T@Field_18247_13588) ) (! (= (HasDirectPerm_18247_13588 Mask@@68 o_2@@86 f_4@@86) (> (select (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| Mask@@68) o_2@@86 f_4@@86) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18247_13588 Mask@@68 o_2@@86 f_4@@86))
)))
(assert (forall ((Mask@@69 T@PolymorphicMapType_13535) (o_2@@87 T@Ref) (f_4@@87 T@Field_18247_53) ) (! (= (HasDirectPerm_18247_53 Mask@@69 o_2@@87 f_4@@87) (> (select (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| Mask@@69) o_2@@87 f_4@@87) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18247_53 Mask@@69 o_2@@87 f_4@@87))
)))
(assert (forall ((Mask@@70 T@PolymorphicMapType_13535) (o_2@@88 T@Ref) (f_4@@88 T@Field_18247_1900) ) (! (= (HasDirectPerm_18247_3574 Mask@@70 o_2@@88 f_4@@88) (> (select (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| Mask@@70) o_2@@88 f_4@@88) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18247_3574 Mask@@70 o_2@@88 f_4@@88))
)))
(assert (forall ((Mask@@71 T@PolymorphicMapType_13535) (o_2@@89 T@Ref) (f_4@@89 T@Field_17575_17576) ) (! (= (HasDirectPerm_17546_16932 Mask@@71 o_2@@89 f_4@@89) (> (select (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| Mask@@71) o_2@@89 f_4@@89) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17546_16932 Mask@@71 o_2@@89 f_4@@89))
)))
(assert (forall ((Mask@@72 T@PolymorphicMapType_13535) (o_2@@90 T@Ref) (f_4@@90 T@Field_17559_17564) ) (! (= (HasDirectPerm_17546_42837 Mask@@72 o_2@@90 f_4@@90) (> (select (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| Mask@@72) o_2@@90 f_4@@90) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17546_42837 Mask@@72 o_2@@90 f_4@@90))
)))
(assert (forall ((Mask@@73 T@PolymorphicMapType_13535) (o_2@@91 T@Ref) (f_4@@91 T@Field_17546_13588) ) (! (= (HasDirectPerm_17546_13588 Mask@@73 o_2@@91 f_4@@91) (> (select (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| Mask@@73) o_2@@91 f_4@@91) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17546_13588 Mask@@73 o_2@@91 f_4@@91))
)))
(assert (forall ((Mask@@74 T@PolymorphicMapType_13535) (o_2@@92 T@Ref) (f_4@@92 T@Field_17546_53) ) (! (= (HasDirectPerm_17546_53 Mask@@74 o_2@@92 f_4@@92) (> (select (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| Mask@@74) o_2@@92 f_4@@92) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17546_53 Mask@@74 o_2@@92 f_4@@92))
)))
(assert (forall ((Mask@@75 T@PolymorphicMapType_13535) (o_2@@93 T@Ref) (f_4@@93 T@Field_17546_1529) ) (! (= (HasDirectPerm_17546_3574 Mask@@75 o_2@@93 f_4@@93) (> (select (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| Mask@@75) o_2@@93 f_4@@93) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17546_3574 Mask@@75 o_2@@93 f_4@@93))
)))
(assert (forall ((Mask@@76 T@PolymorphicMapType_13535) (o_2@@94 T@Ref) (f_4@@94 T@Field_16931_16932) ) (! (= (HasDirectPerm_16902_16932 Mask@@76 o_2@@94 f_4@@94) (> (select (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| Mask@@76) o_2@@94 f_4@@94) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16902_16932 Mask@@76 o_2@@94 f_4@@94))
)))
(assert (forall ((Mask@@77 T@PolymorphicMapType_13535) (o_2@@95 T@Ref) (f_4@@95 T@Field_16915_16920) ) (! (= (HasDirectPerm_16902_41703 Mask@@77 o_2@@95 f_4@@95) (> (select (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| Mask@@77) o_2@@95 f_4@@95) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16902_41703 Mask@@77 o_2@@95 f_4@@95))
)))
(assert (forall ((Mask@@78 T@PolymorphicMapType_13535) (o_2@@96 T@Ref) (f_4@@96 T@Field_16902_13588) ) (! (= (HasDirectPerm_16902_13588 Mask@@78 o_2@@96 f_4@@96) (> (select (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| Mask@@78) o_2@@96 f_4@@96) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16902_13588 Mask@@78 o_2@@96 f_4@@96))
)))
(assert (forall ((Mask@@79 T@PolymorphicMapType_13535) (o_2@@97 T@Ref) (f_4@@97 T@Field_16902_53) ) (! (= (HasDirectPerm_16902_53 Mask@@79 o_2@@97 f_4@@97) (> (select (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| Mask@@79) o_2@@97 f_4@@97) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16902_53 Mask@@79 o_2@@97 f_4@@97))
)))
(assert (forall ((Mask@@80 T@PolymorphicMapType_13535) (o_2@@98 T@Ref) (f_4@@98 T@Field_16902_1203) ) (! (= (HasDirectPerm_16902_3574 Mask@@80 o_2@@98 f_4@@98) (> (select (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| Mask@@80) o_2@@98 f_4@@98) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16902_3574 Mask@@80 o_2@@98 f_4@@98))
)))
(assert (forall ((Mask@@81 T@PolymorphicMapType_13535) (o_2@@99 T@Ref) (f_4@@99 T@Field_8623_16932) ) (! (= (HasDirectPerm_8623_16932 Mask@@81 o_2@@99 f_4@@99) (> (select (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| Mask@@81) o_2@@99 f_4@@99) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8623_16932 Mask@@81 o_2@@99 f_4@@99))
)))
(assert (forall ((Mask@@82 T@PolymorphicMapType_13535) (o_2@@100 T@Ref) (f_4@@100 T@Field_8623_16920) ) (! (= (HasDirectPerm_8623_40525 Mask@@82 o_2@@100 f_4@@100) (> (select (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| Mask@@82) o_2@@100 f_4@@100) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8623_40525 Mask@@82 o_2@@100 f_4@@100))
)))
(assert (forall ((Mask@@83 T@PolymorphicMapType_13535) (o_2@@101 T@Ref) (f_4@@101 T@Field_13587_13588) ) (! (= (HasDirectPerm_8623_13588 Mask@@83 o_2@@101 f_4@@101) (> (select (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| Mask@@83) o_2@@101 f_4@@101) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8623_13588 Mask@@83 o_2@@101 f_4@@101))
)))
(assert (forall ((Mask@@84 T@PolymorphicMapType_13535) (o_2@@102 T@Ref) (f_4@@102 T@Field_13574_53) ) (! (= (HasDirectPerm_8623_53 Mask@@84 o_2@@102 f_4@@102) (> (select (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| Mask@@84) o_2@@102 f_4@@102) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8623_53 Mask@@84 o_2@@102 f_4@@102))
)))
(assert (forall ((Mask@@85 T@PolymorphicMapType_13535) (o_2@@103 T@Ref) (f_4@@103 T@Field_21288_3574) ) (! (= (HasDirectPerm_8623_3574 Mask@@85 o_2@@103 f_4@@103) (> (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Mask@@85) o_2@@103 f_4@@103) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8623_3574 Mask@@85 o_2@@103 f_4@@103))
)))
(assert (forall ((arg1@@24 T@Ref) (arg2@@24 Real) (arg3@@24 T@Ref) (arg4@@17 Real) ) (! (IsWandField_8326_1203 (wand_1 arg1@@24 arg2@@24 arg3@@24 arg4@@17))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand_1 arg1@@24 arg2@@24 arg3@@24 arg4@@17))
)))
(assert (forall ((arg1@@25 T@Ref) (arg2@@25 Real) (arg3@@25 T@Ref) (arg4@@18 Real) ) (! (IsWandField_8339_8340 (|wand_1#ft| arg1@@25 arg2@@25 arg3@@25 arg4@@18))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand_1#ft| arg1@@25 arg2@@25 arg3@@25 arg4@@18))
)))
(assert (forall ((p@@6 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@6 f_6) (ite (> p@@6 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@6 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_13514) (ExhaleHeap@@15 T@PolymorphicMapType_13514) (Mask@@86 T@PolymorphicMapType_13535) (o_1@@0 T@Ref) (f_2 T@Field_20617_20618) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@86) (=> (HasDirectPerm_20588_16932 Mask@@86 o_1@@0 f_2) (= (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@16) o_1@@0 f_2) (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@15) o_1@@0 f_2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@86) (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@15) o_1@@0 f_2))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_13514) (ExhaleHeap@@16 T@PolymorphicMapType_13514) (Mask@@87 T@PolymorphicMapType_13535) (o_1@@1 T@Ref) (f_2@@0 T@Field_20601_20606) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@87) (=> (HasDirectPerm_20588_47416 Mask@@87 o_1@@1 f_2@@0) (= (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@17) o_1@@1 f_2@@0) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@16) o_1@@1 f_2@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@87) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@16) o_1@@1 f_2@@0))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_13514) (ExhaleHeap@@17 T@PolymorphicMapType_13514) (Mask@@88 T@PolymorphicMapType_13535) (o_1@@2 T@Ref) (f_2@@1 T@Field_20588_13588) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@88) (=> (HasDirectPerm_20588_13588 Mask@@88 o_1@@2 f_2@@1) (= (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@18) o_1@@2 f_2@@1) (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@17) o_1@@2 f_2@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@88) (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@17) o_1@@2 f_2@@1))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_13514) (ExhaleHeap@@18 T@PolymorphicMapType_13514) (Mask@@89 T@PolymorphicMapType_13535) (o_1@@3 T@Ref) (f_2@@2 T@Field_20588_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@89) (=> (HasDirectPerm_20588_53 Mask@@89 o_1@@3 f_2@@2) (= (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@19) o_1@@3 f_2@@2) (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@18) o_1@@3 f_2@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@89) (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@18) o_1@@3 f_2@@2))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_13514) (ExhaleHeap@@19 T@PolymorphicMapType_13514) (Mask@@90 T@PolymorphicMapType_13535) (o_1@@4 T@Ref) (f_2@@3 T@Field_20588_3216) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@90) (=> (HasDirectPerm_20588_3574 Mask@@90 o_1@@4 f_2@@3) (= (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@20) o_1@@4 f_2@@3) (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@19) o_1@@4 f_2@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@90) (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@19) o_1@@4 f_2@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_13514) (ExhaleHeap@@20 T@PolymorphicMapType_13514) (Mask@@91 T@PolymorphicMapType_13535) (o_1@@5 T@Ref) (f_2@@4 T@Field_19687_19688) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@91) (=> (HasDirectPerm_19654_16932 Mask@@91 o_1@@5 f_2@@4) (= (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@21) o_1@@5 f_2@@4) (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@20) o_1@@5 f_2@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@91) (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@20) o_1@@5 f_2@@4))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_13514) (ExhaleHeap@@21 T@PolymorphicMapType_13514) (Mask@@92 T@PolymorphicMapType_13535) (o_1@@6 T@Ref) (f_2@@5 T@Field_19669_19674) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@92) (=> (HasDirectPerm_19654_46282 Mask@@92 o_1@@6 f_2@@5) (= (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@22) o_1@@6 f_2@@5) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@21) o_1@@6 f_2@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@92) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@21) o_1@@6 f_2@@5))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_13514) (ExhaleHeap@@22 T@PolymorphicMapType_13514) (Mask@@93 T@PolymorphicMapType_13535) (o_1@@7 T@Ref) (f_2@@6 T@Field_19654_13588) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@93) (=> (HasDirectPerm_19654_13588 Mask@@93 o_1@@7 f_2@@6) (= (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@23) o_1@@7 f_2@@6) (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@22) o_1@@7 f_2@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@93) (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@22) o_1@@7 f_2@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_13514) (ExhaleHeap@@23 T@PolymorphicMapType_13514) (Mask@@94 T@PolymorphicMapType_13535) (o_1@@8 T@Ref) (f_2@@7 T@Field_19654_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@94) (=> (HasDirectPerm_19654_53 Mask@@94 o_1@@8 f_2@@7) (= (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@24) o_1@@8 f_2@@7) (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@23) o_1@@8 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@94) (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@23) o_1@@8 f_2@@7))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_13514) (ExhaleHeap@@24 T@PolymorphicMapType_13514) (Mask@@95 T@PolymorphicMapType_13535) (o_1@@9 T@Ref) (f_2@@8 T@Field_19654_2678) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@95) (=> (HasDirectPerm_19654_3574 Mask@@95 o_1@@9 f_2@@8) (= (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@25) o_1@@9 f_2@@8) (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@24) o_1@@9 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@95) (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@24) o_1@@9 f_2@@8))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_13514) (ExhaleHeap@@25 T@PolymorphicMapType_13514) (Mask@@96 T@PolymorphicMapType_13535) (o_1@@10 T@Ref) (f_2@@9 T@Field_18836_18837) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@96) (=> (HasDirectPerm_18805_16932 Mask@@96 o_1@@10 f_2@@9) (= (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@26) o_1@@10 f_2@@9) (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@25) o_1@@10 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@96) (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@25) o_1@@10 f_2@@9))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_13514) (ExhaleHeap@@26 T@PolymorphicMapType_13514) (Mask@@97 T@PolymorphicMapType_13535) (o_1@@11 T@Ref) (f_2@@10 T@Field_18819_18824) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@97) (=> (HasDirectPerm_18805_45148 Mask@@97 o_1@@11 f_2@@10) (= (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@27) o_1@@11 f_2@@10) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@26) o_1@@11 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@97) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@26) o_1@@11 f_2@@10))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_13514) (ExhaleHeap@@27 T@PolymorphicMapType_13514) (Mask@@98 T@PolymorphicMapType_13535) (o_1@@12 T@Ref) (f_2@@11 T@Field_18805_13588) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@98) (=> (HasDirectPerm_18805_13588 Mask@@98 o_1@@12 f_2@@11) (= (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@28) o_1@@12 f_2@@11) (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@27) o_1@@12 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@98) (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@27) o_1@@12 f_2@@11))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_13514) (ExhaleHeap@@28 T@PolymorphicMapType_13514) (Mask@@99 T@PolymorphicMapType_13535) (o_1@@13 T@Ref) (f_2@@12 T@Field_18805_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@28 Mask@@99) (=> (HasDirectPerm_18805_53 Mask@@99 o_1@@13 f_2@@12) (= (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@29) o_1@@13 f_2@@12) (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@28) o_1@@13 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@28 Mask@@99) (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@28) o_1@@13 f_2@@12))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_13514) (ExhaleHeap@@29 T@PolymorphicMapType_13514) (Mask@@100 T@PolymorphicMapType_13535) (o_1@@14 T@Ref) (f_2@@13 T@Field_18805_2181) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@29 Mask@@100) (=> (HasDirectPerm_18805_3574 Mask@@100 o_1@@14 f_2@@13) (= (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@30) o_1@@14 f_2@@13) (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@29) o_1@@14 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@29 Mask@@100) (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@29) o_1@@14 f_2@@13))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_13514) (ExhaleHeap@@30 T@PolymorphicMapType_13514) (Mask@@101 T@PolymorphicMapType_13535) (o_1@@15 T@Ref) (f_2@@14 T@Field_18274_18275) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@30 Mask@@101) (=> (HasDirectPerm_18247_16932 Mask@@101 o_1@@15 f_2@@14) (= (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@31) o_1@@15 f_2@@14) (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@30) o_1@@15 f_2@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@30 Mask@@101) (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@30) o_1@@15 f_2@@14))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_13514) (ExhaleHeap@@31 T@PolymorphicMapType_13514) (Mask@@102 T@PolymorphicMapType_13535) (o_1@@16 T@Ref) (f_2@@15 T@Field_18259_18264) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@31 Mask@@102) (=> (HasDirectPerm_18247_43971 Mask@@102 o_1@@16 f_2@@15) (= (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@32) o_1@@16 f_2@@15) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@31) o_1@@16 f_2@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@31 Mask@@102) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@31) o_1@@16 f_2@@15))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_13514) (ExhaleHeap@@32 T@PolymorphicMapType_13514) (Mask@@103 T@PolymorphicMapType_13535) (o_1@@17 T@Ref) (f_2@@16 T@Field_18247_13588) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@32 Mask@@103) (=> (HasDirectPerm_18247_13588 Mask@@103 o_1@@17 f_2@@16) (= (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@33) o_1@@17 f_2@@16) (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@32) o_1@@17 f_2@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@32 Mask@@103) (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@32) o_1@@17 f_2@@16))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_13514) (ExhaleHeap@@33 T@PolymorphicMapType_13514) (Mask@@104 T@PolymorphicMapType_13535) (o_1@@18 T@Ref) (f_2@@17 T@Field_18247_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@33 Mask@@104) (=> (HasDirectPerm_18247_53 Mask@@104 o_1@@18 f_2@@17) (= (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@34) o_1@@18 f_2@@17) (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@33) o_1@@18 f_2@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@33 Mask@@104) (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@33) o_1@@18 f_2@@17))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_13514) (ExhaleHeap@@34 T@PolymorphicMapType_13514) (Mask@@105 T@PolymorphicMapType_13535) (o_1@@19 T@Ref) (f_2@@18 T@Field_18247_1900) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@34 Mask@@105) (=> (HasDirectPerm_18247_3574 Mask@@105 o_1@@19 f_2@@18) (= (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@35) o_1@@19 f_2@@18) (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@34) o_1@@19 f_2@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@34 Mask@@105) (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@34) o_1@@19 f_2@@18))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_13514) (ExhaleHeap@@35 T@PolymorphicMapType_13514) (Mask@@106 T@PolymorphicMapType_13535) (o_1@@20 T@Ref) (f_2@@19 T@Field_17575_17576) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@35 Mask@@106) (=> (HasDirectPerm_17546_16932 Mask@@106 o_1@@20 f_2@@19) (= (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@36) o_1@@20 f_2@@19) (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@35) o_1@@20 f_2@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@35 Mask@@106) (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@35) o_1@@20 f_2@@19))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_13514) (ExhaleHeap@@36 T@PolymorphicMapType_13514) (Mask@@107 T@PolymorphicMapType_13535) (o_1@@21 T@Ref) (f_2@@20 T@Field_17559_17564) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@36 Mask@@107) (=> (HasDirectPerm_17546_42837 Mask@@107 o_1@@21 f_2@@20) (= (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@37) o_1@@21 f_2@@20) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@36) o_1@@21 f_2@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@36 Mask@@107) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@36) o_1@@21 f_2@@20))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_13514) (ExhaleHeap@@37 T@PolymorphicMapType_13514) (Mask@@108 T@PolymorphicMapType_13535) (o_1@@22 T@Ref) (f_2@@21 T@Field_17546_13588) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@37 Mask@@108) (=> (HasDirectPerm_17546_13588 Mask@@108 o_1@@22 f_2@@21) (= (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@38) o_1@@22 f_2@@21) (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@37) o_1@@22 f_2@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@37 Mask@@108) (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@37) o_1@@22 f_2@@21))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_13514) (ExhaleHeap@@38 T@PolymorphicMapType_13514) (Mask@@109 T@PolymorphicMapType_13535) (o_1@@23 T@Ref) (f_2@@22 T@Field_17546_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@38 Mask@@109) (=> (HasDirectPerm_17546_53 Mask@@109 o_1@@23 f_2@@22) (= (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@39) o_1@@23 f_2@@22) (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@38) o_1@@23 f_2@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@38 Mask@@109) (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@38) o_1@@23 f_2@@22))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_13514) (ExhaleHeap@@39 T@PolymorphicMapType_13514) (Mask@@110 T@PolymorphicMapType_13535) (o_1@@24 T@Ref) (f_2@@23 T@Field_17546_1529) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@39 Mask@@110) (=> (HasDirectPerm_17546_3574 Mask@@110 o_1@@24 f_2@@23) (= (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@40) o_1@@24 f_2@@23) (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@39) o_1@@24 f_2@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@39 Mask@@110) (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@39) o_1@@24 f_2@@23))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_13514) (ExhaleHeap@@40 T@PolymorphicMapType_13514) (Mask@@111 T@PolymorphicMapType_13535) (o_1@@25 T@Ref) (f_2@@24 T@Field_16931_16932) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@40 Mask@@111) (=> (HasDirectPerm_16902_16932 Mask@@111 o_1@@25 f_2@@24) (= (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@41) o_1@@25 f_2@@24) (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@40) o_1@@25 f_2@@24))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@40 Mask@@111) (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@40) o_1@@25 f_2@@24))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_13514) (ExhaleHeap@@41 T@PolymorphicMapType_13514) (Mask@@112 T@PolymorphicMapType_13535) (o_1@@26 T@Ref) (f_2@@25 T@Field_16915_16920) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@41 Mask@@112) (=> (HasDirectPerm_16902_41703 Mask@@112 o_1@@26 f_2@@25) (= (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@42) o_1@@26 f_2@@25) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@41) o_1@@26 f_2@@25))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@41 Mask@@112) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@41) o_1@@26 f_2@@25))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_13514) (ExhaleHeap@@42 T@PolymorphicMapType_13514) (Mask@@113 T@PolymorphicMapType_13535) (o_1@@27 T@Ref) (f_2@@26 T@Field_16902_13588) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@42 Mask@@113) (=> (HasDirectPerm_16902_13588 Mask@@113 o_1@@27 f_2@@26) (= (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@43) o_1@@27 f_2@@26) (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@42) o_1@@27 f_2@@26))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@42 Mask@@113) (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@42) o_1@@27 f_2@@26))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_13514) (ExhaleHeap@@43 T@PolymorphicMapType_13514) (Mask@@114 T@PolymorphicMapType_13535) (o_1@@28 T@Ref) (f_2@@27 T@Field_16902_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@43 Mask@@114) (=> (HasDirectPerm_16902_53 Mask@@114 o_1@@28 f_2@@27) (= (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@44) o_1@@28 f_2@@27) (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@43) o_1@@28 f_2@@27))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@43 Mask@@114) (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@43) o_1@@28 f_2@@27))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_13514) (ExhaleHeap@@44 T@PolymorphicMapType_13514) (Mask@@115 T@PolymorphicMapType_13535) (o_1@@29 T@Ref) (f_2@@28 T@Field_16902_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@44 Mask@@115) (=> (HasDirectPerm_16902_3574 Mask@@115 o_1@@29 f_2@@28) (= (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@45) o_1@@29 f_2@@28) (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@44) o_1@@29 f_2@@28))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@44 Mask@@115) (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@44) o_1@@29 f_2@@28))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_13514) (ExhaleHeap@@45 T@PolymorphicMapType_13514) (Mask@@116 T@PolymorphicMapType_13535) (o_1@@30 T@Ref) (f_2@@29 T@Field_8623_16932) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@45 Mask@@116) (=> (HasDirectPerm_8623_16932 Mask@@116 o_1@@30 f_2@@29) (= (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@46) o_1@@30 f_2@@29) (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@45) o_1@@30 f_2@@29))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@45 Mask@@116) (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@45) o_1@@30 f_2@@29))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_13514) (ExhaleHeap@@46 T@PolymorphicMapType_13514) (Mask@@117 T@PolymorphicMapType_13535) (o_1@@31 T@Ref) (f_2@@30 T@Field_8623_16920) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@46 Mask@@117) (=> (HasDirectPerm_8623_40525 Mask@@117 o_1@@31 f_2@@30) (= (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@47) o_1@@31 f_2@@30) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@46) o_1@@31 f_2@@30))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@46 Mask@@117) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@46) o_1@@31 f_2@@30))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_13514) (ExhaleHeap@@47 T@PolymorphicMapType_13514) (Mask@@118 T@PolymorphicMapType_13535) (o_1@@32 T@Ref) (f_2@@31 T@Field_13587_13588) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@47 Mask@@118) (=> (HasDirectPerm_8623_13588 Mask@@118 o_1@@32 f_2@@31) (= (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@48) o_1@@32 f_2@@31) (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@47) o_1@@32 f_2@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@47 Mask@@118) (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@47) o_1@@32 f_2@@31))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_13514) (ExhaleHeap@@48 T@PolymorphicMapType_13514) (Mask@@119 T@PolymorphicMapType_13535) (o_1@@33 T@Ref) (f_2@@32 T@Field_13574_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@48 Mask@@119) (=> (HasDirectPerm_8623_53 Mask@@119 o_1@@33 f_2@@32) (= (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@49) o_1@@33 f_2@@32) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@48) o_1@@33 f_2@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@48 Mask@@119) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@48) o_1@@33 f_2@@32))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_13514) (ExhaleHeap@@49 T@PolymorphicMapType_13514) (Mask@@120 T@PolymorphicMapType_13535) (o_1@@34 T@Ref) (f_2@@33 T@Field_21288_3574) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@49 Mask@@120) (=> (HasDirectPerm_8623_3574 Mask@@120 o_1@@34 f_2@@33) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@50) o_1@@34 f_2@@33) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@49) o_1@@34 f_2@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@49 Mask@@120) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@49) o_1@@34 f_2@@33))
)))
(assert (forall ((arg1@@26 T@Ref) (arg2@@26 Real) (arg3@@26 T@Ref) (arg4@@19 Real) ) (!  (not (IsPredicateField_8326_1203 (wand_1 arg1@@26 arg2@@26 arg3@@26 arg4@@19)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand_1 arg1@@26 arg2@@26 arg3@@26 arg4@@19))
)))
(assert (forall ((arg1@@27 T@Ref) (arg2@@27 Real) (arg3@@27 T@Ref) (arg4@@20 Real) ) (!  (not (IsPredicateField_8339_8340 (|wand_1#ft| arg1@@27 arg2@@27 arg3@@27 arg4@@20)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand_1#ft| arg1@@27 arg2@@27 arg3@@27 arg4@@20))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_13514) (ExhaleHeap@@50 T@PolymorphicMapType_13514) (Mask@@121 T@PolymorphicMapType_13535) (pm_f@@13 T@Field_20617_20618) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@50 Mask@@121) (=> (and (HasDirectPerm_20588_16932 Mask@@121 null pm_f@@13) (IsPredicateField_8596_8597 pm_f@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2@@34 T@Field_21288_3574) ) (!  (=> (select (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2 f_2@@34) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@51) o2 f_2@@34) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@50) o2 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@50) o2 f_2@@34))
)) (forall ((o2@@0 T@Ref) (f_2@@35 T@Field_13574_53) ) (!  (=> (select (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@0 f_2@@35) (= (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@51) o2@@0 f_2@@35) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@0 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@0 f_2@@35))
))) (forall ((o2@@1 T@Ref) (f_2@@36 T@Field_13587_13588) ) (!  (=> (select (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@1 f_2@@36) (= (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@51) o2@@1 f_2@@36) (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@1 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@1 f_2@@36))
))) (forall ((o2@@2 T@Ref) (f_2@@37 T@Field_8623_16920) ) (!  (=> (select (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@2 f_2@@37) (= (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@51) o2@@2 f_2@@37) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@2 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@2 f_2@@37))
))) (forall ((o2@@3 T@Ref) (f_2@@38 T@Field_8623_16932) ) (!  (=> (select (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@3 f_2@@38) (= (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@51) o2@@3 f_2@@38) (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@3 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@3 f_2@@38))
))) (forall ((o2@@4 T@Ref) (f_2@@39 T@Field_16902_1203) ) (!  (=> (select (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@4 f_2@@39) (= (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@51) o2@@4 f_2@@39) (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@4 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@4 f_2@@39))
))) (forall ((o2@@5 T@Ref) (f_2@@40 T@Field_16902_53) ) (!  (=> (select (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@5 f_2@@40) (= (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@51) o2@@5 f_2@@40) (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@5 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@5 f_2@@40))
))) (forall ((o2@@6 T@Ref) (f_2@@41 T@Field_16902_13588) ) (!  (=> (select (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@6 f_2@@41) (= (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@51) o2@@6 f_2@@41) (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@6 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@6 f_2@@41))
))) (forall ((o2@@7 T@Ref) (f_2@@42 T@Field_16915_16920) ) (!  (=> (select (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@7 f_2@@42) (= (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@51) o2@@7 f_2@@42) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@7 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@7 f_2@@42))
))) (forall ((o2@@8 T@Ref) (f_2@@43 T@Field_16931_16932) ) (!  (=> (select (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@8 f_2@@43) (= (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@51) o2@@8 f_2@@43) (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@8 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@8 f_2@@43))
))) (forall ((o2@@9 T@Ref) (f_2@@44 T@Field_17546_1529) ) (!  (=> (select (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@9 f_2@@44) (= (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@51) o2@@9 f_2@@44) (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@9 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@9 f_2@@44))
))) (forall ((o2@@10 T@Ref) (f_2@@45 T@Field_17546_53) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@10 f_2@@45) (= (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@51) o2@@10 f_2@@45) (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@10 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@10 f_2@@45))
))) (forall ((o2@@11 T@Ref) (f_2@@46 T@Field_17546_13588) ) (!  (=> (select (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@11 f_2@@46) (= (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@51) o2@@11 f_2@@46) (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@11 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@11 f_2@@46))
))) (forall ((o2@@12 T@Ref) (f_2@@47 T@Field_17559_17564) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@12 f_2@@47) (= (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@51) o2@@12 f_2@@47) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@12 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@12 f_2@@47))
))) (forall ((o2@@13 T@Ref) (f_2@@48 T@Field_17575_17576) ) (!  (=> (select (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@13 f_2@@48) (= (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@51) o2@@13 f_2@@48) (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@13 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@13 f_2@@48))
))) (forall ((o2@@14 T@Ref) (f_2@@49 T@Field_18247_1900) ) (!  (=> (select (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@14 f_2@@49) (= (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@51) o2@@14 f_2@@49) (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@14 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@14 f_2@@49))
))) (forall ((o2@@15 T@Ref) (f_2@@50 T@Field_18247_53) ) (!  (=> (select (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@15 f_2@@50) (= (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@51) o2@@15 f_2@@50) (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@15 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@15 f_2@@50))
))) (forall ((o2@@16 T@Ref) (f_2@@51 T@Field_18247_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@16 f_2@@51) (= (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@51) o2@@16 f_2@@51) (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@16 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@16 f_2@@51))
))) (forall ((o2@@17 T@Ref) (f_2@@52 T@Field_18259_18264) ) (!  (=> (select (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@17 f_2@@52) (= (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@51) o2@@17 f_2@@52) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@17 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@17 f_2@@52))
))) (forall ((o2@@18 T@Ref) (f_2@@53 T@Field_18274_18275) ) (!  (=> (select (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@18 f_2@@53) (= (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@51) o2@@18 f_2@@53) (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@18 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@18 f_2@@53))
))) (forall ((o2@@19 T@Ref) (f_2@@54 T@Field_18805_2181) ) (!  (=> (select (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@19 f_2@@54) (= (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@51) o2@@19 f_2@@54) (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@19 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@19 f_2@@54))
))) (forall ((o2@@20 T@Ref) (f_2@@55 T@Field_18805_53) ) (!  (=> (select (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@20 f_2@@55) (= (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@51) o2@@20 f_2@@55) (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@20 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@20 f_2@@55))
))) (forall ((o2@@21 T@Ref) (f_2@@56 T@Field_18805_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@21 f_2@@56) (= (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@51) o2@@21 f_2@@56) (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@21 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@21 f_2@@56))
))) (forall ((o2@@22 T@Ref) (f_2@@57 T@Field_18819_18824) ) (!  (=> (select (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@22 f_2@@57) (= (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@51) o2@@22 f_2@@57) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@22 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@22 f_2@@57))
))) (forall ((o2@@23 T@Ref) (f_2@@58 T@Field_18836_18837) ) (!  (=> (select (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@23 f_2@@58) (= (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@51) o2@@23 f_2@@58) (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@23 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@23 f_2@@58))
))) (forall ((o2@@24 T@Ref) (f_2@@59 T@Field_19654_2678) ) (!  (=> (select (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@24 f_2@@59) (= (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@51) o2@@24 f_2@@59) (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@24 f_2@@59)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@24 f_2@@59))
))) (forall ((o2@@25 T@Ref) (f_2@@60 T@Field_19654_53) ) (!  (=> (select (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@25 f_2@@60) (= (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@51) o2@@25 f_2@@60) (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@25 f_2@@60)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@25 f_2@@60))
))) (forall ((o2@@26 T@Ref) (f_2@@61 T@Field_19654_13588) ) (!  (=> (select (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@26 f_2@@61) (= (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@51) o2@@26 f_2@@61) (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@26 f_2@@61)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@26 f_2@@61))
))) (forall ((o2@@27 T@Ref) (f_2@@62 T@Field_19669_19674) ) (!  (=> (select (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@27 f_2@@62) (= (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@51) o2@@27 f_2@@62) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@27 f_2@@62)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@27 f_2@@62))
))) (forall ((o2@@28 T@Ref) (f_2@@63 T@Field_19687_19688) ) (!  (=> (select (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@28 f_2@@63) (= (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@51) o2@@28 f_2@@63) (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@28 f_2@@63)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@28 f_2@@63))
))) (forall ((o2@@29 T@Ref) (f_2@@64 T@Field_20588_3216) ) (!  (=> (select (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@29 f_2@@64) (= (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@51) o2@@29 f_2@@64) (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@29 f_2@@64)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@29 f_2@@64))
))) (forall ((o2@@30 T@Ref) (f_2@@65 T@Field_20588_53) ) (!  (=> (select (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@30 f_2@@65) (= (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@51) o2@@30 f_2@@65) (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@30 f_2@@65)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@30 f_2@@65))
))) (forall ((o2@@31 T@Ref) (f_2@@66 T@Field_20588_13588) ) (!  (=> (select (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@31 f_2@@66) (= (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@51) o2@@31 f_2@@66) (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@31 f_2@@66)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@31 f_2@@66))
))) (forall ((o2@@32 T@Ref) (f_2@@67 T@Field_20601_20606) ) (!  (=> (select (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@32 f_2@@67) (= (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) o2@@32 f_2@@67) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@32 f_2@@67)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@32 f_2@@67))
))) (forall ((o2@@33 T@Ref) (f_2@@68 T@Field_20617_20618) ) (!  (=> (select (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@51) null (PredicateMaskField_20588 pm_f@@13))) o2@@33 f_2@@68) (= (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@51) o2@@33 f_2@@68) (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@33 f_2@@68)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@50) o2@@33 f_2@@68))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@50 Mask@@121) (IsPredicateField_8596_8597 pm_f@@13))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_13514) (ExhaleHeap@@51 T@PolymorphicMapType_13514) (Mask@@122 T@PolymorphicMapType_13535) (pm_f@@14 T@Field_19687_19688) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@51 Mask@@122) (=> (and (HasDirectPerm_19654_16932 Mask@@122 null pm_f@@14) (IsPredicateField_8531_8532 pm_f@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@34 T@Ref) (f_2@@69 T@Field_21288_3574) ) (!  (=> (select (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@34 f_2@@69) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@52) o2@@34 f_2@@69) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@34 f_2@@69)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@34 f_2@@69))
)) (forall ((o2@@35 T@Ref) (f_2@@70 T@Field_13574_53) ) (!  (=> (select (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@35 f_2@@70) (= (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@52) o2@@35 f_2@@70) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@35 f_2@@70)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@35 f_2@@70))
))) (forall ((o2@@36 T@Ref) (f_2@@71 T@Field_13587_13588) ) (!  (=> (select (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@36 f_2@@71) (= (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@52) o2@@36 f_2@@71) (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@36 f_2@@71)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@36 f_2@@71))
))) (forall ((o2@@37 T@Ref) (f_2@@72 T@Field_8623_16920) ) (!  (=> (select (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@37 f_2@@72) (= (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@52) o2@@37 f_2@@72) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@37 f_2@@72)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@37 f_2@@72))
))) (forall ((o2@@38 T@Ref) (f_2@@73 T@Field_8623_16932) ) (!  (=> (select (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@38 f_2@@73) (= (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@52) o2@@38 f_2@@73) (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@38 f_2@@73)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@38 f_2@@73))
))) (forall ((o2@@39 T@Ref) (f_2@@74 T@Field_16902_1203) ) (!  (=> (select (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@39 f_2@@74) (= (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@52) o2@@39 f_2@@74) (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@39 f_2@@74)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@39 f_2@@74))
))) (forall ((o2@@40 T@Ref) (f_2@@75 T@Field_16902_53) ) (!  (=> (select (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@40 f_2@@75) (= (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@52) o2@@40 f_2@@75) (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@40 f_2@@75)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@40 f_2@@75))
))) (forall ((o2@@41 T@Ref) (f_2@@76 T@Field_16902_13588) ) (!  (=> (select (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@41 f_2@@76) (= (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@52) o2@@41 f_2@@76) (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@41 f_2@@76)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@41 f_2@@76))
))) (forall ((o2@@42 T@Ref) (f_2@@77 T@Field_16915_16920) ) (!  (=> (select (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@42 f_2@@77) (= (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@52) o2@@42 f_2@@77) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@42 f_2@@77)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@42 f_2@@77))
))) (forall ((o2@@43 T@Ref) (f_2@@78 T@Field_16931_16932) ) (!  (=> (select (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@43 f_2@@78) (= (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@52) o2@@43 f_2@@78) (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@43 f_2@@78)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@43 f_2@@78))
))) (forall ((o2@@44 T@Ref) (f_2@@79 T@Field_17546_1529) ) (!  (=> (select (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@44 f_2@@79) (= (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@52) o2@@44 f_2@@79) (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@44 f_2@@79)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@44 f_2@@79))
))) (forall ((o2@@45 T@Ref) (f_2@@80 T@Field_17546_53) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@45 f_2@@80) (= (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@52) o2@@45 f_2@@80) (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@45 f_2@@80)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@45 f_2@@80))
))) (forall ((o2@@46 T@Ref) (f_2@@81 T@Field_17546_13588) ) (!  (=> (select (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@46 f_2@@81) (= (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@52) o2@@46 f_2@@81) (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@46 f_2@@81)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@46 f_2@@81))
))) (forall ((o2@@47 T@Ref) (f_2@@82 T@Field_17559_17564) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@47 f_2@@82) (= (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@52) o2@@47 f_2@@82) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@47 f_2@@82)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@47 f_2@@82))
))) (forall ((o2@@48 T@Ref) (f_2@@83 T@Field_17575_17576) ) (!  (=> (select (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@48 f_2@@83) (= (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@52) o2@@48 f_2@@83) (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@48 f_2@@83)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@48 f_2@@83))
))) (forall ((o2@@49 T@Ref) (f_2@@84 T@Field_18247_1900) ) (!  (=> (select (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@49 f_2@@84) (= (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@52) o2@@49 f_2@@84) (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@49 f_2@@84)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@49 f_2@@84))
))) (forall ((o2@@50 T@Ref) (f_2@@85 T@Field_18247_53) ) (!  (=> (select (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@50 f_2@@85) (= (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@52) o2@@50 f_2@@85) (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@50 f_2@@85)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@50 f_2@@85))
))) (forall ((o2@@51 T@Ref) (f_2@@86 T@Field_18247_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@51 f_2@@86) (= (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@52) o2@@51 f_2@@86) (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@51 f_2@@86)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@51 f_2@@86))
))) (forall ((o2@@52 T@Ref) (f_2@@87 T@Field_18259_18264) ) (!  (=> (select (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@52 f_2@@87) (= (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@52) o2@@52 f_2@@87) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@52 f_2@@87)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@52 f_2@@87))
))) (forall ((o2@@53 T@Ref) (f_2@@88 T@Field_18274_18275) ) (!  (=> (select (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@53 f_2@@88) (= (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@52) o2@@53 f_2@@88) (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@53 f_2@@88)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@53 f_2@@88))
))) (forall ((o2@@54 T@Ref) (f_2@@89 T@Field_18805_2181) ) (!  (=> (select (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@54 f_2@@89) (= (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@52) o2@@54 f_2@@89) (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@54 f_2@@89)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@54 f_2@@89))
))) (forall ((o2@@55 T@Ref) (f_2@@90 T@Field_18805_53) ) (!  (=> (select (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@55 f_2@@90) (= (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@52) o2@@55 f_2@@90) (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@55 f_2@@90)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@55 f_2@@90))
))) (forall ((o2@@56 T@Ref) (f_2@@91 T@Field_18805_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@56 f_2@@91) (= (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@52) o2@@56 f_2@@91) (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@56 f_2@@91)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@56 f_2@@91))
))) (forall ((o2@@57 T@Ref) (f_2@@92 T@Field_18819_18824) ) (!  (=> (select (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@57 f_2@@92) (= (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@52) o2@@57 f_2@@92) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@57 f_2@@92)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@57 f_2@@92))
))) (forall ((o2@@58 T@Ref) (f_2@@93 T@Field_18836_18837) ) (!  (=> (select (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@58 f_2@@93) (= (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@52) o2@@58 f_2@@93) (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@58 f_2@@93)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@58 f_2@@93))
))) (forall ((o2@@59 T@Ref) (f_2@@94 T@Field_19654_2678) ) (!  (=> (select (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@59 f_2@@94) (= (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@52) o2@@59 f_2@@94) (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@59 f_2@@94)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@59 f_2@@94))
))) (forall ((o2@@60 T@Ref) (f_2@@95 T@Field_19654_53) ) (!  (=> (select (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@60 f_2@@95) (= (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@52) o2@@60 f_2@@95) (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@60 f_2@@95)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@60 f_2@@95))
))) (forall ((o2@@61 T@Ref) (f_2@@96 T@Field_19654_13588) ) (!  (=> (select (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@61 f_2@@96) (= (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@52) o2@@61 f_2@@96) (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@61 f_2@@96)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@61 f_2@@96))
))) (forall ((o2@@62 T@Ref) (f_2@@97 T@Field_19669_19674) ) (!  (=> (select (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@62 f_2@@97) (= (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) o2@@62 f_2@@97) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@62 f_2@@97)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@62 f_2@@97))
))) (forall ((o2@@63 T@Ref) (f_2@@98 T@Field_19687_19688) ) (!  (=> (select (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@63 f_2@@98) (= (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@52) o2@@63 f_2@@98) (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@63 f_2@@98)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@63 f_2@@98))
))) (forall ((o2@@64 T@Ref) (f_2@@99 T@Field_20588_3216) ) (!  (=> (select (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@64 f_2@@99) (= (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@52) o2@@64 f_2@@99) (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@64 f_2@@99)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@64 f_2@@99))
))) (forall ((o2@@65 T@Ref) (f_2@@100 T@Field_20588_53) ) (!  (=> (select (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@65 f_2@@100) (= (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@52) o2@@65 f_2@@100) (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@65 f_2@@100)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@65 f_2@@100))
))) (forall ((o2@@66 T@Ref) (f_2@@101 T@Field_20588_13588) ) (!  (=> (select (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@66 f_2@@101) (= (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@52) o2@@66 f_2@@101) (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@66 f_2@@101)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@66 f_2@@101))
))) (forall ((o2@@67 T@Ref) (f_2@@102 T@Field_20601_20606) ) (!  (=> (select (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@67 f_2@@102) (= (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@52) o2@@67 f_2@@102) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@67 f_2@@102)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@67 f_2@@102))
))) (forall ((o2@@68 T@Ref) (f_2@@103 T@Field_20617_20618) ) (!  (=> (select (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@52) null (PredicateMaskField_19654 pm_f@@14))) o2@@68 f_2@@103) (= (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@52) o2@@68 f_2@@103) (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@68 f_2@@103)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@51) o2@@68 f_2@@103))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@51 Mask@@122) (IsPredicateField_8531_8532 pm_f@@14))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_13514) (ExhaleHeap@@52 T@PolymorphicMapType_13514) (Mask@@123 T@PolymorphicMapType_13535) (pm_f@@15 T@Field_18836_18837) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@52 Mask@@123) (=> (and (HasDirectPerm_18805_16932 Mask@@123 null pm_f@@15) (IsPredicateField_8465_8466 pm_f@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@69 T@Ref) (f_2@@104 T@Field_21288_3574) ) (!  (=> (select (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@69 f_2@@104) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@53) o2@@69 f_2@@104) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@69 f_2@@104)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@69 f_2@@104))
)) (forall ((o2@@70 T@Ref) (f_2@@105 T@Field_13574_53) ) (!  (=> (select (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@70 f_2@@105) (= (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@53) o2@@70 f_2@@105) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@70 f_2@@105)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@70 f_2@@105))
))) (forall ((o2@@71 T@Ref) (f_2@@106 T@Field_13587_13588) ) (!  (=> (select (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@71 f_2@@106) (= (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@53) o2@@71 f_2@@106) (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@71 f_2@@106)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@71 f_2@@106))
))) (forall ((o2@@72 T@Ref) (f_2@@107 T@Field_8623_16920) ) (!  (=> (select (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@72 f_2@@107) (= (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@53) o2@@72 f_2@@107) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@72 f_2@@107)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@72 f_2@@107))
))) (forall ((o2@@73 T@Ref) (f_2@@108 T@Field_8623_16932) ) (!  (=> (select (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@73 f_2@@108) (= (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@53) o2@@73 f_2@@108) (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@73 f_2@@108)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@73 f_2@@108))
))) (forall ((o2@@74 T@Ref) (f_2@@109 T@Field_16902_1203) ) (!  (=> (select (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@74 f_2@@109) (= (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@53) o2@@74 f_2@@109) (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@74 f_2@@109)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@74 f_2@@109))
))) (forall ((o2@@75 T@Ref) (f_2@@110 T@Field_16902_53) ) (!  (=> (select (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@75 f_2@@110) (= (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@53) o2@@75 f_2@@110) (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@75 f_2@@110)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@75 f_2@@110))
))) (forall ((o2@@76 T@Ref) (f_2@@111 T@Field_16902_13588) ) (!  (=> (select (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@76 f_2@@111) (= (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@53) o2@@76 f_2@@111) (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@76 f_2@@111)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@76 f_2@@111))
))) (forall ((o2@@77 T@Ref) (f_2@@112 T@Field_16915_16920) ) (!  (=> (select (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@77 f_2@@112) (= (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@53) o2@@77 f_2@@112) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@77 f_2@@112)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@77 f_2@@112))
))) (forall ((o2@@78 T@Ref) (f_2@@113 T@Field_16931_16932) ) (!  (=> (select (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@78 f_2@@113) (= (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@53) o2@@78 f_2@@113) (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@78 f_2@@113)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@78 f_2@@113))
))) (forall ((o2@@79 T@Ref) (f_2@@114 T@Field_17546_1529) ) (!  (=> (select (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@79 f_2@@114) (= (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@53) o2@@79 f_2@@114) (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@79 f_2@@114)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@79 f_2@@114))
))) (forall ((o2@@80 T@Ref) (f_2@@115 T@Field_17546_53) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@80 f_2@@115) (= (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@53) o2@@80 f_2@@115) (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@80 f_2@@115)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@80 f_2@@115))
))) (forall ((o2@@81 T@Ref) (f_2@@116 T@Field_17546_13588) ) (!  (=> (select (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@81 f_2@@116) (= (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@53) o2@@81 f_2@@116) (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@81 f_2@@116)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@81 f_2@@116))
))) (forall ((o2@@82 T@Ref) (f_2@@117 T@Field_17559_17564) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@82 f_2@@117) (= (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@53) o2@@82 f_2@@117) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@82 f_2@@117)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@82 f_2@@117))
))) (forall ((o2@@83 T@Ref) (f_2@@118 T@Field_17575_17576) ) (!  (=> (select (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@83 f_2@@118) (= (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@53) o2@@83 f_2@@118) (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@83 f_2@@118)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@83 f_2@@118))
))) (forall ((o2@@84 T@Ref) (f_2@@119 T@Field_18247_1900) ) (!  (=> (select (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@84 f_2@@119) (= (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@53) o2@@84 f_2@@119) (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@84 f_2@@119)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@84 f_2@@119))
))) (forall ((o2@@85 T@Ref) (f_2@@120 T@Field_18247_53) ) (!  (=> (select (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@85 f_2@@120) (= (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@53) o2@@85 f_2@@120) (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@85 f_2@@120)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@85 f_2@@120))
))) (forall ((o2@@86 T@Ref) (f_2@@121 T@Field_18247_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@86 f_2@@121) (= (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@53) o2@@86 f_2@@121) (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@86 f_2@@121)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@86 f_2@@121))
))) (forall ((o2@@87 T@Ref) (f_2@@122 T@Field_18259_18264) ) (!  (=> (select (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@87 f_2@@122) (= (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@53) o2@@87 f_2@@122) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@87 f_2@@122)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@87 f_2@@122))
))) (forall ((o2@@88 T@Ref) (f_2@@123 T@Field_18274_18275) ) (!  (=> (select (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@88 f_2@@123) (= (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@53) o2@@88 f_2@@123) (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@88 f_2@@123)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@88 f_2@@123))
))) (forall ((o2@@89 T@Ref) (f_2@@124 T@Field_18805_2181) ) (!  (=> (select (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@89 f_2@@124) (= (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@53) o2@@89 f_2@@124) (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@89 f_2@@124)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@89 f_2@@124))
))) (forall ((o2@@90 T@Ref) (f_2@@125 T@Field_18805_53) ) (!  (=> (select (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@90 f_2@@125) (= (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@53) o2@@90 f_2@@125) (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@90 f_2@@125)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@90 f_2@@125))
))) (forall ((o2@@91 T@Ref) (f_2@@126 T@Field_18805_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@91 f_2@@126) (= (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@53) o2@@91 f_2@@126) (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@91 f_2@@126)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@91 f_2@@126))
))) (forall ((o2@@92 T@Ref) (f_2@@127 T@Field_18819_18824) ) (!  (=> (select (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@92 f_2@@127) (= (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) o2@@92 f_2@@127) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@92 f_2@@127)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@92 f_2@@127))
))) (forall ((o2@@93 T@Ref) (f_2@@128 T@Field_18836_18837) ) (!  (=> (select (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@93 f_2@@128) (= (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@53) o2@@93 f_2@@128) (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@93 f_2@@128)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@93 f_2@@128))
))) (forall ((o2@@94 T@Ref) (f_2@@129 T@Field_19654_2678) ) (!  (=> (select (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@94 f_2@@129) (= (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@53) o2@@94 f_2@@129) (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@94 f_2@@129)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@94 f_2@@129))
))) (forall ((o2@@95 T@Ref) (f_2@@130 T@Field_19654_53) ) (!  (=> (select (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@95 f_2@@130) (= (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@53) o2@@95 f_2@@130) (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@95 f_2@@130)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@95 f_2@@130))
))) (forall ((o2@@96 T@Ref) (f_2@@131 T@Field_19654_13588) ) (!  (=> (select (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@96 f_2@@131) (= (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@53) o2@@96 f_2@@131) (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@96 f_2@@131)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@96 f_2@@131))
))) (forall ((o2@@97 T@Ref) (f_2@@132 T@Field_19669_19674) ) (!  (=> (select (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@97 f_2@@132) (= (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@53) o2@@97 f_2@@132) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@97 f_2@@132)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@97 f_2@@132))
))) (forall ((o2@@98 T@Ref) (f_2@@133 T@Field_19687_19688) ) (!  (=> (select (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@98 f_2@@133) (= (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@53) o2@@98 f_2@@133) (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@98 f_2@@133)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@98 f_2@@133))
))) (forall ((o2@@99 T@Ref) (f_2@@134 T@Field_20588_3216) ) (!  (=> (select (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@99 f_2@@134) (= (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@53) o2@@99 f_2@@134) (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@99 f_2@@134)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@99 f_2@@134))
))) (forall ((o2@@100 T@Ref) (f_2@@135 T@Field_20588_53) ) (!  (=> (select (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@100 f_2@@135) (= (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@53) o2@@100 f_2@@135) (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@100 f_2@@135)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@100 f_2@@135))
))) (forall ((o2@@101 T@Ref) (f_2@@136 T@Field_20588_13588) ) (!  (=> (select (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@101 f_2@@136) (= (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@53) o2@@101 f_2@@136) (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@101 f_2@@136)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@101 f_2@@136))
))) (forall ((o2@@102 T@Ref) (f_2@@137 T@Field_20601_20606) ) (!  (=> (select (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@102 f_2@@137) (= (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@53) o2@@102 f_2@@137) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@102 f_2@@137)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@102 f_2@@137))
))) (forall ((o2@@103 T@Ref) (f_2@@138 T@Field_20617_20618) ) (!  (=> (select (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@53) null (PredicateMaskField_18805 pm_f@@15))) o2@@103 f_2@@138) (= (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@53) o2@@103 f_2@@138) (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@103 f_2@@138)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@52) o2@@103 f_2@@138))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@52 Mask@@123) (IsPredicateField_8465_8466 pm_f@@15))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_13514) (ExhaleHeap@@53 T@PolymorphicMapType_13514) (Mask@@124 T@PolymorphicMapType_13535) (pm_f@@16 T@Field_18274_18275) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@53 Mask@@124) (=> (and (HasDirectPerm_18247_16932 Mask@@124 null pm_f@@16) (IsPredicateField_8426_8427 pm_f@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@104 T@Ref) (f_2@@139 T@Field_21288_3574) ) (!  (=> (select (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@104 f_2@@139) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@54) o2@@104 f_2@@139) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@104 f_2@@139)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@104 f_2@@139))
)) (forall ((o2@@105 T@Ref) (f_2@@140 T@Field_13574_53) ) (!  (=> (select (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@105 f_2@@140) (= (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@54) o2@@105 f_2@@140) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@105 f_2@@140)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@105 f_2@@140))
))) (forall ((o2@@106 T@Ref) (f_2@@141 T@Field_13587_13588) ) (!  (=> (select (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@106 f_2@@141) (= (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@54) o2@@106 f_2@@141) (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@106 f_2@@141)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@106 f_2@@141))
))) (forall ((o2@@107 T@Ref) (f_2@@142 T@Field_8623_16920) ) (!  (=> (select (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@107 f_2@@142) (= (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@54) o2@@107 f_2@@142) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@107 f_2@@142)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@107 f_2@@142))
))) (forall ((o2@@108 T@Ref) (f_2@@143 T@Field_8623_16932) ) (!  (=> (select (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@108 f_2@@143) (= (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@54) o2@@108 f_2@@143) (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@108 f_2@@143)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@108 f_2@@143))
))) (forall ((o2@@109 T@Ref) (f_2@@144 T@Field_16902_1203) ) (!  (=> (select (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@109 f_2@@144) (= (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@54) o2@@109 f_2@@144) (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@109 f_2@@144)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@109 f_2@@144))
))) (forall ((o2@@110 T@Ref) (f_2@@145 T@Field_16902_53) ) (!  (=> (select (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@110 f_2@@145) (= (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@54) o2@@110 f_2@@145) (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@110 f_2@@145)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@110 f_2@@145))
))) (forall ((o2@@111 T@Ref) (f_2@@146 T@Field_16902_13588) ) (!  (=> (select (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@111 f_2@@146) (= (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@54) o2@@111 f_2@@146) (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@111 f_2@@146)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@111 f_2@@146))
))) (forall ((o2@@112 T@Ref) (f_2@@147 T@Field_16915_16920) ) (!  (=> (select (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@112 f_2@@147) (= (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@54) o2@@112 f_2@@147) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@112 f_2@@147)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@112 f_2@@147))
))) (forall ((o2@@113 T@Ref) (f_2@@148 T@Field_16931_16932) ) (!  (=> (select (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@113 f_2@@148) (= (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@54) o2@@113 f_2@@148) (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@113 f_2@@148)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@113 f_2@@148))
))) (forall ((o2@@114 T@Ref) (f_2@@149 T@Field_17546_1529) ) (!  (=> (select (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@114 f_2@@149) (= (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@54) o2@@114 f_2@@149) (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@114 f_2@@149)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@114 f_2@@149))
))) (forall ((o2@@115 T@Ref) (f_2@@150 T@Field_17546_53) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@115 f_2@@150) (= (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@54) o2@@115 f_2@@150) (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@115 f_2@@150)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@115 f_2@@150))
))) (forall ((o2@@116 T@Ref) (f_2@@151 T@Field_17546_13588) ) (!  (=> (select (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@116 f_2@@151) (= (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@54) o2@@116 f_2@@151) (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@116 f_2@@151)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@116 f_2@@151))
))) (forall ((o2@@117 T@Ref) (f_2@@152 T@Field_17559_17564) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@117 f_2@@152) (= (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@54) o2@@117 f_2@@152) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@117 f_2@@152)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@117 f_2@@152))
))) (forall ((o2@@118 T@Ref) (f_2@@153 T@Field_17575_17576) ) (!  (=> (select (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@118 f_2@@153) (= (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@54) o2@@118 f_2@@153) (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@118 f_2@@153)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@118 f_2@@153))
))) (forall ((o2@@119 T@Ref) (f_2@@154 T@Field_18247_1900) ) (!  (=> (select (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@119 f_2@@154) (= (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@54) o2@@119 f_2@@154) (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@119 f_2@@154)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@119 f_2@@154))
))) (forall ((o2@@120 T@Ref) (f_2@@155 T@Field_18247_53) ) (!  (=> (select (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@120 f_2@@155) (= (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@54) o2@@120 f_2@@155) (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@120 f_2@@155)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@120 f_2@@155))
))) (forall ((o2@@121 T@Ref) (f_2@@156 T@Field_18247_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@121 f_2@@156) (= (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@54) o2@@121 f_2@@156) (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@121 f_2@@156)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@121 f_2@@156))
))) (forall ((o2@@122 T@Ref) (f_2@@157 T@Field_18259_18264) ) (!  (=> (select (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@122 f_2@@157) (= (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) o2@@122 f_2@@157) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@122 f_2@@157)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@122 f_2@@157))
))) (forall ((o2@@123 T@Ref) (f_2@@158 T@Field_18274_18275) ) (!  (=> (select (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@123 f_2@@158) (= (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@54) o2@@123 f_2@@158) (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@123 f_2@@158)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@123 f_2@@158))
))) (forall ((o2@@124 T@Ref) (f_2@@159 T@Field_18805_2181) ) (!  (=> (select (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@124 f_2@@159) (= (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@54) o2@@124 f_2@@159) (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@124 f_2@@159)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@124 f_2@@159))
))) (forall ((o2@@125 T@Ref) (f_2@@160 T@Field_18805_53) ) (!  (=> (select (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@125 f_2@@160) (= (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@54) o2@@125 f_2@@160) (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@125 f_2@@160)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@125 f_2@@160))
))) (forall ((o2@@126 T@Ref) (f_2@@161 T@Field_18805_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@126 f_2@@161) (= (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@54) o2@@126 f_2@@161) (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@126 f_2@@161)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@126 f_2@@161))
))) (forall ((o2@@127 T@Ref) (f_2@@162 T@Field_18819_18824) ) (!  (=> (select (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@127 f_2@@162) (= (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@54) o2@@127 f_2@@162) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@127 f_2@@162)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@127 f_2@@162))
))) (forall ((o2@@128 T@Ref) (f_2@@163 T@Field_18836_18837) ) (!  (=> (select (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@128 f_2@@163) (= (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@54) o2@@128 f_2@@163) (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@128 f_2@@163)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@128 f_2@@163))
))) (forall ((o2@@129 T@Ref) (f_2@@164 T@Field_19654_2678) ) (!  (=> (select (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@129 f_2@@164) (= (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@54) o2@@129 f_2@@164) (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@129 f_2@@164)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@129 f_2@@164))
))) (forall ((o2@@130 T@Ref) (f_2@@165 T@Field_19654_53) ) (!  (=> (select (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@130 f_2@@165) (= (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@54) o2@@130 f_2@@165) (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@130 f_2@@165)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@130 f_2@@165))
))) (forall ((o2@@131 T@Ref) (f_2@@166 T@Field_19654_13588) ) (!  (=> (select (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@131 f_2@@166) (= (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@54) o2@@131 f_2@@166) (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@131 f_2@@166)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@131 f_2@@166))
))) (forall ((o2@@132 T@Ref) (f_2@@167 T@Field_19669_19674) ) (!  (=> (select (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@132 f_2@@167) (= (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@54) o2@@132 f_2@@167) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@132 f_2@@167)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@132 f_2@@167))
))) (forall ((o2@@133 T@Ref) (f_2@@168 T@Field_19687_19688) ) (!  (=> (select (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@133 f_2@@168) (= (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@54) o2@@133 f_2@@168) (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@133 f_2@@168)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@133 f_2@@168))
))) (forall ((o2@@134 T@Ref) (f_2@@169 T@Field_20588_3216) ) (!  (=> (select (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@134 f_2@@169) (= (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@54) o2@@134 f_2@@169) (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@134 f_2@@169)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@134 f_2@@169))
))) (forall ((o2@@135 T@Ref) (f_2@@170 T@Field_20588_53) ) (!  (=> (select (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@135 f_2@@170) (= (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@54) o2@@135 f_2@@170) (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@135 f_2@@170)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@135 f_2@@170))
))) (forall ((o2@@136 T@Ref) (f_2@@171 T@Field_20588_13588) ) (!  (=> (select (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@136 f_2@@171) (= (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@54) o2@@136 f_2@@171) (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@136 f_2@@171)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@136 f_2@@171))
))) (forall ((o2@@137 T@Ref) (f_2@@172 T@Field_20601_20606) ) (!  (=> (select (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@137 f_2@@172) (= (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@54) o2@@137 f_2@@172) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@137 f_2@@172)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@137 f_2@@172))
))) (forall ((o2@@138 T@Ref) (f_2@@173 T@Field_20617_20618) ) (!  (=> (select (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@54) null (PredicateMaskField_18247 pm_f@@16))) o2@@138 f_2@@173) (= (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@54) o2@@138 f_2@@173) (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@138 f_2@@173)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@53) o2@@138 f_2@@173))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@53 Mask@@124) (IsPredicateField_8426_8427 pm_f@@16))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_13514) (ExhaleHeap@@54 T@PolymorphicMapType_13514) (Mask@@125 T@PolymorphicMapType_13535) (pm_f@@17 T@Field_17575_17576) ) (!  (=> (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@54 Mask@@125) (=> (and (HasDirectPerm_17546_16932 Mask@@125 null pm_f@@17) (IsPredicateField_8388_8389 pm_f@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@139 T@Ref) (f_2@@174 T@Field_21288_3574) ) (!  (=> (select (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@139 f_2@@174) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@55) o2@@139 f_2@@174) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@139 f_2@@174)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@139 f_2@@174))
)) (forall ((o2@@140 T@Ref) (f_2@@175 T@Field_13574_53) ) (!  (=> (select (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@140 f_2@@175) (= (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@55) o2@@140 f_2@@175) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@140 f_2@@175)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@140 f_2@@175))
))) (forall ((o2@@141 T@Ref) (f_2@@176 T@Field_13587_13588) ) (!  (=> (select (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@141 f_2@@176) (= (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@55) o2@@141 f_2@@176) (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@141 f_2@@176)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@141 f_2@@176))
))) (forall ((o2@@142 T@Ref) (f_2@@177 T@Field_8623_16920) ) (!  (=> (select (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@142 f_2@@177) (= (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@55) o2@@142 f_2@@177) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@142 f_2@@177)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@142 f_2@@177))
))) (forall ((o2@@143 T@Ref) (f_2@@178 T@Field_8623_16932) ) (!  (=> (select (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@143 f_2@@178) (= (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@55) o2@@143 f_2@@178) (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@143 f_2@@178)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@143 f_2@@178))
))) (forall ((o2@@144 T@Ref) (f_2@@179 T@Field_16902_1203) ) (!  (=> (select (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@144 f_2@@179) (= (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@55) o2@@144 f_2@@179) (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@144 f_2@@179)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@144 f_2@@179))
))) (forall ((o2@@145 T@Ref) (f_2@@180 T@Field_16902_53) ) (!  (=> (select (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@145 f_2@@180) (= (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@55) o2@@145 f_2@@180) (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@145 f_2@@180)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@145 f_2@@180))
))) (forall ((o2@@146 T@Ref) (f_2@@181 T@Field_16902_13588) ) (!  (=> (select (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@146 f_2@@181) (= (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@55) o2@@146 f_2@@181) (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@146 f_2@@181)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@146 f_2@@181))
))) (forall ((o2@@147 T@Ref) (f_2@@182 T@Field_16915_16920) ) (!  (=> (select (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@147 f_2@@182) (= (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@55) o2@@147 f_2@@182) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@147 f_2@@182)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@147 f_2@@182))
))) (forall ((o2@@148 T@Ref) (f_2@@183 T@Field_16931_16932) ) (!  (=> (select (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@148 f_2@@183) (= (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@55) o2@@148 f_2@@183) (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@148 f_2@@183)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@148 f_2@@183))
))) (forall ((o2@@149 T@Ref) (f_2@@184 T@Field_17546_1529) ) (!  (=> (select (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@149 f_2@@184) (= (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@55) o2@@149 f_2@@184) (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@149 f_2@@184)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@149 f_2@@184))
))) (forall ((o2@@150 T@Ref) (f_2@@185 T@Field_17546_53) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@150 f_2@@185) (= (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@55) o2@@150 f_2@@185) (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@150 f_2@@185)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@150 f_2@@185))
))) (forall ((o2@@151 T@Ref) (f_2@@186 T@Field_17546_13588) ) (!  (=> (select (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@151 f_2@@186) (= (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@55) o2@@151 f_2@@186) (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@151 f_2@@186)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@151 f_2@@186))
))) (forall ((o2@@152 T@Ref) (f_2@@187 T@Field_17559_17564) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@152 f_2@@187) (= (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) o2@@152 f_2@@187) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@152 f_2@@187)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@152 f_2@@187))
))) (forall ((o2@@153 T@Ref) (f_2@@188 T@Field_17575_17576) ) (!  (=> (select (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@153 f_2@@188) (= (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@55) o2@@153 f_2@@188) (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@153 f_2@@188)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@153 f_2@@188))
))) (forall ((o2@@154 T@Ref) (f_2@@189 T@Field_18247_1900) ) (!  (=> (select (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@154 f_2@@189) (= (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@55) o2@@154 f_2@@189) (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@154 f_2@@189)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@154 f_2@@189))
))) (forall ((o2@@155 T@Ref) (f_2@@190 T@Field_18247_53) ) (!  (=> (select (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@155 f_2@@190) (= (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@55) o2@@155 f_2@@190) (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@155 f_2@@190)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@155 f_2@@190))
))) (forall ((o2@@156 T@Ref) (f_2@@191 T@Field_18247_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@156 f_2@@191) (= (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@55) o2@@156 f_2@@191) (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@156 f_2@@191)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@156 f_2@@191))
))) (forall ((o2@@157 T@Ref) (f_2@@192 T@Field_18259_18264) ) (!  (=> (select (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@157 f_2@@192) (= (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@55) o2@@157 f_2@@192) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@157 f_2@@192)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@157 f_2@@192))
))) (forall ((o2@@158 T@Ref) (f_2@@193 T@Field_18274_18275) ) (!  (=> (select (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@158 f_2@@193) (= (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@55) o2@@158 f_2@@193) (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@158 f_2@@193)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@158 f_2@@193))
))) (forall ((o2@@159 T@Ref) (f_2@@194 T@Field_18805_2181) ) (!  (=> (select (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@159 f_2@@194) (= (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@55) o2@@159 f_2@@194) (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@159 f_2@@194)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@159 f_2@@194))
))) (forall ((o2@@160 T@Ref) (f_2@@195 T@Field_18805_53) ) (!  (=> (select (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@160 f_2@@195) (= (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@55) o2@@160 f_2@@195) (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@160 f_2@@195)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@160 f_2@@195))
))) (forall ((o2@@161 T@Ref) (f_2@@196 T@Field_18805_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@161 f_2@@196) (= (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@55) o2@@161 f_2@@196) (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@161 f_2@@196)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@161 f_2@@196))
))) (forall ((o2@@162 T@Ref) (f_2@@197 T@Field_18819_18824) ) (!  (=> (select (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@162 f_2@@197) (= (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@55) o2@@162 f_2@@197) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@162 f_2@@197)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@162 f_2@@197))
))) (forall ((o2@@163 T@Ref) (f_2@@198 T@Field_18836_18837) ) (!  (=> (select (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@163 f_2@@198) (= (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@55) o2@@163 f_2@@198) (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@163 f_2@@198)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@163 f_2@@198))
))) (forall ((o2@@164 T@Ref) (f_2@@199 T@Field_19654_2678) ) (!  (=> (select (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@164 f_2@@199) (= (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@55) o2@@164 f_2@@199) (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@164 f_2@@199)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@164 f_2@@199))
))) (forall ((o2@@165 T@Ref) (f_2@@200 T@Field_19654_53) ) (!  (=> (select (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@165 f_2@@200) (= (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@55) o2@@165 f_2@@200) (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@165 f_2@@200)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@165 f_2@@200))
))) (forall ((o2@@166 T@Ref) (f_2@@201 T@Field_19654_13588) ) (!  (=> (select (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@166 f_2@@201) (= (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@55) o2@@166 f_2@@201) (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@166 f_2@@201)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@166 f_2@@201))
))) (forall ((o2@@167 T@Ref) (f_2@@202 T@Field_19669_19674) ) (!  (=> (select (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@167 f_2@@202) (= (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@55) o2@@167 f_2@@202) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@167 f_2@@202)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@167 f_2@@202))
))) (forall ((o2@@168 T@Ref) (f_2@@203 T@Field_19687_19688) ) (!  (=> (select (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@168 f_2@@203) (= (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@55) o2@@168 f_2@@203) (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@168 f_2@@203)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@168 f_2@@203))
))) (forall ((o2@@169 T@Ref) (f_2@@204 T@Field_20588_3216) ) (!  (=> (select (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@169 f_2@@204) (= (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@55) o2@@169 f_2@@204) (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@169 f_2@@204)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@169 f_2@@204))
))) (forall ((o2@@170 T@Ref) (f_2@@205 T@Field_20588_53) ) (!  (=> (select (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@170 f_2@@205) (= (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@55) o2@@170 f_2@@205) (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@170 f_2@@205)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@170 f_2@@205))
))) (forall ((o2@@171 T@Ref) (f_2@@206 T@Field_20588_13588) ) (!  (=> (select (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@171 f_2@@206) (= (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@55) o2@@171 f_2@@206) (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@171 f_2@@206)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@171 f_2@@206))
))) (forall ((o2@@172 T@Ref) (f_2@@207 T@Field_20601_20606) ) (!  (=> (select (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@172 f_2@@207) (= (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@55) o2@@172 f_2@@207) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@172 f_2@@207)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@172 f_2@@207))
))) (forall ((o2@@173 T@Ref) (f_2@@208 T@Field_20617_20618) ) (!  (=> (select (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@55) null (PredicateMaskField_17546 pm_f@@17))) o2@@173 f_2@@208) (= (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@55) o2@@173 f_2@@208) (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@173 f_2@@208)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@54) o2@@173 f_2@@208))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@54 Mask@@125) (IsPredicateField_8388_8389 pm_f@@17))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_13514) (ExhaleHeap@@55 T@PolymorphicMapType_13514) (Mask@@126 T@PolymorphicMapType_13535) (pm_f@@18 T@Field_16931_16932) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@55 Mask@@126) (=> (and (HasDirectPerm_16902_16932 Mask@@126 null pm_f@@18) (IsPredicateField_8339_8340 pm_f@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@174 T@Ref) (f_2@@209 T@Field_21288_3574) ) (!  (=> (select (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@174 f_2@@209) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@56) o2@@174 f_2@@209) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@174 f_2@@209)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@174 f_2@@209))
)) (forall ((o2@@175 T@Ref) (f_2@@210 T@Field_13574_53) ) (!  (=> (select (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@175 f_2@@210) (= (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@56) o2@@175 f_2@@210) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@175 f_2@@210)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@175 f_2@@210))
))) (forall ((o2@@176 T@Ref) (f_2@@211 T@Field_13587_13588) ) (!  (=> (select (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@176 f_2@@211) (= (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@56) o2@@176 f_2@@211) (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@176 f_2@@211)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@176 f_2@@211))
))) (forall ((o2@@177 T@Ref) (f_2@@212 T@Field_8623_16920) ) (!  (=> (select (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@177 f_2@@212) (= (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@56) o2@@177 f_2@@212) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@177 f_2@@212)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@177 f_2@@212))
))) (forall ((o2@@178 T@Ref) (f_2@@213 T@Field_8623_16932) ) (!  (=> (select (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@178 f_2@@213) (= (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@56) o2@@178 f_2@@213) (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@178 f_2@@213)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@178 f_2@@213))
))) (forall ((o2@@179 T@Ref) (f_2@@214 T@Field_16902_1203) ) (!  (=> (select (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@179 f_2@@214) (= (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@56) o2@@179 f_2@@214) (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@179 f_2@@214)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@179 f_2@@214))
))) (forall ((o2@@180 T@Ref) (f_2@@215 T@Field_16902_53) ) (!  (=> (select (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@180 f_2@@215) (= (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@56) o2@@180 f_2@@215) (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@180 f_2@@215)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@180 f_2@@215))
))) (forall ((o2@@181 T@Ref) (f_2@@216 T@Field_16902_13588) ) (!  (=> (select (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@181 f_2@@216) (= (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@56) o2@@181 f_2@@216) (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@181 f_2@@216)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@181 f_2@@216))
))) (forall ((o2@@182 T@Ref) (f_2@@217 T@Field_16915_16920) ) (!  (=> (select (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@182 f_2@@217) (= (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) o2@@182 f_2@@217) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@182 f_2@@217)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@182 f_2@@217))
))) (forall ((o2@@183 T@Ref) (f_2@@218 T@Field_16931_16932) ) (!  (=> (select (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@183 f_2@@218) (= (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@56) o2@@183 f_2@@218) (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@183 f_2@@218)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@183 f_2@@218))
))) (forall ((o2@@184 T@Ref) (f_2@@219 T@Field_17546_1529) ) (!  (=> (select (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@184 f_2@@219) (= (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@56) o2@@184 f_2@@219) (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@184 f_2@@219)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@184 f_2@@219))
))) (forall ((o2@@185 T@Ref) (f_2@@220 T@Field_17546_53) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@185 f_2@@220) (= (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@56) o2@@185 f_2@@220) (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@185 f_2@@220)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@185 f_2@@220))
))) (forall ((o2@@186 T@Ref) (f_2@@221 T@Field_17546_13588) ) (!  (=> (select (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@186 f_2@@221) (= (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@56) o2@@186 f_2@@221) (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@186 f_2@@221)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@186 f_2@@221))
))) (forall ((o2@@187 T@Ref) (f_2@@222 T@Field_17559_17564) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@187 f_2@@222) (= (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@56) o2@@187 f_2@@222) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@187 f_2@@222)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@187 f_2@@222))
))) (forall ((o2@@188 T@Ref) (f_2@@223 T@Field_17575_17576) ) (!  (=> (select (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@188 f_2@@223) (= (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@56) o2@@188 f_2@@223) (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@188 f_2@@223)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@188 f_2@@223))
))) (forall ((o2@@189 T@Ref) (f_2@@224 T@Field_18247_1900) ) (!  (=> (select (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@189 f_2@@224) (= (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@56) o2@@189 f_2@@224) (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@189 f_2@@224)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@189 f_2@@224))
))) (forall ((o2@@190 T@Ref) (f_2@@225 T@Field_18247_53) ) (!  (=> (select (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@190 f_2@@225) (= (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@56) o2@@190 f_2@@225) (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@190 f_2@@225)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@190 f_2@@225))
))) (forall ((o2@@191 T@Ref) (f_2@@226 T@Field_18247_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@191 f_2@@226) (= (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@56) o2@@191 f_2@@226) (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@191 f_2@@226)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@191 f_2@@226))
))) (forall ((o2@@192 T@Ref) (f_2@@227 T@Field_18259_18264) ) (!  (=> (select (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@192 f_2@@227) (= (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@56) o2@@192 f_2@@227) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@192 f_2@@227)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@192 f_2@@227))
))) (forall ((o2@@193 T@Ref) (f_2@@228 T@Field_18274_18275) ) (!  (=> (select (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@193 f_2@@228) (= (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@56) o2@@193 f_2@@228) (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@193 f_2@@228)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@193 f_2@@228))
))) (forall ((o2@@194 T@Ref) (f_2@@229 T@Field_18805_2181) ) (!  (=> (select (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@194 f_2@@229) (= (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@56) o2@@194 f_2@@229) (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@194 f_2@@229)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@194 f_2@@229))
))) (forall ((o2@@195 T@Ref) (f_2@@230 T@Field_18805_53) ) (!  (=> (select (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@195 f_2@@230) (= (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@56) o2@@195 f_2@@230) (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@195 f_2@@230)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@195 f_2@@230))
))) (forall ((o2@@196 T@Ref) (f_2@@231 T@Field_18805_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@196 f_2@@231) (= (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@56) o2@@196 f_2@@231) (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@196 f_2@@231)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@196 f_2@@231))
))) (forall ((o2@@197 T@Ref) (f_2@@232 T@Field_18819_18824) ) (!  (=> (select (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@197 f_2@@232) (= (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@56) o2@@197 f_2@@232) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@197 f_2@@232)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@197 f_2@@232))
))) (forall ((o2@@198 T@Ref) (f_2@@233 T@Field_18836_18837) ) (!  (=> (select (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@198 f_2@@233) (= (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@56) o2@@198 f_2@@233) (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@198 f_2@@233)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@198 f_2@@233))
))) (forall ((o2@@199 T@Ref) (f_2@@234 T@Field_19654_2678) ) (!  (=> (select (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@199 f_2@@234) (= (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@56) o2@@199 f_2@@234) (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@199 f_2@@234)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@199 f_2@@234))
))) (forall ((o2@@200 T@Ref) (f_2@@235 T@Field_19654_53) ) (!  (=> (select (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@200 f_2@@235) (= (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@56) o2@@200 f_2@@235) (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@200 f_2@@235)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@200 f_2@@235))
))) (forall ((o2@@201 T@Ref) (f_2@@236 T@Field_19654_13588) ) (!  (=> (select (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@201 f_2@@236) (= (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@56) o2@@201 f_2@@236) (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@201 f_2@@236)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@201 f_2@@236))
))) (forall ((o2@@202 T@Ref) (f_2@@237 T@Field_19669_19674) ) (!  (=> (select (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@202 f_2@@237) (= (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@56) o2@@202 f_2@@237) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@202 f_2@@237)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@202 f_2@@237))
))) (forall ((o2@@203 T@Ref) (f_2@@238 T@Field_19687_19688) ) (!  (=> (select (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@203 f_2@@238) (= (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@56) o2@@203 f_2@@238) (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@203 f_2@@238)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@203 f_2@@238))
))) (forall ((o2@@204 T@Ref) (f_2@@239 T@Field_20588_3216) ) (!  (=> (select (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@204 f_2@@239) (= (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@56) o2@@204 f_2@@239) (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@204 f_2@@239)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@204 f_2@@239))
))) (forall ((o2@@205 T@Ref) (f_2@@240 T@Field_20588_53) ) (!  (=> (select (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@205 f_2@@240) (= (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@56) o2@@205 f_2@@240) (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@205 f_2@@240)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@205 f_2@@240))
))) (forall ((o2@@206 T@Ref) (f_2@@241 T@Field_20588_13588) ) (!  (=> (select (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@206 f_2@@241) (= (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@56) o2@@206 f_2@@241) (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@206 f_2@@241)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@206 f_2@@241))
))) (forall ((o2@@207 T@Ref) (f_2@@242 T@Field_20601_20606) ) (!  (=> (select (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@207 f_2@@242) (= (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@56) o2@@207 f_2@@242) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@207 f_2@@242)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@207 f_2@@242))
))) (forall ((o2@@208 T@Ref) (f_2@@243 T@Field_20617_20618) ) (!  (=> (select (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@56) null (PredicateMaskField_16902 pm_f@@18))) o2@@208 f_2@@243) (= (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@56) o2@@208 f_2@@243) (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@208 f_2@@243)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@55) o2@@208 f_2@@243))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@55 Mask@@126) (IsPredicateField_8339_8340 pm_f@@18))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_13514) (ExhaleHeap@@56 T@PolymorphicMapType_13514) (Mask@@127 T@PolymorphicMapType_13535) (pm_f@@19 T@Field_8623_16932) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@56 Mask@@127) (=> (and (HasDirectPerm_8623_16932 Mask@@127 null pm_f@@19) (IsPredicateField_8623_47932 pm_f@@19)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@209 T@Ref) (f_2@@244 T@Field_21288_3574) ) (!  (=> (select (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@209 f_2@@244) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@57) o2@@209 f_2@@244) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@209 f_2@@244)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@209 f_2@@244))
)) (forall ((o2@@210 T@Ref) (f_2@@245 T@Field_13574_53) ) (!  (=> (select (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@210 f_2@@245) (= (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@57) o2@@210 f_2@@245) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@210 f_2@@245)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@210 f_2@@245))
))) (forall ((o2@@211 T@Ref) (f_2@@246 T@Field_13587_13588) ) (!  (=> (select (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@211 f_2@@246) (= (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@57) o2@@211 f_2@@246) (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@211 f_2@@246)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@211 f_2@@246))
))) (forall ((o2@@212 T@Ref) (f_2@@247 T@Field_8623_16920) ) (!  (=> (select (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@212 f_2@@247) (= (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) o2@@212 f_2@@247) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@212 f_2@@247)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@212 f_2@@247))
))) (forall ((o2@@213 T@Ref) (f_2@@248 T@Field_8623_16932) ) (!  (=> (select (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@213 f_2@@248) (= (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@57) o2@@213 f_2@@248) (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@213 f_2@@248)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@213 f_2@@248))
))) (forall ((o2@@214 T@Ref) (f_2@@249 T@Field_16902_1203) ) (!  (=> (select (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@214 f_2@@249) (= (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@57) o2@@214 f_2@@249) (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@214 f_2@@249)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@214 f_2@@249))
))) (forall ((o2@@215 T@Ref) (f_2@@250 T@Field_16902_53) ) (!  (=> (select (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@215 f_2@@250) (= (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@57) o2@@215 f_2@@250) (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@215 f_2@@250)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@215 f_2@@250))
))) (forall ((o2@@216 T@Ref) (f_2@@251 T@Field_16902_13588) ) (!  (=> (select (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@216 f_2@@251) (= (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@57) o2@@216 f_2@@251) (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@216 f_2@@251)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@216 f_2@@251))
))) (forall ((o2@@217 T@Ref) (f_2@@252 T@Field_16915_16920) ) (!  (=> (select (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@217 f_2@@252) (= (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@57) o2@@217 f_2@@252) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@217 f_2@@252)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@217 f_2@@252))
))) (forall ((o2@@218 T@Ref) (f_2@@253 T@Field_16931_16932) ) (!  (=> (select (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@218 f_2@@253) (= (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@57) o2@@218 f_2@@253) (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@218 f_2@@253)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@218 f_2@@253))
))) (forall ((o2@@219 T@Ref) (f_2@@254 T@Field_17546_1529) ) (!  (=> (select (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@219 f_2@@254) (= (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@57) o2@@219 f_2@@254) (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@219 f_2@@254)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@219 f_2@@254))
))) (forall ((o2@@220 T@Ref) (f_2@@255 T@Field_17546_53) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@220 f_2@@255) (= (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@57) o2@@220 f_2@@255) (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@220 f_2@@255)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@220 f_2@@255))
))) (forall ((o2@@221 T@Ref) (f_2@@256 T@Field_17546_13588) ) (!  (=> (select (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@221 f_2@@256) (= (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@57) o2@@221 f_2@@256) (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@221 f_2@@256)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@221 f_2@@256))
))) (forall ((o2@@222 T@Ref) (f_2@@257 T@Field_17559_17564) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@222 f_2@@257) (= (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@57) o2@@222 f_2@@257) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@222 f_2@@257)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@222 f_2@@257))
))) (forall ((o2@@223 T@Ref) (f_2@@258 T@Field_17575_17576) ) (!  (=> (select (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@223 f_2@@258) (= (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@57) o2@@223 f_2@@258) (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@223 f_2@@258)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@223 f_2@@258))
))) (forall ((o2@@224 T@Ref) (f_2@@259 T@Field_18247_1900) ) (!  (=> (select (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@224 f_2@@259) (= (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@57) o2@@224 f_2@@259) (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@224 f_2@@259)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@224 f_2@@259))
))) (forall ((o2@@225 T@Ref) (f_2@@260 T@Field_18247_53) ) (!  (=> (select (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@225 f_2@@260) (= (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@57) o2@@225 f_2@@260) (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@225 f_2@@260)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@225 f_2@@260))
))) (forall ((o2@@226 T@Ref) (f_2@@261 T@Field_18247_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@226 f_2@@261) (= (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@57) o2@@226 f_2@@261) (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@226 f_2@@261)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@226 f_2@@261))
))) (forall ((o2@@227 T@Ref) (f_2@@262 T@Field_18259_18264) ) (!  (=> (select (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@227 f_2@@262) (= (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@57) o2@@227 f_2@@262) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@227 f_2@@262)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@227 f_2@@262))
))) (forall ((o2@@228 T@Ref) (f_2@@263 T@Field_18274_18275) ) (!  (=> (select (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@228 f_2@@263) (= (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@57) o2@@228 f_2@@263) (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@228 f_2@@263)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@228 f_2@@263))
))) (forall ((o2@@229 T@Ref) (f_2@@264 T@Field_18805_2181) ) (!  (=> (select (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@229 f_2@@264) (= (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@57) o2@@229 f_2@@264) (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@229 f_2@@264)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@229 f_2@@264))
))) (forall ((o2@@230 T@Ref) (f_2@@265 T@Field_18805_53) ) (!  (=> (select (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@230 f_2@@265) (= (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@57) o2@@230 f_2@@265) (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@230 f_2@@265)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@230 f_2@@265))
))) (forall ((o2@@231 T@Ref) (f_2@@266 T@Field_18805_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@231 f_2@@266) (= (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@57) o2@@231 f_2@@266) (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@231 f_2@@266)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@231 f_2@@266))
))) (forall ((o2@@232 T@Ref) (f_2@@267 T@Field_18819_18824) ) (!  (=> (select (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@232 f_2@@267) (= (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@57) o2@@232 f_2@@267) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@232 f_2@@267)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@232 f_2@@267))
))) (forall ((o2@@233 T@Ref) (f_2@@268 T@Field_18836_18837) ) (!  (=> (select (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@233 f_2@@268) (= (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@57) o2@@233 f_2@@268) (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@233 f_2@@268)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@233 f_2@@268))
))) (forall ((o2@@234 T@Ref) (f_2@@269 T@Field_19654_2678) ) (!  (=> (select (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@234 f_2@@269) (= (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@57) o2@@234 f_2@@269) (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@234 f_2@@269)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@234 f_2@@269))
))) (forall ((o2@@235 T@Ref) (f_2@@270 T@Field_19654_53) ) (!  (=> (select (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@235 f_2@@270) (= (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@57) o2@@235 f_2@@270) (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@235 f_2@@270)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@235 f_2@@270))
))) (forall ((o2@@236 T@Ref) (f_2@@271 T@Field_19654_13588) ) (!  (=> (select (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@236 f_2@@271) (= (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@57) o2@@236 f_2@@271) (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@236 f_2@@271)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@236 f_2@@271))
))) (forall ((o2@@237 T@Ref) (f_2@@272 T@Field_19669_19674) ) (!  (=> (select (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@237 f_2@@272) (= (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@57) o2@@237 f_2@@272) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@237 f_2@@272)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@237 f_2@@272))
))) (forall ((o2@@238 T@Ref) (f_2@@273 T@Field_19687_19688) ) (!  (=> (select (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@238 f_2@@273) (= (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@57) o2@@238 f_2@@273) (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@238 f_2@@273)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@238 f_2@@273))
))) (forall ((o2@@239 T@Ref) (f_2@@274 T@Field_20588_3216) ) (!  (=> (select (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@239 f_2@@274) (= (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@57) o2@@239 f_2@@274) (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@239 f_2@@274)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@239 f_2@@274))
))) (forall ((o2@@240 T@Ref) (f_2@@275 T@Field_20588_53) ) (!  (=> (select (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@240 f_2@@275) (= (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@57) o2@@240 f_2@@275) (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@240 f_2@@275)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@240 f_2@@275))
))) (forall ((o2@@241 T@Ref) (f_2@@276 T@Field_20588_13588) ) (!  (=> (select (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@241 f_2@@276) (= (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@57) o2@@241 f_2@@276) (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@241 f_2@@276)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@241 f_2@@276))
))) (forall ((o2@@242 T@Ref) (f_2@@277 T@Field_20601_20606) ) (!  (=> (select (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@242 f_2@@277) (= (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@57) o2@@242 f_2@@277) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@242 f_2@@277)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@242 f_2@@277))
))) (forall ((o2@@243 T@Ref) (f_2@@278 T@Field_20617_20618) ) (!  (=> (select (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@57) null (PredicateMaskField_8623 pm_f@@19))) o2@@243 f_2@@278) (= (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@57) o2@@243 f_2@@278) (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@243 f_2@@278)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@56) o2@@243 f_2@@278))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@56 Mask@@127) (IsPredicateField_8623_47932 pm_f@@19))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_13514) (ExhaleHeap@@57 T@PolymorphicMapType_13514) (Mask@@128 T@PolymorphicMapType_13535) (pm_f@@20 T@Field_20617_20618) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@57 Mask@@128) (=> (and (HasDirectPerm_20588_16932 Mask@@128 null pm_f@@20) (IsWandField_8596_8597 pm_f@@20)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@244 T@Ref) (f_2@@279 T@Field_21288_3574) ) (!  (=> (select (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@244 f_2@@279) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@58) o2@@244 f_2@@279) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@244 f_2@@279)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@244 f_2@@279))
)) (forall ((o2@@245 T@Ref) (f_2@@280 T@Field_13574_53) ) (!  (=> (select (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@245 f_2@@280) (= (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@58) o2@@245 f_2@@280) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@245 f_2@@280)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@245 f_2@@280))
))) (forall ((o2@@246 T@Ref) (f_2@@281 T@Field_13587_13588) ) (!  (=> (select (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@246 f_2@@281) (= (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@58) o2@@246 f_2@@281) (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@246 f_2@@281)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@246 f_2@@281))
))) (forall ((o2@@247 T@Ref) (f_2@@282 T@Field_8623_16920) ) (!  (=> (select (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@247 f_2@@282) (= (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@58) o2@@247 f_2@@282) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@247 f_2@@282)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@247 f_2@@282))
))) (forall ((o2@@248 T@Ref) (f_2@@283 T@Field_8623_16932) ) (!  (=> (select (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@248 f_2@@283) (= (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@58) o2@@248 f_2@@283) (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@248 f_2@@283)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@248 f_2@@283))
))) (forall ((o2@@249 T@Ref) (f_2@@284 T@Field_16902_1203) ) (!  (=> (select (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@249 f_2@@284) (= (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@58) o2@@249 f_2@@284) (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@249 f_2@@284)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@249 f_2@@284))
))) (forall ((o2@@250 T@Ref) (f_2@@285 T@Field_16902_53) ) (!  (=> (select (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@250 f_2@@285) (= (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@58) o2@@250 f_2@@285) (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@250 f_2@@285)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@250 f_2@@285))
))) (forall ((o2@@251 T@Ref) (f_2@@286 T@Field_16902_13588) ) (!  (=> (select (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@251 f_2@@286) (= (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@58) o2@@251 f_2@@286) (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@251 f_2@@286)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@251 f_2@@286))
))) (forall ((o2@@252 T@Ref) (f_2@@287 T@Field_16915_16920) ) (!  (=> (select (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@252 f_2@@287) (= (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@58) o2@@252 f_2@@287) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@252 f_2@@287)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@252 f_2@@287))
))) (forall ((o2@@253 T@Ref) (f_2@@288 T@Field_16931_16932) ) (!  (=> (select (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@253 f_2@@288) (= (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@58) o2@@253 f_2@@288) (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@253 f_2@@288)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@253 f_2@@288))
))) (forall ((o2@@254 T@Ref) (f_2@@289 T@Field_17546_1529) ) (!  (=> (select (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@254 f_2@@289) (= (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@58) o2@@254 f_2@@289) (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@254 f_2@@289)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@254 f_2@@289))
))) (forall ((o2@@255 T@Ref) (f_2@@290 T@Field_17546_53) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@255 f_2@@290) (= (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@58) o2@@255 f_2@@290) (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@255 f_2@@290)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@255 f_2@@290))
))) (forall ((o2@@256 T@Ref) (f_2@@291 T@Field_17546_13588) ) (!  (=> (select (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@256 f_2@@291) (= (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@58) o2@@256 f_2@@291) (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@256 f_2@@291)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@256 f_2@@291))
))) (forall ((o2@@257 T@Ref) (f_2@@292 T@Field_17559_17564) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@257 f_2@@292) (= (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@58) o2@@257 f_2@@292) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@257 f_2@@292)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@257 f_2@@292))
))) (forall ((o2@@258 T@Ref) (f_2@@293 T@Field_17575_17576) ) (!  (=> (select (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@258 f_2@@293) (= (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@58) o2@@258 f_2@@293) (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@258 f_2@@293)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@258 f_2@@293))
))) (forall ((o2@@259 T@Ref) (f_2@@294 T@Field_18247_1900) ) (!  (=> (select (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@259 f_2@@294) (= (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@58) o2@@259 f_2@@294) (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@259 f_2@@294)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@259 f_2@@294))
))) (forall ((o2@@260 T@Ref) (f_2@@295 T@Field_18247_53) ) (!  (=> (select (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@260 f_2@@295) (= (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@58) o2@@260 f_2@@295) (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@260 f_2@@295)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@260 f_2@@295))
))) (forall ((o2@@261 T@Ref) (f_2@@296 T@Field_18247_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@261 f_2@@296) (= (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@58) o2@@261 f_2@@296) (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@261 f_2@@296)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@261 f_2@@296))
))) (forall ((o2@@262 T@Ref) (f_2@@297 T@Field_18259_18264) ) (!  (=> (select (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@262 f_2@@297) (= (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@58) o2@@262 f_2@@297) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@262 f_2@@297)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@262 f_2@@297))
))) (forall ((o2@@263 T@Ref) (f_2@@298 T@Field_18274_18275) ) (!  (=> (select (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@263 f_2@@298) (= (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@58) o2@@263 f_2@@298) (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@263 f_2@@298)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@263 f_2@@298))
))) (forall ((o2@@264 T@Ref) (f_2@@299 T@Field_18805_2181) ) (!  (=> (select (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@264 f_2@@299) (= (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@58) o2@@264 f_2@@299) (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@264 f_2@@299)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@264 f_2@@299))
))) (forall ((o2@@265 T@Ref) (f_2@@300 T@Field_18805_53) ) (!  (=> (select (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@265 f_2@@300) (= (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@58) o2@@265 f_2@@300) (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@265 f_2@@300)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@265 f_2@@300))
))) (forall ((o2@@266 T@Ref) (f_2@@301 T@Field_18805_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@266 f_2@@301) (= (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@58) o2@@266 f_2@@301) (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@266 f_2@@301)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@266 f_2@@301))
))) (forall ((o2@@267 T@Ref) (f_2@@302 T@Field_18819_18824) ) (!  (=> (select (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@267 f_2@@302) (= (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@58) o2@@267 f_2@@302) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@267 f_2@@302)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@267 f_2@@302))
))) (forall ((o2@@268 T@Ref) (f_2@@303 T@Field_18836_18837) ) (!  (=> (select (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@268 f_2@@303) (= (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@58) o2@@268 f_2@@303) (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@268 f_2@@303)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@268 f_2@@303))
))) (forall ((o2@@269 T@Ref) (f_2@@304 T@Field_19654_2678) ) (!  (=> (select (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@269 f_2@@304) (= (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@58) o2@@269 f_2@@304) (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@269 f_2@@304)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@269 f_2@@304))
))) (forall ((o2@@270 T@Ref) (f_2@@305 T@Field_19654_53) ) (!  (=> (select (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@270 f_2@@305) (= (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@58) o2@@270 f_2@@305) (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@270 f_2@@305)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@270 f_2@@305))
))) (forall ((o2@@271 T@Ref) (f_2@@306 T@Field_19654_13588) ) (!  (=> (select (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@271 f_2@@306) (= (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@58) o2@@271 f_2@@306) (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@271 f_2@@306)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@271 f_2@@306))
))) (forall ((o2@@272 T@Ref) (f_2@@307 T@Field_19669_19674) ) (!  (=> (select (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@272 f_2@@307) (= (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@58) o2@@272 f_2@@307) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@272 f_2@@307)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@272 f_2@@307))
))) (forall ((o2@@273 T@Ref) (f_2@@308 T@Field_19687_19688) ) (!  (=> (select (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@273 f_2@@308) (= (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@58) o2@@273 f_2@@308) (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@273 f_2@@308)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@273 f_2@@308))
))) (forall ((o2@@274 T@Ref) (f_2@@309 T@Field_20588_3216) ) (!  (=> (select (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@274 f_2@@309) (= (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@58) o2@@274 f_2@@309) (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@274 f_2@@309)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@274 f_2@@309))
))) (forall ((o2@@275 T@Ref) (f_2@@310 T@Field_20588_53) ) (!  (=> (select (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@275 f_2@@310) (= (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@58) o2@@275 f_2@@310) (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@275 f_2@@310)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@275 f_2@@310))
))) (forall ((o2@@276 T@Ref) (f_2@@311 T@Field_20588_13588) ) (!  (=> (select (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@276 f_2@@311) (= (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@58) o2@@276 f_2@@311) (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@276 f_2@@311)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@276 f_2@@311))
))) (forall ((o2@@277 T@Ref) (f_2@@312 T@Field_20601_20606) ) (!  (=> (select (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@277 f_2@@312) (= (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) o2@@277 f_2@@312) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@277 f_2@@312)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@277 f_2@@312))
))) (forall ((o2@@278 T@Ref) (f_2@@313 T@Field_20617_20618) ) (!  (=> (select (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@58) null (WandMaskField_8596 pm_f@@20))) o2@@278 f_2@@313) (= (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@58) o2@@278 f_2@@313) (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@278 f_2@@313)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@57) o2@@278 f_2@@313))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@57 Mask@@128) (IsWandField_8596_8597 pm_f@@20))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_13514) (ExhaleHeap@@58 T@PolymorphicMapType_13514) (Mask@@129 T@PolymorphicMapType_13535) (pm_f@@21 T@Field_19687_19688) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@58 Mask@@129) (=> (and (HasDirectPerm_19654_16932 Mask@@129 null pm_f@@21) (IsWandField_8531_8532 pm_f@@21)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@279 T@Ref) (f_2@@314 T@Field_21288_3574) ) (!  (=> (select (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@279 f_2@@314) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@59) o2@@279 f_2@@314) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@279 f_2@@314)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@279 f_2@@314))
)) (forall ((o2@@280 T@Ref) (f_2@@315 T@Field_13574_53) ) (!  (=> (select (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@280 f_2@@315) (= (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@59) o2@@280 f_2@@315) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@280 f_2@@315)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@280 f_2@@315))
))) (forall ((o2@@281 T@Ref) (f_2@@316 T@Field_13587_13588) ) (!  (=> (select (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@281 f_2@@316) (= (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@59) o2@@281 f_2@@316) (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@281 f_2@@316)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@281 f_2@@316))
))) (forall ((o2@@282 T@Ref) (f_2@@317 T@Field_8623_16920) ) (!  (=> (select (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@282 f_2@@317) (= (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@59) o2@@282 f_2@@317) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@282 f_2@@317)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@282 f_2@@317))
))) (forall ((o2@@283 T@Ref) (f_2@@318 T@Field_8623_16932) ) (!  (=> (select (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@283 f_2@@318) (= (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@59) o2@@283 f_2@@318) (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@283 f_2@@318)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@283 f_2@@318))
))) (forall ((o2@@284 T@Ref) (f_2@@319 T@Field_16902_1203) ) (!  (=> (select (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@284 f_2@@319) (= (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@59) o2@@284 f_2@@319) (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@284 f_2@@319)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@284 f_2@@319))
))) (forall ((o2@@285 T@Ref) (f_2@@320 T@Field_16902_53) ) (!  (=> (select (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@285 f_2@@320) (= (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@59) o2@@285 f_2@@320) (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@285 f_2@@320)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@285 f_2@@320))
))) (forall ((o2@@286 T@Ref) (f_2@@321 T@Field_16902_13588) ) (!  (=> (select (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@286 f_2@@321) (= (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@59) o2@@286 f_2@@321) (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@286 f_2@@321)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@286 f_2@@321))
))) (forall ((o2@@287 T@Ref) (f_2@@322 T@Field_16915_16920) ) (!  (=> (select (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@287 f_2@@322) (= (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@59) o2@@287 f_2@@322) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@287 f_2@@322)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@287 f_2@@322))
))) (forall ((o2@@288 T@Ref) (f_2@@323 T@Field_16931_16932) ) (!  (=> (select (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@288 f_2@@323) (= (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@59) o2@@288 f_2@@323) (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@288 f_2@@323)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@288 f_2@@323))
))) (forall ((o2@@289 T@Ref) (f_2@@324 T@Field_17546_1529) ) (!  (=> (select (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@289 f_2@@324) (= (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@59) o2@@289 f_2@@324) (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@289 f_2@@324)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@289 f_2@@324))
))) (forall ((o2@@290 T@Ref) (f_2@@325 T@Field_17546_53) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@290 f_2@@325) (= (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@59) o2@@290 f_2@@325) (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@290 f_2@@325)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@290 f_2@@325))
))) (forall ((o2@@291 T@Ref) (f_2@@326 T@Field_17546_13588) ) (!  (=> (select (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@291 f_2@@326) (= (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@59) o2@@291 f_2@@326) (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@291 f_2@@326)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@291 f_2@@326))
))) (forall ((o2@@292 T@Ref) (f_2@@327 T@Field_17559_17564) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@292 f_2@@327) (= (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@59) o2@@292 f_2@@327) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@292 f_2@@327)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@292 f_2@@327))
))) (forall ((o2@@293 T@Ref) (f_2@@328 T@Field_17575_17576) ) (!  (=> (select (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@293 f_2@@328) (= (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@59) o2@@293 f_2@@328) (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@293 f_2@@328)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@293 f_2@@328))
))) (forall ((o2@@294 T@Ref) (f_2@@329 T@Field_18247_1900) ) (!  (=> (select (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@294 f_2@@329) (= (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@59) o2@@294 f_2@@329) (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@294 f_2@@329)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@294 f_2@@329))
))) (forall ((o2@@295 T@Ref) (f_2@@330 T@Field_18247_53) ) (!  (=> (select (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@295 f_2@@330) (= (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@59) o2@@295 f_2@@330) (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@295 f_2@@330)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@295 f_2@@330))
))) (forall ((o2@@296 T@Ref) (f_2@@331 T@Field_18247_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@296 f_2@@331) (= (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@59) o2@@296 f_2@@331) (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@296 f_2@@331)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@296 f_2@@331))
))) (forall ((o2@@297 T@Ref) (f_2@@332 T@Field_18259_18264) ) (!  (=> (select (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@297 f_2@@332) (= (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@59) o2@@297 f_2@@332) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@297 f_2@@332)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@297 f_2@@332))
))) (forall ((o2@@298 T@Ref) (f_2@@333 T@Field_18274_18275) ) (!  (=> (select (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@298 f_2@@333) (= (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@59) o2@@298 f_2@@333) (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@298 f_2@@333)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@298 f_2@@333))
))) (forall ((o2@@299 T@Ref) (f_2@@334 T@Field_18805_2181) ) (!  (=> (select (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@299 f_2@@334) (= (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@59) o2@@299 f_2@@334) (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@299 f_2@@334)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@299 f_2@@334))
))) (forall ((o2@@300 T@Ref) (f_2@@335 T@Field_18805_53) ) (!  (=> (select (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@300 f_2@@335) (= (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@59) o2@@300 f_2@@335) (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@300 f_2@@335)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@300 f_2@@335))
))) (forall ((o2@@301 T@Ref) (f_2@@336 T@Field_18805_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@301 f_2@@336) (= (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@59) o2@@301 f_2@@336) (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@301 f_2@@336)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@301 f_2@@336))
))) (forall ((o2@@302 T@Ref) (f_2@@337 T@Field_18819_18824) ) (!  (=> (select (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@302 f_2@@337) (= (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@59) o2@@302 f_2@@337) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@302 f_2@@337)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@302 f_2@@337))
))) (forall ((o2@@303 T@Ref) (f_2@@338 T@Field_18836_18837) ) (!  (=> (select (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@303 f_2@@338) (= (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@59) o2@@303 f_2@@338) (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@303 f_2@@338)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@303 f_2@@338))
))) (forall ((o2@@304 T@Ref) (f_2@@339 T@Field_19654_2678) ) (!  (=> (select (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@304 f_2@@339) (= (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@59) o2@@304 f_2@@339) (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@304 f_2@@339)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@304 f_2@@339))
))) (forall ((o2@@305 T@Ref) (f_2@@340 T@Field_19654_53) ) (!  (=> (select (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@305 f_2@@340) (= (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@59) o2@@305 f_2@@340) (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@305 f_2@@340)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@305 f_2@@340))
))) (forall ((o2@@306 T@Ref) (f_2@@341 T@Field_19654_13588) ) (!  (=> (select (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@306 f_2@@341) (= (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@59) o2@@306 f_2@@341) (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@306 f_2@@341)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@306 f_2@@341))
))) (forall ((o2@@307 T@Ref) (f_2@@342 T@Field_19669_19674) ) (!  (=> (select (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@307 f_2@@342) (= (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) o2@@307 f_2@@342) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@307 f_2@@342)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@307 f_2@@342))
))) (forall ((o2@@308 T@Ref) (f_2@@343 T@Field_19687_19688) ) (!  (=> (select (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@308 f_2@@343) (= (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@59) o2@@308 f_2@@343) (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@308 f_2@@343)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@308 f_2@@343))
))) (forall ((o2@@309 T@Ref) (f_2@@344 T@Field_20588_3216) ) (!  (=> (select (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@309 f_2@@344) (= (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@59) o2@@309 f_2@@344) (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@309 f_2@@344)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@309 f_2@@344))
))) (forall ((o2@@310 T@Ref) (f_2@@345 T@Field_20588_53) ) (!  (=> (select (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@310 f_2@@345) (= (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@59) o2@@310 f_2@@345) (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@310 f_2@@345)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@310 f_2@@345))
))) (forall ((o2@@311 T@Ref) (f_2@@346 T@Field_20588_13588) ) (!  (=> (select (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@311 f_2@@346) (= (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@59) o2@@311 f_2@@346) (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@311 f_2@@346)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@311 f_2@@346))
))) (forall ((o2@@312 T@Ref) (f_2@@347 T@Field_20601_20606) ) (!  (=> (select (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@312 f_2@@347) (= (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@59) o2@@312 f_2@@347) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@312 f_2@@347)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@312 f_2@@347))
))) (forall ((o2@@313 T@Ref) (f_2@@348 T@Field_20617_20618) ) (!  (=> (select (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@59) null (WandMaskField_8531 pm_f@@21))) o2@@313 f_2@@348) (= (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@59) o2@@313 f_2@@348) (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@313 f_2@@348)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@58) o2@@313 f_2@@348))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@58 Mask@@129) (IsWandField_8531_8532 pm_f@@21))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_13514) (ExhaleHeap@@59 T@PolymorphicMapType_13514) (Mask@@130 T@PolymorphicMapType_13535) (pm_f@@22 T@Field_18836_18837) ) (!  (=> (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@59 Mask@@130) (=> (and (HasDirectPerm_18805_16932 Mask@@130 null pm_f@@22) (IsWandField_8465_8466 pm_f@@22)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@314 T@Ref) (f_2@@349 T@Field_21288_3574) ) (!  (=> (select (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@314 f_2@@349) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@60) o2@@314 f_2@@349) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@314 f_2@@349)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@314 f_2@@349))
)) (forall ((o2@@315 T@Ref) (f_2@@350 T@Field_13574_53) ) (!  (=> (select (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@315 f_2@@350) (= (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@60) o2@@315 f_2@@350) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@315 f_2@@350)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@315 f_2@@350))
))) (forall ((o2@@316 T@Ref) (f_2@@351 T@Field_13587_13588) ) (!  (=> (select (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@316 f_2@@351) (= (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@60) o2@@316 f_2@@351) (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@316 f_2@@351)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@316 f_2@@351))
))) (forall ((o2@@317 T@Ref) (f_2@@352 T@Field_8623_16920) ) (!  (=> (select (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@317 f_2@@352) (= (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@60) o2@@317 f_2@@352) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@317 f_2@@352)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@317 f_2@@352))
))) (forall ((o2@@318 T@Ref) (f_2@@353 T@Field_8623_16932) ) (!  (=> (select (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@318 f_2@@353) (= (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@60) o2@@318 f_2@@353) (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@318 f_2@@353)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@318 f_2@@353))
))) (forall ((o2@@319 T@Ref) (f_2@@354 T@Field_16902_1203) ) (!  (=> (select (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@319 f_2@@354) (= (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@60) o2@@319 f_2@@354) (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@319 f_2@@354)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@319 f_2@@354))
))) (forall ((o2@@320 T@Ref) (f_2@@355 T@Field_16902_53) ) (!  (=> (select (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@320 f_2@@355) (= (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@60) o2@@320 f_2@@355) (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@320 f_2@@355)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@320 f_2@@355))
))) (forall ((o2@@321 T@Ref) (f_2@@356 T@Field_16902_13588) ) (!  (=> (select (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@321 f_2@@356) (= (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@60) o2@@321 f_2@@356) (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@321 f_2@@356)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@321 f_2@@356))
))) (forall ((o2@@322 T@Ref) (f_2@@357 T@Field_16915_16920) ) (!  (=> (select (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@322 f_2@@357) (= (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@60) o2@@322 f_2@@357) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@322 f_2@@357)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@322 f_2@@357))
))) (forall ((o2@@323 T@Ref) (f_2@@358 T@Field_16931_16932) ) (!  (=> (select (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@323 f_2@@358) (= (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@60) o2@@323 f_2@@358) (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@323 f_2@@358)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@323 f_2@@358))
))) (forall ((o2@@324 T@Ref) (f_2@@359 T@Field_17546_1529) ) (!  (=> (select (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@324 f_2@@359) (= (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@60) o2@@324 f_2@@359) (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@324 f_2@@359)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@324 f_2@@359))
))) (forall ((o2@@325 T@Ref) (f_2@@360 T@Field_17546_53) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@325 f_2@@360) (= (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@60) o2@@325 f_2@@360) (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@325 f_2@@360)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@325 f_2@@360))
))) (forall ((o2@@326 T@Ref) (f_2@@361 T@Field_17546_13588) ) (!  (=> (select (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@326 f_2@@361) (= (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@60) o2@@326 f_2@@361) (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@326 f_2@@361)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@326 f_2@@361))
))) (forall ((o2@@327 T@Ref) (f_2@@362 T@Field_17559_17564) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@327 f_2@@362) (= (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@60) o2@@327 f_2@@362) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@327 f_2@@362)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@327 f_2@@362))
))) (forall ((o2@@328 T@Ref) (f_2@@363 T@Field_17575_17576) ) (!  (=> (select (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@328 f_2@@363) (= (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@60) o2@@328 f_2@@363) (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@328 f_2@@363)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@328 f_2@@363))
))) (forall ((o2@@329 T@Ref) (f_2@@364 T@Field_18247_1900) ) (!  (=> (select (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@329 f_2@@364) (= (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@60) o2@@329 f_2@@364) (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@329 f_2@@364)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@329 f_2@@364))
))) (forall ((o2@@330 T@Ref) (f_2@@365 T@Field_18247_53) ) (!  (=> (select (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@330 f_2@@365) (= (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@60) o2@@330 f_2@@365) (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@330 f_2@@365)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@330 f_2@@365))
))) (forall ((o2@@331 T@Ref) (f_2@@366 T@Field_18247_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@331 f_2@@366) (= (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@60) o2@@331 f_2@@366) (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@331 f_2@@366)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@331 f_2@@366))
))) (forall ((o2@@332 T@Ref) (f_2@@367 T@Field_18259_18264) ) (!  (=> (select (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@332 f_2@@367) (= (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@60) o2@@332 f_2@@367) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@332 f_2@@367)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@332 f_2@@367))
))) (forall ((o2@@333 T@Ref) (f_2@@368 T@Field_18274_18275) ) (!  (=> (select (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@333 f_2@@368) (= (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@60) o2@@333 f_2@@368) (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@333 f_2@@368)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@333 f_2@@368))
))) (forall ((o2@@334 T@Ref) (f_2@@369 T@Field_18805_2181) ) (!  (=> (select (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@334 f_2@@369) (= (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@60) o2@@334 f_2@@369) (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@334 f_2@@369)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@334 f_2@@369))
))) (forall ((o2@@335 T@Ref) (f_2@@370 T@Field_18805_53) ) (!  (=> (select (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@335 f_2@@370) (= (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@60) o2@@335 f_2@@370) (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@335 f_2@@370)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@335 f_2@@370))
))) (forall ((o2@@336 T@Ref) (f_2@@371 T@Field_18805_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@336 f_2@@371) (= (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@60) o2@@336 f_2@@371) (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@336 f_2@@371)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@336 f_2@@371))
))) (forall ((o2@@337 T@Ref) (f_2@@372 T@Field_18819_18824) ) (!  (=> (select (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@337 f_2@@372) (= (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) o2@@337 f_2@@372) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@337 f_2@@372)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@337 f_2@@372))
))) (forall ((o2@@338 T@Ref) (f_2@@373 T@Field_18836_18837) ) (!  (=> (select (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@338 f_2@@373) (= (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@60) o2@@338 f_2@@373) (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@338 f_2@@373)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@338 f_2@@373))
))) (forall ((o2@@339 T@Ref) (f_2@@374 T@Field_19654_2678) ) (!  (=> (select (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@339 f_2@@374) (= (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@60) o2@@339 f_2@@374) (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@339 f_2@@374)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@339 f_2@@374))
))) (forall ((o2@@340 T@Ref) (f_2@@375 T@Field_19654_53) ) (!  (=> (select (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@340 f_2@@375) (= (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@60) o2@@340 f_2@@375) (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@340 f_2@@375)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@340 f_2@@375))
))) (forall ((o2@@341 T@Ref) (f_2@@376 T@Field_19654_13588) ) (!  (=> (select (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@341 f_2@@376) (= (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@60) o2@@341 f_2@@376) (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@341 f_2@@376)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@341 f_2@@376))
))) (forall ((o2@@342 T@Ref) (f_2@@377 T@Field_19669_19674) ) (!  (=> (select (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@342 f_2@@377) (= (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@60) o2@@342 f_2@@377) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@342 f_2@@377)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@342 f_2@@377))
))) (forall ((o2@@343 T@Ref) (f_2@@378 T@Field_19687_19688) ) (!  (=> (select (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@343 f_2@@378) (= (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@60) o2@@343 f_2@@378) (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@343 f_2@@378)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@343 f_2@@378))
))) (forall ((o2@@344 T@Ref) (f_2@@379 T@Field_20588_3216) ) (!  (=> (select (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@344 f_2@@379) (= (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@60) o2@@344 f_2@@379) (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@344 f_2@@379)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@344 f_2@@379))
))) (forall ((o2@@345 T@Ref) (f_2@@380 T@Field_20588_53) ) (!  (=> (select (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@345 f_2@@380) (= (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@60) o2@@345 f_2@@380) (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@345 f_2@@380)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@345 f_2@@380))
))) (forall ((o2@@346 T@Ref) (f_2@@381 T@Field_20588_13588) ) (!  (=> (select (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@346 f_2@@381) (= (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@60) o2@@346 f_2@@381) (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@346 f_2@@381)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@346 f_2@@381))
))) (forall ((o2@@347 T@Ref) (f_2@@382 T@Field_20601_20606) ) (!  (=> (select (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@347 f_2@@382) (= (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@60) o2@@347 f_2@@382) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@347 f_2@@382)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@347 f_2@@382))
))) (forall ((o2@@348 T@Ref) (f_2@@383 T@Field_20617_20618) ) (!  (=> (select (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@60) null (WandMaskField_8465 pm_f@@22))) o2@@348 f_2@@383) (= (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@60) o2@@348 f_2@@383) (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@348 f_2@@383)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@59) o2@@348 f_2@@383))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@59 Mask@@130) (IsWandField_8465_8466 pm_f@@22))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_13514) (ExhaleHeap@@60 T@PolymorphicMapType_13514) (Mask@@131 T@PolymorphicMapType_13535) (pm_f@@23 T@Field_18274_18275) ) (!  (=> (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@60 Mask@@131) (=> (and (HasDirectPerm_18247_16932 Mask@@131 null pm_f@@23) (IsWandField_8426_8427 pm_f@@23)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@349 T@Ref) (f_2@@384 T@Field_21288_3574) ) (!  (=> (select (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@349 f_2@@384) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@61) o2@@349 f_2@@384) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@349 f_2@@384)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@349 f_2@@384))
)) (forall ((o2@@350 T@Ref) (f_2@@385 T@Field_13574_53) ) (!  (=> (select (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@350 f_2@@385) (= (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@61) o2@@350 f_2@@385) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@350 f_2@@385)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@350 f_2@@385))
))) (forall ((o2@@351 T@Ref) (f_2@@386 T@Field_13587_13588) ) (!  (=> (select (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@351 f_2@@386) (= (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@61) o2@@351 f_2@@386) (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@351 f_2@@386)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@351 f_2@@386))
))) (forall ((o2@@352 T@Ref) (f_2@@387 T@Field_8623_16920) ) (!  (=> (select (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@352 f_2@@387) (= (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@61) o2@@352 f_2@@387) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@352 f_2@@387)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@352 f_2@@387))
))) (forall ((o2@@353 T@Ref) (f_2@@388 T@Field_8623_16932) ) (!  (=> (select (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@353 f_2@@388) (= (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@61) o2@@353 f_2@@388) (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@353 f_2@@388)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@353 f_2@@388))
))) (forall ((o2@@354 T@Ref) (f_2@@389 T@Field_16902_1203) ) (!  (=> (select (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@354 f_2@@389) (= (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@61) o2@@354 f_2@@389) (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@354 f_2@@389)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@354 f_2@@389))
))) (forall ((o2@@355 T@Ref) (f_2@@390 T@Field_16902_53) ) (!  (=> (select (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@355 f_2@@390) (= (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@61) o2@@355 f_2@@390) (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@355 f_2@@390)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@355 f_2@@390))
))) (forall ((o2@@356 T@Ref) (f_2@@391 T@Field_16902_13588) ) (!  (=> (select (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@356 f_2@@391) (= (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@61) o2@@356 f_2@@391) (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@356 f_2@@391)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@356 f_2@@391))
))) (forall ((o2@@357 T@Ref) (f_2@@392 T@Field_16915_16920) ) (!  (=> (select (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@357 f_2@@392) (= (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@61) o2@@357 f_2@@392) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@357 f_2@@392)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@357 f_2@@392))
))) (forall ((o2@@358 T@Ref) (f_2@@393 T@Field_16931_16932) ) (!  (=> (select (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@358 f_2@@393) (= (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@61) o2@@358 f_2@@393) (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@358 f_2@@393)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@358 f_2@@393))
))) (forall ((o2@@359 T@Ref) (f_2@@394 T@Field_17546_1529) ) (!  (=> (select (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@359 f_2@@394) (= (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@61) o2@@359 f_2@@394) (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@359 f_2@@394)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@359 f_2@@394))
))) (forall ((o2@@360 T@Ref) (f_2@@395 T@Field_17546_53) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@360 f_2@@395) (= (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@61) o2@@360 f_2@@395) (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@360 f_2@@395)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@360 f_2@@395))
))) (forall ((o2@@361 T@Ref) (f_2@@396 T@Field_17546_13588) ) (!  (=> (select (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@361 f_2@@396) (= (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@61) o2@@361 f_2@@396) (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@361 f_2@@396)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@361 f_2@@396))
))) (forall ((o2@@362 T@Ref) (f_2@@397 T@Field_17559_17564) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@362 f_2@@397) (= (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@61) o2@@362 f_2@@397) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@362 f_2@@397)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@362 f_2@@397))
))) (forall ((o2@@363 T@Ref) (f_2@@398 T@Field_17575_17576) ) (!  (=> (select (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@363 f_2@@398) (= (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@61) o2@@363 f_2@@398) (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@363 f_2@@398)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@363 f_2@@398))
))) (forall ((o2@@364 T@Ref) (f_2@@399 T@Field_18247_1900) ) (!  (=> (select (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@364 f_2@@399) (= (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@61) o2@@364 f_2@@399) (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@364 f_2@@399)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@364 f_2@@399))
))) (forall ((o2@@365 T@Ref) (f_2@@400 T@Field_18247_53) ) (!  (=> (select (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@365 f_2@@400) (= (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@61) o2@@365 f_2@@400) (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@365 f_2@@400)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@365 f_2@@400))
))) (forall ((o2@@366 T@Ref) (f_2@@401 T@Field_18247_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@366 f_2@@401) (= (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@61) o2@@366 f_2@@401) (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@366 f_2@@401)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@366 f_2@@401))
))) (forall ((o2@@367 T@Ref) (f_2@@402 T@Field_18259_18264) ) (!  (=> (select (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@367 f_2@@402) (= (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) o2@@367 f_2@@402) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@367 f_2@@402)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@367 f_2@@402))
))) (forall ((o2@@368 T@Ref) (f_2@@403 T@Field_18274_18275) ) (!  (=> (select (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@368 f_2@@403) (= (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@61) o2@@368 f_2@@403) (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@368 f_2@@403)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@368 f_2@@403))
))) (forall ((o2@@369 T@Ref) (f_2@@404 T@Field_18805_2181) ) (!  (=> (select (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@369 f_2@@404) (= (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@61) o2@@369 f_2@@404) (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@369 f_2@@404)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@369 f_2@@404))
))) (forall ((o2@@370 T@Ref) (f_2@@405 T@Field_18805_53) ) (!  (=> (select (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@370 f_2@@405) (= (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@61) o2@@370 f_2@@405) (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@370 f_2@@405)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@370 f_2@@405))
))) (forall ((o2@@371 T@Ref) (f_2@@406 T@Field_18805_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@371 f_2@@406) (= (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@61) o2@@371 f_2@@406) (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@371 f_2@@406)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@371 f_2@@406))
))) (forall ((o2@@372 T@Ref) (f_2@@407 T@Field_18819_18824) ) (!  (=> (select (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@372 f_2@@407) (= (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@61) o2@@372 f_2@@407) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@372 f_2@@407)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@372 f_2@@407))
))) (forall ((o2@@373 T@Ref) (f_2@@408 T@Field_18836_18837) ) (!  (=> (select (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@373 f_2@@408) (= (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@61) o2@@373 f_2@@408) (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@373 f_2@@408)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@373 f_2@@408))
))) (forall ((o2@@374 T@Ref) (f_2@@409 T@Field_19654_2678) ) (!  (=> (select (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@374 f_2@@409) (= (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@61) o2@@374 f_2@@409) (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@374 f_2@@409)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@374 f_2@@409))
))) (forall ((o2@@375 T@Ref) (f_2@@410 T@Field_19654_53) ) (!  (=> (select (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@375 f_2@@410) (= (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@61) o2@@375 f_2@@410) (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@375 f_2@@410)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@375 f_2@@410))
))) (forall ((o2@@376 T@Ref) (f_2@@411 T@Field_19654_13588) ) (!  (=> (select (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@376 f_2@@411) (= (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@61) o2@@376 f_2@@411) (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@376 f_2@@411)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@376 f_2@@411))
))) (forall ((o2@@377 T@Ref) (f_2@@412 T@Field_19669_19674) ) (!  (=> (select (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@377 f_2@@412) (= (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@61) o2@@377 f_2@@412) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@377 f_2@@412)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@377 f_2@@412))
))) (forall ((o2@@378 T@Ref) (f_2@@413 T@Field_19687_19688) ) (!  (=> (select (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@378 f_2@@413) (= (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@61) o2@@378 f_2@@413) (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@378 f_2@@413)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@378 f_2@@413))
))) (forall ((o2@@379 T@Ref) (f_2@@414 T@Field_20588_3216) ) (!  (=> (select (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@379 f_2@@414) (= (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@61) o2@@379 f_2@@414) (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@379 f_2@@414)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@379 f_2@@414))
))) (forall ((o2@@380 T@Ref) (f_2@@415 T@Field_20588_53) ) (!  (=> (select (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@380 f_2@@415) (= (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@61) o2@@380 f_2@@415) (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@380 f_2@@415)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@380 f_2@@415))
))) (forall ((o2@@381 T@Ref) (f_2@@416 T@Field_20588_13588) ) (!  (=> (select (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@381 f_2@@416) (= (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@61) o2@@381 f_2@@416) (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@381 f_2@@416)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@381 f_2@@416))
))) (forall ((o2@@382 T@Ref) (f_2@@417 T@Field_20601_20606) ) (!  (=> (select (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@382 f_2@@417) (= (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@61) o2@@382 f_2@@417) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@382 f_2@@417)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@382 f_2@@417))
))) (forall ((o2@@383 T@Ref) (f_2@@418 T@Field_20617_20618) ) (!  (=> (select (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@61) null (WandMaskField_8426 pm_f@@23))) o2@@383 f_2@@418) (= (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@61) o2@@383 f_2@@418) (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@383 f_2@@418)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@60) o2@@383 f_2@@418))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@60 Mask@@131) (IsWandField_8426_8427 pm_f@@23))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_13514) (ExhaleHeap@@61 T@PolymorphicMapType_13514) (Mask@@132 T@PolymorphicMapType_13535) (pm_f@@24 T@Field_17575_17576) ) (!  (=> (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@61 Mask@@132) (=> (and (HasDirectPerm_17546_16932 Mask@@132 null pm_f@@24) (IsWandField_8388_8389 pm_f@@24)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@384 T@Ref) (f_2@@419 T@Field_21288_3574) ) (!  (=> (select (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@384 f_2@@419) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@62) o2@@384 f_2@@419) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@384 f_2@@419)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@384 f_2@@419))
)) (forall ((o2@@385 T@Ref) (f_2@@420 T@Field_13574_53) ) (!  (=> (select (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@385 f_2@@420) (= (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@62) o2@@385 f_2@@420) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@385 f_2@@420)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@385 f_2@@420))
))) (forall ((o2@@386 T@Ref) (f_2@@421 T@Field_13587_13588) ) (!  (=> (select (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@386 f_2@@421) (= (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@62) o2@@386 f_2@@421) (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@386 f_2@@421)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@386 f_2@@421))
))) (forall ((o2@@387 T@Ref) (f_2@@422 T@Field_8623_16920) ) (!  (=> (select (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@387 f_2@@422) (= (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@62) o2@@387 f_2@@422) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@387 f_2@@422)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@387 f_2@@422))
))) (forall ((o2@@388 T@Ref) (f_2@@423 T@Field_8623_16932) ) (!  (=> (select (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@388 f_2@@423) (= (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@62) o2@@388 f_2@@423) (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@388 f_2@@423)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@388 f_2@@423))
))) (forall ((o2@@389 T@Ref) (f_2@@424 T@Field_16902_1203) ) (!  (=> (select (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@389 f_2@@424) (= (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@62) o2@@389 f_2@@424) (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@389 f_2@@424)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@389 f_2@@424))
))) (forall ((o2@@390 T@Ref) (f_2@@425 T@Field_16902_53) ) (!  (=> (select (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@390 f_2@@425) (= (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@62) o2@@390 f_2@@425) (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@390 f_2@@425)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@390 f_2@@425))
))) (forall ((o2@@391 T@Ref) (f_2@@426 T@Field_16902_13588) ) (!  (=> (select (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@391 f_2@@426) (= (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@62) o2@@391 f_2@@426) (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@391 f_2@@426)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@391 f_2@@426))
))) (forall ((o2@@392 T@Ref) (f_2@@427 T@Field_16915_16920) ) (!  (=> (select (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@392 f_2@@427) (= (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@62) o2@@392 f_2@@427) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@392 f_2@@427)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@392 f_2@@427))
))) (forall ((o2@@393 T@Ref) (f_2@@428 T@Field_16931_16932) ) (!  (=> (select (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@393 f_2@@428) (= (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@62) o2@@393 f_2@@428) (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@393 f_2@@428)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@393 f_2@@428))
))) (forall ((o2@@394 T@Ref) (f_2@@429 T@Field_17546_1529) ) (!  (=> (select (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@394 f_2@@429) (= (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@62) o2@@394 f_2@@429) (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@394 f_2@@429)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@394 f_2@@429))
))) (forall ((o2@@395 T@Ref) (f_2@@430 T@Field_17546_53) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@395 f_2@@430) (= (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@62) o2@@395 f_2@@430) (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@395 f_2@@430)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@395 f_2@@430))
))) (forall ((o2@@396 T@Ref) (f_2@@431 T@Field_17546_13588) ) (!  (=> (select (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@396 f_2@@431) (= (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@62) o2@@396 f_2@@431) (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@396 f_2@@431)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@396 f_2@@431))
))) (forall ((o2@@397 T@Ref) (f_2@@432 T@Field_17559_17564) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@397 f_2@@432) (= (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) o2@@397 f_2@@432) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@397 f_2@@432)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@397 f_2@@432))
))) (forall ((o2@@398 T@Ref) (f_2@@433 T@Field_17575_17576) ) (!  (=> (select (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@398 f_2@@433) (= (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@62) o2@@398 f_2@@433) (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@398 f_2@@433)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@398 f_2@@433))
))) (forall ((o2@@399 T@Ref) (f_2@@434 T@Field_18247_1900) ) (!  (=> (select (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@399 f_2@@434) (= (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@62) o2@@399 f_2@@434) (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@399 f_2@@434)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@399 f_2@@434))
))) (forall ((o2@@400 T@Ref) (f_2@@435 T@Field_18247_53) ) (!  (=> (select (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@400 f_2@@435) (= (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@62) o2@@400 f_2@@435) (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@400 f_2@@435)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@400 f_2@@435))
))) (forall ((o2@@401 T@Ref) (f_2@@436 T@Field_18247_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@401 f_2@@436) (= (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@62) o2@@401 f_2@@436) (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@401 f_2@@436)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@401 f_2@@436))
))) (forall ((o2@@402 T@Ref) (f_2@@437 T@Field_18259_18264) ) (!  (=> (select (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@402 f_2@@437) (= (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@62) o2@@402 f_2@@437) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@402 f_2@@437)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@402 f_2@@437))
))) (forall ((o2@@403 T@Ref) (f_2@@438 T@Field_18274_18275) ) (!  (=> (select (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@403 f_2@@438) (= (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@62) o2@@403 f_2@@438) (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@403 f_2@@438)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@403 f_2@@438))
))) (forall ((o2@@404 T@Ref) (f_2@@439 T@Field_18805_2181) ) (!  (=> (select (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@404 f_2@@439) (= (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@62) o2@@404 f_2@@439) (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@404 f_2@@439)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@404 f_2@@439))
))) (forall ((o2@@405 T@Ref) (f_2@@440 T@Field_18805_53) ) (!  (=> (select (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@405 f_2@@440) (= (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@62) o2@@405 f_2@@440) (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@405 f_2@@440)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@405 f_2@@440))
))) (forall ((o2@@406 T@Ref) (f_2@@441 T@Field_18805_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@406 f_2@@441) (= (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@62) o2@@406 f_2@@441) (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@406 f_2@@441)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@406 f_2@@441))
))) (forall ((o2@@407 T@Ref) (f_2@@442 T@Field_18819_18824) ) (!  (=> (select (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@407 f_2@@442) (= (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@62) o2@@407 f_2@@442) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@407 f_2@@442)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@407 f_2@@442))
))) (forall ((o2@@408 T@Ref) (f_2@@443 T@Field_18836_18837) ) (!  (=> (select (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@408 f_2@@443) (= (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@62) o2@@408 f_2@@443) (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@408 f_2@@443)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@408 f_2@@443))
))) (forall ((o2@@409 T@Ref) (f_2@@444 T@Field_19654_2678) ) (!  (=> (select (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@409 f_2@@444) (= (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@62) o2@@409 f_2@@444) (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@409 f_2@@444)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@409 f_2@@444))
))) (forall ((o2@@410 T@Ref) (f_2@@445 T@Field_19654_53) ) (!  (=> (select (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@410 f_2@@445) (= (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@62) o2@@410 f_2@@445) (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@410 f_2@@445)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@410 f_2@@445))
))) (forall ((o2@@411 T@Ref) (f_2@@446 T@Field_19654_13588) ) (!  (=> (select (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@411 f_2@@446) (= (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@62) o2@@411 f_2@@446) (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@411 f_2@@446)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@411 f_2@@446))
))) (forall ((o2@@412 T@Ref) (f_2@@447 T@Field_19669_19674) ) (!  (=> (select (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@412 f_2@@447) (= (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@62) o2@@412 f_2@@447) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@412 f_2@@447)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@412 f_2@@447))
))) (forall ((o2@@413 T@Ref) (f_2@@448 T@Field_19687_19688) ) (!  (=> (select (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@413 f_2@@448) (= (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@62) o2@@413 f_2@@448) (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@413 f_2@@448)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@413 f_2@@448))
))) (forall ((o2@@414 T@Ref) (f_2@@449 T@Field_20588_3216) ) (!  (=> (select (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@414 f_2@@449) (= (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@62) o2@@414 f_2@@449) (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@414 f_2@@449)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@414 f_2@@449))
))) (forall ((o2@@415 T@Ref) (f_2@@450 T@Field_20588_53) ) (!  (=> (select (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@415 f_2@@450) (= (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@62) o2@@415 f_2@@450) (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@415 f_2@@450)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@415 f_2@@450))
))) (forall ((o2@@416 T@Ref) (f_2@@451 T@Field_20588_13588) ) (!  (=> (select (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@416 f_2@@451) (= (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@62) o2@@416 f_2@@451) (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@416 f_2@@451)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@416 f_2@@451))
))) (forall ((o2@@417 T@Ref) (f_2@@452 T@Field_20601_20606) ) (!  (=> (select (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@417 f_2@@452) (= (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@62) o2@@417 f_2@@452) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@417 f_2@@452)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@417 f_2@@452))
))) (forall ((o2@@418 T@Ref) (f_2@@453 T@Field_20617_20618) ) (!  (=> (select (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@62) null (WandMaskField_8388 pm_f@@24))) o2@@418 f_2@@453) (= (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@62) o2@@418 f_2@@453) (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@418 f_2@@453)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@61) o2@@418 f_2@@453))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@61 Mask@@132) (IsWandField_8388_8389 pm_f@@24))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_13514) (ExhaleHeap@@62 T@PolymorphicMapType_13514) (Mask@@133 T@PolymorphicMapType_13535) (pm_f@@25 T@Field_16931_16932) ) (!  (=> (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@62 Mask@@133) (=> (and (HasDirectPerm_16902_16932 Mask@@133 null pm_f@@25) (IsWandField_8339_8340 pm_f@@25)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@419 T@Ref) (f_2@@454 T@Field_21288_3574) ) (!  (=> (select (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@419 f_2@@454) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@63) o2@@419 f_2@@454) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@419 f_2@@454)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@419 f_2@@454))
)) (forall ((o2@@420 T@Ref) (f_2@@455 T@Field_13574_53) ) (!  (=> (select (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@420 f_2@@455) (= (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@63) o2@@420 f_2@@455) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@420 f_2@@455)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@420 f_2@@455))
))) (forall ((o2@@421 T@Ref) (f_2@@456 T@Field_13587_13588) ) (!  (=> (select (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@421 f_2@@456) (= (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@63) o2@@421 f_2@@456) (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@421 f_2@@456)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@421 f_2@@456))
))) (forall ((o2@@422 T@Ref) (f_2@@457 T@Field_8623_16920) ) (!  (=> (select (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@422 f_2@@457) (= (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@63) o2@@422 f_2@@457) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@422 f_2@@457)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@422 f_2@@457))
))) (forall ((o2@@423 T@Ref) (f_2@@458 T@Field_8623_16932) ) (!  (=> (select (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@423 f_2@@458) (= (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@63) o2@@423 f_2@@458) (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@423 f_2@@458)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@423 f_2@@458))
))) (forall ((o2@@424 T@Ref) (f_2@@459 T@Field_16902_1203) ) (!  (=> (select (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@424 f_2@@459) (= (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@63) o2@@424 f_2@@459) (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@424 f_2@@459)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@424 f_2@@459))
))) (forall ((o2@@425 T@Ref) (f_2@@460 T@Field_16902_53) ) (!  (=> (select (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@425 f_2@@460) (= (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@63) o2@@425 f_2@@460) (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@425 f_2@@460)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@425 f_2@@460))
))) (forall ((o2@@426 T@Ref) (f_2@@461 T@Field_16902_13588) ) (!  (=> (select (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@426 f_2@@461) (= (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@63) o2@@426 f_2@@461) (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@426 f_2@@461)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@426 f_2@@461))
))) (forall ((o2@@427 T@Ref) (f_2@@462 T@Field_16915_16920) ) (!  (=> (select (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@427 f_2@@462) (= (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) o2@@427 f_2@@462) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@427 f_2@@462)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@427 f_2@@462))
))) (forall ((o2@@428 T@Ref) (f_2@@463 T@Field_16931_16932) ) (!  (=> (select (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@428 f_2@@463) (= (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@63) o2@@428 f_2@@463) (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@428 f_2@@463)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@428 f_2@@463))
))) (forall ((o2@@429 T@Ref) (f_2@@464 T@Field_17546_1529) ) (!  (=> (select (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@429 f_2@@464) (= (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@63) o2@@429 f_2@@464) (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@429 f_2@@464)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@429 f_2@@464))
))) (forall ((o2@@430 T@Ref) (f_2@@465 T@Field_17546_53) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@430 f_2@@465) (= (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@63) o2@@430 f_2@@465) (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@430 f_2@@465)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@430 f_2@@465))
))) (forall ((o2@@431 T@Ref) (f_2@@466 T@Field_17546_13588) ) (!  (=> (select (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@431 f_2@@466) (= (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@63) o2@@431 f_2@@466) (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@431 f_2@@466)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@431 f_2@@466))
))) (forall ((o2@@432 T@Ref) (f_2@@467 T@Field_17559_17564) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@432 f_2@@467) (= (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@63) o2@@432 f_2@@467) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@432 f_2@@467)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@432 f_2@@467))
))) (forall ((o2@@433 T@Ref) (f_2@@468 T@Field_17575_17576) ) (!  (=> (select (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@433 f_2@@468) (= (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@63) o2@@433 f_2@@468) (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@433 f_2@@468)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@433 f_2@@468))
))) (forall ((o2@@434 T@Ref) (f_2@@469 T@Field_18247_1900) ) (!  (=> (select (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@434 f_2@@469) (= (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@63) o2@@434 f_2@@469) (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@434 f_2@@469)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@434 f_2@@469))
))) (forall ((o2@@435 T@Ref) (f_2@@470 T@Field_18247_53) ) (!  (=> (select (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@435 f_2@@470) (= (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@63) o2@@435 f_2@@470) (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@435 f_2@@470)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@435 f_2@@470))
))) (forall ((o2@@436 T@Ref) (f_2@@471 T@Field_18247_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@436 f_2@@471) (= (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@63) o2@@436 f_2@@471) (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@436 f_2@@471)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@436 f_2@@471))
))) (forall ((o2@@437 T@Ref) (f_2@@472 T@Field_18259_18264) ) (!  (=> (select (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@437 f_2@@472) (= (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@63) o2@@437 f_2@@472) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@437 f_2@@472)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@437 f_2@@472))
))) (forall ((o2@@438 T@Ref) (f_2@@473 T@Field_18274_18275) ) (!  (=> (select (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@438 f_2@@473) (= (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@63) o2@@438 f_2@@473) (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@438 f_2@@473)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@438 f_2@@473))
))) (forall ((o2@@439 T@Ref) (f_2@@474 T@Field_18805_2181) ) (!  (=> (select (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@439 f_2@@474) (= (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@63) o2@@439 f_2@@474) (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@439 f_2@@474)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@439 f_2@@474))
))) (forall ((o2@@440 T@Ref) (f_2@@475 T@Field_18805_53) ) (!  (=> (select (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@440 f_2@@475) (= (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@63) o2@@440 f_2@@475) (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@440 f_2@@475)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@440 f_2@@475))
))) (forall ((o2@@441 T@Ref) (f_2@@476 T@Field_18805_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@441 f_2@@476) (= (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@63) o2@@441 f_2@@476) (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@441 f_2@@476)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@441 f_2@@476))
))) (forall ((o2@@442 T@Ref) (f_2@@477 T@Field_18819_18824) ) (!  (=> (select (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@442 f_2@@477) (= (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@63) o2@@442 f_2@@477) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@442 f_2@@477)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@442 f_2@@477))
))) (forall ((o2@@443 T@Ref) (f_2@@478 T@Field_18836_18837) ) (!  (=> (select (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@443 f_2@@478) (= (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@63) o2@@443 f_2@@478) (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@443 f_2@@478)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@443 f_2@@478))
))) (forall ((o2@@444 T@Ref) (f_2@@479 T@Field_19654_2678) ) (!  (=> (select (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@444 f_2@@479) (= (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@63) o2@@444 f_2@@479) (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@444 f_2@@479)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@444 f_2@@479))
))) (forall ((o2@@445 T@Ref) (f_2@@480 T@Field_19654_53) ) (!  (=> (select (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@445 f_2@@480) (= (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@63) o2@@445 f_2@@480) (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@445 f_2@@480)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@445 f_2@@480))
))) (forall ((o2@@446 T@Ref) (f_2@@481 T@Field_19654_13588) ) (!  (=> (select (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@446 f_2@@481) (= (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@63) o2@@446 f_2@@481) (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@446 f_2@@481)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@446 f_2@@481))
))) (forall ((o2@@447 T@Ref) (f_2@@482 T@Field_19669_19674) ) (!  (=> (select (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@447 f_2@@482) (= (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@63) o2@@447 f_2@@482) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@447 f_2@@482)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@447 f_2@@482))
))) (forall ((o2@@448 T@Ref) (f_2@@483 T@Field_19687_19688) ) (!  (=> (select (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@448 f_2@@483) (= (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@63) o2@@448 f_2@@483) (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@448 f_2@@483)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@448 f_2@@483))
))) (forall ((o2@@449 T@Ref) (f_2@@484 T@Field_20588_3216) ) (!  (=> (select (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@449 f_2@@484) (= (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@63) o2@@449 f_2@@484) (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@449 f_2@@484)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@449 f_2@@484))
))) (forall ((o2@@450 T@Ref) (f_2@@485 T@Field_20588_53) ) (!  (=> (select (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@450 f_2@@485) (= (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@63) o2@@450 f_2@@485) (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@450 f_2@@485)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@450 f_2@@485))
))) (forall ((o2@@451 T@Ref) (f_2@@486 T@Field_20588_13588) ) (!  (=> (select (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@451 f_2@@486) (= (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@63) o2@@451 f_2@@486) (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@451 f_2@@486)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@451 f_2@@486))
))) (forall ((o2@@452 T@Ref) (f_2@@487 T@Field_20601_20606) ) (!  (=> (select (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@452 f_2@@487) (= (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@63) o2@@452 f_2@@487) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@452 f_2@@487)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@452 f_2@@487))
))) (forall ((o2@@453 T@Ref) (f_2@@488 T@Field_20617_20618) ) (!  (=> (select (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@63) null (WandMaskField_8339 pm_f@@25))) o2@@453 f_2@@488) (= (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@63) o2@@453 f_2@@488) (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@453 f_2@@488)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@62) o2@@453 f_2@@488))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@62 Mask@@133) (IsWandField_8339_8340 pm_f@@25))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_13514) (ExhaleHeap@@63 T@PolymorphicMapType_13514) (Mask@@134 T@PolymorphicMapType_13535) (pm_f@@26 T@Field_8623_16932) ) (!  (=> (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@63 Mask@@134) (=> (and (HasDirectPerm_8623_16932 Mask@@134 null pm_f@@26) (IsWandField_8623_59680 pm_f@@26)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@454 T@Ref) (f_2@@489 T@Field_21288_3574) ) (!  (=> (select (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@454 f_2@@489) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@64) o2@@454 f_2@@489) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@454 f_2@@489)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@454 f_2@@489))
)) (forall ((o2@@455 T@Ref) (f_2@@490 T@Field_13574_53) ) (!  (=> (select (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@455 f_2@@490) (= (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@64) o2@@455 f_2@@490) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@455 f_2@@490)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@455 f_2@@490))
))) (forall ((o2@@456 T@Ref) (f_2@@491 T@Field_13587_13588) ) (!  (=> (select (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@456 f_2@@491) (= (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@64) o2@@456 f_2@@491) (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@456 f_2@@491)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@456 f_2@@491))
))) (forall ((o2@@457 T@Ref) (f_2@@492 T@Field_8623_16920) ) (!  (=> (select (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@457 f_2@@492) (= (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) o2@@457 f_2@@492) (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@457 f_2@@492)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@457 f_2@@492))
))) (forall ((o2@@458 T@Ref) (f_2@@493 T@Field_8623_16932) ) (!  (=> (select (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@458 f_2@@493) (= (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@64) o2@@458 f_2@@493) (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@458 f_2@@493)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@458 f_2@@493))
))) (forall ((o2@@459 T@Ref) (f_2@@494 T@Field_16902_1203) ) (!  (=> (select (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@459 f_2@@494) (= (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@64) o2@@459 f_2@@494) (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@459 f_2@@494)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@459 f_2@@494))
))) (forall ((o2@@460 T@Ref) (f_2@@495 T@Field_16902_53) ) (!  (=> (select (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@460 f_2@@495) (= (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@64) o2@@460 f_2@@495) (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@460 f_2@@495)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@460 f_2@@495))
))) (forall ((o2@@461 T@Ref) (f_2@@496 T@Field_16902_13588) ) (!  (=> (select (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@461 f_2@@496) (= (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@64) o2@@461 f_2@@496) (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@461 f_2@@496)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@461 f_2@@496))
))) (forall ((o2@@462 T@Ref) (f_2@@497 T@Field_16915_16920) ) (!  (=> (select (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@462 f_2@@497) (= (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@64) o2@@462 f_2@@497) (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@462 f_2@@497)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@462 f_2@@497))
))) (forall ((o2@@463 T@Ref) (f_2@@498 T@Field_16931_16932) ) (!  (=> (select (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@463 f_2@@498) (= (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@64) o2@@463 f_2@@498) (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@463 f_2@@498)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@463 f_2@@498))
))) (forall ((o2@@464 T@Ref) (f_2@@499 T@Field_17546_1529) ) (!  (=> (select (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@464 f_2@@499) (= (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@64) o2@@464 f_2@@499) (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@464 f_2@@499)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@464 f_2@@499))
))) (forall ((o2@@465 T@Ref) (f_2@@500 T@Field_17546_53) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@465 f_2@@500) (= (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@64) o2@@465 f_2@@500) (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@465 f_2@@500)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@465 f_2@@500))
))) (forall ((o2@@466 T@Ref) (f_2@@501 T@Field_17546_13588) ) (!  (=> (select (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@466 f_2@@501) (= (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@64) o2@@466 f_2@@501) (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@466 f_2@@501)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@466 f_2@@501))
))) (forall ((o2@@467 T@Ref) (f_2@@502 T@Field_17559_17564) ) (!  (=> (select (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@467 f_2@@502) (= (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@64) o2@@467 f_2@@502) (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@467 f_2@@502)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@467 f_2@@502))
))) (forall ((o2@@468 T@Ref) (f_2@@503 T@Field_17575_17576) ) (!  (=> (select (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@468 f_2@@503) (= (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@64) o2@@468 f_2@@503) (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@468 f_2@@503)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@468 f_2@@503))
))) (forall ((o2@@469 T@Ref) (f_2@@504 T@Field_18247_1900) ) (!  (=> (select (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@469 f_2@@504) (= (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@64) o2@@469 f_2@@504) (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@469 f_2@@504)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@469 f_2@@504))
))) (forall ((o2@@470 T@Ref) (f_2@@505 T@Field_18247_53) ) (!  (=> (select (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@470 f_2@@505) (= (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@64) o2@@470 f_2@@505) (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@470 f_2@@505)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@470 f_2@@505))
))) (forall ((o2@@471 T@Ref) (f_2@@506 T@Field_18247_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@471 f_2@@506) (= (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@64) o2@@471 f_2@@506) (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@471 f_2@@506)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@471 f_2@@506))
))) (forall ((o2@@472 T@Ref) (f_2@@507 T@Field_18259_18264) ) (!  (=> (select (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@472 f_2@@507) (= (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@64) o2@@472 f_2@@507) (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@472 f_2@@507)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@472 f_2@@507))
))) (forall ((o2@@473 T@Ref) (f_2@@508 T@Field_18274_18275) ) (!  (=> (select (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@473 f_2@@508) (= (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@64) o2@@473 f_2@@508) (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@473 f_2@@508)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@473 f_2@@508))
))) (forall ((o2@@474 T@Ref) (f_2@@509 T@Field_18805_2181) ) (!  (=> (select (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@474 f_2@@509) (= (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@64) o2@@474 f_2@@509) (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@474 f_2@@509)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@474 f_2@@509))
))) (forall ((o2@@475 T@Ref) (f_2@@510 T@Field_18805_53) ) (!  (=> (select (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@475 f_2@@510) (= (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@64) o2@@475 f_2@@510) (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@475 f_2@@510)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@475 f_2@@510))
))) (forall ((o2@@476 T@Ref) (f_2@@511 T@Field_18805_13588) ) (!  (=> (select (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@476 f_2@@511) (= (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@64) o2@@476 f_2@@511) (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@476 f_2@@511)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@476 f_2@@511))
))) (forall ((o2@@477 T@Ref) (f_2@@512 T@Field_18819_18824) ) (!  (=> (select (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@477 f_2@@512) (= (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@64) o2@@477 f_2@@512) (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@477 f_2@@512)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@477 f_2@@512))
))) (forall ((o2@@478 T@Ref) (f_2@@513 T@Field_18836_18837) ) (!  (=> (select (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@478 f_2@@513) (= (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@64) o2@@478 f_2@@513) (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@478 f_2@@513)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@478 f_2@@513))
))) (forall ((o2@@479 T@Ref) (f_2@@514 T@Field_19654_2678) ) (!  (=> (select (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@479 f_2@@514) (= (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@64) o2@@479 f_2@@514) (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@479 f_2@@514)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@479 f_2@@514))
))) (forall ((o2@@480 T@Ref) (f_2@@515 T@Field_19654_53) ) (!  (=> (select (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@480 f_2@@515) (= (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@64) o2@@480 f_2@@515) (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@480 f_2@@515)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@480 f_2@@515))
))) (forall ((o2@@481 T@Ref) (f_2@@516 T@Field_19654_13588) ) (!  (=> (select (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@481 f_2@@516) (= (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@64) o2@@481 f_2@@516) (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@481 f_2@@516)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@481 f_2@@516))
))) (forall ((o2@@482 T@Ref) (f_2@@517 T@Field_19669_19674) ) (!  (=> (select (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@482 f_2@@517) (= (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@64) o2@@482 f_2@@517) (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@482 f_2@@517)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@482 f_2@@517))
))) (forall ((o2@@483 T@Ref) (f_2@@518 T@Field_19687_19688) ) (!  (=> (select (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@483 f_2@@518) (= (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@64) o2@@483 f_2@@518) (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@483 f_2@@518)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@483 f_2@@518))
))) (forall ((o2@@484 T@Ref) (f_2@@519 T@Field_20588_3216) ) (!  (=> (select (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@484 f_2@@519) (= (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@64) o2@@484 f_2@@519) (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@484 f_2@@519)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@484 f_2@@519))
))) (forall ((o2@@485 T@Ref) (f_2@@520 T@Field_20588_53) ) (!  (=> (select (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@485 f_2@@520) (= (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@64) o2@@485 f_2@@520) (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@485 f_2@@520)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@485 f_2@@520))
))) (forall ((o2@@486 T@Ref) (f_2@@521 T@Field_20588_13588) ) (!  (=> (select (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@486 f_2@@521) (= (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@64) o2@@486 f_2@@521) (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@486 f_2@@521)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@486 f_2@@521))
))) (forall ((o2@@487 T@Ref) (f_2@@522 T@Field_20601_20606) ) (!  (=> (select (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@487 f_2@@522) (= (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@64) o2@@487 f_2@@522) (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@487 f_2@@522)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@487 f_2@@522))
))) (forall ((o2@@488 T@Ref) (f_2@@523 T@Field_20617_20618) ) (!  (=> (select (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@64) null (WandMaskField_8623 pm_f@@26))) o2@@488 f_2@@523) (= (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@64) o2@@488 f_2@@523) (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@488 f_2@@523)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| ExhaleHeap@@63) o2@@488 f_2@@523))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@63 Mask@@134) (IsWandField_8623_59680 pm_f@@26))
)))
(assert (forall ((arg1@@28 T@Ref) (arg2@@28 Real) (arg3@@28 T@Ref) (arg4@@21 Real) ) (! (= (|wand_1#sm| arg1@@28 arg2@@28 arg3@@28 arg4@@21) (WandMaskField_8339 (|wand_1#ft| arg1@@28 arg2@@28 arg3@@28 arg4@@21)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_8339 (|wand_1#ft| arg1@@28 arg2@@28 arg3@@28 arg4@@21)))
)))
(assert (forall ((o_2@@104 T@Ref) (f_4@@104 T@Field_18836_18837) ) (! (= (select (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| ZeroMask) o_2@@104 f_4@@104) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| ZeroMask) o_2@@104 f_4@@104))
)))
(assert (forall ((o_2@@105 T@Ref) (f_4@@105 T@Field_18819_18824) ) (! (= (select (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| ZeroMask) o_2@@105 f_4@@105) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| ZeroMask) o_2@@105 f_4@@105))
)))
(assert (forall ((o_2@@106 T@Ref) (f_4@@106 T@Field_18805_13588) ) (! (= (select (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| ZeroMask) o_2@@106 f_4@@106) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| ZeroMask) o_2@@106 f_4@@106))
)))
(assert (forall ((o_2@@107 T@Ref) (f_4@@107 T@Field_18805_53) ) (! (= (select (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| ZeroMask) o_2@@107 f_4@@107) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| ZeroMask) o_2@@107 f_4@@107))
)))
(assert (forall ((o_2@@108 T@Ref) (f_4@@108 T@Field_18805_2181) ) (! (= (select (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| ZeroMask) o_2@@108 f_4@@108) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| ZeroMask) o_2@@108 f_4@@108))
)))
(assert (forall ((o_2@@109 T@Ref) (f_4@@109 T@Field_20617_20618) ) (! (= (select (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| ZeroMask) o_2@@109 f_4@@109) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| ZeroMask) o_2@@109 f_4@@109))
)))
(assert (forall ((o_2@@110 T@Ref) (f_4@@110 T@Field_20601_20606) ) (! (= (select (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| ZeroMask) o_2@@110 f_4@@110) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| ZeroMask) o_2@@110 f_4@@110))
)))
(assert (forall ((o_2@@111 T@Ref) (f_4@@111 T@Field_20588_13588) ) (! (= (select (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| ZeroMask) o_2@@111 f_4@@111) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| ZeroMask) o_2@@111 f_4@@111))
)))
(assert (forall ((o_2@@112 T@Ref) (f_4@@112 T@Field_20588_53) ) (! (= (select (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| ZeroMask) o_2@@112 f_4@@112) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| ZeroMask) o_2@@112 f_4@@112))
)))
(assert (forall ((o_2@@113 T@Ref) (f_4@@113 T@Field_20588_3216) ) (! (= (select (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| ZeroMask) o_2@@113 f_4@@113) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| ZeroMask) o_2@@113 f_4@@113))
)))
(assert (forall ((o_2@@114 T@Ref) (f_4@@114 T@Field_19687_19688) ) (! (= (select (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| ZeroMask) o_2@@114 f_4@@114) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| ZeroMask) o_2@@114 f_4@@114))
)))
(assert (forall ((o_2@@115 T@Ref) (f_4@@115 T@Field_19669_19674) ) (! (= (select (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| ZeroMask) o_2@@115 f_4@@115) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| ZeroMask) o_2@@115 f_4@@115))
)))
(assert (forall ((o_2@@116 T@Ref) (f_4@@116 T@Field_19654_13588) ) (! (= (select (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| ZeroMask) o_2@@116 f_4@@116) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| ZeroMask) o_2@@116 f_4@@116))
)))
(assert (forall ((o_2@@117 T@Ref) (f_4@@117 T@Field_19654_53) ) (! (= (select (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| ZeroMask) o_2@@117 f_4@@117) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| ZeroMask) o_2@@117 f_4@@117))
)))
(assert (forall ((o_2@@118 T@Ref) (f_4@@118 T@Field_19654_2678) ) (! (= (select (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| ZeroMask) o_2@@118 f_4@@118) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| ZeroMask) o_2@@118 f_4@@118))
)))
(assert (forall ((o_2@@119 T@Ref) (f_4@@119 T@Field_17575_17576) ) (! (= (select (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| ZeroMask) o_2@@119 f_4@@119) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| ZeroMask) o_2@@119 f_4@@119))
)))
(assert (forall ((o_2@@120 T@Ref) (f_4@@120 T@Field_17559_17564) ) (! (= (select (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| ZeroMask) o_2@@120 f_4@@120) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| ZeroMask) o_2@@120 f_4@@120))
)))
(assert (forall ((o_2@@121 T@Ref) (f_4@@121 T@Field_17546_13588) ) (! (= (select (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| ZeroMask) o_2@@121 f_4@@121) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| ZeroMask) o_2@@121 f_4@@121))
)))
(assert (forall ((o_2@@122 T@Ref) (f_4@@122 T@Field_17546_53) ) (! (= (select (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| ZeroMask) o_2@@122 f_4@@122) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| ZeroMask) o_2@@122 f_4@@122))
)))
(assert (forall ((o_2@@123 T@Ref) (f_4@@123 T@Field_17546_1529) ) (! (= (select (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| ZeroMask) o_2@@123 f_4@@123) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| ZeroMask) o_2@@123 f_4@@123))
)))
(assert (forall ((o_2@@124 T@Ref) (f_4@@124 T@Field_18274_18275) ) (! (= (select (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| ZeroMask) o_2@@124 f_4@@124) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| ZeroMask) o_2@@124 f_4@@124))
)))
(assert (forall ((o_2@@125 T@Ref) (f_4@@125 T@Field_18259_18264) ) (! (= (select (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| ZeroMask) o_2@@125 f_4@@125) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| ZeroMask) o_2@@125 f_4@@125))
)))
(assert (forall ((o_2@@126 T@Ref) (f_4@@126 T@Field_18247_13588) ) (! (= (select (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| ZeroMask) o_2@@126 f_4@@126) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| ZeroMask) o_2@@126 f_4@@126))
)))
(assert (forall ((o_2@@127 T@Ref) (f_4@@127 T@Field_18247_53) ) (! (= (select (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| ZeroMask) o_2@@127 f_4@@127) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| ZeroMask) o_2@@127 f_4@@127))
)))
(assert (forall ((o_2@@128 T@Ref) (f_4@@128 T@Field_18247_1900) ) (! (= (select (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| ZeroMask) o_2@@128 f_4@@128) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| ZeroMask) o_2@@128 f_4@@128))
)))
(assert (forall ((o_2@@129 T@Ref) (f_4@@129 T@Field_16931_16932) ) (! (= (select (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| ZeroMask) o_2@@129 f_4@@129) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| ZeroMask) o_2@@129 f_4@@129))
)))
(assert (forall ((o_2@@130 T@Ref) (f_4@@130 T@Field_16915_16920) ) (! (= (select (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| ZeroMask) o_2@@130 f_4@@130) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| ZeroMask) o_2@@130 f_4@@130))
)))
(assert (forall ((o_2@@131 T@Ref) (f_4@@131 T@Field_16902_13588) ) (! (= (select (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| ZeroMask) o_2@@131 f_4@@131) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| ZeroMask) o_2@@131 f_4@@131))
)))
(assert (forall ((o_2@@132 T@Ref) (f_4@@132 T@Field_16902_53) ) (! (= (select (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| ZeroMask) o_2@@132 f_4@@132) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| ZeroMask) o_2@@132 f_4@@132))
)))
(assert (forall ((o_2@@133 T@Ref) (f_4@@133 T@Field_16902_1203) ) (! (= (select (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| ZeroMask) o_2@@133 f_4@@133) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| ZeroMask) o_2@@133 f_4@@133))
)))
(assert (forall ((o_2@@134 T@Ref) (f_4@@134 T@Field_8623_16932) ) (! (= (select (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| ZeroMask) o_2@@134 f_4@@134) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| ZeroMask) o_2@@134 f_4@@134))
)))
(assert (forall ((o_2@@135 T@Ref) (f_4@@135 T@Field_8623_16920) ) (! (= (select (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| ZeroMask) o_2@@135 f_4@@135) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| ZeroMask) o_2@@135 f_4@@135))
)))
(assert (forall ((o_2@@136 T@Ref) (f_4@@136 T@Field_13587_13588) ) (! (= (select (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| ZeroMask) o_2@@136 f_4@@136) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| ZeroMask) o_2@@136 f_4@@136))
)))
(assert (forall ((o_2@@137 T@Ref) (f_4@@137 T@Field_13574_53) ) (! (= (select (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| ZeroMask) o_2@@137 f_4@@137) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| ZeroMask) o_2@@137 f_4@@137))
)))
(assert (forall ((o_2@@138 T@Ref) (f_4@@138 T@Field_21288_3574) ) (! (= (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| ZeroMask) o_2@@138 f_4@@138) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| ZeroMask) o_2@@138 f_4@@138))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_13535) (SummandMask1 T@PolymorphicMapType_13535) (SummandMask2 T@PolymorphicMapType_13535) (o_2@@139 T@Ref) (f_4@@139 T@Field_18836_18837) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| ResultMask) o_2@@139 f_4@@139) (+ (select (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| SummandMask1) o_2@@139 f_4@@139) (select (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| SummandMask2) o_2@@139 f_4@@139))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| ResultMask) o_2@@139 f_4@@139))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| SummandMask1) o_2@@139 f_4@@139))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| SummandMask2) o_2@@139 f_4@@139))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_13535) (SummandMask1@@0 T@PolymorphicMapType_13535) (SummandMask2@@0 T@PolymorphicMapType_13535) (o_2@@140 T@Ref) (f_4@@140 T@Field_18819_18824) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| ResultMask@@0) o_2@@140 f_4@@140) (+ (select (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| SummandMask1@@0) o_2@@140 f_4@@140) (select (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| SummandMask2@@0) o_2@@140 f_4@@140))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| ResultMask@@0) o_2@@140 f_4@@140))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| SummandMask1@@0) o_2@@140 f_4@@140))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| SummandMask2@@0) o_2@@140 f_4@@140))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_13535) (SummandMask1@@1 T@PolymorphicMapType_13535) (SummandMask2@@1 T@PolymorphicMapType_13535) (o_2@@141 T@Ref) (f_4@@141 T@Field_18805_13588) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| ResultMask@@1) o_2@@141 f_4@@141) (+ (select (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| SummandMask1@@1) o_2@@141 f_4@@141) (select (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| SummandMask2@@1) o_2@@141 f_4@@141))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| ResultMask@@1) o_2@@141 f_4@@141))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| SummandMask1@@1) o_2@@141 f_4@@141))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| SummandMask2@@1) o_2@@141 f_4@@141))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_13535) (SummandMask1@@2 T@PolymorphicMapType_13535) (SummandMask2@@2 T@PolymorphicMapType_13535) (o_2@@142 T@Ref) (f_4@@142 T@Field_18805_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| ResultMask@@2) o_2@@142 f_4@@142) (+ (select (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| SummandMask1@@2) o_2@@142 f_4@@142) (select (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| SummandMask2@@2) o_2@@142 f_4@@142))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| ResultMask@@2) o_2@@142 f_4@@142))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| SummandMask1@@2) o_2@@142 f_4@@142))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| SummandMask2@@2) o_2@@142 f_4@@142))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_13535) (SummandMask1@@3 T@PolymorphicMapType_13535) (SummandMask2@@3 T@PolymorphicMapType_13535) (o_2@@143 T@Ref) (f_4@@143 T@Field_18805_2181) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| ResultMask@@3) o_2@@143 f_4@@143) (+ (select (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| SummandMask1@@3) o_2@@143 f_4@@143) (select (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| SummandMask2@@3) o_2@@143 f_4@@143))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| ResultMask@@3) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| SummandMask1@@3) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| SummandMask2@@3) o_2@@143 f_4@@143))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_13535) (SummandMask1@@4 T@PolymorphicMapType_13535) (SummandMask2@@4 T@PolymorphicMapType_13535) (o_2@@144 T@Ref) (f_4@@144 T@Field_20617_20618) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| ResultMask@@4) o_2@@144 f_4@@144) (+ (select (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| SummandMask1@@4) o_2@@144 f_4@@144) (select (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| SummandMask2@@4) o_2@@144 f_4@@144))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| ResultMask@@4) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| SummandMask1@@4) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| SummandMask2@@4) o_2@@144 f_4@@144))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_13535) (SummandMask1@@5 T@PolymorphicMapType_13535) (SummandMask2@@5 T@PolymorphicMapType_13535) (o_2@@145 T@Ref) (f_4@@145 T@Field_20601_20606) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| ResultMask@@5) o_2@@145 f_4@@145) (+ (select (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| SummandMask1@@5) o_2@@145 f_4@@145) (select (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| SummandMask2@@5) o_2@@145 f_4@@145))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| ResultMask@@5) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| SummandMask1@@5) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| SummandMask2@@5) o_2@@145 f_4@@145))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_13535) (SummandMask1@@6 T@PolymorphicMapType_13535) (SummandMask2@@6 T@PolymorphicMapType_13535) (o_2@@146 T@Ref) (f_4@@146 T@Field_20588_13588) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| ResultMask@@6) o_2@@146 f_4@@146) (+ (select (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| SummandMask1@@6) o_2@@146 f_4@@146) (select (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| SummandMask2@@6) o_2@@146 f_4@@146))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| ResultMask@@6) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| SummandMask1@@6) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| SummandMask2@@6) o_2@@146 f_4@@146))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_13535) (SummandMask1@@7 T@PolymorphicMapType_13535) (SummandMask2@@7 T@PolymorphicMapType_13535) (o_2@@147 T@Ref) (f_4@@147 T@Field_20588_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| ResultMask@@7) o_2@@147 f_4@@147) (+ (select (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| SummandMask1@@7) o_2@@147 f_4@@147) (select (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| SummandMask2@@7) o_2@@147 f_4@@147))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| ResultMask@@7) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| SummandMask1@@7) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| SummandMask2@@7) o_2@@147 f_4@@147))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_13535) (SummandMask1@@8 T@PolymorphicMapType_13535) (SummandMask2@@8 T@PolymorphicMapType_13535) (o_2@@148 T@Ref) (f_4@@148 T@Field_20588_3216) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| ResultMask@@8) o_2@@148 f_4@@148) (+ (select (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| SummandMask1@@8) o_2@@148 f_4@@148) (select (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| SummandMask2@@8) o_2@@148 f_4@@148))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| ResultMask@@8) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| SummandMask1@@8) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| SummandMask2@@8) o_2@@148 f_4@@148))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_13535) (SummandMask1@@9 T@PolymorphicMapType_13535) (SummandMask2@@9 T@PolymorphicMapType_13535) (o_2@@149 T@Ref) (f_4@@149 T@Field_19687_19688) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| ResultMask@@9) o_2@@149 f_4@@149) (+ (select (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| SummandMask1@@9) o_2@@149 f_4@@149) (select (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| SummandMask2@@9) o_2@@149 f_4@@149))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| ResultMask@@9) o_2@@149 f_4@@149))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| SummandMask1@@9) o_2@@149 f_4@@149))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| SummandMask2@@9) o_2@@149 f_4@@149))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_13535) (SummandMask1@@10 T@PolymorphicMapType_13535) (SummandMask2@@10 T@PolymorphicMapType_13535) (o_2@@150 T@Ref) (f_4@@150 T@Field_19669_19674) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| ResultMask@@10) o_2@@150 f_4@@150) (+ (select (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| SummandMask1@@10) o_2@@150 f_4@@150) (select (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| SummandMask2@@10) o_2@@150 f_4@@150))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| ResultMask@@10) o_2@@150 f_4@@150))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| SummandMask1@@10) o_2@@150 f_4@@150))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| SummandMask2@@10) o_2@@150 f_4@@150))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_13535) (SummandMask1@@11 T@PolymorphicMapType_13535) (SummandMask2@@11 T@PolymorphicMapType_13535) (o_2@@151 T@Ref) (f_4@@151 T@Field_19654_13588) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| ResultMask@@11) o_2@@151 f_4@@151) (+ (select (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| SummandMask1@@11) o_2@@151 f_4@@151) (select (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| SummandMask2@@11) o_2@@151 f_4@@151))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| ResultMask@@11) o_2@@151 f_4@@151))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| SummandMask1@@11) o_2@@151 f_4@@151))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| SummandMask2@@11) o_2@@151 f_4@@151))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_13535) (SummandMask1@@12 T@PolymorphicMapType_13535) (SummandMask2@@12 T@PolymorphicMapType_13535) (o_2@@152 T@Ref) (f_4@@152 T@Field_19654_53) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| ResultMask@@12) o_2@@152 f_4@@152) (+ (select (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| SummandMask1@@12) o_2@@152 f_4@@152) (select (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| SummandMask2@@12) o_2@@152 f_4@@152))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| ResultMask@@12) o_2@@152 f_4@@152))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| SummandMask1@@12) o_2@@152 f_4@@152))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| SummandMask2@@12) o_2@@152 f_4@@152))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_13535) (SummandMask1@@13 T@PolymorphicMapType_13535) (SummandMask2@@13 T@PolymorphicMapType_13535) (o_2@@153 T@Ref) (f_4@@153 T@Field_19654_2678) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| ResultMask@@13) o_2@@153 f_4@@153) (+ (select (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| SummandMask1@@13) o_2@@153 f_4@@153) (select (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| SummandMask2@@13) o_2@@153 f_4@@153))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| ResultMask@@13) o_2@@153 f_4@@153))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| SummandMask1@@13) o_2@@153 f_4@@153))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| SummandMask2@@13) o_2@@153 f_4@@153))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_13535) (SummandMask1@@14 T@PolymorphicMapType_13535) (SummandMask2@@14 T@PolymorphicMapType_13535) (o_2@@154 T@Ref) (f_4@@154 T@Field_17575_17576) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| ResultMask@@14) o_2@@154 f_4@@154) (+ (select (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| SummandMask1@@14) o_2@@154 f_4@@154) (select (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| SummandMask2@@14) o_2@@154 f_4@@154))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| ResultMask@@14) o_2@@154 f_4@@154))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| SummandMask1@@14) o_2@@154 f_4@@154))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| SummandMask2@@14) o_2@@154 f_4@@154))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_13535) (SummandMask1@@15 T@PolymorphicMapType_13535) (SummandMask2@@15 T@PolymorphicMapType_13535) (o_2@@155 T@Ref) (f_4@@155 T@Field_17559_17564) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| ResultMask@@15) o_2@@155 f_4@@155) (+ (select (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| SummandMask1@@15) o_2@@155 f_4@@155) (select (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| SummandMask2@@15) o_2@@155 f_4@@155))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| ResultMask@@15) o_2@@155 f_4@@155))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| SummandMask1@@15) o_2@@155 f_4@@155))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| SummandMask2@@15) o_2@@155 f_4@@155))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_13535) (SummandMask1@@16 T@PolymorphicMapType_13535) (SummandMask2@@16 T@PolymorphicMapType_13535) (o_2@@156 T@Ref) (f_4@@156 T@Field_17546_13588) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| ResultMask@@16) o_2@@156 f_4@@156) (+ (select (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| SummandMask1@@16) o_2@@156 f_4@@156) (select (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| SummandMask2@@16) o_2@@156 f_4@@156))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| ResultMask@@16) o_2@@156 f_4@@156))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| SummandMask1@@16) o_2@@156 f_4@@156))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| SummandMask2@@16) o_2@@156 f_4@@156))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_13535) (SummandMask1@@17 T@PolymorphicMapType_13535) (SummandMask2@@17 T@PolymorphicMapType_13535) (o_2@@157 T@Ref) (f_4@@157 T@Field_17546_53) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| ResultMask@@17) o_2@@157 f_4@@157) (+ (select (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| SummandMask1@@17) o_2@@157 f_4@@157) (select (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| SummandMask2@@17) o_2@@157 f_4@@157))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| ResultMask@@17) o_2@@157 f_4@@157))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| SummandMask1@@17) o_2@@157 f_4@@157))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| SummandMask2@@17) o_2@@157 f_4@@157))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_13535) (SummandMask1@@18 T@PolymorphicMapType_13535) (SummandMask2@@18 T@PolymorphicMapType_13535) (o_2@@158 T@Ref) (f_4@@158 T@Field_17546_1529) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| ResultMask@@18) o_2@@158 f_4@@158) (+ (select (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| SummandMask1@@18) o_2@@158 f_4@@158) (select (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| SummandMask2@@18) o_2@@158 f_4@@158))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| ResultMask@@18) o_2@@158 f_4@@158))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| SummandMask1@@18) o_2@@158 f_4@@158))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| SummandMask2@@18) o_2@@158 f_4@@158))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_13535) (SummandMask1@@19 T@PolymorphicMapType_13535) (SummandMask2@@19 T@PolymorphicMapType_13535) (o_2@@159 T@Ref) (f_4@@159 T@Field_18274_18275) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| ResultMask@@19) o_2@@159 f_4@@159) (+ (select (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| SummandMask1@@19) o_2@@159 f_4@@159) (select (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| SummandMask2@@19) o_2@@159 f_4@@159))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| ResultMask@@19) o_2@@159 f_4@@159))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| SummandMask1@@19) o_2@@159 f_4@@159))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| SummandMask2@@19) o_2@@159 f_4@@159))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_13535) (SummandMask1@@20 T@PolymorphicMapType_13535) (SummandMask2@@20 T@PolymorphicMapType_13535) (o_2@@160 T@Ref) (f_4@@160 T@Field_18259_18264) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| ResultMask@@20) o_2@@160 f_4@@160) (+ (select (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| SummandMask1@@20) o_2@@160 f_4@@160) (select (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| SummandMask2@@20) o_2@@160 f_4@@160))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| ResultMask@@20) o_2@@160 f_4@@160))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| SummandMask1@@20) o_2@@160 f_4@@160))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| SummandMask2@@20) o_2@@160 f_4@@160))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_13535) (SummandMask1@@21 T@PolymorphicMapType_13535) (SummandMask2@@21 T@PolymorphicMapType_13535) (o_2@@161 T@Ref) (f_4@@161 T@Field_18247_13588) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| ResultMask@@21) o_2@@161 f_4@@161) (+ (select (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| SummandMask1@@21) o_2@@161 f_4@@161) (select (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| SummandMask2@@21) o_2@@161 f_4@@161))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| ResultMask@@21) o_2@@161 f_4@@161))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| SummandMask1@@21) o_2@@161 f_4@@161))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| SummandMask2@@21) o_2@@161 f_4@@161))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_13535) (SummandMask1@@22 T@PolymorphicMapType_13535) (SummandMask2@@22 T@PolymorphicMapType_13535) (o_2@@162 T@Ref) (f_4@@162 T@Field_18247_53) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| ResultMask@@22) o_2@@162 f_4@@162) (+ (select (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| SummandMask1@@22) o_2@@162 f_4@@162) (select (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| SummandMask2@@22) o_2@@162 f_4@@162))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| ResultMask@@22) o_2@@162 f_4@@162))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| SummandMask1@@22) o_2@@162 f_4@@162))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| SummandMask2@@22) o_2@@162 f_4@@162))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_13535) (SummandMask1@@23 T@PolymorphicMapType_13535) (SummandMask2@@23 T@PolymorphicMapType_13535) (o_2@@163 T@Ref) (f_4@@163 T@Field_18247_1900) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| ResultMask@@23) o_2@@163 f_4@@163) (+ (select (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| SummandMask1@@23) o_2@@163 f_4@@163) (select (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| SummandMask2@@23) o_2@@163 f_4@@163))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| ResultMask@@23) o_2@@163 f_4@@163))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| SummandMask1@@23) o_2@@163 f_4@@163))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| SummandMask2@@23) o_2@@163 f_4@@163))
)))
(assert (forall ((ResultMask@@24 T@PolymorphicMapType_13535) (SummandMask1@@24 T@PolymorphicMapType_13535) (SummandMask2@@24 T@PolymorphicMapType_13535) (o_2@@164 T@Ref) (f_4@@164 T@Field_16931_16932) ) (!  (=> (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (= (select (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| ResultMask@@24) o_2@@164 f_4@@164) (+ (select (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| SummandMask1@@24) o_2@@164 f_4@@164) (select (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| SummandMask2@@24) o_2@@164 f_4@@164))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| ResultMask@@24) o_2@@164 f_4@@164))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| SummandMask1@@24) o_2@@164 f_4@@164))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| SummandMask2@@24) o_2@@164 f_4@@164))
)))
(assert (forall ((ResultMask@@25 T@PolymorphicMapType_13535) (SummandMask1@@25 T@PolymorphicMapType_13535) (SummandMask2@@25 T@PolymorphicMapType_13535) (o_2@@165 T@Ref) (f_4@@165 T@Field_16915_16920) ) (!  (=> (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (= (select (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| ResultMask@@25) o_2@@165 f_4@@165) (+ (select (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| SummandMask1@@25) o_2@@165 f_4@@165) (select (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| SummandMask2@@25) o_2@@165 f_4@@165))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| ResultMask@@25) o_2@@165 f_4@@165))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| SummandMask1@@25) o_2@@165 f_4@@165))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| SummandMask2@@25) o_2@@165 f_4@@165))
)))
(assert (forall ((ResultMask@@26 T@PolymorphicMapType_13535) (SummandMask1@@26 T@PolymorphicMapType_13535) (SummandMask2@@26 T@PolymorphicMapType_13535) (o_2@@166 T@Ref) (f_4@@166 T@Field_16902_13588) ) (!  (=> (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (= (select (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| ResultMask@@26) o_2@@166 f_4@@166) (+ (select (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| SummandMask1@@26) o_2@@166 f_4@@166) (select (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| SummandMask2@@26) o_2@@166 f_4@@166))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| ResultMask@@26) o_2@@166 f_4@@166))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| SummandMask1@@26) o_2@@166 f_4@@166))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| SummandMask2@@26) o_2@@166 f_4@@166))
)))
(assert (forall ((ResultMask@@27 T@PolymorphicMapType_13535) (SummandMask1@@27 T@PolymorphicMapType_13535) (SummandMask2@@27 T@PolymorphicMapType_13535) (o_2@@167 T@Ref) (f_4@@167 T@Field_16902_53) ) (!  (=> (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (= (select (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| ResultMask@@27) o_2@@167 f_4@@167) (+ (select (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| SummandMask1@@27) o_2@@167 f_4@@167) (select (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| SummandMask2@@27) o_2@@167 f_4@@167))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| ResultMask@@27) o_2@@167 f_4@@167))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| SummandMask1@@27) o_2@@167 f_4@@167))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| SummandMask2@@27) o_2@@167 f_4@@167))
)))
(assert (forall ((ResultMask@@28 T@PolymorphicMapType_13535) (SummandMask1@@28 T@PolymorphicMapType_13535) (SummandMask2@@28 T@PolymorphicMapType_13535) (o_2@@168 T@Ref) (f_4@@168 T@Field_16902_1203) ) (!  (=> (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (= (select (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| ResultMask@@28) o_2@@168 f_4@@168) (+ (select (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| SummandMask1@@28) o_2@@168 f_4@@168) (select (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| SummandMask2@@28) o_2@@168 f_4@@168))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| ResultMask@@28) o_2@@168 f_4@@168))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| SummandMask1@@28) o_2@@168 f_4@@168))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| SummandMask2@@28) o_2@@168 f_4@@168))
)))
(assert (forall ((ResultMask@@29 T@PolymorphicMapType_13535) (SummandMask1@@29 T@PolymorphicMapType_13535) (SummandMask2@@29 T@PolymorphicMapType_13535) (o_2@@169 T@Ref) (f_4@@169 T@Field_8623_16932) ) (!  (=> (sumMask ResultMask@@29 SummandMask1@@29 SummandMask2@@29) (= (select (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| ResultMask@@29) o_2@@169 f_4@@169) (+ (select (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| SummandMask1@@29) o_2@@169 f_4@@169) (select (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| SummandMask2@@29) o_2@@169 f_4@@169))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@29 SummandMask1@@29 SummandMask2@@29) (select (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| ResultMask@@29) o_2@@169 f_4@@169))
 :pattern ( (sumMask ResultMask@@29 SummandMask1@@29 SummandMask2@@29) (select (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| SummandMask1@@29) o_2@@169 f_4@@169))
 :pattern ( (sumMask ResultMask@@29 SummandMask1@@29 SummandMask2@@29) (select (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| SummandMask2@@29) o_2@@169 f_4@@169))
)))
(assert (forall ((ResultMask@@30 T@PolymorphicMapType_13535) (SummandMask1@@30 T@PolymorphicMapType_13535) (SummandMask2@@30 T@PolymorphicMapType_13535) (o_2@@170 T@Ref) (f_4@@170 T@Field_8623_16920) ) (!  (=> (sumMask ResultMask@@30 SummandMask1@@30 SummandMask2@@30) (= (select (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| ResultMask@@30) o_2@@170 f_4@@170) (+ (select (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| SummandMask1@@30) o_2@@170 f_4@@170) (select (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| SummandMask2@@30) o_2@@170 f_4@@170))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@30 SummandMask1@@30 SummandMask2@@30) (select (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| ResultMask@@30) o_2@@170 f_4@@170))
 :pattern ( (sumMask ResultMask@@30 SummandMask1@@30 SummandMask2@@30) (select (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| SummandMask1@@30) o_2@@170 f_4@@170))
 :pattern ( (sumMask ResultMask@@30 SummandMask1@@30 SummandMask2@@30) (select (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| SummandMask2@@30) o_2@@170 f_4@@170))
)))
(assert (forall ((ResultMask@@31 T@PolymorphicMapType_13535) (SummandMask1@@31 T@PolymorphicMapType_13535) (SummandMask2@@31 T@PolymorphicMapType_13535) (o_2@@171 T@Ref) (f_4@@171 T@Field_13587_13588) ) (!  (=> (sumMask ResultMask@@31 SummandMask1@@31 SummandMask2@@31) (= (select (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| ResultMask@@31) o_2@@171 f_4@@171) (+ (select (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| SummandMask1@@31) o_2@@171 f_4@@171) (select (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| SummandMask2@@31) o_2@@171 f_4@@171))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@31 SummandMask1@@31 SummandMask2@@31) (select (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| ResultMask@@31) o_2@@171 f_4@@171))
 :pattern ( (sumMask ResultMask@@31 SummandMask1@@31 SummandMask2@@31) (select (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| SummandMask1@@31) o_2@@171 f_4@@171))
 :pattern ( (sumMask ResultMask@@31 SummandMask1@@31 SummandMask2@@31) (select (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| SummandMask2@@31) o_2@@171 f_4@@171))
)))
(assert (forall ((ResultMask@@32 T@PolymorphicMapType_13535) (SummandMask1@@32 T@PolymorphicMapType_13535) (SummandMask2@@32 T@PolymorphicMapType_13535) (o_2@@172 T@Ref) (f_4@@172 T@Field_13574_53) ) (!  (=> (sumMask ResultMask@@32 SummandMask1@@32 SummandMask2@@32) (= (select (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| ResultMask@@32) o_2@@172 f_4@@172) (+ (select (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| SummandMask1@@32) o_2@@172 f_4@@172) (select (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| SummandMask2@@32) o_2@@172 f_4@@172))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@32 SummandMask1@@32 SummandMask2@@32) (select (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| ResultMask@@32) o_2@@172 f_4@@172))
 :pattern ( (sumMask ResultMask@@32 SummandMask1@@32 SummandMask2@@32) (select (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| SummandMask1@@32) o_2@@172 f_4@@172))
 :pattern ( (sumMask ResultMask@@32 SummandMask1@@32 SummandMask2@@32) (select (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| SummandMask2@@32) o_2@@172 f_4@@172))
)))
(assert (forall ((ResultMask@@33 T@PolymorphicMapType_13535) (SummandMask1@@33 T@PolymorphicMapType_13535) (SummandMask2@@33 T@PolymorphicMapType_13535) (o_2@@173 T@Ref) (f_4@@173 T@Field_21288_3574) ) (!  (=> (sumMask ResultMask@@33 SummandMask1@@33 SummandMask2@@33) (= (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| ResultMask@@33) o_2@@173 f_4@@173) (+ (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| SummandMask1@@33) o_2@@173 f_4@@173) (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| SummandMask2@@33) o_2@@173 f_4@@173))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@33 SummandMask1@@33 SummandMask2@@33) (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| ResultMask@@33) o_2@@173 f_4@@173))
 :pattern ( (sumMask ResultMask@@33 SummandMask1@@33 SummandMask2@@33) (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| SummandMask1@@33) o_2@@173 f_4@@173))
 :pattern ( (sumMask ResultMask@@33 SummandMask1@@33 SummandMask2@@33) (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| SummandMask2@@33) o_2@@173 f_4@@173))
)))
(assert (forall ((arg1@@29 T@Ref) (arg2@@29 Real) (arg3@@29 T@Ref) (arg4@@22 Int) (arg5@@16 T@Ref) (arg6@@5 Real) (arg7@@5 T@Ref) (arg8@@4 Int) (arg1_2@@2 T@Ref) (arg2_2@@2 Real) (arg3_2@@2 T@Ref) (arg4_2@@1 Int) (arg5_2@@1 T@Ref) (arg6_2@@0 Real) (arg7_2@@0 T@Ref) (arg8_2 Int) ) (!  (=> (= (wand_2 arg1@@29 arg2@@29 arg3@@29 arg4@@22 arg5@@16 arg6@@5 arg7@@5 arg8@@4) (wand_2 arg1_2@@2 arg2_2@@2 arg3_2@@2 arg4_2@@1 arg5_2@@1 arg6_2@@0 arg7_2@@0 arg8_2)) (and (= arg1@@29 arg1_2@@2) (and (= arg2@@29 arg2_2@@2) (and (= arg3@@29 arg3_2@@2) (and (= arg4@@22 arg4_2@@1) (and (= arg5@@16 arg5_2@@1) (and (= arg6@@5 arg6_2@@0) (and (= arg7@@5 arg7_2@@0) (= arg8@@4 arg8_2)))))))))
 :qid |stdinbpl.336:15|
 :skolemid |56|
 :pattern ( (wand_2 arg1@@29 arg2@@29 arg3@@29 arg4@@22 arg5@@16 arg6@@5 arg7@@5 arg8@@4) (wand_2 arg1_2@@2 arg2_2@@2 arg3_2@@2 arg4_2@@1 arg5_2@@1 arg6_2@@0 arg7_2@@0 arg8_2))
)))
(assert (forall ((arg1@@30 Bool) (arg2@@30 T@Ref) (arg3@@30 Real) (arg4@@23 T@Ref) (arg5@@17 Int) (arg1_2@@3 Bool) (arg2_2@@3 T@Ref) (arg3_2@@3 Real) (arg4_2@@2 T@Ref) (arg5_2@@2 Int) ) (!  (=> (= (wand_3 arg1@@30 arg2@@30 arg3@@30 arg4@@23 arg5@@17) (wand_3 arg1_2@@3 arg2_2@@3 arg3_2@@3 arg4_2@@2 arg5_2@@2)) (and (= arg1@@30 arg1_2@@3) (and (= arg2@@30 arg2_2@@3) (and (= arg3@@30 arg3_2@@3) (and (= arg4@@23 arg4_2@@2) (= arg5@@17 arg5_2@@2))))))
 :qid |stdinbpl.240:15|
 :skolemid |35|
 :pattern ( (wand_3 arg1@@30 arg2@@30 arg3@@30 arg4@@23 arg5@@17) (wand_3 arg1_2@@3 arg2_2@@3 arg3_2@@3 arg4_2@@2 arg5_2@@2))
)))
(assert (forall ((arg1@@31 Bool) (arg2@@31 T@Ref) (arg3@@31 Real) (arg4@@24 T@Ref) (arg5@@18 Int) ) (! (= (|wand_3#sm| arg1@@31 arg2@@31 arg3@@31 arg4@@24 arg5@@18) (WandMaskField_8388 (|wand_3#ft| arg1@@31 arg2@@31 arg3@@31 arg4@@24 arg5@@18)))
 :qid |stdinbpl.232:15|
 :skolemid |33|
 :pattern ( (WandMaskField_8388 (|wand_3#ft| arg1@@31 arg2@@31 arg3@@31 arg4@@24 arg5@@18)))
)))
(assert (forall ((arg1@@32 T@Ref) (arg2@@32 Real) (arg3@@32 T@Ref) (arg4@@25 Int) (arg5@@19 Bool) ) (! (= (|wand_4#sm| arg1@@32 arg2@@32 arg3@@32 arg4@@25 arg5@@19) (WandMaskField_8596 (|wand_4#ft| arg1@@32 arg2@@32 arg3@@32 arg4@@25 arg5@@19)))
 :qid |stdinbpl.360:15|
 :skolemid |61|
 :pattern ( (WandMaskField_8596 (|wand_4#ft| arg1@@32 arg2@@32 arg3@@32 arg4@@25 arg5@@19)))
)))
(assert (forall ((arg1@@33 T@Ref) (arg2@@33 Real) (arg3@@33 T@Ref) (arg4@@26 Int) (arg5@@20 T@Ref) (arg6@@6 Real) (arg7@@6 T@Ref) (arg8@@5 Int) ) (! (= (getPredWandId_8514_2678 (wand_2 arg1@@33 arg2@@33 arg3@@33 arg4@@26 arg5@@20 arg6@@6 arg7@@6 arg8@@5)) 4)
 :qid |stdinbpl.332:15|
 :skolemid |55|
 :pattern ( (wand_2 arg1@@33 arg2@@33 arg3@@33 arg4@@26 arg5@@20 arg6@@6 arg7@@6 arg8@@5))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_13514) (o T@Ref) (f_3 T@Field_20617_20618) (v T@FrameType) ) (! (succHeap Heap@@65 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@65) (store (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@65) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@65) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@65) (store (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@65) o f_3 v)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_13514) (o@@0 T@Ref) (f_3@@0 T@Field_20601_20606) (v@@0 T@PolymorphicMapType_14063) ) (! (succHeap Heap@@66 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@66) (store (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@66) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@66) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@66) (store (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@66) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_13514) (o@@1 T@Ref) (f_3@@1 T@Field_20588_3216) (v@@1 Int) ) (! (succHeap Heap@@67 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@67) (store (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@67) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@67) (store (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@67) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@67) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_13514) (o@@2 T@Ref) (f_3@@2 T@Field_20588_13588) (v@@2 T@Ref) ) (! (succHeap Heap@@68 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@68) (store (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@68) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@68) (store (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@68) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@68) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_13514) (o@@3 T@Ref) (f_3@@3 T@Field_20588_53) (v@@3 Bool) ) (! (succHeap Heap@@69 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@69) (store (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@69) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@69) (store (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@69) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@69) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_13514) (o@@4 T@Ref) (f_3@@4 T@Field_18274_18275) (v@@4 T@FrameType) ) (! (succHeap Heap@@70 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@70) (store (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@70) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@70) (store (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@70) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@70) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_13514) (o@@5 T@Ref) (f_3@@5 T@Field_18259_18264) (v@@5 T@PolymorphicMapType_14063) ) (! (succHeap Heap@@71 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@71) (store (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@71) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@71) (store (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@71) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@71) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_13514) (o@@6 T@Ref) (f_3@@6 T@Field_18247_1900) (v@@6 Int) ) (! (succHeap Heap@@72 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@72) (store (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@72) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@72) (store (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@72) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@72) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_13514) (o@@7 T@Ref) (f_3@@7 T@Field_18247_13588) (v@@7 T@Ref) ) (! (succHeap Heap@@73 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@73) (store (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@73) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@73) (store (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@73) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@73) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_13514) (o@@8 T@Ref) (f_3@@8 T@Field_18247_53) (v@@8 Bool) ) (! (succHeap Heap@@74 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@74) (store (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@74) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@74) (store (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@74) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@74) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_13514) (o@@9 T@Ref) (f_3@@9 T@Field_18836_18837) (v@@9 T@FrameType) ) (! (succHeap Heap@@75 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@75) (store (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@75) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@75) (store (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@75) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@75) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_13514) (o@@10 T@Ref) (f_3@@10 T@Field_18819_18824) (v@@10 T@PolymorphicMapType_14063) ) (! (succHeap Heap@@76 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@76) (store (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@76) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@76) (store (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@76) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@76) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@76)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_13514) (o@@11 T@Ref) (f_3@@11 T@Field_18805_2181) (v@@11 Int) ) (! (succHeap Heap@@77 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@77) (store (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@77) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@77)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@77) (store (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@77) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@77) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@77)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_13514) (o@@12 T@Ref) (f_3@@12 T@Field_18805_13588) (v@@12 T@Ref) ) (! (succHeap Heap@@78 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@78) (store (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@78) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@78)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@78) (store (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@78) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@78) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@78)))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_13514) (o@@13 T@Ref) (f_3@@13 T@Field_18805_53) (v@@13 Bool) ) (! (succHeap Heap@@79 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@79) (store (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@79) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@79)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@79) (store (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@79) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@79) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@79)))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_13514) (o@@14 T@Ref) (f_3@@14 T@Field_19687_19688) (v@@14 T@FrameType) ) (! (succHeap Heap@@80 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@80) (store (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@80) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@80)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@80) (store (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@80) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@80) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@80)))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_13514) (o@@15 T@Ref) (f_3@@15 T@Field_19669_19674) (v@@15 T@PolymorphicMapType_14063) ) (! (succHeap Heap@@81 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@81) (store (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@81) o@@15 f_3@@15 v@@15) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@81)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@81) (store (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@81) o@@15 f_3@@15 v@@15) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@81) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@81)))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_13514) (o@@16 T@Ref) (f_3@@16 T@Field_19654_2678) (v@@16 Int) ) (! (succHeap Heap@@82 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@82) (store (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@82) o@@16 f_3@@16 v@@16) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@82)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@82) (store (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@82) o@@16 f_3@@16 v@@16) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@82) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@82)))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_13514) (o@@17 T@Ref) (f_3@@17 T@Field_19654_13588) (v@@17 T@Ref) ) (! (succHeap Heap@@83 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@83) (store (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@83) o@@17 f_3@@17 v@@17) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@83)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@83) (store (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@83) o@@17 f_3@@17 v@@17) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@83) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@83)))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_13514) (o@@18 T@Ref) (f_3@@18 T@Field_19654_53) (v@@18 Bool) ) (! (succHeap Heap@@84 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@84) (store (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@84) o@@18 f_3@@18 v@@18) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@84)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@84) (store (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@84) o@@18 f_3@@18 v@@18) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@84) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@84)))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_13514) (o@@19 T@Ref) (f_3@@19 T@Field_17575_17576) (v@@19 T@FrameType) ) (! (succHeap Heap@@85 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@85) (store (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@85) o@@19 f_3@@19 v@@19) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@85)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@85) (store (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@85) o@@19 f_3@@19 v@@19) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@85) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@85)))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_13514) (o@@20 T@Ref) (f_3@@20 T@Field_17559_17564) (v@@20 T@PolymorphicMapType_14063) ) (! (succHeap Heap@@86 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@86) (store (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@86) o@@20 f_3@@20 v@@20) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@86)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@86) (store (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@86) o@@20 f_3@@20 v@@20) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@86) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@86)))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_13514) (o@@21 T@Ref) (f_3@@21 T@Field_17546_1529) (v@@21 Int) ) (! (succHeap Heap@@87 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@87) (store (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@87) o@@21 f_3@@21 v@@21) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@87)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@87) (store (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@87) o@@21 f_3@@21 v@@21) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@87) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@87)))
)))
(assert (forall ((Heap@@88 T@PolymorphicMapType_13514) (o@@22 T@Ref) (f_3@@22 T@Field_17546_13588) (v@@22 T@Ref) ) (! (succHeap Heap@@88 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@88) (store (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@88) o@@22 f_3@@22 v@@22) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@88)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@88) (store (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@88) o@@22 f_3@@22 v@@22) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@88) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@88)))
)))
(assert (forall ((Heap@@89 T@PolymorphicMapType_13514) (o@@23 T@Ref) (f_3@@23 T@Field_17546_53) (v@@23 Bool) ) (! (succHeap Heap@@89 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@89) (store (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@89) o@@23 f_3@@23 v@@23) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@89)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@89) (store (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@89) o@@23 f_3@@23 v@@23) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@89) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@89)))
)))
(assert (forall ((Heap@@90 T@PolymorphicMapType_13514) (o@@24 T@Ref) (f_3@@24 T@Field_16931_16932) (v@@24 T@FrameType) ) (! (succHeap Heap@@90 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@90) (store (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@90) o@@24 f_3@@24 v@@24) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@90)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@90) (store (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@90) o@@24 f_3@@24 v@@24) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@90) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@90)))
)))
(assert (forall ((Heap@@91 T@PolymorphicMapType_13514) (o@@25 T@Ref) (f_3@@25 T@Field_16915_16920) (v@@25 T@PolymorphicMapType_14063) ) (! (succHeap Heap@@91 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@91) (store (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@91) o@@25 f_3@@25 v@@25) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@91)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@91) (store (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@91) o@@25 f_3@@25 v@@25) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@91) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@91)))
)))
(assert (forall ((Heap@@92 T@PolymorphicMapType_13514) (o@@26 T@Ref) (f_3@@26 T@Field_16902_1203) (v@@26 Int) ) (! (succHeap Heap@@92 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@92) (store (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@92) o@@26 f_3@@26 v@@26) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@92)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@92) (store (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@92) o@@26 f_3@@26 v@@26) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@92) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@92)))
)))
(assert (forall ((Heap@@93 T@PolymorphicMapType_13514) (o@@27 T@Ref) (f_3@@27 T@Field_16902_13588) (v@@27 T@Ref) ) (! (succHeap Heap@@93 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@93) (store (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@93) o@@27 f_3@@27 v@@27) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@93)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@93) (store (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@93) o@@27 f_3@@27 v@@27) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@93) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@93)))
)))
(assert (forall ((Heap@@94 T@PolymorphicMapType_13514) (o@@28 T@Ref) (f_3@@28 T@Field_16902_53) (v@@28 Bool) ) (! (succHeap Heap@@94 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@94) (store (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@94) o@@28 f_3@@28 v@@28) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@94)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@94) (store (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@94) o@@28 f_3@@28 v@@28) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@94) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@94)))
)))
(assert (forall ((Heap@@95 T@PolymorphicMapType_13514) (o@@29 T@Ref) (f_3@@29 T@Field_8623_16932) (v@@29 T@FrameType) ) (! (succHeap Heap@@95 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@95) (store (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@95) o@@29 f_3@@29 v@@29) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@95)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@95) (store (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@95) o@@29 f_3@@29 v@@29) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@95) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@95)))
)))
(assert (forall ((Heap@@96 T@PolymorphicMapType_13514) (o@@30 T@Ref) (f_3@@30 T@Field_8623_16920) (v@@30 T@PolymorphicMapType_14063) ) (! (succHeap Heap@@96 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@96) (store (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@96) o@@30 f_3@@30 v@@30) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@96)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@96) (store (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@96) o@@30 f_3@@30 v@@30) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@96) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@96)))
)))
(assert (forall ((Heap@@97 T@PolymorphicMapType_13514) (o@@31 T@Ref) (f_3@@31 T@Field_21288_3574) (v@@31 Int) ) (! (succHeap Heap@@97 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@97) (store (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@97) o@@31 f_3@@31 v@@31) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@97)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@97) (store (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@97) o@@31 f_3@@31 v@@31) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@97) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@97)))
)))
(assert (forall ((Heap@@98 T@PolymorphicMapType_13514) (o@@32 T@Ref) (f_3@@32 T@Field_13587_13588) (v@@32 T@Ref) ) (! (succHeap Heap@@98 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@98) (store (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@98) o@@32 f_3@@32 v@@32) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@98)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@98) (store (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@98) o@@32 f_3@@32 v@@32) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@98) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@98)))
)))
(assert (forall ((Heap@@99 T@PolymorphicMapType_13514) (o@@33 T@Ref) (f_3@@33 T@Field_13574_53) (v@@33 Bool) ) (! (succHeap Heap@@99 (PolymorphicMapType_13514 (store (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@99) o@@33 f_3@@33 v@@33) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@99)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13514 (store (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@99) o@@33 f_3@@33 v@@33) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@99) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@99)))
)))
(assert (forall ((arg1@@34 T@Ref) (arg2@@34 Real) (arg3@@34 T@Ref) (arg4@@27 Int) (arg5@@21 T@Ref) (arg6@@7 Real) (arg7@@7 Bool) ) (! (= (|wand_5#sm| arg1@@34 arg2@@34 arg3@@34 arg4@@27 arg5@@21 arg6@@7 arg7@@7) (WandMaskField_8465 (|wand_5#ft| arg1@@34 arg2@@34 arg3@@34 arg4@@27 arg5@@21 arg6@@7 arg7@@7)))
 :qid |stdinbpl.296:15|
 :skolemid |47|
 :pattern ( (WandMaskField_8465 (|wand_5#ft| arg1@@34 arg2@@34 arg3@@34 arg4@@27 arg5@@21 arg6@@7 arg7@@7)))
)))
(assert (forall ((o@@34 T@Ref) (f T@Field_13587_13588) (Heap@@100 T@PolymorphicMapType_13514) ) (!  (=> (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@100) o@@34 $allocated) (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@100) (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@100) o@@34 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@100) o@@34 f))
)))
(assert (forall ((p@@7 T@Field_20617_20618) (v_1@@6 T@FrameType) (q T@Field_20617_20618) (w@@6 T@FrameType) (r T@Field_20617_20618) (u T@FrameType) ) (!  (=> (and (InsidePredicate_20588_20588 p@@7 v_1@@6 q w@@6) (InsidePredicate_20588_20588 q w@@6 r u)) (InsidePredicate_20588_20588 p@@7 v_1@@6 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_20588 p@@7 v_1@@6 q w@@6) (InsidePredicate_20588_20588 q w@@6 r u))
)))
(assert (forall ((p@@8 T@Field_20617_20618) (v_1@@7 T@FrameType) (q@@0 T@Field_20617_20618) (w@@7 T@FrameType) (r@@0 T@Field_19687_19688) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_20588 p@@8 v_1@@7 q@@0 w@@7) (InsidePredicate_20588_19654 q@@0 w@@7 r@@0 u@@0)) (InsidePredicate_20588_19654 p@@8 v_1@@7 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_20588 p@@8 v_1@@7 q@@0 w@@7) (InsidePredicate_20588_19654 q@@0 w@@7 r@@0 u@@0))
)))
(assert (forall ((p@@9 T@Field_20617_20618) (v_1@@8 T@FrameType) (q@@1 T@Field_20617_20618) (w@@8 T@FrameType) (r@@1 T@Field_18836_18837) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_20588 p@@9 v_1@@8 q@@1 w@@8) (InsidePredicate_20588_18805 q@@1 w@@8 r@@1 u@@1)) (InsidePredicate_20588_18805 p@@9 v_1@@8 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_20588 p@@9 v_1@@8 q@@1 w@@8) (InsidePredicate_20588_18805 q@@1 w@@8 r@@1 u@@1))
)))
(assert (forall ((p@@10 T@Field_20617_20618) (v_1@@9 T@FrameType) (q@@2 T@Field_20617_20618) (w@@9 T@FrameType) (r@@2 T@Field_18274_18275) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_20588 p@@10 v_1@@9 q@@2 w@@9) (InsidePredicate_20588_18247 q@@2 w@@9 r@@2 u@@2)) (InsidePredicate_20588_18247 p@@10 v_1@@9 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_20588 p@@10 v_1@@9 q@@2 w@@9) (InsidePredicate_20588_18247 q@@2 w@@9 r@@2 u@@2))
)))
(assert (forall ((p@@11 T@Field_20617_20618) (v_1@@10 T@FrameType) (q@@3 T@Field_20617_20618) (w@@10 T@FrameType) (r@@3 T@Field_17575_17576) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_20588 p@@11 v_1@@10 q@@3 w@@10) (InsidePredicate_20588_17546 q@@3 w@@10 r@@3 u@@3)) (InsidePredicate_20588_17546 p@@11 v_1@@10 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_20588 p@@11 v_1@@10 q@@3 w@@10) (InsidePredicate_20588_17546 q@@3 w@@10 r@@3 u@@3))
)))
(assert (forall ((p@@12 T@Field_20617_20618) (v_1@@11 T@FrameType) (q@@4 T@Field_20617_20618) (w@@11 T@FrameType) (r@@4 T@Field_16931_16932) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_20588 p@@12 v_1@@11 q@@4 w@@11) (InsidePredicate_20588_16902 q@@4 w@@11 r@@4 u@@4)) (InsidePredicate_20588_16902 p@@12 v_1@@11 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_20588 p@@12 v_1@@11 q@@4 w@@11) (InsidePredicate_20588_16902 q@@4 w@@11 r@@4 u@@4))
)))
(assert (forall ((p@@13 T@Field_20617_20618) (v_1@@12 T@FrameType) (q@@5 T@Field_20617_20618) (w@@12 T@FrameType) (r@@5 T@Field_8623_16932) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_20588 p@@13 v_1@@12 q@@5 w@@12) (InsidePredicate_20588_13574 q@@5 w@@12 r@@5 u@@5)) (InsidePredicate_20588_13574 p@@13 v_1@@12 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_20588 p@@13 v_1@@12 q@@5 w@@12) (InsidePredicate_20588_13574 q@@5 w@@12 r@@5 u@@5))
)))
(assert (forall ((p@@14 T@Field_20617_20618) (v_1@@13 T@FrameType) (q@@6 T@Field_19687_19688) (w@@13 T@FrameType) (r@@6 T@Field_20617_20618) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_19654 p@@14 v_1@@13 q@@6 w@@13) (InsidePredicate_19654_20588 q@@6 w@@13 r@@6 u@@6)) (InsidePredicate_20588_20588 p@@14 v_1@@13 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_19654 p@@14 v_1@@13 q@@6 w@@13) (InsidePredicate_19654_20588 q@@6 w@@13 r@@6 u@@6))
)))
(assert (forall ((p@@15 T@Field_20617_20618) (v_1@@14 T@FrameType) (q@@7 T@Field_19687_19688) (w@@14 T@FrameType) (r@@7 T@Field_19687_19688) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_19654 p@@15 v_1@@14 q@@7 w@@14) (InsidePredicate_19654_19654 q@@7 w@@14 r@@7 u@@7)) (InsidePredicate_20588_19654 p@@15 v_1@@14 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_19654 p@@15 v_1@@14 q@@7 w@@14) (InsidePredicate_19654_19654 q@@7 w@@14 r@@7 u@@7))
)))
(assert (forall ((p@@16 T@Field_20617_20618) (v_1@@15 T@FrameType) (q@@8 T@Field_19687_19688) (w@@15 T@FrameType) (r@@8 T@Field_18836_18837) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_19654 p@@16 v_1@@15 q@@8 w@@15) (InsidePredicate_19654_18805 q@@8 w@@15 r@@8 u@@8)) (InsidePredicate_20588_18805 p@@16 v_1@@15 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_19654 p@@16 v_1@@15 q@@8 w@@15) (InsidePredicate_19654_18805 q@@8 w@@15 r@@8 u@@8))
)))
(assert (forall ((p@@17 T@Field_20617_20618) (v_1@@16 T@FrameType) (q@@9 T@Field_19687_19688) (w@@16 T@FrameType) (r@@9 T@Field_18274_18275) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_19654 p@@17 v_1@@16 q@@9 w@@16) (InsidePredicate_19654_18247 q@@9 w@@16 r@@9 u@@9)) (InsidePredicate_20588_18247 p@@17 v_1@@16 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_19654 p@@17 v_1@@16 q@@9 w@@16) (InsidePredicate_19654_18247 q@@9 w@@16 r@@9 u@@9))
)))
(assert (forall ((p@@18 T@Field_20617_20618) (v_1@@17 T@FrameType) (q@@10 T@Field_19687_19688) (w@@17 T@FrameType) (r@@10 T@Field_17575_17576) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_19654 p@@18 v_1@@17 q@@10 w@@17) (InsidePredicate_19654_17546 q@@10 w@@17 r@@10 u@@10)) (InsidePredicate_20588_17546 p@@18 v_1@@17 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_19654 p@@18 v_1@@17 q@@10 w@@17) (InsidePredicate_19654_17546 q@@10 w@@17 r@@10 u@@10))
)))
(assert (forall ((p@@19 T@Field_20617_20618) (v_1@@18 T@FrameType) (q@@11 T@Field_19687_19688) (w@@18 T@FrameType) (r@@11 T@Field_16931_16932) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_19654 p@@19 v_1@@18 q@@11 w@@18) (InsidePredicate_19654_16902 q@@11 w@@18 r@@11 u@@11)) (InsidePredicate_20588_16902 p@@19 v_1@@18 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_19654 p@@19 v_1@@18 q@@11 w@@18) (InsidePredicate_19654_16902 q@@11 w@@18 r@@11 u@@11))
)))
(assert (forall ((p@@20 T@Field_20617_20618) (v_1@@19 T@FrameType) (q@@12 T@Field_19687_19688) (w@@19 T@FrameType) (r@@12 T@Field_8623_16932) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_19654 p@@20 v_1@@19 q@@12 w@@19) (InsidePredicate_19654_13574 q@@12 w@@19 r@@12 u@@12)) (InsidePredicate_20588_13574 p@@20 v_1@@19 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_19654 p@@20 v_1@@19 q@@12 w@@19) (InsidePredicate_19654_13574 q@@12 w@@19 r@@12 u@@12))
)))
(assert (forall ((p@@21 T@Field_20617_20618) (v_1@@20 T@FrameType) (q@@13 T@Field_18836_18837) (w@@20 T@FrameType) (r@@13 T@Field_20617_20618) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_18805 p@@21 v_1@@20 q@@13 w@@20) (InsidePredicate_18805_20588 q@@13 w@@20 r@@13 u@@13)) (InsidePredicate_20588_20588 p@@21 v_1@@20 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_18805 p@@21 v_1@@20 q@@13 w@@20) (InsidePredicate_18805_20588 q@@13 w@@20 r@@13 u@@13))
)))
(assert (forall ((p@@22 T@Field_20617_20618) (v_1@@21 T@FrameType) (q@@14 T@Field_18836_18837) (w@@21 T@FrameType) (r@@14 T@Field_19687_19688) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_18805 p@@22 v_1@@21 q@@14 w@@21) (InsidePredicate_18805_19654 q@@14 w@@21 r@@14 u@@14)) (InsidePredicate_20588_19654 p@@22 v_1@@21 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_18805 p@@22 v_1@@21 q@@14 w@@21) (InsidePredicate_18805_19654 q@@14 w@@21 r@@14 u@@14))
)))
(assert (forall ((p@@23 T@Field_20617_20618) (v_1@@22 T@FrameType) (q@@15 T@Field_18836_18837) (w@@22 T@FrameType) (r@@15 T@Field_18836_18837) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_18805 p@@23 v_1@@22 q@@15 w@@22) (InsidePredicate_18805_18805 q@@15 w@@22 r@@15 u@@15)) (InsidePredicate_20588_18805 p@@23 v_1@@22 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_18805 p@@23 v_1@@22 q@@15 w@@22) (InsidePredicate_18805_18805 q@@15 w@@22 r@@15 u@@15))
)))
(assert (forall ((p@@24 T@Field_20617_20618) (v_1@@23 T@FrameType) (q@@16 T@Field_18836_18837) (w@@23 T@FrameType) (r@@16 T@Field_18274_18275) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_18805 p@@24 v_1@@23 q@@16 w@@23) (InsidePredicate_18805_18247 q@@16 w@@23 r@@16 u@@16)) (InsidePredicate_20588_18247 p@@24 v_1@@23 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_18805 p@@24 v_1@@23 q@@16 w@@23) (InsidePredicate_18805_18247 q@@16 w@@23 r@@16 u@@16))
)))
(assert (forall ((p@@25 T@Field_20617_20618) (v_1@@24 T@FrameType) (q@@17 T@Field_18836_18837) (w@@24 T@FrameType) (r@@17 T@Field_17575_17576) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_18805 p@@25 v_1@@24 q@@17 w@@24) (InsidePredicate_18805_17546 q@@17 w@@24 r@@17 u@@17)) (InsidePredicate_20588_17546 p@@25 v_1@@24 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_18805 p@@25 v_1@@24 q@@17 w@@24) (InsidePredicate_18805_17546 q@@17 w@@24 r@@17 u@@17))
)))
(assert (forall ((p@@26 T@Field_20617_20618) (v_1@@25 T@FrameType) (q@@18 T@Field_18836_18837) (w@@25 T@FrameType) (r@@18 T@Field_16931_16932) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_18805 p@@26 v_1@@25 q@@18 w@@25) (InsidePredicate_18805_16902 q@@18 w@@25 r@@18 u@@18)) (InsidePredicate_20588_16902 p@@26 v_1@@25 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_18805 p@@26 v_1@@25 q@@18 w@@25) (InsidePredicate_18805_16902 q@@18 w@@25 r@@18 u@@18))
)))
(assert (forall ((p@@27 T@Field_20617_20618) (v_1@@26 T@FrameType) (q@@19 T@Field_18836_18837) (w@@26 T@FrameType) (r@@19 T@Field_8623_16932) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_18805 p@@27 v_1@@26 q@@19 w@@26) (InsidePredicate_18805_13574 q@@19 w@@26 r@@19 u@@19)) (InsidePredicate_20588_13574 p@@27 v_1@@26 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_18805 p@@27 v_1@@26 q@@19 w@@26) (InsidePredicate_18805_13574 q@@19 w@@26 r@@19 u@@19))
)))
(assert (forall ((p@@28 T@Field_20617_20618) (v_1@@27 T@FrameType) (q@@20 T@Field_18274_18275) (w@@27 T@FrameType) (r@@20 T@Field_20617_20618) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_18247 p@@28 v_1@@27 q@@20 w@@27) (InsidePredicate_18247_20588 q@@20 w@@27 r@@20 u@@20)) (InsidePredicate_20588_20588 p@@28 v_1@@27 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_18247 p@@28 v_1@@27 q@@20 w@@27) (InsidePredicate_18247_20588 q@@20 w@@27 r@@20 u@@20))
)))
(assert (forall ((p@@29 T@Field_20617_20618) (v_1@@28 T@FrameType) (q@@21 T@Field_18274_18275) (w@@28 T@FrameType) (r@@21 T@Field_19687_19688) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_18247 p@@29 v_1@@28 q@@21 w@@28) (InsidePredicate_18247_19654 q@@21 w@@28 r@@21 u@@21)) (InsidePredicate_20588_19654 p@@29 v_1@@28 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_18247 p@@29 v_1@@28 q@@21 w@@28) (InsidePredicate_18247_19654 q@@21 w@@28 r@@21 u@@21))
)))
(assert (forall ((p@@30 T@Field_20617_20618) (v_1@@29 T@FrameType) (q@@22 T@Field_18274_18275) (w@@29 T@FrameType) (r@@22 T@Field_18836_18837) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_18247 p@@30 v_1@@29 q@@22 w@@29) (InsidePredicate_18247_18805 q@@22 w@@29 r@@22 u@@22)) (InsidePredicate_20588_18805 p@@30 v_1@@29 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_18247 p@@30 v_1@@29 q@@22 w@@29) (InsidePredicate_18247_18805 q@@22 w@@29 r@@22 u@@22))
)))
(assert (forall ((p@@31 T@Field_20617_20618) (v_1@@30 T@FrameType) (q@@23 T@Field_18274_18275) (w@@30 T@FrameType) (r@@23 T@Field_18274_18275) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_18247 p@@31 v_1@@30 q@@23 w@@30) (InsidePredicate_18247_18247 q@@23 w@@30 r@@23 u@@23)) (InsidePredicate_20588_18247 p@@31 v_1@@30 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_18247 p@@31 v_1@@30 q@@23 w@@30) (InsidePredicate_18247_18247 q@@23 w@@30 r@@23 u@@23))
)))
(assert (forall ((p@@32 T@Field_20617_20618) (v_1@@31 T@FrameType) (q@@24 T@Field_18274_18275) (w@@31 T@FrameType) (r@@24 T@Field_17575_17576) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_18247 p@@32 v_1@@31 q@@24 w@@31) (InsidePredicate_18247_17546 q@@24 w@@31 r@@24 u@@24)) (InsidePredicate_20588_17546 p@@32 v_1@@31 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_18247 p@@32 v_1@@31 q@@24 w@@31) (InsidePredicate_18247_17546 q@@24 w@@31 r@@24 u@@24))
)))
(assert (forall ((p@@33 T@Field_20617_20618) (v_1@@32 T@FrameType) (q@@25 T@Field_18274_18275) (w@@32 T@FrameType) (r@@25 T@Field_16931_16932) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_18247 p@@33 v_1@@32 q@@25 w@@32) (InsidePredicate_18247_16902 q@@25 w@@32 r@@25 u@@25)) (InsidePredicate_20588_16902 p@@33 v_1@@32 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_18247 p@@33 v_1@@32 q@@25 w@@32) (InsidePredicate_18247_16902 q@@25 w@@32 r@@25 u@@25))
)))
(assert (forall ((p@@34 T@Field_20617_20618) (v_1@@33 T@FrameType) (q@@26 T@Field_18274_18275) (w@@33 T@FrameType) (r@@26 T@Field_8623_16932) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_18247 p@@34 v_1@@33 q@@26 w@@33) (InsidePredicate_18247_13574 q@@26 w@@33 r@@26 u@@26)) (InsidePredicate_20588_13574 p@@34 v_1@@33 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_18247 p@@34 v_1@@33 q@@26 w@@33) (InsidePredicate_18247_13574 q@@26 w@@33 r@@26 u@@26))
)))
(assert (forall ((p@@35 T@Field_20617_20618) (v_1@@34 T@FrameType) (q@@27 T@Field_17575_17576) (w@@34 T@FrameType) (r@@27 T@Field_20617_20618) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_17546 p@@35 v_1@@34 q@@27 w@@34) (InsidePredicate_17546_20588 q@@27 w@@34 r@@27 u@@27)) (InsidePredicate_20588_20588 p@@35 v_1@@34 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_17546 p@@35 v_1@@34 q@@27 w@@34) (InsidePredicate_17546_20588 q@@27 w@@34 r@@27 u@@27))
)))
(assert (forall ((p@@36 T@Field_20617_20618) (v_1@@35 T@FrameType) (q@@28 T@Field_17575_17576) (w@@35 T@FrameType) (r@@28 T@Field_19687_19688) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_17546 p@@36 v_1@@35 q@@28 w@@35) (InsidePredicate_17546_19654 q@@28 w@@35 r@@28 u@@28)) (InsidePredicate_20588_19654 p@@36 v_1@@35 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_17546 p@@36 v_1@@35 q@@28 w@@35) (InsidePredicate_17546_19654 q@@28 w@@35 r@@28 u@@28))
)))
(assert (forall ((p@@37 T@Field_20617_20618) (v_1@@36 T@FrameType) (q@@29 T@Field_17575_17576) (w@@36 T@FrameType) (r@@29 T@Field_18836_18837) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_17546 p@@37 v_1@@36 q@@29 w@@36) (InsidePredicate_17546_18805 q@@29 w@@36 r@@29 u@@29)) (InsidePredicate_20588_18805 p@@37 v_1@@36 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_17546 p@@37 v_1@@36 q@@29 w@@36) (InsidePredicate_17546_18805 q@@29 w@@36 r@@29 u@@29))
)))
(assert (forall ((p@@38 T@Field_20617_20618) (v_1@@37 T@FrameType) (q@@30 T@Field_17575_17576) (w@@37 T@FrameType) (r@@30 T@Field_18274_18275) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_17546 p@@38 v_1@@37 q@@30 w@@37) (InsidePredicate_17546_18247 q@@30 w@@37 r@@30 u@@30)) (InsidePredicate_20588_18247 p@@38 v_1@@37 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_17546 p@@38 v_1@@37 q@@30 w@@37) (InsidePredicate_17546_18247 q@@30 w@@37 r@@30 u@@30))
)))
(assert (forall ((p@@39 T@Field_20617_20618) (v_1@@38 T@FrameType) (q@@31 T@Field_17575_17576) (w@@38 T@FrameType) (r@@31 T@Field_17575_17576) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_17546 p@@39 v_1@@38 q@@31 w@@38) (InsidePredicate_17546_17546 q@@31 w@@38 r@@31 u@@31)) (InsidePredicate_20588_17546 p@@39 v_1@@38 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_17546 p@@39 v_1@@38 q@@31 w@@38) (InsidePredicate_17546_17546 q@@31 w@@38 r@@31 u@@31))
)))
(assert (forall ((p@@40 T@Field_20617_20618) (v_1@@39 T@FrameType) (q@@32 T@Field_17575_17576) (w@@39 T@FrameType) (r@@32 T@Field_16931_16932) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_17546 p@@40 v_1@@39 q@@32 w@@39) (InsidePredicate_17546_16902 q@@32 w@@39 r@@32 u@@32)) (InsidePredicate_20588_16902 p@@40 v_1@@39 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_17546 p@@40 v_1@@39 q@@32 w@@39) (InsidePredicate_17546_16902 q@@32 w@@39 r@@32 u@@32))
)))
(assert (forall ((p@@41 T@Field_20617_20618) (v_1@@40 T@FrameType) (q@@33 T@Field_17575_17576) (w@@40 T@FrameType) (r@@33 T@Field_8623_16932) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_17546 p@@41 v_1@@40 q@@33 w@@40) (InsidePredicate_17546_13574 q@@33 w@@40 r@@33 u@@33)) (InsidePredicate_20588_13574 p@@41 v_1@@40 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_17546 p@@41 v_1@@40 q@@33 w@@40) (InsidePredicate_17546_13574 q@@33 w@@40 r@@33 u@@33))
)))
(assert (forall ((p@@42 T@Field_20617_20618) (v_1@@41 T@FrameType) (q@@34 T@Field_16931_16932) (w@@41 T@FrameType) (r@@34 T@Field_20617_20618) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_16902 p@@42 v_1@@41 q@@34 w@@41) (InsidePredicate_16902_20588 q@@34 w@@41 r@@34 u@@34)) (InsidePredicate_20588_20588 p@@42 v_1@@41 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_16902 p@@42 v_1@@41 q@@34 w@@41) (InsidePredicate_16902_20588 q@@34 w@@41 r@@34 u@@34))
)))
(assert (forall ((p@@43 T@Field_20617_20618) (v_1@@42 T@FrameType) (q@@35 T@Field_16931_16932) (w@@42 T@FrameType) (r@@35 T@Field_19687_19688) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_16902 p@@43 v_1@@42 q@@35 w@@42) (InsidePredicate_16902_19654 q@@35 w@@42 r@@35 u@@35)) (InsidePredicate_20588_19654 p@@43 v_1@@42 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_16902 p@@43 v_1@@42 q@@35 w@@42) (InsidePredicate_16902_19654 q@@35 w@@42 r@@35 u@@35))
)))
(assert (forall ((p@@44 T@Field_20617_20618) (v_1@@43 T@FrameType) (q@@36 T@Field_16931_16932) (w@@43 T@FrameType) (r@@36 T@Field_18836_18837) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_16902 p@@44 v_1@@43 q@@36 w@@43) (InsidePredicate_16902_18805 q@@36 w@@43 r@@36 u@@36)) (InsidePredicate_20588_18805 p@@44 v_1@@43 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_16902 p@@44 v_1@@43 q@@36 w@@43) (InsidePredicate_16902_18805 q@@36 w@@43 r@@36 u@@36))
)))
(assert (forall ((p@@45 T@Field_20617_20618) (v_1@@44 T@FrameType) (q@@37 T@Field_16931_16932) (w@@44 T@FrameType) (r@@37 T@Field_18274_18275) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_16902 p@@45 v_1@@44 q@@37 w@@44) (InsidePredicate_16902_18247 q@@37 w@@44 r@@37 u@@37)) (InsidePredicate_20588_18247 p@@45 v_1@@44 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_16902 p@@45 v_1@@44 q@@37 w@@44) (InsidePredicate_16902_18247 q@@37 w@@44 r@@37 u@@37))
)))
(assert (forall ((p@@46 T@Field_20617_20618) (v_1@@45 T@FrameType) (q@@38 T@Field_16931_16932) (w@@45 T@FrameType) (r@@38 T@Field_17575_17576) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_16902 p@@46 v_1@@45 q@@38 w@@45) (InsidePredicate_16902_17546 q@@38 w@@45 r@@38 u@@38)) (InsidePredicate_20588_17546 p@@46 v_1@@45 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_16902 p@@46 v_1@@45 q@@38 w@@45) (InsidePredicate_16902_17546 q@@38 w@@45 r@@38 u@@38))
)))
(assert (forall ((p@@47 T@Field_20617_20618) (v_1@@46 T@FrameType) (q@@39 T@Field_16931_16932) (w@@46 T@FrameType) (r@@39 T@Field_16931_16932) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_16902 p@@47 v_1@@46 q@@39 w@@46) (InsidePredicate_16902_16902 q@@39 w@@46 r@@39 u@@39)) (InsidePredicate_20588_16902 p@@47 v_1@@46 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_16902 p@@47 v_1@@46 q@@39 w@@46) (InsidePredicate_16902_16902 q@@39 w@@46 r@@39 u@@39))
)))
(assert (forall ((p@@48 T@Field_20617_20618) (v_1@@47 T@FrameType) (q@@40 T@Field_16931_16932) (w@@47 T@FrameType) (r@@40 T@Field_8623_16932) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_16902 p@@48 v_1@@47 q@@40 w@@47) (InsidePredicate_16902_13574 q@@40 w@@47 r@@40 u@@40)) (InsidePredicate_20588_13574 p@@48 v_1@@47 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_16902 p@@48 v_1@@47 q@@40 w@@47) (InsidePredicate_16902_13574 q@@40 w@@47 r@@40 u@@40))
)))
(assert (forall ((p@@49 T@Field_20617_20618) (v_1@@48 T@FrameType) (q@@41 T@Field_8623_16932) (w@@48 T@FrameType) (r@@41 T@Field_20617_20618) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_13574 p@@49 v_1@@48 q@@41 w@@48) (InsidePredicate_13574_20588 q@@41 w@@48 r@@41 u@@41)) (InsidePredicate_20588_20588 p@@49 v_1@@48 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_13574 p@@49 v_1@@48 q@@41 w@@48) (InsidePredicate_13574_20588 q@@41 w@@48 r@@41 u@@41))
)))
(assert (forall ((p@@50 T@Field_20617_20618) (v_1@@49 T@FrameType) (q@@42 T@Field_8623_16932) (w@@49 T@FrameType) (r@@42 T@Field_19687_19688) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_13574 p@@50 v_1@@49 q@@42 w@@49) (InsidePredicate_13574_19654 q@@42 w@@49 r@@42 u@@42)) (InsidePredicate_20588_19654 p@@50 v_1@@49 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_13574 p@@50 v_1@@49 q@@42 w@@49) (InsidePredicate_13574_19654 q@@42 w@@49 r@@42 u@@42))
)))
(assert (forall ((p@@51 T@Field_20617_20618) (v_1@@50 T@FrameType) (q@@43 T@Field_8623_16932) (w@@50 T@FrameType) (r@@43 T@Field_18836_18837) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_13574 p@@51 v_1@@50 q@@43 w@@50) (InsidePredicate_13574_18805 q@@43 w@@50 r@@43 u@@43)) (InsidePredicate_20588_18805 p@@51 v_1@@50 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_13574 p@@51 v_1@@50 q@@43 w@@50) (InsidePredicate_13574_18805 q@@43 w@@50 r@@43 u@@43))
)))
(assert (forall ((p@@52 T@Field_20617_20618) (v_1@@51 T@FrameType) (q@@44 T@Field_8623_16932) (w@@51 T@FrameType) (r@@44 T@Field_18274_18275) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_13574 p@@52 v_1@@51 q@@44 w@@51) (InsidePredicate_13574_18247 q@@44 w@@51 r@@44 u@@44)) (InsidePredicate_20588_18247 p@@52 v_1@@51 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_13574 p@@52 v_1@@51 q@@44 w@@51) (InsidePredicate_13574_18247 q@@44 w@@51 r@@44 u@@44))
)))
(assert (forall ((p@@53 T@Field_20617_20618) (v_1@@52 T@FrameType) (q@@45 T@Field_8623_16932) (w@@52 T@FrameType) (r@@45 T@Field_17575_17576) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_13574 p@@53 v_1@@52 q@@45 w@@52) (InsidePredicate_13574_17546 q@@45 w@@52 r@@45 u@@45)) (InsidePredicate_20588_17546 p@@53 v_1@@52 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_13574 p@@53 v_1@@52 q@@45 w@@52) (InsidePredicate_13574_17546 q@@45 w@@52 r@@45 u@@45))
)))
(assert (forall ((p@@54 T@Field_20617_20618) (v_1@@53 T@FrameType) (q@@46 T@Field_8623_16932) (w@@53 T@FrameType) (r@@46 T@Field_16931_16932) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_13574 p@@54 v_1@@53 q@@46 w@@53) (InsidePredicate_13574_16902 q@@46 w@@53 r@@46 u@@46)) (InsidePredicate_20588_16902 p@@54 v_1@@53 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_13574 p@@54 v_1@@53 q@@46 w@@53) (InsidePredicate_13574_16902 q@@46 w@@53 r@@46 u@@46))
)))
(assert (forall ((p@@55 T@Field_20617_20618) (v_1@@54 T@FrameType) (q@@47 T@Field_8623_16932) (w@@54 T@FrameType) (r@@47 T@Field_8623_16932) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_20588_13574 p@@55 v_1@@54 q@@47 w@@54) (InsidePredicate_13574_13574 q@@47 w@@54 r@@47 u@@47)) (InsidePredicate_20588_13574 p@@55 v_1@@54 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20588_13574 p@@55 v_1@@54 q@@47 w@@54) (InsidePredicate_13574_13574 q@@47 w@@54 r@@47 u@@47))
)))
(assert (forall ((p@@56 T@Field_19687_19688) (v_1@@55 T@FrameType) (q@@48 T@Field_20617_20618) (w@@55 T@FrameType) (r@@48 T@Field_20617_20618) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_20588 p@@56 v_1@@55 q@@48 w@@55) (InsidePredicate_20588_20588 q@@48 w@@55 r@@48 u@@48)) (InsidePredicate_19654_20588 p@@56 v_1@@55 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_20588 p@@56 v_1@@55 q@@48 w@@55) (InsidePredicate_20588_20588 q@@48 w@@55 r@@48 u@@48))
)))
(assert (forall ((p@@57 T@Field_19687_19688) (v_1@@56 T@FrameType) (q@@49 T@Field_20617_20618) (w@@56 T@FrameType) (r@@49 T@Field_19687_19688) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_20588 p@@57 v_1@@56 q@@49 w@@56) (InsidePredicate_20588_19654 q@@49 w@@56 r@@49 u@@49)) (InsidePredicate_19654_19654 p@@57 v_1@@56 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_20588 p@@57 v_1@@56 q@@49 w@@56) (InsidePredicate_20588_19654 q@@49 w@@56 r@@49 u@@49))
)))
(assert (forall ((p@@58 T@Field_19687_19688) (v_1@@57 T@FrameType) (q@@50 T@Field_20617_20618) (w@@57 T@FrameType) (r@@50 T@Field_18836_18837) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_20588 p@@58 v_1@@57 q@@50 w@@57) (InsidePredicate_20588_18805 q@@50 w@@57 r@@50 u@@50)) (InsidePredicate_19654_18805 p@@58 v_1@@57 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_20588 p@@58 v_1@@57 q@@50 w@@57) (InsidePredicate_20588_18805 q@@50 w@@57 r@@50 u@@50))
)))
(assert (forall ((p@@59 T@Field_19687_19688) (v_1@@58 T@FrameType) (q@@51 T@Field_20617_20618) (w@@58 T@FrameType) (r@@51 T@Field_18274_18275) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_20588 p@@59 v_1@@58 q@@51 w@@58) (InsidePredicate_20588_18247 q@@51 w@@58 r@@51 u@@51)) (InsidePredicate_19654_18247 p@@59 v_1@@58 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_20588 p@@59 v_1@@58 q@@51 w@@58) (InsidePredicate_20588_18247 q@@51 w@@58 r@@51 u@@51))
)))
(assert (forall ((p@@60 T@Field_19687_19688) (v_1@@59 T@FrameType) (q@@52 T@Field_20617_20618) (w@@59 T@FrameType) (r@@52 T@Field_17575_17576) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_20588 p@@60 v_1@@59 q@@52 w@@59) (InsidePredicate_20588_17546 q@@52 w@@59 r@@52 u@@52)) (InsidePredicate_19654_17546 p@@60 v_1@@59 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_20588 p@@60 v_1@@59 q@@52 w@@59) (InsidePredicate_20588_17546 q@@52 w@@59 r@@52 u@@52))
)))
(assert (forall ((p@@61 T@Field_19687_19688) (v_1@@60 T@FrameType) (q@@53 T@Field_20617_20618) (w@@60 T@FrameType) (r@@53 T@Field_16931_16932) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_20588 p@@61 v_1@@60 q@@53 w@@60) (InsidePredicate_20588_16902 q@@53 w@@60 r@@53 u@@53)) (InsidePredicate_19654_16902 p@@61 v_1@@60 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_20588 p@@61 v_1@@60 q@@53 w@@60) (InsidePredicate_20588_16902 q@@53 w@@60 r@@53 u@@53))
)))
(assert (forall ((p@@62 T@Field_19687_19688) (v_1@@61 T@FrameType) (q@@54 T@Field_20617_20618) (w@@61 T@FrameType) (r@@54 T@Field_8623_16932) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_20588 p@@62 v_1@@61 q@@54 w@@61) (InsidePredicate_20588_13574 q@@54 w@@61 r@@54 u@@54)) (InsidePredicate_19654_13574 p@@62 v_1@@61 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_20588 p@@62 v_1@@61 q@@54 w@@61) (InsidePredicate_20588_13574 q@@54 w@@61 r@@54 u@@54))
)))
(assert (forall ((p@@63 T@Field_19687_19688) (v_1@@62 T@FrameType) (q@@55 T@Field_19687_19688) (w@@62 T@FrameType) (r@@55 T@Field_20617_20618) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_19654 p@@63 v_1@@62 q@@55 w@@62) (InsidePredicate_19654_20588 q@@55 w@@62 r@@55 u@@55)) (InsidePredicate_19654_20588 p@@63 v_1@@62 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_19654 p@@63 v_1@@62 q@@55 w@@62) (InsidePredicate_19654_20588 q@@55 w@@62 r@@55 u@@55))
)))
(assert (forall ((p@@64 T@Field_19687_19688) (v_1@@63 T@FrameType) (q@@56 T@Field_19687_19688) (w@@63 T@FrameType) (r@@56 T@Field_19687_19688) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_19654 p@@64 v_1@@63 q@@56 w@@63) (InsidePredicate_19654_19654 q@@56 w@@63 r@@56 u@@56)) (InsidePredicate_19654_19654 p@@64 v_1@@63 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_19654 p@@64 v_1@@63 q@@56 w@@63) (InsidePredicate_19654_19654 q@@56 w@@63 r@@56 u@@56))
)))
(assert (forall ((p@@65 T@Field_19687_19688) (v_1@@64 T@FrameType) (q@@57 T@Field_19687_19688) (w@@64 T@FrameType) (r@@57 T@Field_18836_18837) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_19654 p@@65 v_1@@64 q@@57 w@@64) (InsidePredicate_19654_18805 q@@57 w@@64 r@@57 u@@57)) (InsidePredicate_19654_18805 p@@65 v_1@@64 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_19654 p@@65 v_1@@64 q@@57 w@@64) (InsidePredicate_19654_18805 q@@57 w@@64 r@@57 u@@57))
)))
(assert (forall ((p@@66 T@Field_19687_19688) (v_1@@65 T@FrameType) (q@@58 T@Field_19687_19688) (w@@65 T@FrameType) (r@@58 T@Field_18274_18275) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_19654 p@@66 v_1@@65 q@@58 w@@65) (InsidePredicate_19654_18247 q@@58 w@@65 r@@58 u@@58)) (InsidePredicate_19654_18247 p@@66 v_1@@65 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_19654 p@@66 v_1@@65 q@@58 w@@65) (InsidePredicate_19654_18247 q@@58 w@@65 r@@58 u@@58))
)))
(assert (forall ((p@@67 T@Field_19687_19688) (v_1@@66 T@FrameType) (q@@59 T@Field_19687_19688) (w@@66 T@FrameType) (r@@59 T@Field_17575_17576) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_19654 p@@67 v_1@@66 q@@59 w@@66) (InsidePredicate_19654_17546 q@@59 w@@66 r@@59 u@@59)) (InsidePredicate_19654_17546 p@@67 v_1@@66 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_19654 p@@67 v_1@@66 q@@59 w@@66) (InsidePredicate_19654_17546 q@@59 w@@66 r@@59 u@@59))
)))
(assert (forall ((p@@68 T@Field_19687_19688) (v_1@@67 T@FrameType) (q@@60 T@Field_19687_19688) (w@@67 T@FrameType) (r@@60 T@Field_16931_16932) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_19654 p@@68 v_1@@67 q@@60 w@@67) (InsidePredicate_19654_16902 q@@60 w@@67 r@@60 u@@60)) (InsidePredicate_19654_16902 p@@68 v_1@@67 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_19654 p@@68 v_1@@67 q@@60 w@@67) (InsidePredicate_19654_16902 q@@60 w@@67 r@@60 u@@60))
)))
(assert (forall ((p@@69 T@Field_19687_19688) (v_1@@68 T@FrameType) (q@@61 T@Field_19687_19688) (w@@68 T@FrameType) (r@@61 T@Field_8623_16932) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_19654 p@@69 v_1@@68 q@@61 w@@68) (InsidePredicate_19654_13574 q@@61 w@@68 r@@61 u@@61)) (InsidePredicate_19654_13574 p@@69 v_1@@68 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_19654 p@@69 v_1@@68 q@@61 w@@68) (InsidePredicate_19654_13574 q@@61 w@@68 r@@61 u@@61))
)))
(assert (forall ((p@@70 T@Field_19687_19688) (v_1@@69 T@FrameType) (q@@62 T@Field_18836_18837) (w@@69 T@FrameType) (r@@62 T@Field_20617_20618) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_18805 p@@70 v_1@@69 q@@62 w@@69) (InsidePredicate_18805_20588 q@@62 w@@69 r@@62 u@@62)) (InsidePredicate_19654_20588 p@@70 v_1@@69 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_18805 p@@70 v_1@@69 q@@62 w@@69) (InsidePredicate_18805_20588 q@@62 w@@69 r@@62 u@@62))
)))
(assert (forall ((p@@71 T@Field_19687_19688) (v_1@@70 T@FrameType) (q@@63 T@Field_18836_18837) (w@@70 T@FrameType) (r@@63 T@Field_19687_19688) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_18805 p@@71 v_1@@70 q@@63 w@@70) (InsidePredicate_18805_19654 q@@63 w@@70 r@@63 u@@63)) (InsidePredicate_19654_19654 p@@71 v_1@@70 r@@63 u@@63))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_18805 p@@71 v_1@@70 q@@63 w@@70) (InsidePredicate_18805_19654 q@@63 w@@70 r@@63 u@@63))
)))
(assert (forall ((p@@72 T@Field_19687_19688) (v_1@@71 T@FrameType) (q@@64 T@Field_18836_18837) (w@@71 T@FrameType) (r@@64 T@Field_18836_18837) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_18805 p@@72 v_1@@71 q@@64 w@@71) (InsidePredicate_18805_18805 q@@64 w@@71 r@@64 u@@64)) (InsidePredicate_19654_18805 p@@72 v_1@@71 r@@64 u@@64))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_18805 p@@72 v_1@@71 q@@64 w@@71) (InsidePredicate_18805_18805 q@@64 w@@71 r@@64 u@@64))
)))
(assert (forall ((p@@73 T@Field_19687_19688) (v_1@@72 T@FrameType) (q@@65 T@Field_18836_18837) (w@@72 T@FrameType) (r@@65 T@Field_18274_18275) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_18805 p@@73 v_1@@72 q@@65 w@@72) (InsidePredicate_18805_18247 q@@65 w@@72 r@@65 u@@65)) (InsidePredicate_19654_18247 p@@73 v_1@@72 r@@65 u@@65))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_18805 p@@73 v_1@@72 q@@65 w@@72) (InsidePredicate_18805_18247 q@@65 w@@72 r@@65 u@@65))
)))
(assert (forall ((p@@74 T@Field_19687_19688) (v_1@@73 T@FrameType) (q@@66 T@Field_18836_18837) (w@@73 T@FrameType) (r@@66 T@Field_17575_17576) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_18805 p@@74 v_1@@73 q@@66 w@@73) (InsidePredicate_18805_17546 q@@66 w@@73 r@@66 u@@66)) (InsidePredicate_19654_17546 p@@74 v_1@@73 r@@66 u@@66))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_18805 p@@74 v_1@@73 q@@66 w@@73) (InsidePredicate_18805_17546 q@@66 w@@73 r@@66 u@@66))
)))
(assert (forall ((p@@75 T@Field_19687_19688) (v_1@@74 T@FrameType) (q@@67 T@Field_18836_18837) (w@@74 T@FrameType) (r@@67 T@Field_16931_16932) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_18805 p@@75 v_1@@74 q@@67 w@@74) (InsidePredicate_18805_16902 q@@67 w@@74 r@@67 u@@67)) (InsidePredicate_19654_16902 p@@75 v_1@@74 r@@67 u@@67))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_18805 p@@75 v_1@@74 q@@67 w@@74) (InsidePredicate_18805_16902 q@@67 w@@74 r@@67 u@@67))
)))
(assert (forall ((p@@76 T@Field_19687_19688) (v_1@@75 T@FrameType) (q@@68 T@Field_18836_18837) (w@@75 T@FrameType) (r@@68 T@Field_8623_16932) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_18805 p@@76 v_1@@75 q@@68 w@@75) (InsidePredicate_18805_13574 q@@68 w@@75 r@@68 u@@68)) (InsidePredicate_19654_13574 p@@76 v_1@@75 r@@68 u@@68))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_18805 p@@76 v_1@@75 q@@68 w@@75) (InsidePredicate_18805_13574 q@@68 w@@75 r@@68 u@@68))
)))
(assert (forall ((p@@77 T@Field_19687_19688) (v_1@@76 T@FrameType) (q@@69 T@Field_18274_18275) (w@@76 T@FrameType) (r@@69 T@Field_20617_20618) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_18247 p@@77 v_1@@76 q@@69 w@@76) (InsidePredicate_18247_20588 q@@69 w@@76 r@@69 u@@69)) (InsidePredicate_19654_20588 p@@77 v_1@@76 r@@69 u@@69))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_18247 p@@77 v_1@@76 q@@69 w@@76) (InsidePredicate_18247_20588 q@@69 w@@76 r@@69 u@@69))
)))
(assert (forall ((p@@78 T@Field_19687_19688) (v_1@@77 T@FrameType) (q@@70 T@Field_18274_18275) (w@@77 T@FrameType) (r@@70 T@Field_19687_19688) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_18247 p@@78 v_1@@77 q@@70 w@@77) (InsidePredicate_18247_19654 q@@70 w@@77 r@@70 u@@70)) (InsidePredicate_19654_19654 p@@78 v_1@@77 r@@70 u@@70))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_18247 p@@78 v_1@@77 q@@70 w@@77) (InsidePredicate_18247_19654 q@@70 w@@77 r@@70 u@@70))
)))
(assert (forall ((p@@79 T@Field_19687_19688) (v_1@@78 T@FrameType) (q@@71 T@Field_18274_18275) (w@@78 T@FrameType) (r@@71 T@Field_18836_18837) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_18247 p@@79 v_1@@78 q@@71 w@@78) (InsidePredicate_18247_18805 q@@71 w@@78 r@@71 u@@71)) (InsidePredicate_19654_18805 p@@79 v_1@@78 r@@71 u@@71))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_18247 p@@79 v_1@@78 q@@71 w@@78) (InsidePredicate_18247_18805 q@@71 w@@78 r@@71 u@@71))
)))
(assert (forall ((p@@80 T@Field_19687_19688) (v_1@@79 T@FrameType) (q@@72 T@Field_18274_18275) (w@@79 T@FrameType) (r@@72 T@Field_18274_18275) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_18247 p@@80 v_1@@79 q@@72 w@@79) (InsidePredicate_18247_18247 q@@72 w@@79 r@@72 u@@72)) (InsidePredicate_19654_18247 p@@80 v_1@@79 r@@72 u@@72))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_18247 p@@80 v_1@@79 q@@72 w@@79) (InsidePredicate_18247_18247 q@@72 w@@79 r@@72 u@@72))
)))
(assert (forall ((p@@81 T@Field_19687_19688) (v_1@@80 T@FrameType) (q@@73 T@Field_18274_18275) (w@@80 T@FrameType) (r@@73 T@Field_17575_17576) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_18247 p@@81 v_1@@80 q@@73 w@@80) (InsidePredicate_18247_17546 q@@73 w@@80 r@@73 u@@73)) (InsidePredicate_19654_17546 p@@81 v_1@@80 r@@73 u@@73))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_18247 p@@81 v_1@@80 q@@73 w@@80) (InsidePredicate_18247_17546 q@@73 w@@80 r@@73 u@@73))
)))
(assert (forall ((p@@82 T@Field_19687_19688) (v_1@@81 T@FrameType) (q@@74 T@Field_18274_18275) (w@@81 T@FrameType) (r@@74 T@Field_16931_16932) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_18247 p@@82 v_1@@81 q@@74 w@@81) (InsidePredicate_18247_16902 q@@74 w@@81 r@@74 u@@74)) (InsidePredicate_19654_16902 p@@82 v_1@@81 r@@74 u@@74))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_18247 p@@82 v_1@@81 q@@74 w@@81) (InsidePredicate_18247_16902 q@@74 w@@81 r@@74 u@@74))
)))
(assert (forall ((p@@83 T@Field_19687_19688) (v_1@@82 T@FrameType) (q@@75 T@Field_18274_18275) (w@@82 T@FrameType) (r@@75 T@Field_8623_16932) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_18247 p@@83 v_1@@82 q@@75 w@@82) (InsidePredicate_18247_13574 q@@75 w@@82 r@@75 u@@75)) (InsidePredicate_19654_13574 p@@83 v_1@@82 r@@75 u@@75))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_18247 p@@83 v_1@@82 q@@75 w@@82) (InsidePredicate_18247_13574 q@@75 w@@82 r@@75 u@@75))
)))
(assert (forall ((p@@84 T@Field_19687_19688) (v_1@@83 T@FrameType) (q@@76 T@Field_17575_17576) (w@@83 T@FrameType) (r@@76 T@Field_20617_20618) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_17546 p@@84 v_1@@83 q@@76 w@@83) (InsidePredicate_17546_20588 q@@76 w@@83 r@@76 u@@76)) (InsidePredicate_19654_20588 p@@84 v_1@@83 r@@76 u@@76))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_17546 p@@84 v_1@@83 q@@76 w@@83) (InsidePredicate_17546_20588 q@@76 w@@83 r@@76 u@@76))
)))
(assert (forall ((p@@85 T@Field_19687_19688) (v_1@@84 T@FrameType) (q@@77 T@Field_17575_17576) (w@@84 T@FrameType) (r@@77 T@Field_19687_19688) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_17546 p@@85 v_1@@84 q@@77 w@@84) (InsidePredicate_17546_19654 q@@77 w@@84 r@@77 u@@77)) (InsidePredicate_19654_19654 p@@85 v_1@@84 r@@77 u@@77))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_17546 p@@85 v_1@@84 q@@77 w@@84) (InsidePredicate_17546_19654 q@@77 w@@84 r@@77 u@@77))
)))
(assert (forall ((p@@86 T@Field_19687_19688) (v_1@@85 T@FrameType) (q@@78 T@Field_17575_17576) (w@@85 T@FrameType) (r@@78 T@Field_18836_18837) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_17546 p@@86 v_1@@85 q@@78 w@@85) (InsidePredicate_17546_18805 q@@78 w@@85 r@@78 u@@78)) (InsidePredicate_19654_18805 p@@86 v_1@@85 r@@78 u@@78))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_17546 p@@86 v_1@@85 q@@78 w@@85) (InsidePredicate_17546_18805 q@@78 w@@85 r@@78 u@@78))
)))
(assert (forall ((p@@87 T@Field_19687_19688) (v_1@@86 T@FrameType) (q@@79 T@Field_17575_17576) (w@@86 T@FrameType) (r@@79 T@Field_18274_18275) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_17546 p@@87 v_1@@86 q@@79 w@@86) (InsidePredicate_17546_18247 q@@79 w@@86 r@@79 u@@79)) (InsidePredicate_19654_18247 p@@87 v_1@@86 r@@79 u@@79))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_17546 p@@87 v_1@@86 q@@79 w@@86) (InsidePredicate_17546_18247 q@@79 w@@86 r@@79 u@@79))
)))
(assert (forall ((p@@88 T@Field_19687_19688) (v_1@@87 T@FrameType) (q@@80 T@Field_17575_17576) (w@@87 T@FrameType) (r@@80 T@Field_17575_17576) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_17546 p@@88 v_1@@87 q@@80 w@@87) (InsidePredicate_17546_17546 q@@80 w@@87 r@@80 u@@80)) (InsidePredicate_19654_17546 p@@88 v_1@@87 r@@80 u@@80))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_17546 p@@88 v_1@@87 q@@80 w@@87) (InsidePredicate_17546_17546 q@@80 w@@87 r@@80 u@@80))
)))
(assert (forall ((p@@89 T@Field_19687_19688) (v_1@@88 T@FrameType) (q@@81 T@Field_17575_17576) (w@@88 T@FrameType) (r@@81 T@Field_16931_16932) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_17546 p@@89 v_1@@88 q@@81 w@@88) (InsidePredicate_17546_16902 q@@81 w@@88 r@@81 u@@81)) (InsidePredicate_19654_16902 p@@89 v_1@@88 r@@81 u@@81))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_17546 p@@89 v_1@@88 q@@81 w@@88) (InsidePredicate_17546_16902 q@@81 w@@88 r@@81 u@@81))
)))
(assert (forall ((p@@90 T@Field_19687_19688) (v_1@@89 T@FrameType) (q@@82 T@Field_17575_17576) (w@@89 T@FrameType) (r@@82 T@Field_8623_16932) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_17546 p@@90 v_1@@89 q@@82 w@@89) (InsidePredicate_17546_13574 q@@82 w@@89 r@@82 u@@82)) (InsidePredicate_19654_13574 p@@90 v_1@@89 r@@82 u@@82))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_17546 p@@90 v_1@@89 q@@82 w@@89) (InsidePredicate_17546_13574 q@@82 w@@89 r@@82 u@@82))
)))
(assert (forall ((p@@91 T@Field_19687_19688) (v_1@@90 T@FrameType) (q@@83 T@Field_16931_16932) (w@@90 T@FrameType) (r@@83 T@Field_20617_20618) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_16902 p@@91 v_1@@90 q@@83 w@@90) (InsidePredicate_16902_20588 q@@83 w@@90 r@@83 u@@83)) (InsidePredicate_19654_20588 p@@91 v_1@@90 r@@83 u@@83))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_16902 p@@91 v_1@@90 q@@83 w@@90) (InsidePredicate_16902_20588 q@@83 w@@90 r@@83 u@@83))
)))
(assert (forall ((p@@92 T@Field_19687_19688) (v_1@@91 T@FrameType) (q@@84 T@Field_16931_16932) (w@@91 T@FrameType) (r@@84 T@Field_19687_19688) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_16902 p@@92 v_1@@91 q@@84 w@@91) (InsidePredicate_16902_19654 q@@84 w@@91 r@@84 u@@84)) (InsidePredicate_19654_19654 p@@92 v_1@@91 r@@84 u@@84))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_16902 p@@92 v_1@@91 q@@84 w@@91) (InsidePredicate_16902_19654 q@@84 w@@91 r@@84 u@@84))
)))
(assert (forall ((p@@93 T@Field_19687_19688) (v_1@@92 T@FrameType) (q@@85 T@Field_16931_16932) (w@@92 T@FrameType) (r@@85 T@Field_18836_18837) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_16902 p@@93 v_1@@92 q@@85 w@@92) (InsidePredicate_16902_18805 q@@85 w@@92 r@@85 u@@85)) (InsidePredicate_19654_18805 p@@93 v_1@@92 r@@85 u@@85))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_16902 p@@93 v_1@@92 q@@85 w@@92) (InsidePredicate_16902_18805 q@@85 w@@92 r@@85 u@@85))
)))
(assert (forall ((p@@94 T@Field_19687_19688) (v_1@@93 T@FrameType) (q@@86 T@Field_16931_16932) (w@@93 T@FrameType) (r@@86 T@Field_18274_18275) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_16902 p@@94 v_1@@93 q@@86 w@@93) (InsidePredicate_16902_18247 q@@86 w@@93 r@@86 u@@86)) (InsidePredicate_19654_18247 p@@94 v_1@@93 r@@86 u@@86))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_16902 p@@94 v_1@@93 q@@86 w@@93) (InsidePredicate_16902_18247 q@@86 w@@93 r@@86 u@@86))
)))
(assert (forall ((p@@95 T@Field_19687_19688) (v_1@@94 T@FrameType) (q@@87 T@Field_16931_16932) (w@@94 T@FrameType) (r@@87 T@Field_17575_17576) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_16902 p@@95 v_1@@94 q@@87 w@@94) (InsidePredicate_16902_17546 q@@87 w@@94 r@@87 u@@87)) (InsidePredicate_19654_17546 p@@95 v_1@@94 r@@87 u@@87))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_16902 p@@95 v_1@@94 q@@87 w@@94) (InsidePredicate_16902_17546 q@@87 w@@94 r@@87 u@@87))
)))
(assert (forall ((p@@96 T@Field_19687_19688) (v_1@@95 T@FrameType) (q@@88 T@Field_16931_16932) (w@@95 T@FrameType) (r@@88 T@Field_16931_16932) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_16902 p@@96 v_1@@95 q@@88 w@@95) (InsidePredicate_16902_16902 q@@88 w@@95 r@@88 u@@88)) (InsidePredicate_19654_16902 p@@96 v_1@@95 r@@88 u@@88))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_16902 p@@96 v_1@@95 q@@88 w@@95) (InsidePredicate_16902_16902 q@@88 w@@95 r@@88 u@@88))
)))
(assert (forall ((p@@97 T@Field_19687_19688) (v_1@@96 T@FrameType) (q@@89 T@Field_16931_16932) (w@@96 T@FrameType) (r@@89 T@Field_8623_16932) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_16902 p@@97 v_1@@96 q@@89 w@@96) (InsidePredicate_16902_13574 q@@89 w@@96 r@@89 u@@89)) (InsidePredicate_19654_13574 p@@97 v_1@@96 r@@89 u@@89))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_16902 p@@97 v_1@@96 q@@89 w@@96) (InsidePredicate_16902_13574 q@@89 w@@96 r@@89 u@@89))
)))
(assert (forall ((p@@98 T@Field_19687_19688) (v_1@@97 T@FrameType) (q@@90 T@Field_8623_16932) (w@@97 T@FrameType) (r@@90 T@Field_20617_20618) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_13574 p@@98 v_1@@97 q@@90 w@@97) (InsidePredicate_13574_20588 q@@90 w@@97 r@@90 u@@90)) (InsidePredicate_19654_20588 p@@98 v_1@@97 r@@90 u@@90))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_13574 p@@98 v_1@@97 q@@90 w@@97) (InsidePredicate_13574_20588 q@@90 w@@97 r@@90 u@@90))
)))
(assert (forall ((p@@99 T@Field_19687_19688) (v_1@@98 T@FrameType) (q@@91 T@Field_8623_16932) (w@@98 T@FrameType) (r@@91 T@Field_19687_19688) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_13574 p@@99 v_1@@98 q@@91 w@@98) (InsidePredicate_13574_19654 q@@91 w@@98 r@@91 u@@91)) (InsidePredicate_19654_19654 p@@99 v_1@@98 r@@91 u@@91))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_13574 p@@99 v_1@@98 q@@91 w@@98) (InsidePredicate_13574_19654 q@@91 w@@98 r@@91 u@@91))
)))
(assert (forall ((p@@100 T@Field_19687_19688) (v_1@@99 T@FrameType) (q@@92 T@Field_8623_16932) (w@@99 T@FrameType) (r@@92 T@Field_18836_18837) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_13574 p@@100 v_1@@99 q@@92 w@@99) (InsidePredicate_13574_18805 q@@92 w@@99 r@@92 u@@92)) (InsidePredicate_19654_18805 p@@100 v_1@@99 r@@92 u@@92))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_13574 p@@100 v_1@@99 q@@92 w@@99) (InsidePredicate_13574_18805 q@@92 w@@99 r@@92 u@@92))
)))
(assert (forall ((p@@101 T@Field_19687_19688) (v_1@@100 T@FrameType) (q@@93 T@Field_8623_16932) (w@@100 T@FrameType) (r@@93 T@Field_18274_18275) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_13574 p@@101 v_1@@100 q@@93 w@@100) (InsidePredicate_13574_18247 q@@93 w@@100 r@@93 u@@93)) (InsidePredicate_19654_18247 p@@101 v_1@@100 r@@93 u@@93))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_13574 p@@101 v_1@@100 q@@93 w@@100) (InsidePredicate_13574_18247 q@@93 w@@100 r@@93 u@@93))
)))
(assert (forall ((p@@102 T@Field_19687_19688) (v_1@@101 T@FrameType) (q@@94 T@Field_8623_16932) (w@@101 T@FrameType) (r@@94 T@Field_17575_17576) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_13574 p@@102 v_1@@101 q@@94 w@@101) (InsidePredicate_13574_17546 q@@94 w@@101 r@@94 u@@94)) (InsidePredicate_19654_17546 p@@102 v_1@@101 r@@94 u@@94))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_13574 p@@102 v_1@@101 q@@94 w@@101) (InsidePredicate_13574_17546 q@@94 w@@101 r@@94 u@@94))
)))
(assert (forall ((p@@103 T@Field_19687_19688) (v_1@@102 T@FrameType) (q@@95 T@Field_8623_16932) (w@@102 T@FrameType) (r@@95 T@Field_16931_16932) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_13574 p@@103 v_1@@102 q@@95 w@@102) (InsidePredicate_13574_16902 q@@95 w@@102 r@@95 u@@95)) (InsidePredicate_19654_16902 p@@103 v_1@@102 r@@95 u@@95))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_13574 p@@103 v_1@@102 q@@95 w@@102) (InsidePredicate_13574_16902 q@@95 w@@102 r@@95 u@@95))
)))
(assert (forall ((p@@104 T@Field_19687_19688) (v_1@@103 T@FrameType) (q@@96 T@Field_8623_16932) (w@@103 T@FrameType) (r@@96 T@Field_8623_16932) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_19654_13574 p@@104 v_1@@103 q@@96 w@@103) (InsidePredicate_13574_13574 q@@96 w@@103 r@@96 u@@96)) (InsidePredicate_19654_13574 p@@104 v_1@@103 r@@96 u@@96))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19654_13574 p@@104 v_1@@103 q@@96 w@@103) (InsidePredicate_13574_13574 q@@96 w@@103 r@@96 u@@96))
)))
(assert (forall ((p@@105 T@Field_18836_18837) (v_1@@104 T@FrameType) (q@@97 T@Field_20617_20618) (w@@104 T@FrameType) (r@@97 T@Field_20617_20618) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_20588 p@@105 v_1@@104 q@@97 w@@104) (InsidePredicate_20588_20588 q@@97 w@@104 r@@97 u@@97)) (InsidePredicate_18805_20588 p@@105 v_1@@104 r@@97 u@@97))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_20588 p@@105 v_1@@104 q@@97 w@@104) (InsidePredicate_20588_20588 q@@97 w@@104 r@@97 u@@97))
)))
(assert (forall ((p@@106 T@Field_18836_18837) (v_1@@105 T@FrameType) (q@@98 T@Field_20617_20618) (w@@105 T@FrameType) (r@@98 T@Field_19687_19688) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_20588 p@@106 v_1@@105 q@@98 w@@105) (InsidePredicate_20588_19654 q@@98 w@@105 r@@98 u@@98)) (InsidePredicate_18805_19654 p@@106 v_1@@105 r@@98 u@@98))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_20588 p@@106 v_1@@105 q@@98 w@@105) (InsidePredicate_20588_19654 q@@98 w@@105 r@@98 u@@98))
)))
(assert (forall ((p@@107 T@Field_18836_18837) (v_1@@106 T@FrameType) (q@@99 T@Field_20617_20618) (w@@106 T@FrameType) (r@@99 T@Field_18836_18837) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_20588 p@@107 v_1@@106 q@@99 w@@106) (InsidePredicate_20588_18805 q@@99 w@@106 r@@99 u@@99)) (InsidePredicate_18805_18805 p@@107 v_1@@106 r@@99 u@@99))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_20588 p@@107 v_1@@106 q@@99 w@@106) (InsidePredicate_20588_18805 q@@99 w@@106 r@@99 u@@99))
)))
(assert (forall ((p@@108 T@Field_18836_18837) (v_1@@107 T@FrameType) (q@@100 T@Field_20617_20618) (w@@107 T@FrameType) (r@@100 T@Field_18274_18275) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_20588 p@@108 v_1@@107 q@@100 w@@107) (InsidePredicate_20588_18247 q@@100 w@@107 r@@100 u@@100)) (InsidePredicate_18805_18247 p@@108 v_1@@107 r@@100 u@@100))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_20588 p@@108 v_1@@107 q@@100 w@@107) (InsidePredicate_20588_18247 q@@100 w@@107 r@@100 u@@100))
)))
(assert (forall ((p@@109 T@Field_18836_18837) (v_1@@108 T@FrameType) (q@@101 T@Field_20617_20618) (w@@108 T@FrameType) (r@@101 T@Field_17575_17576) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_20588 p@@109 v_1@@108 q@@101 w@@108) (InsidePredicate_20588_17546 q@@101 w@@108 r@@101 u@@101)) (InsidePredicate_18805_17546 p@@109 v_1@@108 r@@101 u@@101))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_20588 p@@109 v_1@@108 q@@101 w@@108) (InsidePredicate_20588_17546 q@@101 w@@108 r@@101 u@@101))
)))
(assert (forall ((p@@110 T@Field_18836_18837) (v_1@@109 T@FrameType) (q@@102 T@Field_20617_20618) (w@@109 T@FrameType) (r@@102 T@Field_16931_16932) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_20588 p@@110 v_1@@109 q@@102 w@@109) (InsidePredicate_20588_16902 q@@102 w@@109 r@@102 u@@102)) (InsidePredicate_18805_16902 p@@110 v_1@@109 r@@102 u@@102))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_20588 p@@110 v_1@@109 q@@102 w@@109) (InsidePredicate_20588_16902 q@@102 w@@109 r@@102 u@@102))
)))
(assert (forall ((p@@111 T@Field_18836_18837) (v_1@@110 T@FrameType) (q@@103 T@Field_20617_20618) (w@@110 T@FrameType) (r@@103 T@Field_8623_16932) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_20588 p@@111 v_1@@110 q@@103 w@@110) (InsidePredicate_20588_13574 q@@103 w@@110 r@@103 u@@103)) (InsidePredicate_18805_13574 p@@111 v_1@@110 r@@103 u@@103))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_20588 p@@111 v_1@@110 q@@103 w@@110) (InsidePredicate_20588_13574 q@@103 w@@110 r@@103 u@@103))
)))
(assert (forall ((p@@112 T@Field_18836_18837) (v_1@@111 T@FrameType) (q@@104 T@Field_19687_19688) (w@@111 T@FrameType) (r@@104 T@Field_20617_20618) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_19654 p@@112 v_1@@111 q@@104 w@@111) (InsidePredicate_19654_20588 q@@104 w@@111 r@@104 u@@104)) (InsidePredicate_18805_20588 p@@112 v_1@@111 r@@104 u@@104))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_19654 p@@112 v_1@@111 q@@104 w@@111) (InsidePredicate_19654_20588 q@@104 w@@111 r@@104 u@@104))
)))
(assert (forall ((p@@113 T@Field_18836_18837) (v_1@@112 T@FrameType) (q@@105 T@Field_19687_19688) (w@@112 T@FrameType) (r@@105 T@Field_19687_19688) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_19654 p@@113 v_1@@112 q@@105 w@@112) (InsidePredicate_19654_19654 q@@105 w@@112 r@@105 u@@105)) (InsidePredicate_18805_19654 p@@113 v_1@@112 r@@105 u@@105))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_19654 p@@113 v_1@@112 q@@105 w@@112) (InsidePredicate_19654_19654 q@@105 w@@112 r@@105 u@@105))
)))
(assert (forall ((p@@114 T@Field_18836_18837) (v_1@@113 T@FrameType) (q@@106 T@Field_19687_19688) (w@@113 T@FrameType) (r@@106 T@Field_18836_18837) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_19654 p@@114 v_1@@113 q@@106 w@@113) (InsidePredicate_19654_18805 q@@106 w@@113 r@@106 u@@106)) (InsidePredicate_18805_18805 p@@114 v_1@@113 r@@106 u@@106))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_19654 p@@114 v_1@@113 q@@106 w@@113) (InsidePredicate_19654_18805 q@@106 w@@113 r@@106 u@@106))
)))
(assert (forall ((p@@115 T@Field_18836_18837) (v_1@@114 T@FrameType) (q@@107 T@Field_19687_19688) (w@@114 T@FrameType) (r@@107 T@Field_18274_18275) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_19654 p@@115 v_1@@114 q@@107 w@@114) (InsidePredicate_19654_18247 q@@107 w@@114 r@@107 u@@107)) (InsidePredicate_18805_18247 p@@115 v_1@@114 r@@107 u@@107))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_19654 p@@115 v_1@@114 q@@107 w@@114) (InsidePredicate_19654_18247 q@@107 w@@114 r@@107 u@@107))
)))
(assert (forall ((p@@116 T@Field_18836_18837) (v_1@@115 T@FrameType) (q@@108 T@Field_19687_19688) (w@@115 T@FrameType) (r@@108 T@Field_17575_17576) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_19654 p@@116 v_1@@115 q@@108 w@@115) (InsidePredicate_19654_17546 q@@108 w@@115 r@@108 u@@108)) (InsidePredicate_18805_17546 p@@116 v_1@@115 r@@108 u@@108))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_19654 p@@116 v_1@@115 q@@108 w@@115) (InsidePredicate_19654_17546 q@@108 w@@115 r@@108 u@@108))
)))
(assert (forall ((p@@117 T@Field_18836_18837) (v_1@@116 T@FrameType) (q@@109 T@Field_19687_19688) (w@@116 T@FrameType) (r@@109 T@Field_16931_16932) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_19654 p@@117 v_1@@116 q@@109 w@@116) (InsidePredicate_19654_16902 q@@109 w@@116 r@@109 u@@109)) (InsidePredicate_18805_16902 p@@117 v_1@@116 r@@109 u@@109))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_19654 p@@117 v_1@@116 q@@109 w@@116) (InsidePredicate_19654_16902 q@@109 w@@116 r@@109 u@@109))
)))
(assert (forall ((p@@118 T@Field_18836_18837) (v_1@@117 T@FrameType) (q@@110 T@Field_19687_19688) (w@@117 T@FrameType) (r@@110 T@Field_8623_16932) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_19654 p@@118 v_1@@117 q@@110 w@@117) (InsidePredicate_19654_13574 q@@110 w@@117 r@@110 u@@110)) (InsidePredicate_18805_13574 p@@118 v_1@@117 r@@110 u@@110))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_19654 p@@118 v_1@@117 q@@110 w@@117) (InsidePredicate_19654_13574 q@@110 w@@117 r@@110 u@@110))
)))
(assert (forall ((p@@119 T@Field_18836_18837) (v_1@@118 T@FrameType) (q@@111 T@Field_18836_18837) (w@@118 T@FrameType) (r@@111 T@Field_20617_20618) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_18805 p@@119 v_1@@118 q@@111 w@@118) (InsidePredicate_18805_20588 q@@111 w@@118 r@@111 u@@111)) (InsidePredicate_18805_20588 p@@119 v_1@@118 r@@111 u@@111))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_18805 p@@119 v_1@@118 q@@111 w@@118) (InsidePredicate_18805_20588 q@@111 w@@118 r@@111 u@@111))
)))
(assert (forall ((p@@120 T@Field_18836_18837) (v_1@@119 T@FrameType) (q@@112 T@Field_18836_18837) (w@@119 T@FrameType) (r@@112 T@Field_19687_19688) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_18805 p@@120 v_1@@119 q@@112 w@@119) (InsidePredicate_18805_19654 q@@112 w@@119 r@@112 u@@112)) (InsidePredicate_18805_19654 p@@120 v_1@@119 r@@112 u@@112))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_18805 p@@120 v_1@@119 q@@112 w@@119) (InsidePredicate_18805_19654 q@@112 w@@119 r@@112 u@@112))
)))
(assert (forall ((p@@121 T@Field_18836_18837) (v_1@@120 T@FrameType) (q@@113 T@Field_18836_18837) (w@@120 T@FrameType) (r@@113 T@Field_18836_18837) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_18805 p@@121 v_1@@120 q@@113 w@@120) (InsidePredicate_18805_18805 q@@113 w@@120 r@@113 u@@113)) (InsidePredicate_18805_18805 p@@121 v_1@@120 r@@113 u@@113))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_18805 p@@121 v_1@@120 q@@113 w@@120) (InsidePredicate_18805_18805 q@@113 w@@120 r@@113 u@@113))
)))
(assert (forall ((p@@122 T@Field_18836_18837) (v_1@@121 T@FrameType) (q@@114 T@Field_18836_18837) (w@@121 T@FrameType) (r@@114 T@Field_18274_18275) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_18805 p@@122 v_1@@121 q@@114 w@@121) (InsidePredicate_18805_18247 q@@114 w@@121 r@@114 u@@114)) (InsidePredicate_18805_18247 p@@122 v_1@@121 r@@114 u@@114))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_18805 p@@122 v_1@@121 q@@114 w@@121) (InsidePredicate_18805_18247 q@@114 w@@121 r@@114 u@@114))
)))
(assert (forall ((p@@123 T@Field_18836_18837) (v_1@@122 T@FrameType) (q@@115 T@Field_18836_18837) (w@@122 T@FrameType) (r@@115 T@Field_17575_17576) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_18805 p@@123 v_1@@122 q@@115 w@@122) (InsidePredicate_18805_17546 q@@115 w@@122 r@@115 u@@115)) (InsidePredicate_18805_17546 p@@123 v_1@@122 r@@115 u@@115))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_18805 p@@123 v_1@@122 q@@115 w@@122) (InsidePredicate_18805_17546 q@@115 w@@122 r@@115 u@@115))
)))
(assert (forall ((p@@124 T@Field_18836_18837) (v_1@@123 T@FrameType) (q@@116 T@Field_18836_18837) (w@@123 T@FrameType) (r@@116 T@Field_16931_16932) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_18805 p@@124 v_1@@123 q@@116 w@@123) (InsidePredicate_18805_16902 q@@116 w@@123 r@@116 u@@116)) (InsidePredicate_18805_16902 p@@124 v_1@@123 r@@116 u@@116))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_18805 p@@124 v_1@@123 q@@116 w@@123) (InsidePredicate_18805_16902 q@@116 w@@123 r@@116 u@@116))
)))
(assert (forall ((p@@125 T@Field_18836_18837) (v_1@@124 T@FrameType) (q@@117 T@Field_18836_18837) (w@@124 T@FrameType) (r@@117 T@Field_8623_16932) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_18805 p@@125 v_1@@124 q@@117 w@@124) (InsidePredicate_18805_13574 q@@117 w@@124 r@@117 u@@117)) (InsidePredicate_18805_13574 p@@125 v_1@@124 r@@117 u@@117))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_18805 p@@125 v_1@@124 q@@117 w@@124) (InsidePredicate_18805_13574 q@@117 w@@124 r@@117 u@@117))
)))
(assert (forall ((p@@126 T@Field_18836_18837) (v_1@@125 T@FrameType) (q@@118 T@Field_18274_18275) (w@@125 T@FrameType) (r@@118 T@Field_20617_20618) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_18247 p@@126 v_1@@125 q@@118 w@@125) (InsidePredicate_18247_20588 q@@118 w@@125 r@@118 u@@118)) (InsidePredicate_18805_20588 p@@126 v_1@@125 r@@118 u@@118))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_18247 p@@126 v_1@@125 q@@118 w@@125) (InsidePredicate_18247_20588 q@@118 w@@125 r@@118 u@@118))
)))
(assert (forall ((p@@127 T@Field_18836_18837) (v_1@@126 T@FrameType) (q@@119 T@Field_18274_18275) (w@@126 T@FrameType) (r@@119 T@Field_19687_19688) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_18247 p@@127 v_1@@126 q@@119 w@@126) (InsidePredicate_18247_19654 q@@119 w@@126 r@@119 u@@119)) (InsidePredicate_18805_19654 p@@127 v_1@@126 r@@119 u@@119))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_18247 p@@127 v_1@@126 q@@119 w@@126) (InsidePredicate_18247_19654 q@@119 w@@126 r@@119 u@@119))
)))
(assert (forall ((p@@128 T@Field_18836_18837) (v_1@@127 T@FrameType) (q@@120 T@Field_18274_18275) (w@@127 T@FrameType) (r@@120 T@Field_18836_18837) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_18247 p@@128 v_1@@127 q@@120 w@@127) (InsidePredicate_18247_18805 q@@120 w@@127 r@@120 u@@120)) (InsidePredicate_18805_18805 p@@128 v_1@@127 r@@120 u@@120))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_18247 p@@128 v_1@@127 q@@120 w@@127) (InsidePredicate_18247_18805 q@@120 w@@127 r@@120 u@@120))
)))
(assert (forall ((p@@129 T@Field_18836_18837) (v_1@@128 T@FrameType) (q@@121 T@Field_18274_18275) (w@@128 T@FrameType) (r@@121 T@Field_18274_18275) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_18247 p@@129 v_1@@128 q@@121 w@@128) (InsidePredicate_18247_18247 q@@121 w@@128 r@@121 u@@121)) (InsidePredicate_18805_18247 p@@129 v_1@@128 r@@121 u@@121))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_18247 p@@129 v_1@@128 q@@121 w@@128) (InsidePredicate_18247_18247 q@@121 w@@128 r@@121 u@@121))
)))
(assert (forall ((p@@130 T@Field_18836_18837) (v_1@@129 T@FrameType) (q@@122 T@Field_18274_18275) (w@@129 T@FrameType) (r@@122 T@Field_17575_17576) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_18247 p@@130 v_1@@129 q@@122 w@@129) (InsidePredicate_18247_17546 q@@122 w@@129 r@@122 u@@122)) (InsidePredicate_18805_17546 p@@130 v_1@@129 r@@122 u@@122))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_18247 p@@130 v_1@@129 q@@122 w@@129) (InsidePredicate_18247_17546 q@@122 w@@129 r@@122 u@@122))
)))
(assert (forall ((p@@131 T@Field_18836_18837) (v_1@@130 T@FrameType) (q@@123 T@Field_18274_18275) (w@@130 T@FrameType) (r@@123 T@Field_16931_16932) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_18247 p@@131 v_1@@130 q@@123 w@@130) (InsidePredicate_18247_16902 q@@123 w@@130 r@@123 u@@123)) (InsidePredicate_18805_16902 p@@131 v_1@@130 r@@123 u@@123))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_18247 p@@131 v_1@@130 q@@123 w@@130) (InsidePredicate_18247_16902 q@@123 w@@130 r@@123 u@@123))
)))
(assert (forall ((p@@132 T@Field_18836_18837) (v_1@@131 T@FrameType) (q@@124 T@Field_18274_18275) (w@@131 T@FrameType) (r@@124 T@Field_8623_16932) (u@@124 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_18247 p@@132 v_1@@131 q@@124 w@@131) (InsidePredicate_18247_13574 q@@124 w@@131 r@@124 u@@124)) (InsidePredicate_18805_13574 p@@132 v_1@@131 r@@124 u@@124))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_18247 p@@132 v_1@@131 q@@124 w@@131) (InsidePredicate_18247_13574 q@@124 w@@131 r@@124 u@@124))
)))
(assert (forall ((p@@133 T@Field_18836_18837) (v_1@@132 T@FrameType) (q@@125 T@Field_17575_17576) (w@@132 T@FrameType) (r@@125 T@Field_20617_20618) (u@@125 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_17546 p@@133 v_1@@132 q@@125 w@@132) (InsidePredicate_17546_20588 q@@125 w@@132 r@@125 u@@125)) (InsidePredicate_18805_20588 p@@133 v_1@@132 r@@125 u@@125))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_17546 p@@133 v_1@@132 q@@125 w@@132) (InsidePredicate_17546_20588 q@@125 w@@132 r@@125 u@@125))
)))
(assert (forall ((p@@134 T@Field_18836_18837) (v_1@@133 T@FrameType) (q@@126 T@Field_17575_17576) (w@@133 T@FrameType) (r@@126 T@Field_19687_19688) (u@@126 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_17546 p@@134 v_1@@133 q@@126 w@@133) (InsidePredicate_17546_19654 q@@126 w@@133 r@@126 u@@126)) (InsidePredicate_18805_19654 p@@134 v_1@@133 r@@126 u@@126))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_17546 p@@134 v_1@@133 q@@126 w@@133) (InsidePredicate_17546_19654 q@@126 w@@133 r@@126 u@@126))
)))
(assert (forall ((p@@135 T@Field_18836_18837) (v_1@@134 T@FrameType) (q@@127 T@Field_17575_17576) (w@@134 T@FrameType) (r@@127 T@Field_18836_18837) (u@@127 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_17546 p@@135 v_1@@134 q@@127 w@@134) (InsidePredicate_17546_18805 q@@127 w@@134 r@@127 u@@127)) (InsidePredicate_18805_18805 p@@135 v_1@@134 r@@127 u@@127))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_17546 p@@135 v_1@@134 q@@127 w@@134) (InsidePredicate_17546_18805 q@@127 w@@134 r@@127 u@@127))
)))
(assert (forall ((p@@136 T@Field_18836_18837) (v_1@@135 T@FrameType) (q@@128 T@Field_17575_17576) (w@@135 T@FrameType) (r@@128 T@Field_18274_18275) (u@@128 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_17546 p@@136 v_1@@135 q@@128 w@@135) (InsidePredicate_17546_18247 q@@128 w@@135 r@@128 u@@128)) (InsidePredicate_18805_18247 p@@136 v_1@@135 r@@128 u@@128))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_17546 p@@136 v_1@@135 q@@128 w@@135) (InsidePredicate_17546_18247 q@@128 w@@135 r@@128 u@@128))
)))
(assert (forall ((p@@137 T@Field_18836_18837) (v_1@@136 T@FrameType) (q@@129 T@Field_17575_17576) (w@@136 T@FrameType) (r@@129 T@Field_17575_17576) (u@@129 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_17546 p@@137 v_1@@136 q@@129 w@@136) (InsidePredicate_17546_17546 q@@129 w@@136 r@@129 u@@129)) (InsidePredicate_18805_17546 p@@137 v_1@@136 r@@129 u@@129))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_17546 p@@137 v_1@@136 q@@129 w@@136) (InsidePredicate_17546_17546 q@@129 w@@136 r@@129 u@@129))
)))
(assert (forall ((p@@138 T@Field_18836_18837) (v_1@@137 T@FrameType) (q@@130 T@Field_17575_17576) (w@@137 T@FrameType) (r@@130 T@Field_16931_16932) (u@@130 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_17546 p@@138 v_1@@137 q@@130 w@@137) (InsidePredicate_17546_16902 q@@130 w@@137 r@@130 u@@130)) (InsidePredicate_18805_16902 p@@138 v_1@@137 r@@130 u@@130))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_17546 p@@138 v_1@@137 q@@130 w@@137) (InsidePredicate_17546_16902 q@@130 w@@137 r@@130 u@@130))
)))
(assert (forall ((p@@139 T@Field_18836_18837) (v_1@@138 T@FrameType) (q@@131 T@Field_17575_17576) (w@@138 T@FrameType) (r@@131 T@Field_8623_16932) (u@@131 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_17546 p@@139 v_1@@138 q@@131 w@@138) (InsidePredicate_17546_13574 q@@131 w@@138 r@@131 u@@131)) (InsidePredicate_18805_13574 p@@139 v_1@@138 r@@131 u@@131))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_17546 p@@139 v_1@@138 q@@131 w@@138) (InsidePredicate_17546_13574 q@@131 w@@138 r@@131 u@@131))
)))
(assert (forall ((p@@140 T@Field_18836_18837) (v_1@@139 T@FrameType) (q@@132 T@Field_16931_16932) (w@@139 T@FrameType) (r@@132 T@Field_20617_20618) (u@@132 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_16902 p@@140 v_1@@139 q@@132 w@@139) (InsidePredicate_16902_20588 q@@132 w@@139 r@@132 u@@132)) (InsidePredicate_18805_20588 p@@140 v_1@@139 r@@132 u@@132))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_16902 p@@140 v_1@@139 q@@132 w@@139) (InsidePredicate_16902_20588 q@@132 w@@139 r@@132 u@@132))
)))
(assert (forall ((p@@141 T@Field_18836_18837) (v_1@@140 T@FrameType) (q@@133 T@Field_16931_16932) (w@@140 T@FrameType) (r@@133 T@Field_19687_19688) (u@@133 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_16902 p@@141 v_1@@140 q@@133 w@@140) (InsidePredicate_16902_19654 q@@133 w@@140 r@@133 u@@133)) (InsidePredicate_18805_19654 p@@141 v_1@@140 r@@133 u@@133))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_16902 p@@141 v_1@@140 q@@133 w@@140) (InsidePredicate_16902_19654 q@@133 w@@140 r@@133 u@@133))
)))
(assert (forall ((p@@142 T@Field_18836_18837) (v_1@@141 T@FrameType) (q@@134 T@Field_16931_16932) (w@@141 T@FrameType) (r@@134 T@Field_18836_18837) (u@@134 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_16902 p@@142 v_1@@141 q@@134 w@@141) (InsidePredicate_16902_18805 q@@134 w@@141 r@@134 u@@134)) (InsidePredicate_18805_18805 p@@142 v_1@@141 r@@134 u@@134))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_16902 p@@142 v_1@@141 q@@134 w@@141) (InsidePredicate_16902_18805 q@@134 w@@141 r@@134 u@@134))
)))
(assert (forall ((p@@143 T@Field_18836_18837) (v_1@@142 T@FrameType) (q@@135 T@Field_16931_16932) (w@@142 T@FrameType) (r@@135 T@Field_18274_18275) (u@@135 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_16902 p@@143 v_1@@142 q@@135 w@@142) (InsidePredicate_16902_18247 q@@135 w@@142 r@@135 u@@135)) (InsidePredicate_18805_18247 p@@143 v_1@@142 r@@135 u@@135))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_16902 p@@143 v_1@@142 q@@135 w@@142) (InsidePredicate_16902_18247 q@@135 w@@142 r@@135 u@@135))
)))
(assert (forall ((p@@144 T@Field_18836_18837) (v_1@@143 T@FrameType) (q@@136 T@Field_16931_16932) (w@@143 T@FrameType) (r@@136 T@Field_17575_17576) (u@@136 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_16902 p@@144 v_1@@143 q@@136 w@@143) (InsidePredicate_16902_17546 q@@136 w@@143 r@@136 u@@136)) (InsidePredicate_18805_17546 p@@144 v_1@@143 r@@136 u@@136))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_16902 p@@144 v_1@@143 q@@136 w@@143) (InsidePredicate_16902_17546 q@@136 w@@143 r@@136 u@@136))
)))
(assert (forall ((p@@145 T@Field_18836_18837) (v_1@@144 T@FrameType) (q@@137 T@Field_16931_16932) (w@@144 T@FrameType) (r@@137 T@Field_16931_16932) (u@@137 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_16902 p@@145 v_1@@144 q@@137 w@@144) (InsidePredicate_16902_16902 q@@137 w@@144 r@@137 u@@137)) (InsidePredicate_18805_16902 p@@145 v_1@@144 r@@137 u@@137))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_16902 p@@145 v_1@@144 q@@137 w@@144) (InsidePredicate_16902_16902 q@@137 w@@144 r@@137 u@@137))
)))
(assert (forall ((p@@146 T@Field_18836_18837) (v_1@@145 T@FrameType) (q@@138 T@Field_16931_16932) (w@@145 T@FrameType) (r@@138 T@Field_8623_16932) (u@@138 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_16902 p@@146 v_1@@145 q@@138 w@@145) (InsidePredicate_16902_13574 q@@138 w@@145 r@@138 u@@138)) (InsidePredicate_18805_13574 p@@146 v_1@@145 r@@138 u@@138))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_16902 p@@146 v_1@@145 q@@138 w@@145) (InsidePredicate_16902_13574 q@@138 w@@145 r@@138 u@@138))
)))
(assert (forall ((p@@147 T@Field_18836_18837) (v_1@@146 T@FrameType) (q@@139 T@Field_8623_16932) (w@@146 T@FrameType) (r@@139 T@Field_20617_20618) (u@@139 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_13574 p@@147 v_1@@146 q@@139 w@@146) (InsidePredicate_13574_20588 q@@139 w@@146 r@@139 u@@139)) (InsidePredicate_18805_20588 p@@147 v_1@@146 r@@139 u@@139))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_13574 p@@147 v_1@@146 q@@139 w@@146) (InsidePredicate_13574_20588 q@@139 w@@146 r@@139 u@@139))
)))
(assert (forall ((p@@148 T@Field_18836_18837) (v_1@@147 T@FrameType) (q@@140 T@Field_8623_16932) (w@@147 T@FrameType) (r@@140 T@Field_19687_19688) (u@@140 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_13574 p@@148 v_1@@147 q@@140 w@@147) (InsidePredicate_13574_19654 q@@140 w@@147 r@@140 u@@140)) (InsidePredicate_18805_19654 p@@148 v_1@@147 r@@140 u@@140))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_13574 p@@148 v_1@@147 q@@140 w@@147) (InsidePredicate_13574_19654 q@@140 w@@147 r@@140 u@@140))
)))
(assert (forall ((p@@149 T@Field_18836_18837) (v_1@@148 T@FrameType) (q@@141 T@Field_8623_16932) (w@@148 T@FrameType) (r@@141 T@Field_18836_18837) (u@@141 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_13574 p@@149 v_1@@148 q@@141 w@@148) (InsidePredicate_13574_18805 q@@141 w@@148 r@@141 u@@141)) (InsidePredicate_18805_18805 p@@149 v_1@@148 r@@141 u@@141))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_13574 p@@149 v_1@@148 q@@141 w@@148) (InsidePredicate_13574_18805 q@@141 w@@148 r@@141 u@@141))
)))
(assert (forall ((p@@150 T@Field_18836_18837) (v_1@@149 T@FrameType) (q@@142 T@Field_8623_16932) (w@@149 T@FrameType) (r@@142 T@Field_18274_18275) (u@@142 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_13574 p@@150 v_1@@149 q@@142 w@@149) (InsidePredicate_13574_18247 q@@142 w@@149 r@@142 u@@142)) (InsidePredicate_18805_18247 p@@150 v_1@@149 r@@142 u@@142))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_13574 p@@150 v_1@@149 q@@142 w@@149) (InsidePredicate_13574_18247 q@@142 w@@149 r@@142 u@@142))
)))
(assert (forall ((p@@151 T@Field_18836_18837) (v_1@@150 T@FrameType) (q@@143 T@Field_8623_16932) (w@@150 T@FrameType) (r@@143 T@Field_17575_17576) (u@@143 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_13574 p@@151 v_1@@150 q@@143 w@@150) (InsidePredicate_13574_17546 q@@143 w@@150 r@@143 u@@143)) (InsidePredicate_18805_17546 p@@151 v_1@@150 r@@143 u@@143))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_13574 p@@151 v_1@@150 q@@143 w@@150) (InsidePredicate_13574_17546 q@@143 w@@150 r@@143 u@@143))
)))
(assert (forall ((p@@152 T@Field_18836_18837) (v_1@@151 T@FrameType) (q@@144 T@Field_8623_16932) (w@@151 T@FrameType) (r@@144 T@Field_16931_16932) (u@@144 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_13574 p@@152 v_1@@151 q@@144 w@@151) (InsidePredicate_13574_16902 q@@144 w@@151 r@@144 u@@144)) (InsidePredicate_18805_16902 p@@152 v_1@@151 r@@144 u@@144))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_13574 p@@152 v_1@@151 q@@144 w@@151) (InsidePredicate_13574_16902 q@@144 w@@151 r@@144 u@@144))
)))
(assert (forall ((p@@153 T@Field_18836_18837) (v_1@@152 T@FrameType) (q@@145 T@Field_8623_16932) (w@@152 T@FrameType) (r@@145 T@Field_8623_16932) (u@@145 T@FrameType) ) (!  (=> (and (InsidePredicate_18805_13574 p@@153 v_1@@152 q@@145 w@@152) (InsidePredicate_13574_13574 q@@145 w@@152 r@@145 u@@145)) (InsidePredicate_18805_13574 p@@153 v_1@@152 r@@145 u@@145))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18805_13574 p@@153 v_1@@152 q@@145 w@@152) (InsidePredicate_13574_13574 q@@145 w@@152 r@@145 u@@145))
)))
(assert (forall ((p@@154 T@Field_18274_18275) (v_1@@153 T@FrameType) (q@@146 T@Field_20617_20618) (w@@153 T@FrameType) (r@@146 T@Field_20617_20618) (u@@146 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_20588 p@@154 v_1@@153 q@@146 w@@153) (InsidePredicate_20588_20588 q@@146 w@@153 r@@146 u@@146)) (InsidePredicate_18247_20588 p@@154 v_1@@153 r@@146 u@@146))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_20588 p@@154 v_1@@153 q@@146 w@@153) (InsidePredicate_20588_20588 q@@146 w@@153 r@@146 u@@146))
)))
(assert (forall ((p@@155 T@Field_18274_18275) (v_1@@154 T@FrameType) (q@@147 T@Field_20617_20618) (w@@154 T@FrameType) (r@@147 T@Field_19687_19688) (u@@147 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_20588 p@@155 v_1@@154 q@@147 w@@154) (InsidePredicate_20588_19654 q@@147 w@@154 r@@147 u@@147)) (InsidePredicate_18247_19654 p@@155 v_1@@154 r@@147 u@@147))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_20588 p@@155 v_1@@154 q@@147 w@@154) (InsidePredicate_20588_19654 q@@147 w@@154 r@@147 u@@147))
)))
(assert (forall ((p@@156 T@Field_18274_18275) (v_1@@155 T@FrameType) (q@@148 T@Field_20617_20618) (w@@155 T@FrameType) (r@@148 T@Field_18836_18837) (u@@148 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_20588 p@@156 v_1@@155 q@@148 w@@155) (InsidePredicate_20588_18805 q@@148 w@@155 r@@148 u@@148)) (InsidePredicate_18247_18805 p@@156 v_1@@155 r@@148 u@@148))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_20588 p@@156 v_1@@155 q@@148 w@@155) (InsidePredicate_20588_18805 q@@148 w@@155 r@@148 u@@148))
)))
(assert (forall ((p@@157 T@Field_18274_18275) (v_1@@156 T@FrameType) (q@@149 T@Field_20617_20618) (w@@156 T@FrameType) (r@@149 T@Field_18274_18275) (u@@149 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_20588 p@@157 v_1@@156 q@@149 w@@156) (InsidePredicate_20588_18247 q@@149 w@@156 r@@149 u@@149)) (InsidePredicate_18247_18247 p@@157 v_1@@156 r@@149 u@@149))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_20588 p@@157 v_1@@156 q@@149 w@@156) (InsidePredicate_20588_18247 q@@149 w@@156 r@@149 u@@149))
)))
(assert (forall ((p@@158 T@Field_18274_18275) (v_1@@157 T@FrameType) (q@@150 T@Field_20617_20618) (w@@157 T@FrameType) (r@@150 T@Field_17575_17576) (u@@150 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_20588 p@@158 v_1@@157 q@@150 w@@157) (InsidePredicate_20588_17546 q@@150 w@@157 r@@150 u@@150)) (InsidePredicate_18247_17546 p@@158 v_1@@157 r@@150 u@@150))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_20588 p@@158 v_1@@157 q@@150 w@@157) (InsidePredicate_20588_17546 q@@150 w@@157 r@@150 u@@150))
)))
(assert (forall ((p@@159 T@Field_18274_18275) (v_1@@158 T@FrameType) (q@@151 T@Field_20617_20618) (w@@158 T@FrameType) (r@@151 T@Field_16931_16932) (u@@151 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_20588 p@@159 v_1@@158 q@@151 w@@158) (InsidePredicate_20588_16902 q@@151 w@@158 r@@151 u@@151)) (InsidePredicate_18247_16902 p@@159 v_1@@158 r@@151 u@@151))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_20588 p@@159 v_1@@158 q@@151 w@@158) (InsidePredicate_20588_16902 q@@151 w@@158 r@@151 u@@151))
)))
(assert (forall ((p@@160 T@Field_18274_18275) (v_1@@159 T@FrameType) (q@@152 T@Field_20617_20618) (w@@159 T@FrameType) (r@@152 T@Field_8623_16932) (u@@152 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_20588 p@@160 v_1@@159 q@@152 w@@159) (InsidePredicate_20588_13574 q@@152 w@@159 r@@152 u@@152)) (InsidePredicate_18247_13574 p@@160 v_1@@159 r@@152 u@@152))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_20588 p@@160 v_1@@159 q@@152 w@@159) (InsidePredicate_20588_13574 q@@152 w@@159 r@@152 u@@152))
)))
(assert (forall ((p@@161 T@Field_18274_18275) (v_1@@160 T@FrameType) (q@@153 T@Field_19687_19688) (w@@160 T@FrameType) (r@@153 T@Field_20617_20618) (u@@153 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_19654 p@@161 v_1@@160 q@@153 w@@160) (InsidePredicate_19654_20588 q@@153 w@@160 r@@153 u@@153)) (InsidePredicate_18247_20588 p@@161 v_1@@160 r@@153 u@@153))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_19654 p@@161 v_1@@160 q@@153 w@@160) (InsidePredicate_19654_20588 q@@153 w@@160 r@@153 u@@153))
)))
(assert (forall ((p@@162 T@Field_18274_18275) (v_1@@161 T@FrameType) (q@@154 T@Field_19687_19688) (w@@161 T@FrameType) (r@@154 T@Field_19687_19688) (u@@154 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_19654 p@@162 v_1@@161 q@@154 w@@161) (InsidePredicate_19654_19654 q@@154 w@@161 r@@154 u@@154)) (InsidePredicate_18247_19654 p@@162 v_1@@161 r@@154 u@@154))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_19654 p@@162 v_1@@161 q@@154 w@@161) (InsidePredicate_19654_19654 q@@154 w@@161 r@@154 u@@154))
)))
(assert (forall ((p@@163 T@Field_18274_18275) (v_1@@162 T@FrameType) (q@@155 T@Field_19687_19688) (w@@162 T@FrameType) (r@@155 T@Field_18836_18837) (u@@155 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_19654 p@@163 v_1@@162 q@@155 w@@162) (InsidePredicate_19654_18805 q@@155 w@@162 r@@155 u@@155)) (InsidePredicate_18247_18805 p@@163 v_1@@162 r@@155 u@@155))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_19654 p@@163 v_1@@162 q@@155 w@@162) (InsidePredicate_19654_18805 q@@155 w@@162 r@@155 u@@155))
)))
(assert (forall ((p@@164 T@Field_18274_18275) (v_1@@163 T@FrameType) (q@@156 T@Field_19687_19688) (w@@163 T@FrameType) (r@@156 T@Field_18274_18275) (u@@156 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_19654 p@@164 v_1@@163 q@@156 w@@163) (InsidePredicate_19654_18247 q@@156 w@@163 r@@156 u@@156)) (InsidePredicate_18247_18247 p@@164 v_1@@163 r@@156 u@@156))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_19654 p@@164 v_1@@163 q@@156 w@@163) (InsidePredicate_19654_18247 q@@156 w@@163 r@@156 u@@156))
)))
(assert (forall ((p@@165 T@Field_18274_18275) (v_1@@164 T@FrameType) (q@@157 T@Field_19687_19688) (w@@164 T@FrameType) (r@@157 T@Field_17575_17576) (u@@157 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_19654 p@@165 v_1@@164 q@@157 w@@164) (InsidePredicate_19654_17546 q@@157 w@@164 r@@157 u@@157)) (InsidePredicate_18247_17546 p@@165 v_1@@164 r@@157 u@@157))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_19654 p@@165 v_1@@164 q@@157 w@@164) (InsidePredicate_19654_17546 q@@157 w@@164 r@@157 u@@157))
)))
(assert (forall ((p@@166 T@Field_18274_18275) (v_1@@165 T@FrameType) (q@@158 T@Field_19687_19688) (w@@165 T@FrameType) (r@@158 T@Field_16931_16932) (u@@158 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_19654 p@@166 v_1@@165 q@@158 w@@165) (InsidePredicate_19654_16902 q@@158 w@@165 r@@158 u@@158)) (InsidePredicate_18247_16902 p@@166 v_1@@165 r@@158 u@@158))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_19654 p@@166 v_1@@165 q@@158 w@@165) (InsidePredicate_19654_16902 q@@158 w@@165 r@@158 u@@158))
)))
(assert (forall ((p@@167 T@Field_18274_18275) (v_1@@166 T@FrameType) (q@@159 T@Field_19687_19688) (w@@166 T@FrameType) (r@@159 T@Field_8623_16932) (u@@159 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_19654 p@@167 v_1@@166 q@@159 w@@166) (InsidePredicate_19654_13574 q@@159 w@@166 r@@159 u@@159)) (InsidePredicate_18247_13574 p@@167 v_1@@166 r@@159 u@@159))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_19654 p@@167 v_1@@166 q@@159 w@@166) (InsidePredicate_19654_13574 q@@159 w@@166 r@@159 u@@159))
)))
(assert (forall ((p@@168 T@Field_18274_18275) (v_1@@167 T@FrameType) (q@@160 T@Field_18836_18837) (w@@167 T@FrameType) (r@@160 T@Field_20617_20618) (u@@160 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_18805 p@@168 v_1@@167 q@@160 w@@167) (InsidePredicate_18805_20588 q@@160 w@@167 r@@160 u@@160)) (InsidePredicate_18247_20588 p@@168 v_1@@167 r@@160 u@@160))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_18805 p@@168 v_1@@167 q@@160 w@@167) (InsidePredicate_18805_20588 q@@160 w@@167 r@@160 u@@160))
)))
(assert (forall ((p@@169 T@Field_18274_18275) (v_1@@168 T@FrameType) (q@@161 T@Field_18836_18837) (w@@168 T@FrameType) (r@@161 T@Field_19687_19688) (u@@161 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_18805 p@@169 v_1@@168 q@@161 w@@168) (InsidePredicate_18805_19654 q@@161 w@@168 r@@161 u@@161)) (InsidePredicate_18247_19654 p@@169 v_1@@168 r@@161 u@@161))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_18805 p@@169 v_1@@168 q@@161 w@@168) (InsidePredicate_18805_19654 q@@161 w@@168 r@@161 u@@161))
)))
(assert (forall ((p@@170 T@Field_18274_18275) (v_1@@169 T@FrameType) (q@@162 T@Field_18836_18837) (w@@169 T@FrameType) (r@@162 T@Field_18836_18837) (u@@162 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_18805 p@@170 v_1@@169 q@@162 w@@169) (InsidePredicate_18805_18805 q@@162 w@@169 r@@162 u@@162)) (InsidePredicate_18247_18805 p@@170 v_1@@169 r@@162 u@@162))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_18805 p@@170 v_1@@169 q@@162 w@@169) (InsidePredicate_18805_18805 q@@162 w@@169 r@@162 u@@162))
)))
(assert (forall ((p@@171 T@Field_18274_18275) (v_1@@170 T@FrameType) (q@@163 T@Field_18836_18837) (w@@170 T@FrameType) (r@@163 T@Field_18274_18275) (u@@163 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_18805 p@@171 v_1@@170 q@@163 w@@170) (InsidePredicate_18805_18247 q@@163 w@@170 r@@163 u@@163)) (InsidePredicate_18247_18247 p@@171 v_1@@170 r@@163 u@@163))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_18805 p@@171 v_1@@170 q@@163 w@@170) (InsidePredicate_18805_18247 q@@163 w@@170 r@@163 u@@163))
)))
(assert (forall ((p@@172 T@Field_18274_18275) (v_1@@171 T@FrameType) (q@@164 T@Field_18836_18837) (w@@171 T@FrameType) (r@@164 T@Field_17575_17576) (u@@164 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_18805 p@@172 v_1@@171 q@@164 w@@171) (InsidePredicate_18805_17546 q@@164 w@@171 r@@164 u@@164)) (InsidePredicate_18247_17546 p@@172 v_1@@171 r@@164 u@@164))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_18805 p@@172 v_1@@171 q@@164 w@@171) (InsidePredicate_18805_17546 q@@164 w@@171 r@@164 u@@164))
)))
(assert (forall ((p@@173 T@Field_18274_18275) (v_1@@172 T@FrameType) (q@@165 T@Field_18836_18837) (w@@172 T@FrameType) (r@@165 T@Field_16931_16932) (u@@165 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_18805 p@@173 v_1@@172 q@@165 w@@172) (InsidePredicate_18805_16902 q@@165 w@@172 r@@165 u@@165)) (InsidePredicate_18247_16902 p@@173 v_1@@172 r@@165 u@@165))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_18805 p@@173 v_1@@172 q@@165 w@@172) (InsidePredicate_18805_16902 q@@165 w@@172 r@@165 u@@165))
)))
(assert (forall ((p@@174 T@Field_18274_18275) (v_1@@173 T@FrameType) (q@@166 T@Field_18836_18837) (w@@173 T@FrameType) (r@@166 T@Field_8623_16932) (u@@166 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_18805 p@@174 v_1@@173 q@@166 w@@173) (InsidePredicate_18805_13574 q@@166 w@@173 r@@166 u@@166)) (InsidePredicate_18247_13574 p@@174 v_1@@173 r@@166 u@@166))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_18805 p@@174 v_1@@173 q@@166 w@@173) (InsidePredicate_18805_13574 q@@166 w@@173 r@@166 u@@166))
)))
(assert (forall ((p@@175 T@Field_18274_18275) (v_1@@174 T@FrameType) (q@@167 T@Field_18274_18275) (w@@174 T@FrameType) (r@@167 T@Field_20617_20618) (u@@167 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_18247 p@@175 v_1@@174 q@@167 w@@174) (InsidePredicate_18247_20588 q@@167 w@@174 r@@167 u@@167)) (InsidePredicate_18247_20588 p@@175 v_1@@174 r@@167 u@@167))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_18247 p@@175 v_1@@174 q@@167 w@@174) (InsidePredicate_18247_20588 q@@167 w@@174 r@@167 u@@167))
)))
(assert (forall ((p@@176 T@Field_18274_18275) (v_1@@175 T@FrameType) (q@@168 T@Field_18274_18275) (w@@175 T@FrameType) (r@@168 T@Field_19687_19688) (u@@168 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_18247 p@@176 v_1@@175 q@@168 w@@175) (InsidePredicate_18247_19654 q@@168 w@@175 r@@168 u@@168)) (InsidePredicate_18247_19654 p@@176 v_1@@175 r@@168 u@@168))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_18247 p@@176 v_1@@175 q@@168 w@@175) (InsidePredicate_18247_19654 q@@168 w@@175 r@@168 u@@168))
)))
(assert (forall ((p@@177 T@Field_18274_18275) (v_1@@176 T@FrameType) (q@@169 T@Field_18274_18275) (w@@176 T@FrameType) (r@@169 T@Field_18836_18837) (u@@169 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_18247 p@@177 v_1@@176 q@@169 w@@176) (InsidePredicate_18247_18805 q@@169 w@@176 r@@169 u@@169)) (InsidePredicate_18247_18805 p@@177 v_1@@176 r@@169 u@@169))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_18247 p@@177 v_1@@176 q@@169 w@@176) (InsidePredicate_18247_18805 q@@169 w@@176 r@@169 u@@169))
)))
(assert (forall ((p@@178 T@Field_18274_18275) (v_1@@177 T@FrameType) (q@@170 T@Field_18274_18275) (w@@177 T@FrameType) (r@@170 T@Field_18274_18275) (u@@170 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_18247 p@@178 v_1@@177 q@@170 w@@177) (InsidePredicate_18247_18247 q@@170 w@@177 r@@170 u@@170)) (InsidePredicate_18247_18247 p@@178 v_1@@177 r@@170 u@@170))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_18247 p@@178 v_1@@177 q@@170 w@@177) (InsidePredicate_18247_18247 q@@170 w@@177 r@@170 u@@170))
)))
(assert (forall ((p@@179 T@Field_18274_18275) (v_1@@178 T@FrameType) (q@@171 T@Field_18274_18275) (w@@178 T@FrameType) (r@@171 T@Field_17575_17576) (u@@171 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_18247 p@@179 v_1@@178 q@@171 w@@178) (InsidePredicate_18247_17546 q@@171 w@@178 r@@171 u@@171)) (InsidePredicate_18247_17546 p@@179 v_1@@178 r@@171 u@@171))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_18247 p@@179 v_1@@178 q@@171 w@@178) (InsidePredicate_18247_17546 q@@171 w@@178 r@@171 u@@171))
)))
(assert (forall ((p@@180 T@Field_18274_18275) (v_1@@179 T@FrameType) (q@@172 T@Field_18274_18275) (w@@179 T@FrameType) (r@@172 T@Field_16931_16932) (u@@172 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_18247 p@@180 v_1@@179 q@@172 w@@179) (InsidePredicate_18247_16902 q@@172 w@@179 r@@172 u@@172)) (InsidePredicate_18247_16902 p@@180 v_1@@179 r@@172 u@@172))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_18247 p@@180 v_1@@179 q@@172 w@@179) (InsidePredicate_18247_16902 q@@172 w@@179 r@@172 u@@172))
)))
(assert (forall ((p@@181 T@Field_18274_18275) (v_1@@180 T@FrameType) (q@@173 T@Field_18274_18275) (w@@180 T@FrameType) (r@@173 T@Field_8623_16932) (u@@173 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_18247 p@@181 v_1@@180 q@@173 w@@180) (InsidePredicate_18247_13574 q@@173 w@@180 r@@173 u@@173)) (InsidePredicate_18247_13574 p@@181 v_1@@180 r@@173 u@@173))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_18247 p@@181 v_1@@180 q@@173 w@@180) (InsidePredicate_18247_13574 q@@173 w@@180 r@@173 u@@173))
)))
(assert (forall ((p@@182 T@Field_18274_18275) (v_1@@181 T@FrameType) (q@@174 T@Field_17575_17576) (w@@181 T@FrameType) (r@@174 T@Field_20617_20618) (u@@174 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_17546 p@@182 v_1@@181 q@@174 w@@181) (InsidePredicate_17546_20588 q@@174 w@@181 r@@174 u@@174)) (InsidePredicate_18247_20588 p@@182 v_1@@181 r@@174 u@@174))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_17546 p@@182 v_1@@181 q@@174 w@@181) (InsidePredicate_17546_20588 q@@174 w@@181 r@@174 u@@174))
)))
(assert (forall ((p@@183 T@Field_18274_18275) (v_1@@182 T@FrameType) (q@@175 T@Field_17575_17576) (w@@182 T@FrameType) (r@@175 T@Field_19687_19688) (u@@175 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_17546 p@@183 v_1@@182 q@@175 w@@182) (InsidePredicate_17546_19654 q@@175 w@@182 r@@175 u@@175)) (InsidePredicate_18247_19654 p@@183 v_1@@182 r@@175 u@@175))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_17546 p@@183 v_1@@182 q@@175 w@@182) (InsidePredicate_17546_19654 q@@175 w@@182 r@@175 u@@175))
)))
(assert (forall ((p@@184 T@Field_18274_18275) (v_1@@183 T@FrameType) (q@@176 T@Field_17575_17576) (w@@183 T@FrameType) (r@@176 T@Field_18836_18837) (u@@176 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_17546 p@@184 v_1@@183 q@@176 w@@183) (InsidePredicate_17546_18805 q@@176 w@@183 r@@176 u@@176)) (InsidePredicate_18247_18805 p@@184 v_1@@183 r@@176 u@@176))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_17546 p@@184 v_1@@183 q@@176 w@@183) (InsidePredicate_17546_18805 q@@176 w@@183 r@@176 u@@176))
)))
(assert (forall ((p@@185 T@Field_18274_18275) (v_1@@184 T@FrameType) (q@@177 T@Field_17575_17576) (w@@184 T@FrameType) (r@@177 T@Field_18274_18275) (u@@177 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_17546 p@@185 v_1@@184 q@@177 w@@184) (InsidePredicate_17546_18247 q@@177 w@@184 r@@177 u@@177)) (InsidePredicate_18247_18247 p@@185 v_1@@184 r@@177 u@@177))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_17546 p@@185 v_1@@184 q@@177 w@@184) (InsidePredicate_17546_18247 q@@177 w@@184 r@@177 u@@177))
)))
(assert (forall ((p@@186 T@Field_18274_18275) (v_1@@185 T@FrameType) (q@@178 T@Field_17575_17576) (w@@185 T@FrameType) (r@@178 T@Field_17575_17576) (u@@178 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_17546 p@@186 v_1@@185 q@@178 w@@185) (InsidePredicate_17546_17546 q@@178 w@@185 r@@178 u@@178)) (InsidePredicate_18247_17546 p@@186 v_1@@185 r@@178 u@@178))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_17546 p@@186 v_1@@185 q@@178 w@@185) (InsidePredicate_17546_17546 q@@178 w@@185 r@@178 u@@178))
)))
(assert (forall ((p@@187 T@Field_18274_18275) (v_1@@186 T@FrameType) (q@@179 T@Field_17575_17576) (w@@186 T@FrameType) (r@@179 T@Field_16931_16932) (u@@179 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_17546 p@@187 v_1@@186 q@@179 w@@186) (InsidePredicate_17546_16902 q@@179 w@@186 r@@179 u@@179)) (InsidePredicate_18247_16902 p@@187 v_1@@186 r@@179 u@@179))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_17546 p@@187 v_1@@186 q@@179 w@@186) (InsidePredicate_17546_16902 q@@179 w@@186 r@@179 u@@179))
)))
(assert (forall ((p@@188 T@Field_18274_18275) (v_1@@187 T@FrameType) (q@@180 T@Field_17575_17576) (w@@187 T@FrameType) (r@@180 T@Field_8623_16932) (u@@180 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_17546 p@@188 v_1@@187 q@@180 w@@187) (InsidePredicate_17546_13574 q@@180 w@@187 r@@180 u@@180)) (InsidePredicate_18247_13574 p@@188 v_1@@187 r@@180 u@@180))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_17546 p@@188 v_1@@187 q@@180 w@@187) (InsidePredicate_17546_13574 q@@180 w@@187 r@@180 u@@180))
)))
(assert (forall ((p@@189 T@Field_18274_18275) (v_1@@188 T@FrameType) (q@@181 T@Field_16931_16932) (w@@188 T@FrameType) (r@@181 T@Field_20617_20618) (u@@181 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_16902 p@@189 v_1@@188 q@@181 w@@188) (InsidePredicate_16902_20588 q@@181 w@@188 r@@181 u@@181)) (InsidePredicate_18247_20588 p@@189 v_1@@188 r@@181 u@@181))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_16902 p@@189 v_1@@188 q@@181 w@@188) (InsidePredicate_16902_20588 q@@181 w@@188 r@@181 u@@181))
)))
(assert (forall ((p@@190 T@Field_18274_18275) (v_1@@189 T@FrameType) (q@@182 T@Field_16931_16932) (w@@189 T@FrameType) (r@@182 T@Field_19687_19688) (u@@182 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_16902 p@@190 v_1@@189 q@@182 w@@189) (InsidePredicate_16902_19654 q@@182 w@@189 r@@182 u@@182)) (InsidePredicate_18247_19654 p@@190 v_1@@189 r@@182 u@@182))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_16902 p@@190 v_1@@189 q@@182 w@@189) (InsidePredicate_16902_19654 q@@182 w@@189 r@@182 u@@182))
)))
(assert (forall ((p@@191 T@Field_18274_18275) (v_1@@190 T@FrameType) (q@@183 T@Field_16931_16932) (w@@190 T@FrameType) (r@@183 T@Field_18836_18837) (u@@183 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_16902 p@@191 v_1@@190 q@@183 w@@190) (InsidePredicate_16902_18805 q@@183 w@@190 r@@183 u@@183)) (InsidePredicate_18247_18805 p@@191 v_1@@190 r@@183 u@@183))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_16902 p@@191 v_1@@190 q@@183 w@@190) (InsidePredicate_16902_18805 q@@183 w@@190 r@@183 u@@183))
)))
(assert (forall ((p@@192 T@Field_18274_18275) (v_1@@191 T@FrameType) (q@@184 T@Field_16931_16932) (w@@191 T@FrameType) (r@@184 T@Field_18274_18275) (u@@184 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_16902 p@@192 v_1@@191 q@@184 w@@191) (InsidePredicate_16902_18247 q@@184 w@@191 r@@184 u@@184)) (InsidePredicate_18247_18247 p@@192 v_1@@191 r@@184 u@@184))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_16902 p@@192 v_1@@191 q@@184 w@@191) (InsidePredicate_16902_18247 q@@184 w@@191 r@@184 u@@184))
)))
(assert (forall ((p@@193 T@Field_18274_18275) (v_1@@192 T@FrameType) (q@@185 T@Field_16931_16932) (w@@192 T@FrameType) (r@@185 T@Field_17575_17576) (u@@185 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_16902 p@@193 v_1@@192 q@@185 w@@192) (InsidePredicate_16902_17546 q@@185 w@@192 r@@185 u@@185)) (InsidePredicate_18247_17546 p@@193 v_1@@192 r@@185 u@@185))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_16902 p@@193 v_1@@192 q@@185 w@@192) (InsidePredicate_16902_17546 q@@185 w@@192 r@@185 u@@185))
)))
(assert (forall ((p@@194 T@Field_18274_18275) (v_1@@193 T@FrameType) (q@@186 T@Field_16931_16932) (w@@193 T@FrameType) (r@@186 T@Field_16931_16932) (u@@186 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_16902 p@@194 v_1@@193 q@@186 w@@193) (InsidePredicate_16902_16902 q@@186 w@@193 r@@186 u@@186)) (InsidePredicate_18247_16902 p@@194 v_1@@193 r@@186 u@@186))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_16902 p@@194 v_1@@193 q@@186 w@@193) (InsidePredicate_16902_16902 q@@186 w@@193 r@@186 u@@186))
)))
(assert (forall ((p@@195 T@Field_18274_18275) (v_1@@194 T@FrameType) (q@@187 T@Field_16931_16932) (w@@194 T@FrameType) (r@@187 T@Field_8623_16932) (u@@187 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_16902 p@@195 v_1@@194 q@@187 w@@194) (InsidePredicate_16902_13574 q@@187 w@@194 r@@187 u@@187)) (InsidePredicate_18247_13574 p@@195 v_1@@194 r@@187 u@@187))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_16902 p@@195 v_1@@194 q@@187 w@@194) (InsidePredicate_16902_13574 q@@187 w@@194 r@@187 u@@187))
)))
(assert (forall ((p@@196 T@Field_18274_18275) (v_1@@195 T@FrameType) (q@@188 T@Field_8623_16932) (w@@195 T@FrameType) (r@@188 T@Field_20617_20618) (u@@188 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_13574 p@@196 v_1@@195 q@@188 w@@195) (InsidePredicate_13574_20588 q@@188 w@@195 r@@188 u@@188)) (InsidePredicate_18247_20588 p@@196 v_1@@195 r@@188 u@@188))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_13574 p@@196 v_1@@195 q@@188 w@@195) (InsidePredicate_13574_20588 q@@188 w@@195 r@@188 u@@188))
)))
(assert (forall ((p@@197 T@Field_18274_18275) (v_1@@196 T@FrameType) (q@@189 T@Field_8623_16932) (w@@196 T@FrameType) (r@@189 T@Field_19687_19688) (u@@189 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_13574 p@@197 v_1@@196 q@@189 w@@196) (InsidePredicate_13574_19654 q@@189 w@@196 r@@189 u@@189)) (InsidePredicate_18247_19654 p@@197 v_1@@196 r@@189 u@@189))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_13574 p@@197 v_1@@196 q@@189 w@@196) (InsidePredicate_13574_19654 q@@189 w@@196 r@@189 u@@189))
)))
(assert (forall ((p@@198 T@Field_18274_18275) (v_1@@197 T@FrameType) (q@@190 T@Field_8623_16932) (w@@197 T@FrameType) (r@@190 T@Field_18836_18837) (u@@190 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_13574 p@@198 v_1@@197 q@@190 w@@197) (InsidePredicate_13574_18805 q@@190 w@@197 r@@190 u@@190)) (InsidePredicate_18247_18805 p@@198 v_1@@197 r@@190 u@@190))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_13574 p@@198 v_1@@197 q@@190 w@@197) (InsidePredicate_13574_18805 q@@190 w@@197 r@@190 u@@190))
)))
(assert (forall ((p@@199 T@Field_18274_18275) (v_1@@198 T@FrameType) (q@@191 T@Field_8623_16932) (w@@198 T@FrameType) (r@@191 T@Field_18274_18275) (u@@191 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_13574 p@@199 v_1@@198 q@@191 w@@198) (InsidePredicate_13574_18247 q@@191 w@@198 r@@191 u@@191)) (InsidePredicate_18247_18247 p@@199 v_1@@198 r@@191 u@@191))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_13574 p@@199 v_1@@198 q@@191 w@@198) (InsidePredicate_13574_18247 q@@191 w@@198 r@@191 u@@191))
)))
(assert (forall ((p@@200 T@Field_18274_18275) (v_1@@199 T@FrameType) (q@@192 T@Field_8623_16932) (w@@199 T@FrameType) (r@@192 T@Field_17575_17576) (u@@192 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_13574 p@@200 v_1@@199 q@@192 w@@199) (InsidePredicate_13574_17546 q@@192 w@@199 r@@192 u@@192)) (InsidePredicate_18247_17546 p@@200 v_1@@199 r@@192 u@@192))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_13574 p@@200 v_1@@199 q@@192 w@@199) (InsidePredicate_13574_17546 q@@192 w@@199 r@@192 u@@192))
)))
(assert (forall ((p@@201 T@Field_18274_18275) (v_1@@200 T@FrameType) (q@@193 T@Field_8623_16932) (w@@200 T@FrameType) (r@@193 T@Field_16931_16932) (u@@193 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_13574 p@@201 v_1@@200 q@@193 w@@200) (InsidePredicate_13574_16902 q@@193 w@@200 r@@193 u@@193)) (InsidePredicate_18247_16902 p@@201 v_1@@200 r@@193 u@@193))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_13574 p@@201 v_1@@200 q@@193 w@@200) (InsidePredicate_13574_16902 q@@193 w@@200 r@@193 u@@193))
)))
(assert (forall ((p@@202 T@Field_18274_18275) (v_1@@201 T@FrameType) (q@@194 T@Field_8623_16932) (w@@201 T@FrameType) (r@@194 T@Field_8623_16932) (u@@194 T@FrameType) ) (!  (=> (and (InsidePredicate_18247_13574 p@@202 v_1@@201 q@@194 w@@201) (InsidePredicate_13574_13574 q@@194 w@@201 r@@194 u@@194)) (InsidePredicate_18247_13574 p@@202 v_1@@201 r@@194 u@@194))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18247_13574 p@@202 v_1@@201 q@@194 w@@201) (InsidePredicate_13574_13574 q@@194 w@@201 r@@194 u@@194))
)))
(assert (forall ((p@@203 T@Field_17575_17576) (v_1@@202 T@FrameType) (q@@195 T@Field_20617_20618) (w@@202 T@FrameType) (r@@195 T@Field_20617_20618) (u@@195 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_20588 p@@203 v_1@@202 q@@195 w@@202) (InsidePredicate_20588_20588 q@@195 w@@202 r@@195 u@@195)) (InsidePredicate_17546_20588 p@@203 v_1@@202 r@@195 u@@195))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_20588 p@@203 v_1@@202 q@@195 w@@202) (InsidePredicate_20588_20588 q@@195 w@@202 r@@195 u@@195))
)))
(assert (forall ((p@@204 T@Field_17575_17576) (v_1@@203 T@FrameType) (q@@196 T@Field_20617_20618) (w@@203 T@FrameType) (r@@196 T@Field_19687_19688) (u@@196 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_20588 p@@204 v_1@@203 q@@196 w@@203) (InsidePredicate_20588_19654 q@@196 w@@203 r@@196 u@@196)) (InsidePredicate_17546_19654 p@@204 v_1@@203 r@@196 u@@196))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_20588 p@@204 v_1@@203 q@@196 w@@203) (InsidePredicate_20588_19654 q@@196 w@@203 r@@196 u@@196))
)))
(assert (forall ((p@@205 T@Field_17575_17576) (v_1@@204 T@FrameType) (q@@197 T@Field_20617_20618) (w@@204 T@FrameType) (r@@197 T@Field_18836_18837) (u@@197 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_20588 p@@205 v_1@@204 q@@197 w@@204) (InsidePredicate_20588_18805 q@@197 w@@204 r@@197 u@@197)) (InsidePredicate_17546_18805 p@@205 v_1@@204 r@@197 u@@197))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_20588 p@@205 v_1@@204 q@@197 w@@204) (InsidePredicate_20588_18805 q@@197 w@@204 r@@197 u@@197))
)))
(assert (forall ((p@@206 T@Field_17575_17576) (v_1@@205 T@FrameType) (q@@198 T@Field_20617_20618) (w@@205 T@FrameType) (r@@198 T@Field_18274_18275) (u@@198 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_20588 p@@206 v_1@@205 q@@198 w@@205) (InsidePredicate_20588_18247 q@@198 w@@205 r@@198 u@@198)) (InsidePredicate_17546_18247 p@@206 v_1@@205 r@@198 u@@198))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_20588 p@@206 v_1@@205 q@@198 w@@205) (InsidePredicate_20588_18247 q@@198 w@@205 r@@198 u@@198))
)))
(assert (forall ((p@@207 T@Field_17575_17576) (v_1@@206 T@FrameType) (q@@199 T@Field_20617_20618) (w@@206 T@FrameType) (r@@199 T@Field_17575_17576) (u@@199 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_20588 p@@207 v_1@@206 q@@199 w@@206) (InsidePredicate_20588_17546 q@@199 w@@206 r@@199 u@@199)) (InsidePredicate_17546_17546 p@@207 v_1@@206 r@@199 u@@199))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_20588 p@@207 v_1@@206 q@@199 w@@206) (InsidePredicate_20588_17546 q@@199 w@@206 r@@199 u@@199))
)))
(assert (forall ((p@@208 T@Field_17575_17576) (v_1@@207 T@FrameType) (q@@200 T@Field_20617_20618) (w@@207 T@FrameType) (r@@200 T@Field_16931_16932) (u@@200 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_20588 p@@208 v_1@@207 q@@200 w@@207) (InsidePredicate_20588_16902 q@@200 w@@207 r@@200 u@@200)) (InsidePredicate_17546_16902 p@@208 v_1@@207 r@@200 u@@200))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_20588 p@@208 v_1@@207 q@@200 w@@207) (InsidePredicate_20588_16902 q@@200 w@@207 r@@200 u@@200))
)))
(assert (forall ((p@@209 T@Field_17575_17576) (v_1@@208 T@FrameType) (q@@201 T@Field_20617_20618) (w@@208 T@FrameType) (r@@201 T@Field_8623_16932) (u@@201 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_20588 p@@209 v_1@@208 q@@201 w@@208) (InsidePredicate_20588_13574 q@@201 w@@208 r@@201 u@@201)) (InsidePredicate_17546_13574 p@@209 v_1@@208 r@@201 u@@201))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_20588 p@@209 v_1@@208 q@@201 w@@208) (InsidePredicate_20588_13574 q@@201 w@@208 r@@201 u@@201))
)))
(assert (forall ((p@@210 T@Field_17575_17576) (v_1@@209 T@FrameType) (q@@202 T@Field_19687_19688) (w@@209 T@FrameType) (r@@202 T@Field_20617_20618) (u@@202 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_19654 p@@210 v_1@@209 q@@202 w@@209) (InsidePredicate_19654_20588 q@@202 w@@209 r@@202 u@@202)) (InsidePredicate_17546_20588 p@@210 v_1@@209 r@@202 u@@202))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_19654 p@@210 v_1@@209 q@@202 w@@209) (InsidePredicate_19654_20588 q@@202 w@@209 r@@202 u@@202))
)))
(assert (forall ((p@@211 T@Field_17575_17576) (v_1@@210 T@FrameType) (q@@203 T@Field_19687_19688) (w@@210 T@FrameType) (r@@203 T@Field_19687_19688) (u@@203 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_19654 p@@211 v_1@@210 q@@203 w@@210) (InsidePredicate_19654_19654 q@@203 w@@210 r@@203 u@@203)) (InsidePredicate_17546_19654 p@@211 v_1@@210 r@@203 u@@203))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_19654 p@@211 v_1@@210 q@@203 w@@210) (InsidePredicate_19654_19654 q@@203 w@@210 r@@203 u@@203))
)))
(assert (forall ((p@@212 T@Field_17575_17576) (v_1@@211 T@FrameType) (q@@204 T@Field_19687_19688) (w@@211 T@FrameType) (r@@204 T@Field_18836_18837) (u@@204 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_19654 p@@212 v_1@@211 q@@204 w@@211) (InsidePredicate_19654_18805 q@@204 w@@211 r@@204 u@@204)) (InsidePredicate_17546_18805 p@@212 v_1@@211 r@@204 u@@204))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_19654 p@@212 v_1@@211 q@@204 w@@211) (InsidePredicate_19654_18805 q@@204 w@@211 r@@204 u@@204))
)))
(assert (forall ((p@@213 T@Field_17575_17576) (v_1@@212 T@FrameType) (q@@205 T@Field_19687_19688) (w@@212 T@FrameType) (r@@205 T@Field_18274_18275) (u@@205 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_19654 p@@213 v_1@@212 q@@205 w@@212) (InsidePredicate_19654_18247 q@@205 w@@212 r@@205 u@@205)) (InsidePredicate_17546_18247 p@@213 v_1@@212 r@@205 u@@205))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_19654 p@@213 v_1@@212 q@@205 w@@212) (InsidePredicate_19654_18247 q@@205 w@@212 r@@205 u@@205))
)))
(assert (forall ((p@@214 T@Field_17575_17576) (v_1@@213 T@FrameType) (q@@206 T@Field_19687_19688) (w@@213 T@FrameType) (r@@206 T@Field_17575_17576) (u@@206 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_19654 p@@214 v_1@@213 q@@206 w@@213) (InsidePredicate_19654_17546 q@@206 w@@213 r@@206 u@@206)) (InsidePredicate_17546_17546 p@@214 v_1@@213 r@@206 u@@206))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_19654 p@@214 v_1@@213 q@@206 w@@213) (InsidePredicate_19654_17546 q@@206 w@@213 r@@206 u@@206))
)))
(assert (forall ((p@@215 T@Field_17575_17576) (v_1@@214 T@FrameType) (q@@207 T@Field_19687_19688) (w@@214 T@FrameType) (r@@207 T@Field_16931_16932) (u@@207 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_19654 p@@215 v_1@@214 q@@207 w@@214) (InsidePredicate_19654_16902 q@@207 w@@214 r@@207 u@@207)) (InsidePredicate_17546_16902 p@@215 v_1@@214 r@@207 u@@207))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_19654 p@@215 v_1@@214 q@@207 w@@214) (InsidePredicate_19654_16902 q@@207 w@@214 r@@207 u@@207))
)))
(assert (forall ((p@@216 T@Field_17575_17576) (v_1@@215 T@FrameType) (q@@208 T@Field_19687_19688) (w@@215 T@FrameType) (r@@208 T@Field_8623_16932) (u@@208 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_19654 p@@216 v_1@@215 q@@208 w@@215) (InsidePredicate_19654_13574 q@@208 w@@215 r@@208 u@@208)) (InsidePredicate_17546_13574 p@@216 v_1@@215 r@@208 u@@208))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_19654 p@@216 v_1@@215 q@@208 w@@215) (InsidePredicate_19654_13574 q@@208 w@@215 r@@208 u@@208))
)))
(assert (forall ((p@@217 T@Field_17575_17576) (v_1@@216 T@FrameType) (q@@209 T@Field_18836_18837) (w@@216 T@FrameType) (r@@209 T@Field_20617_20618) (u@@209 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_18805 p@@217 v_1@@216 q@@209 w@@216) (InsidePredicate_18805_20588 q@@209 w@@216 r@@209 u@@209)) (InsidePredicate_17546_20588 p@@217 v_1@@216 r@@209 u@@209))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_18805 p@@217 v_1@@216 q@@209 w@@216) (InsidePredicate_18805_20588 q@@209 w@@216 r@@209 u@@209))
)))
(assert (forall ((p@@218 T@Field_17575_17576) (v_1@@217 T@FrameType) (q@@210 T@Field_18836_18837) (w@@217 T@FrameType) (r@@210 T@Field_19687_19688) (u@@210 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_18805 p@@218 v_1@@217 q@@210 w@@217) (InsidePredicate_18805_19654 q@@210 w@@217 r@@210 u@@210)) (InsidePredicate_17546_19654 p@@218 v_1@@217 r@@210 u@@210))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_18805 p@@218 v_1@@217 q@@210 w@@217) (InsidePredicate_18805_19654 q@@210 w@@217 r@@210 u@@210))
)))
(assert (forall ((p@@219 T@Field_17575_17576) (v_1@@218 T@FrameType) (q@@211 T@Field_18836_18837) (w@@218 T@FrameType) (r@@211 T@Field_18836_18837) (u@@211 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_18805 p@@219 v_1@@218 q@@211 w@@218) (InsidePredicate_18805_18805 q@@211 w@@218 r@@211 u@@211)) (InsidePredicate_17546_18805 p@@219 v_1@@218 r@@211 u@@211))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_18805 p@@219 v_1@@218 q@@211 w@@218) (InsidePredicate_18805_18805 q@@211 w@@218 r@@211 u@@211))
)))
(assert (forall ((p@@220 T@Field_17575_17576) (v_1@@219 T@FrameType) (q@@212 T@Field_18836_18837) (w@@219 T@FrameType) (r@@212 T@Field_18274_18275) (u@@212 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_18805 p@@220 v_1@@219 q@@212 w@@219) (InsidePredicate_18805_18247 q@@212 w@@219 r@@212 u@@212)) (InsidePredicate_17546_18247 p@@220 v_1@@219 r@@212 u@@212))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_18805 p@@220 v_1@@219 q@@212 w@@219) (InsidePredicate_18805_18247 q@@212 w@@219 r@@212 u@@212))
)))
(assert (forall ((p@@221 T@Field_17575_17576) (v_1@@220 T@FrameType) (q@@213 T@Field_18836_18837) (w@@220 T@FrameType) (r@@213 T@Field_17575_17576) (u@@213 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_18805 p@@221 v_1@@220 q@@213 w@@220) (InsidePredicate_18805_17546 q@@213 w@@220 r@@213 u@@213)) (InsidePredicate_17546_17546 p@@221 v_1@@220 r@@213 u@@213))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_18805 p@@221 v_1@@220 q@@213 w@@220) (InsidePredicate_18805_17546 q@@213 w@@220 r@@213 u@@213))
)))
(assert (forall ((p@@222 T@Field_17575_17576) (v_1@@221 T@FrameType) (q@@214 T@Field_18836_18837) (w@@221 T@FrameType) (r@@214 T@Field_16931_16932) (u@@214 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_18805 p@@222 v_1@@221 q@@214 w@@221) (InsidePredicate_18805_16902 q@@214 w@@221 r@@214 u@@214)) (InsidePredicate_17546_16902 p@@222 v_1@@221 r@@214 u@@214))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_18805 p@@222 v_1@@221 q@@214 w@@221) (InsidePredicate_18805_16902 q@@214 w@@221 r@@214 u@@214))
)))
(assert (forall ((p@@223 T@Field_17575_17576) (v_1@@222 T@FrameType) (q@@215 T@Field_18836_18837) (w@@222 T@FrameType) (r@@215 T@Field_8623_16932) (u@@215 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_18805 p@@223 v_1@@222 q@@215 w@@222) (InsidePredicate_18805_13574 q@@215 w@@222 r@@215 u@@215)) (InsidePredicate_17546_13574 p@@223 v_1@@222 r@@215 u@@215))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_18805 p@@223 v_1@@222 q@@215 w@@222) (InsidePredicate_18805_13574 q@@215 w@@222 r@@215 u@@215))
)))
(assert (forall ((p@@224 T@Field_17575_17576) (v_1@@223 T@FrameType) (q@@216 T@Field_18274_18275) (w@@223 T@FrameType) (r@@216 T@Field_20617_20618) (u@@216 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_18247 p@@224 v_1@@223 q@@216 w@@223) (InsidePredicate_18247_20588 q@@216 w@@223 r@@216 u@@216)) (InsidePredicate_17546_20588 p@@224 v_1@@223 r@@216 u@@216))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_18247 p@@224 v_1@@223 q@@216 w@@223) (InsidePredicate_18247_20588 q@@216 w@@223 r@@216 u@@216))
)))
(assert (forall ((p@@225 T@Field_17575_17576) (v_1@@224 T@FrameType) (q@@217 T@Field_18274_18275) (w@@224 T@FrameType) (r@@217 T@Field_19687_19688) (u@@217 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_18247 p@@225 v_1@@224 q@@217 w@@224) (InsidePredicate_18247_19654 q@@217 w@@224 r@@217 u@@217)) (InsidePredicate_17546_19654 p@@225 v_1@@224 r@@217 u@@217))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_18247 p@@225 v_1@@224 q@@217 w@@224) (InsidePredicate_18247_19654 q@@217 w@@224 r@@217 u@@217))
)))
(assert (forall ((p@@226 T@Field_17575_17576) (v_1@@225 T@FrameType) (q@@218 T@Field_18274_18275) (w@@225 T@FrameType) (r@@218 T@Field_18836_18837) (u@@218 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_18247 p@@226 v_1@@225 q@@218 w@@225) (InsidePredicate_18247_18805 q@@218 w@@225 r@@218 u@@218)) (InsidePredicate_17546_18805 p@@226 v_1@@225 r@@218 u@@218))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_18247 p@@226 v_1@@225 q@@218 w@@225) (InsidePredicate_18247_18805 q@@218 w@@225 r@@218 u@@218))
)))
(assert (forall ((p@@227 T@Field_17575_17576) (v_1@@226 T@FrameType) (q@@219 T@Field_18274_18275) (w@@226 T@FrameType) (r@@219 T@Field_18274_18275) (u@@219 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_18247 p@@227 v_1@@226 q@@219 w@@226) (InsidePredicate_18247_18247 q@@219 w@@226 r@@219 u@@219)) (InsidePredicate_17546_18247 p@@227 v_1@@226 r@@219 u@@219))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_18247 p@@227 v_1@@226 q@@219 w@@226) (InsidePredicate_18247_18247 q@@219 w@@226 r@@219 u@@219))
)))
(assert (forall ((p@@228 T@Field_17575_17576) (v_1@@227 T@FrameType) (q@@220 T@Field_18274_18275) (w@@227 T@FrameType) (r@@220 T@Field_17575_17576) (u@@220 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_18247 p@@228 v_1@@227 q@@220 w@@227) (InsidePredicate_18247_17546 q@@220 w@@227 r@@220 u@@220)) (InsidePredicate_17546_17546 p@@228 v_1@@227 r@@220 u@@220))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_18247 p@@228 v_1@@227 q@@220 w@@227) (InsidePredicate_18247_17546 q@@220 w@@227 r@@220 u@@220))
)))
(assert (forall ((p@@229 T@Field_17575_17576) (v_1@@228 T@FrameType) (q@@221 T@Field_18274_18275) (w@@228 T@FrameType) (r@@221 T@Field_16931_16932) (u@@221 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_18247 p@@229 v_1@@228 q@@221 w@@228) (InsidePredicate_18247_16902 q@@221 w@@228 r@@221 u@@221)) (InsidePredicate_17546_16902 p@@229 v_1@@228 r@@221 u@@221))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_18247 p@@229 v_1@@228 q@@221 w@@228) (InsidePredicate_18247_16902 q@@221 w@@228 r@@221 u@@221))
)))
(assert (forall ((p@@230 T@Field_17575_17576) (v_1@@229 T@FrameType) (q@@222 T@Field_18274_18275) (w@@229 T@FrameType) (r@@222 T@Field_8623_16932) (u@@222 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_18247 p@@230 v_1@@229 q@@222 w@@229) (InsidePredicate_18247_13574 q@@222 w@@229 r@@222 u@@222)) (InsidePredicate_17546_13574 p@@230 v_1@@229 r@@222 u@@222))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_18247 p@@230 v_1@@229 q@@222 w@@229) (InsidePredicate_18247_13574 q@@222 w@@229 r@@222 u@@222))
)))
(assert (forall ((p@@231 T@Field_17575_17576) (v_1@@230 T@FrameType) (q@@223 T@Field_17575_17576) (w@@230 T@FrameType) (r@@223 T@Field_20617_20618) (u@@223 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_17546 p@@231 v_1@@230 q@@223 w@@230) (InsidePredicate_17546_20588 q@@223 w@@230 r@@223 u@@223)) (InsidePredicate_17546_20588 p@@231 v_1@@230 r@@223 u@@223))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_17546 p@@231 v_1@@230 q@@223 w@@230) (InsidePredicate_17546_20588 q@@223 w@@230 r@@223 u@@223))
)))
(assert (forall ((p@@232 T@Field_17575_17576) (v_1@@231 T@FrameType) (q@@224 T@Field_17575_17576) (w@@231 T@FrameType) (r@@224 T@Field_19687_19688) (u@@224 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_17546 p@@232 v_1@@231 q@@224 w@@231) (InsidePredicate_17546_19654 q@@224 w@@231 r@@224 u@@224)) (InsidePredicate_17546_19654 p@@232 v_1@@231 r@@224 u@@224))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_17546 p@@232 v_1@@231 q@@224 w@@231) (InsidePredicate_17546_19654 q@@224 w@@231 r@@224 u@@224))
)))
(assert (forall ((p@@233 T@Field_17575_17576) (v_1@@232 T@FrameType) (q@@225 T@Field_17575_17576) (w@@232 T@FrameType) (r@@225 T@Field_18836_18837) (u@@225 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_17546 p@@233 v_1@@232 q@@225 w@@232) (InsidePredicate_17546_18805 q@@225 w@@232 r@@225 u@@225)) (InsidePredicate_17546_18805 p@@233 v_1@@232 r@@225 u@@225))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_17546 p@@233 v_1@@232 q@@225 w@@232) (InsidePredicate_17546_18805 q@@225 w@@232 r@@225 u@@225))
)))
(assert (forall ((p@@234 T@Field_17575_17576) (v_1@@233 T@FrameType) (q@@226 T@Field_17575_17576) (w@@233 T@FrameType) (r@@226 T@Field_18274_18275) (u@@226 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_17546 p@@234 v_1@@233 q@@226 w@@233) (InsidePredicate_17546_18247 q@@226 w@@233 r@@226 u@@226)) (InsidePredicate_17546_18247 p@@234 v_1@@233 r@@226 u@@226))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_17546 p@@234 v_1@@233 q@@226 w@@233) (InsidePredicate_17546_18247 q@@226 w@@233 r@@226 u@@226))
)))
(assert (forall ((p@@235 T@Field_17575_17576) (v_1@@234 T@FrameType) (q@@227 T@Field_17575_17576) (w@@234 T@FrameType) (r@@227 T@Field_17575_17576) (u@@227 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_17546 p@@235 v_1@@234 q@@227 w@@234) (InsidePredicate_17546_17546 q@@227 w@@234 r@@227 u@@227)) (InsidePredicate_17546_17546 p@@235 v_1@@234 r@@227 u@@227))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_17546 p@@235 v_1@@234 q@@227 w@@234) (InsidePredicate_17546_17546 q@@227 w@@234 r@@227 u@@227))
)))
(assert (forall ((p@@236 T@Field_17575_17576) (v_1@@235 T@FrameType) (q@@228 T@Field_17575_17576) (w@@235 T@FrameType) (r@@228 T@Field_16931_16932) (u@@228 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_17546 p@@236 v_1@@235 q@@228 w@@235) (InsidePredicate_17546_16902 q@@228 w@@235 r@@228 u@@228)) (InsidePredicate_17546_16902 p@@236 v_1@@235 r@@228 u@@228))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_17546 p@@236 v_1@@235 q@@228 w@@235) (InsidePredicate_17546_16902 q@@228 w@@235 r@@228 u@@228))
)))
(assert (forall ((p@@237 T@Field_17575_17576) (v_1@@236 T@FrameType) (q@@229 T@Field_17575_17576) (w@@236 T@FrameType) (r@@229 T@Field_8623_16932) (u@@229 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_17546 p@@237 v_1@@236 q@@229 w@@236) (InsidePredicate_17546_13574 q@@229 w@@236 r@@229 u@@229)) (InsidePredicate_17546_13574 p@@237 v_1@@236 r@@229 u@@229))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_17546 p@@237 v_1@@236 q@@229 w@@236) (InsidePredicate_17546_13574 q@@229 w@@236 r@@229 u@@229))
)))
(assert (forall ((p@@238 T@Field_17575_17576) (v_1@@237 T@FrameType) (q@@230 T@Field_16931_16932) (w@@237 T@FrameType) (r@@230 T@Field_20617_20618) (u@@230 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_16902 p@@238 v_1@@237 q@@230 w@@237) (InsidePredicate_16902_20588 q@@230 w@@237 r@@230 u@@230)) (InsidePredicate_17546_20588 p@@238 v_1@@237 r@@230 u@@230))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_16902 p@@238 v_1@@237 q@@230 w@@237) (InsidePredicate_16902_20588 q@@230 w@@237 r@@230 u@@230))
)))
(assert (forall ((p@@239 T@Field_17575_17576) (v_1@@238 T@FrameType) (q@@231 T@Field_16931_16932) (w@@238 T@FrameType) (r@@231 T@Field_19687_19688) (u@@231 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_16902 p@@239 v_1@@238 q@@231 w@@238) (InsidePredicate_16902_19654 q@@231 w@@238 r@@231 u@@231)) (InsidePredicate_17546_19654 p@@239 v_1@@238 r@@231 u@@231))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_16902 p@@239 v_1@@238 q@@231 w@@238) (InsidePredicate_16902_19654 q@@231 w@@238 r@@231 u@@231))
)))
(assert (forall ((p@@240 T@Field_17575_17576) (v_1@@239 T@FrameType) (q@@232 T@Field_16931_16932) (w@@239 T@FrameType) (r@@232 T@Field_18836_18837) (u@@232 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_16902 p@@240 v_1@@239 q@@232 w@@239) (InsidePredicate_16902_18805 q@@232 w@@239 r@@232 u@@232)) (InsidePredicate_17546_18805 p@@240 v_1@@239 r@@232 u@@232))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_16902 p@@240 v_1@@239 q@@232 w@@239) (InsidePredicate_16902_18805 q@@232 w@@239 r@@232 u@@232))
)))
(assert (forall ((p@@241 T@Field_17575_17576) (v_1@@240 T@FrameType) (q@@233 T@Field_16931_16932) (w@@240 T@FrameType) (r@@233 T@Field_18274_18275) (u@@233 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_16902 p@@241 v_1@@240 q@@233 w@@240) (InsidePredicate_16902_18247 q@@233 w@@240 r@@233 u@@233)) (InsidePredicate_17546_18247 p@@241 v_1@@240 r@@233 u@@233))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_16902 p@@241 v_1@@240 q@@233 w@@240) (InsidePredicate_16902_18247 q@@233 w@@240 r@@233 u@@233))
)))
(assert (forall ((p@@242 T@Field_17575_17576) (v_1@@241 T@FrameType) (q@@234 T@Field_16931_16932) (w@@241 T@FrameType) (r@@234 T@Field_17575_17576) (u@@234 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_16902 p@@242 v_1@@241 q@@234 w@@241) (InsidePredicate_16902_17546 q@@234 w@@241 r@@234 u@@234)) (InsidePredicate_17546_17546 p@@242 v_1@@241 r@@234 u@@234))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_16902 p@@242 v_1@@241 q@@234 w@@241) (InsidePredicate_16902_17546 q@@234 w@@241 r@@234 u@@234))
)))
(assert (forall ((p@@243 T@Field_17575_17576) (v_1@@242 T@FrameType) (q@@235 T@Field_16931_16932) (w@@242 T@FrameType) (r@@235 T@Field_16931_16932) (u@@235 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_16902 p@@243 v_1@@242 q@@235 w@@242) (InsidePredicate_16902_16902 q@@235 w@@242 r@@235 u@@235)) (InsidePredicate_17546_16902 p@@243 v_1@@242 r@@235 u@@235))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_16902 p@@243 v_1@@242 q@@235 w@@242) (InsidePredicate_16902_16902 q@@235 w@@242 r@@235 u@@235))
)))
(assert (forall ((p@@244 T@Field_17575_17576) (v_1@@243 T@FrameType) (q@@236 T@Field_16931_16932) (w@@243 T@FrameType) (r@@236 T@Field_8623_16932) (u@@236 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_16902 p@@244 v_1@@243 q@@236 w@@243) (InsidePredicate_16902_13574 q@@236 w@@243 r@@236 u@@236)) (InsidePredicate_17546_13574 p@@244 v_1@@243 r@@236 u@@236))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_16902 p@@244 v_1@@243 q@@236 w@@243) (InsidePredicate_16902_13574 q@@236 w@@243 r@@236 u@@236))
)))
(assert (forall ((p@@245 T@Field_17575_17576) (v_1@@244 T@FrameType) (q@@237 T@Field_8623_16932) (w@@244 T@FrameType) (r@@237 T@Field_20617_20618) (u@@237 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_13574 p@@245 v_1@@244 q@@237 w@@244) (InsidePredicate_13574_20588 q@@237 w@@244 r@@237 u@@237)) (InsidePredicate_17546_20588 p@@245 v_1@@244 r@@237 u@@237))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_13574 p@@245 v_1@@244 q@@237 w@@244) (InsidePredicate_13574_20588 q@@237 w@@244 r@@237 u@@237))
)))
(assert (forall ((p@@246 T@Field_17575_17576) (v_1@@245 T@FrameType) (q@@238 T@Field_8623_16932) (w@@245 T@FrameType) (r@@238 T@Field_19687_19688) (u@@238 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_13574 p@@246 v_1@@245 q@@238 w@@245) (InsidePredicate_13574_19654 q@@238 w@@245 r@@238 u@@238)) (InsidePredicate_17546_19654 p@@246 v_1@@245 r@@238 u@@238))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_13574 p@@246 v_1@@245 q@@238 w@@245) (InsidePredicate_13574_19654 q@@238 w@@245 r@@238 u@@238))
)))
(assert (forall ((p@@247 T@Field_17575_17576) (v_1@@246 T@FrameType) (q@@239 T@Field_8623_16932) (w@@246 T@FrameType) (r@@239 T@Field_18836_18837) (u@@239 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_13574 p@@247 v_1@@246 q@@239 w@@246) (InsidePredicate_13574_18805 q@@239 w@@246 r@@239 u@@239)) (InsidePredicate_17546_18805 p@@247 v_1@@246 r@@239 u@@239))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_13574 p@@247 v_1@@246 q@@239 w@@246) (InsidePredicate_13574_18805 q@@239 w@@246 r@@239 u@@239))
)))
(assert (forall ((p@@248 T@Field_17575_17576) (v_1@@247 T@FrameType) (q@@240 T@Field_8623_16932) (w@@247 T@FrameType) (r@@240 T@Field_18274_18275) (u@@240 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_13574 p@@248 v_1@@247 q@@240 w@@247) (InsidePredicate_13574_18247 q@@240 w@@247 r@@240 u@@240)) (InsidePredicate_17546_18247 p@@248 v_1@@247 r@@240 u@@240))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_13574 p@@248 v_1@@247 q@@240 w@@247) (InsidePredicate_13574_18247 q@@240 w@@247 r@@240 u@@240))
)))
(assert (forall ((p@@249 T@Field_17575_17576) (v_1@@248 T@FrameType) (q@@241 T@Field_8623_16932) (w@@248 T@FrameType) (r@@241 T@Field_17575_17576) (u@@241 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_13574 p@@249 v_1@@248 q@@241 w@@248) (InsidePredicate_13574_17546 q@@241 w@@248 r@@241 u@@241)) (InsidePredicate_17546_17546 p@@249 v_1@@248 r@@241 u@@241))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_13574 p@@249 v_1@@248 q@@241 w@@248) (InsidePredicate_13574_17546 q@@241 w@@248 r@@241 u@@241))
)))
(assert (forall ((p@@250 T@Field_17575_17576) (v_1@@249 T@FrameType) (q@@242 T@Field_8623_16932) (w@@249 T@FrameType) (r@@242 T@Field_16931_16932) (u@@242 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_13574 p@@250 v_1@@249 q@@242 w@@249) (InsidePredicate_13574_16902 q@@242 w@@249 r@@242 u@@242)) (InsidePredicate_17546_16902 p@@250 v_1@@249 r@@242 u@@242))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_13574 p@@250 v_1@@249 q@@242 w@@249) (InsidePredicate_13574_16902 q@@242 w@@249 r@@242 u@@242))
)))
(assert (forall ((p@@251 T@Field_17575_17576) (v_1@@250 T@FrameType) (q@@243 T@Field_8623_16932) (w@@250 T@FrameType) (r@@243 T@Field_8623_16932) (u@@243 T@FrameType) ) (!  (=> (and (InsidePredicate_17546_13574 p@@251 v_1@@250 q@@243 w@@250) (InsidePredicate_13574_13574 q@@243 w@@250 r@@243 u@@243)) (InsidePredicate_17546_13574 p@@251 v_1@@250 r@@243 u@@243))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17546_13574 p@@251 v_1@@250 q@@243 w@@250) (InsidePredicate_13574_13574 q@@243 w@@250 r@@243 u@@243))
)))
(assert (forall ((p@@252 T@Field_16931_16932) (v_1@@251 T@FrameType) (q@@244 T@Field_20617_20618) (w@@251 T@FrameType) (r@@244 T@Field_20617_20618) (u@@244 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_20588 p@@252 v_1@@251 q@@244 w@@251) (InsidePredicate_20588_20588 q@@244 w@@251 r@@244 u@@244)) (InsidePredicate_16902_20588 p@@252 v_1@@251 r@@244 u@@244))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_20588 p@@252 v_1@@251 q@@244 w@@251) (InsidePredicate_20588_20588 q@@244 w@@251 r@@244 u@@244))
)))
(assert (forall ((p@@253 T@Field_16931_16932) (v_1@@252 T@FrameType) (q@@245 T@Field_20617_20618) (w@@252 T@FrameType) (r@@245 T@Field_19687_19688) (u@@245 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_20588 p@@253 v_1@@252 q@@245 w@@252) (InsidePredicate_20588_19654 q@@245 w@@252 r@@245 u@@245)) (InsidePredicate_16902_19654 p@@253 v_1@@252 r@@245 u@@245))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_20588 p@@253 v_1@@252 q@@245 w@@252) (InsidePredicate_20588_19654 q@@245 w@@252 r@@245 u@@245))
)))
(assert (forall ((p@@254 T@Field_16931_16932) (v_1@@253 T@FrameType) (q@@246 T@Field_20617_20618) (w@@253 T@FrameType) (r@@246 T@Field_18836_18837) (u@@246 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_20588 p@@254 v_1@@253 q@@246 w@@253) (InsidePredicate_20588_18805 q@@246 w@@253 r@@246 u@@246)) (InsidePredicate_16902_18805 p@@254 v_1@@253 r@@246 u@@246))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_20588 p@@254 v_1@@253 q@@246 w@@253) (InsidePredicate_20588_18805 q@@246 w@@253 r@@246 u@@246))
)))
(assert (forall ((p@@255 T@Field_16931_16932) (v_1@@254 T@FrameType) (q@@247 T@Field_20617_20618) (w@@254 T@FrameType) (r@@247 T@Field_18274_18275) (u@@247 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_20588 p@@255 v_1@@254 q@@247 w@@254) (InsidePredicate_20588_18247 q@@247 w@@254 r@@247 u@@247)) (InsidePredicate_16902_18247 p@@255 v_1@@254 r@@247 u@@247))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_20588 p@@255 v_1@@254 q@@247 w@@254) (InsidePredicate_20588_18247 q@@247 w@@254 r@@247 u@@247))
)))
(assert (forall ((p@@256 T@Field_16931_16932) (v_1@@255 T@FrameType) (q@@248 T@Field_20617_20618) (w@@255 T@FrameType) (r@@248 T@Field_17575_17576) (u@@248 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_20588 p@@256 v_1@@255 q@@248 w@@255) (InsidePredicate_20588_17546 q@@248 w@@255 r@@248 u@@248)) (InsidePredicate_16902_17546 p@@256 v_1@@255 r@@248 u@@248))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_20588 p@@256 v_1@@255 q@@248 w@@255) (InsidePredicate_20588_17546 q@@248 w@@255 r@@248 u@@248))
)))
(assert (forall ((p@@257 T@Field_16931_16932) (v_1@@256 T@FrameType) (q@@249 T@Field_20617_20618) (w@@256 T@FrameType) (r@@249 T@Field_16931_16932) (u@@249 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_20588 p@@257 v_1@@256 q@@249 w@@256) (InsidePredicate_20588_16902 q@@249 w@@256 r@@249 u@@249)) (InsidePredicate_16902_16902 p@@257 v_1@@256 r@@249 u@@249))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_20588 p@@257 v_1@@256 q@@249 w@@256) (InsidePredicate_20588_16902 q@@249 w@@256 r@@249 u@@249))
)))
(assert (forall ((p@@258 T@Field_16931_16932) (v_1@@257 T@FrameType) (q@@250 T@Field_20617_20618) (w@@257 T@FrameType) (r@@250 T@Field_8623_16932) (u@@250 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_20588 p@@258 v_1@@257 q@@250 w@@257) (InsidePredicate_20588_13574 q@@250 w@@257 r@@250 u@@250)) (InsidePredicate_16902_13574 p@@258 v_1@@257 r@@250 u@@250))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_20588 p@@258 v_1@@257 q@@250 w@@257) (InsidePredicate_20588_13574 q@@250 w@@257 r@@250 u@@250))
)))
(assert (forall ((p@@259 T@Field_16931_16932) (v_1@@258 T@FrameType) (q@@251 T@Field_19687_19688) (w@@258 T@FrameType) (r@@251 T@Field_20617_20618) (u@@251 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_19654 p@@259 v_1@@258 q@@251 w@@258) (InsidePredicate_19654_20588 q@@251 w@@258 r@@251 u@@251)) (InsidePredicate_16902_20588 p@@259 v_1@@258 r@@251 u@@251))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_19654 p@@259 v_1@@258 q@@251 w@@258) (InsidePredicate_19654_20588 q@@251 w@@258 r@@251 u@@251))
)))
(assert (forall ((p@@260 T@Field_16931_16932) (v_1@@259 T@FrameType) (q@@252 T@Field_19687_19688) (w@@259 T@FrameType) (r@@252 T@Field_19687_19688) (u@@252 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_19654 p@@260 v_1@@259 q@@252 w@@259) (InsidePredicate_19654_19654 q@@252 w@@259 r@@252 u@@252)) (InsidePredicate_16902_19654 p@@260 v_1@@259 r@@252 u@@252))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_19654 p@@260 v_1@@259 q@@252 w@@259) (InsidePredicate_19654_19654 q@@252 w@@259 r@@252 u@@252))
)))
(assert (forall ((p@@261 T@Field_16931_16932) (v_1@@260 T@FrameType) (q@@253 T@Field_19687_19688) (w@@260 T@FrameType) (r@@253 T@Field_18836_18837) (u@@253 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_19654 p@@261 v_1@@260 q@@253 w@@260) (InsidePredicate_19654_18805 q@@253 w@@260 r@@253 u@@253)) (InsidePredicate_16902_18805 p@@261 v_1@@260 r@@253 u@@253))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_19654 p@@261 v_1@@260 q@@253 w@@260) (InsidePredicate_19654_18805 q@@253 w@@260 r@@253 u@@253))
)))
(assert (forall ((p@@262 T@Field_16931_16932) (v_1@@261 T@FrameType) (q@@254 T@Field_19687_19688) (w@@261 T@FrameType) (r@@254 T@Field_18274_18275) (u@@254 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_19654 p@@262 v_1@@261 q@@254 w@@261) (InsidePredicate_19654_18247 q@@254 w@@261 r@@254 u@@254)) (InsidePredicate_16902_18247 p@@262 v_1@@261 r@@254 u@@254))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_19654 p@@262 v_1@@261 q@@254 w@@261) (InsidePredicate_19654_18247 q@@254 w@@261 r@@254 u@@254))
)))
(assert (forall ((p@@263 T@Field_16931_16932) (v_1@@262 T@FrameType) (q@@255 T@Field_19687_19688) (w@@262 T@FrameType) (r@@255 T@Field_17575_17576) (u@@255 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_19654 p@@263 v_1@@262 q@@255 w@@262) (InsidePredicate_19654_17546 q@@255 w@@262 r@@255 u@@255)) (InsidePredicate_16902_17546 p@@263 v_1@@262 r@@255 u@@255))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_19654 p@@263 v_1@@262 q@@255 w@@262) (InsidePredicate_19654_17546 q@@255 w@@262 r@@255 u@@255))
)))
(assert (forall ((p@@264 T@Field_16931_16932) (v_1@@263 T@FrameType) (q@@256 T@Field_19687_19688) (w@@263 T@FrameType) (r@@256 T@Field_16931_16932) (u@@256 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_19654 p@@264 v_1@@263 q@@256 w@@263) (InsidePredicate_19654_16902 q@@256 w@@263 r@@256 u@@256)) (InsidePredicate_16902_16902 p@@264 v_1@@263 r@@256 u@@256))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_19654 p@@264 v_1@@263 q@@256 w@@263) (InsidePredicate_19654_16902 q@@256 w@@263 r@@256 u@@256))
)))
(assert (forall ((p@@265 T@Field_16931_16932) (v_1@@264 T@FrameType) (q@@257 T@Field_19687_19688) (w@@264 T@FrameType) (r@@257 T@Field_8623_16932) (u@@257 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_19654 p@@265 v_1@@264 q@@257 w@@264) (InsidePredicate_19654_13574 q@@257 w@@264 r@@257 u@@257)) (InsidePredicate_16902_13574 p@@265 v_1@@264 r@@257 u@@257))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_19654 p@@265 v_1@@264 q@@257 w@@264) (InsidePredicate_19654_13574 q@@257 w@@264 r@@257 u@@257))
)))
(assert (forall ((p@@266 T@Field_16931_16932) (v_1@@265 T@FrameType) (q@@258 T@Field_18836_18837) (w@@265 T@FrameType) (r@@258 T@Field_20617_20618) (u@@258 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_18805 p@@266 v_1@@265 q@@258 w@@265) (InsidePredicate_18805_20588 q@@258 w@@265 r@@258 u@@258)) (InsidePredicate_16902_20588 p@@266 v_1@@265 r@@258 u@@258))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_18805 p@@266 v_1@@265 q@@258 w@@265) (InsidePredicate_18805_20588 q@@258 w@@265 r@@258 u@@258))
)))
(assert (forall ((p@@267 T@Field_16931_16932) (v_1@@266 T@FrameType) (q@@259 T@Field_18836_18837) (w@@266 T@FrameType) (r@@259 T@Field_19687_19688) (u@@259 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_18805 p@@267 v_1@@266 q@@259 w@@266) (InsidePredicate_18805_19654 q@@259 w@@266 r@@259 u@@259)) (InsidePredicate_16902_19654 p@@267 v_1@@266 r@@259 u@@259))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_18805 p@@267 v_1@@266 q@@259 w@@266) (InsidePredicate_18805_19654 q@@259 w@@266 r@@259 u@@259))
)))
(assert (forall ((p@@268 T@Field_16931_16932) (v_1@@267 T@FrameType) (q@@260 T@Field_18836_18837) (w@@267 T@FrameType) (r@@260 T@Field_18836_18837) (u@@260 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_18805 p@@268 v_1@@267 q@@260 w@@267) (InsidePredicate_18805_18805 q@@260 w@@267 r@@260 u@@260)) (InsidePredicate_16902_18805 p@@268 v_1@@267 r@@260 u@@260))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_18805 p@@268 v_1@@267 q@@260 w@@267) (InsidePredicate_18805_18805 q@@260 w@@267 r@@260 u@@260))
)))
(assert (forall ((p@@269 T@Field_16931_16932) (v_1@@268 T@FrameType) (q@@261 T@Field_18836_18837) (w@@268 T@FrameType) (r@@261 T@Field_18274_18275) (u@@261 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_18805 p@@269 v_1@@268 q@@261 w@@268) (InsidePredicate_18805_18247 q@@261 w@@268 r@@261 u@@261)) (InsidePredicate_16902_18247 p@@269 v_1@@268 r@@261 u@@261))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_18805 p@@269 v_1@@268 q@@261 w@@268) (InsidePredicate_18805_18247 q@@261 w@@268 r@@261 u@@261))
)))
(assert (forall ((p@@270 T@Field_16931_16932) (v_1@@269 T@FrameType) (q@@262 T@Field_18836_18837) (w@@269 T@FrameType) (r@@262 T@Field_17575_17576) (u@@262 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_18805 p@@270 v_1@@269 q@@262 w@@269) (InsidePredicate_18805_17546 q@@262 w@@269 r@@262 u@@262)) (InsidePredicate_16902_17546 p@@270 v_1@@269 r@@262 u@@262))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_18805 p@@270 v_1@@269 q@@262 w@@269) (InsidePredicate_18805_17546 q@@262 w@@269 r@@262 u@@262))
)))
(assert (forall ((p@@271 T@Field_16931_16932) (v_1@@270 T@FrameType) (q@@263 T@Field_18836_18837) (w@@270 T@FrameType) (r@@263 T@Field_16931_16932) (u@@263 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_18805 p@@271 v_1@@270 q@@263 w@@270) (InsidePredicate_18805_16902 q@@263 w@@270 r@@263 u@@263)) (InsidePredicate_16902_16902 p@@271 v_1@@270 r@@263 u@@263))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_18805 p@@271 v_1@@270 q@@263 w@@270) (InsidePredicate_18805_16902 q@@263 w@@270 r@@263 u@@263))
)))
(assert (forall ((p@@272 T@Field_16931_16932) (v_1@@271 T@FrameType) (q@@264 T@Field_18836_18837) (w@@271 T@FrameType) (r@@264 T@Field_8623_16932) (u@@264 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_18805 p@@272 v_1@@271 q@@264 w@@271) (InsidePredicate_18805_13574 q@@264 w@@271 r@@264 u@@264)) (InsidePredicate_16902_13574 p@@272 v_1@@271 r@@264 u@@264))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_18805 p@@272 v_1@@271 q@@264 w@@271) (InsidePredicate_18805_13574 q@@264 w@@271 r@@264 u@@264))
)))
(assert (forall ((p@@273 T@Field_16931_16932) (v_1@@272 T@FrameType) (q@@265 T@Field_18274_18275) (w@@272 T@FrameType) (r@@265 T@Field_20617_20618) (u@@265 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_18247 p@@273 v_1@@272 q@@265 w@@272) (InsidePredicate_18247_20588 q@@265 w@@272 r@@265 u@@265)) (InsidePredicate_16902_20588 p@@273 v_1@@272 r@@265 u@@265))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_18247 p@@273 v_1@@272 q@@265 w@@272) (InsidePredicate_18247_20588 q@@265 w@@272 r@@265 u@@265))
)))
(assert (forall ((p@@274 T@Field_16931_16932) (v_1@@273 T@FrameType) (q@@266 T@Field_18274_18275) (w@@273 T@FrameType) (r@@266 T@Field_19687_19688) (u@@266 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_18247 p@@274 v_1@@273 q@@266 w@@273) (InsidePredicate_18247_19654 q@@266 w@@273 r@@266 u@@266)) (InsidePredicate_16902_19654 p@@274 v_1@@273 r@@266 u@@266))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_18247 p@@274 v_1@@273 q@@266 w@@273) (InsidePredicate_18247_19654 q@@266 w@@273 r@@266 u@@266))
)))
(assert (forall ((p@@275 T@Field_16931_16932) (v_1@@274 T@FrameType) (q@@267 T@Field_18274_18275) (w@@274 T@FrameType) (r@@267 T@Field_18836_18837) (u@@267 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_18247 p@@275 v_1@@274 q@@267 w@@274) (InsidePredicate_18247_18805 q@@267 w@@274 r@@267 u@@267)) (InsidePredicate_16902_18805 p@@275 v_1@@274 r@@267 u@@267))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_18247 p@@275 v_1@@274 q@@267 w@@274) (InsidePredicate_18247_18805 q@@267 w@@274 r@@267 u@@267))
)))
(assert (forall ((p@@276 T@Field_16931_16932) (v_1@@275 T@FrameType) (q@@268 T@Field_18274_18275) (w@@275 T@FrameType) (r@@268 T@Field_18274_18275) (u@@268 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_18247 p@@276 v_1@@275 q@@268 w@@275) (InsidePredicate_18247_18247 q@@268 w@@275 r@@268 u@@268)) (InsidePredicate_16902_18247 p@@276 v_1@@275 r@@268 u@@268))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_18247 p@@276 v_1@@275 q@@268 w@@275) (InsidePredicate_18247_18247 q@@268 w@@275 r@@268 u@@268))
)))
(assert (forall ((p@@277 T@Field_16931_16932) (v_1@@276 T@FrameType) (q@@269 T@Field_18274_18275) (w@@276 T@FrameType) (r@@269 T@Field_17575_17576) (u@@269 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_18247 p@@277 v_1@@276 q@@269 w@@276) (InsidePredicate_18247_17546 q@@269 w@@276 r@@269 u@@269)) (InsidePredicate_16902_17546 p@@277 v_1@@276 r@@269 u@@269))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_18247 p@@277 v_1@@276 q@@269 w@@276) (InsidePredicate_18247_17546 q@@269 w@@276 r@@269 u@@269))
)))
(assert (forall ((p@@278 T@Field_16931_16932) (v_1@@277 T@FrameType) (q@@270 T@Field_18274_18275) (w@@277 T@FrameType) (r@@270 T@Field_16931_16932) (u@@270 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_18247 p@@278 v_1@@277 q@@270 w@@277) (InsidePredicate_18247_16902 q@@270 w@@277 r@@270 u@@270)) (InsidePredicate_16902_16902 p@@278 v_1@@277 r@@270 u@@270))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_18247 p@@278 v_1@@277 q@@270 w@@277) (InsidePredicate_18247_16902 q@@270 w@@277 r@@270 u@@270))
)))
(assert (forall ((p@@279 T@Field_16931_16932) (v_1@@278 T@FrameType) (q@@271 T@Field_18274_18275) (w@@278 T@FrameType) (r@@271 T@Field_8623_16932) (u@@271 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_18247 p@@279 v_1@@278 q@@271 w@@278) (InsidePredicate_18247_13574 q@@271 w@@278 r@@271 u@@271)) (InsidePredicate_16902_13574 p@@279 v_1@@278 r@@271 u@@271))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_18247 p@@279 v_1@@278 q@@271 w@@278) (InsidePredicate_18247_13574 q@@271 w@@278 r@@271 u@@271))
)))
(assert (forall ((p@@280 T@Field_16931_16932) (v_1@@279 T@FrameType) (q@@272 T@Field_17575_17576) (w@@279 T@FrameType) (r@@272 T@Field_20617_20618) (u@@272 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_17546 p@@280 v_1@@279 q@@272 w@@279) (InsidePredicate_17546_20588 q@@272 w@@279 r@@272 u@@272)) (InsidePredicate_16902_20588 p@@280 v_1@@279 r@@272 u@@272))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_17546 p@@280 v_1@@279 q@@272 w@@279) (InsidePredicate_17546_20588 q@@272 w@@279 r@@272 u@@272))
)))
(assert (forall ((p@@281 T@Field_16931_16932) (v_1@@280 T@FrameType) (q@@273 T@Field_17575_17576) (w@@280 T@FrameType) (r@@273 T@Field_19687_19688) (u@@273 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_17546 p@@281 v_1@@280 q@@273 w@@280) (InsidePredicate_17546_19654 q@@273 w@@280 r@@273 u@@273)) (InsidePredicate_16902_19654 p@@281 v_1@@280 r@@273 u@@273))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_17546 p@@281 v_1@@280 q@@273 w@@280) (InsidePredicate_17546_19654 q@@273 w@@280 r@@273 u@@273))
)))
(assert (forall ((p@@282 T@Field_16931_16932) (v_1@@281 T@FrameType) (q@@274 T@Field_17575_17576) (w@@281 T@FrameType) (r@@274 T@Field_18836_18837) (u@@274 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_17546 p@@282 v_1@@281 q@@274 w@@281) (InsidePredicate_17546_18805 q@@274 w@@281 r@@274 u@@274)) (InsidePredicate_16902_18805 p@@282 v_1@@281 r@@274 u@@274))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_17546 p@@282 v_1@@281 q@@274 w@@281) (InsidePredicate_17546_18805 q@@274 w@@281 r@@274 u@@274))
)))
(assert (forall ((p@@283 T@Field_16931_16932) (v_1@@282 T@FrameType) (q@@275 T@Field_17575_17576) (w@@282 T@FrameType) (r@@275 T@Field_18274_18275) (u@@275 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_17546 p@@283 v_1@@282 q@@275 w@@282) (InsidePredicate_17546_18247 q@@275 w@@282 r@@275 u@@275)) (InsidePredicate_16902_18247 p@@283 v_1@@282 r@@275 u@@275))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_17546 p@@283 v_1@@282 q@@275 w@@282) (InsidePredicate_17546_18247 q@@275 w@@282 r@@275 u@@275))
)))
(assert (forall ((p@@284 T@Field_16931_16932) (v_1@@283 T@FrameType) (q@@276 T@Field_17575_17576) (w@@283 T@FrameType) (r@@276 T@Field_17575_17576) (u@@276 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_17546 p@@284 v_1@@283 q@@276 w@@283) (InsidePredicate_17546_17546 q@@276 w@@283 r@@276 u@@276)) (InsidePredicate_16902_17546 p@@284 v_1@@283 r@@276 u@@276))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_17546 p@@284 v_1@@283 q@@276 w@@283) (InsidePredicate_17546_17546 q@@276 w@@283 r@@276 u@@276))
)))
(assert (forall ((p@@285 T@Field_16931_16932) (v_1@@284 T@FrameType) (q@@277 T@Field_17575_17576) (w@@284 T@FrameType) (r@@277 T@Field_16931_16932) (u@@277 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_17546 p@@285 v_1@@284 q@@277 w@@284) (InsidePredicate_17546_16902 q@@277 w@@284 r@@277 u@@277)) (InsidePredicate_16902_16902 p@@285 v_1@@284 r@@277 u@@277))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_17546 p@@285 v_1@@284 q@@277 w@@284) (InsidePredicate_17546_16902 q@@277 w@@284 r@@277 u@@277))
)))
(assert (forall ((p@@286 T@Field_16931_16932) (v_1@@285 T@FrameType) (q@@278 T@Field_17575_17576) (w@@285 T@FrameType) (r@@278 T@Field_8623_16932) (u@@278 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_17546 p@@286 v_1@@285 q@@278 w@@285) (InsidePredicate_17546_13574 q@@278 w@@285 r@@278 u@@278)) (InsidePredicate_16902_13574 p@@286 v_1@@285 r@@278 u@@278))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_17546 p@@286 v_1@@285 q@@278 w@@285) (InsidePredicate_17546_13574 q@@278 w@@285 r@@278 u@@278))
)))
(assert (forall ((p@@287 T@Field_16931_16932) (v_1@@286 T@FrameType) (q@@279 T@Field_16931_16932) (w@@286 T@FrameType) (r@@279 T@Field_20617_20618) (u@@279 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_16902 p@@287 v_1@@286 q@@279 w@@286) (InsidePredicate_16902_20588 q@@279 w@@286 r@@279 u@@279)) (InsidePredicate_16902_20588 p@@287 v_1@@286 r@@279 u@@279))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_16902 p@@287 v_1@@286 q@@279 w@@286) (InsidePredicate_16902_20588 q@@279 w@@286 r@@279 u@@279))
)))
(assert (forall ((p@@288 T@Field_16931_16932) (v_1@@287 T@FrameType) (q@@280 T@Field_16931_16932) (w@@287 T@FrameType) (r@@280 T@Field_19687_19688) (u@@280 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_16902 p@@288 v_1@@287 q@@280 w@@287) (InsidePredicate_16902_19654 q@@280 w@@287 r@@280 u@@280)) (InsidePredicate_16902_19654 p@@288 v_1@@287 r@@280 u@@280))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_16902 p@@288 v_1@@287 q@@280 w@@287) (InsidePredicate_16902_19654 q@@280 w@@287 r@@280 u@@280))
)))
(assert (forall ((p@@289 T@Field_16931_16932) (v_1@@288 T@FrameType) (q@@281 T@Field_16931_16932) (w@@288 T@FrameType) (r@@281 T@Field_18836_18837) (u@@281 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_16902 p@@289 v_1@@288 q@@281 w@@288) (InsidePredicate_16902_18805 q@@281 w@@288 r@@281 u@@281)) (InsidePredicate_16902_18805 p@@289 v_1@@288 r@@281 u@@281))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_16902 p@@289 v_1@@288 q@@281 w@@288) (InsidePredicate_16902_18805 q@@281 w@@288 r@@281 u@@281))
)))
(assert (forall ((p@@290 T@Field_16931_16932) (v_1@@289 T@FrameType) (q@@282 T@Field_16931_16932) (w@@289 T@FrameType) (r@@282 T@Field_18274_18275) (u@@282 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_16902 p@@290 v_1@@289 q@@282 w@@289) (InsidePredicate_16902_18247 q@@282 w@@289 r@@282 u@@282)) (InsidePredicate_16902_18247 p@@290 v_1@@289 r@@282 u@@282))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_16902 p@@290 v_1@@289 q@@282 w@@289) (InsidePredicate_16902_18247 q@@282 w@@289 r@@282 u@@282))
)))
(assert (forall ((p@@291 T@Field_16931_16932) (v_1@@290 T@FrameType) (q@@283 T@Field_16931_16932) (w@@290 T@FrameType) (r@@283 T@Field_17575_17576) (u@@283 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_16902 p@@291 v_1@@290 q@@283 w@@290) (InsidePredicate_16902_17546 q@@283 w@@290 r@@283 u@@283)) (InsidePredicate_16902_17546 p@@291 v_1@@290 r@@283 u@@283))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_16902 p@@291 v_1@@290 q@@283 w@@290) (InsidePredicate_16902_17546 q@@283 w@@290 r@@283 u@@283))
)))
(assert (forall ((p@@292 T@Field_16931_16932) (v_1@@291 T@FrameType) (q@@284 T@Field_16931_16932) (w@@291 T@FrameType) (r@@284 T@Field_16931_16932) (u@@284 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_16902 p@@292 v_1@@291 q@@284 w@@291) (InsidePredicate_16902_16902 q@@284 w@@291 r@@284 u@@284)) (InsidePredicate_16902_16902 p@@292 v_1@@291 r@@284 u@@284))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_16902 p@@292 v_1@@291 q@@284 w@@291) (InsidePredicate_16902_16902 q@@284 w@@291 r@@284 u@@284))
)))
(assert (forall ((p@@293 T@Field_16931_16932) (v_1@@292 T@FrameType) (q@@285 T@Field_16931_16932) (w@@292 T@FrameType) (r@@285 T@Field_8623_16932) (u@@285 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_16902 p@@293 v_1@@292 q@@285 w@@292) (InsidePredicate_16902_13574 q@@285 w@@292 r@@285 u@@285)) (InsidePredicate_16902_13574 p@@293 v_1@@292 r@@285 u@@285))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_16902 p@@293 v_1@@292 q@@285 w@@292) (InsidePredicate_16902_13574 q@@285 w@@292 r@@285 u@@285))
)))
(assert (forall ((p@@294 T@Field_16931_16932) (v_1@@293 T@FrameType) (q@@286 T@Field_8623_16932) (w@@293 T@FrameType) (r@@286 T@Field_20617_20618) (u@@286 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_13574 p@@294 v_1@@293 q@@286 w@@293) (InsidePredicate_13574_20588 q@@286 w@@293 r@@286 u@@286)) (InsidePredicate_16902_20588 p@@294 v_1@@293 r@@286 u@@286))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_13574 p@@294 v_1@@293 q@@286 w@@293) (InsidePredicate_13574_20588 q@@286 w@@293 r@@286 u@@286))
)))
(assert (forall ((p@@295 T@Field_16931_16932) (v_1@@294 T@FrameType) (q@@287 T@Field_8623_16932) (w@@294 T@FrameType) (r@@287 T@Field_19687_19688) (u@@287 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_13574 p@@295 v_1@@294 q@@287 w@@294) (InsidePredicate_13574_19654 q@@287 w@@294 r@@287 u@@287)) (InsidePredicate_16902_19654 p@@295 v_1@@294 r@@287 u@@287))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_13574 p@@295 v_1@@294 q@@287 w@@294) (InsidePredicate_13574_19654 q@@287 w@@294 r@@287 u@@287))
)))
(assert (forall ((p@@296 T@Field_16931_16932) (v_1@@295 T@FrameType) (q@@288 T@Field_8623_16932) (w@@295 T@FrameType) (r@@288 T@Field_18836_18837) (u@@288 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_13574 p@@296 v_1@@295 q@@288 w@@295) (InsidePredicate_13574_18805 q@@288 w@@295 r@@288 u@@288)) (InsidePredicate_16902_18805 p@@296 v_1@@295 r@@288 u@@288))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_13574 p@@296 v_1@@295 q@@288 w@@295) (InsidePredicate_13574_18805 q@@288 w@@295 r@@288 u@@288))
)))
(assert (forall ((p@@297 T@Field_16931_16932) (v_1@@296 T@FrameType) (q@@289 T@Field_8623_16932) (w@@296 T@FrameType) (r@@289 T@Field_18274_18275) (u@@289 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_13574 p@@297 v_1@@296 q@@289 w@@296) (InsidePredicate_13574_18247 q@@289 w@@296 r@@289 u@@289)) (InsidePredicate_16902_18247 p@@297 v_1@@296 r@@289 u@@289))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_13574 p@@297 v_1@@296 q@@289 w@@296) (InsidePredicate_13574_18247 q@@289 w@@296 r@@289 u@@289))
)))
(assert (forall ((p@@298 T@Field_16931_16932) (v_1@@297 T@FrameType) (q@@290 T@Field_8623_16932) (w@@297 T@FrameType) (r@@290 T@Field_17575_17576) (u@@290 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_13574 p@@298 v_1@@297 q@@290 w@@297) (InsidePredicate_13574_17546 q@@290 w@@297 r@@290 u@@290)) (InsidePredicate_16902_17546 p@@298 v_1@@297 r@@290 u@@290))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_13574 p@@298 v_1@@297 q@@290 w@@297) (InsidePredicate_13574_17546 q@@290 w@@297 r@@290 u@@290))
)))
(assert (forall ((p@@299 T@Field_16931_16932) (v_1@@298 T@FrameType) (q@@291 T@Field_8623_16932) (w@@298 T@FrameType) (r@@291 T@Field_16931_16932) (u@@291 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_13574 p@@299 v_1@@298 q@@291 w@@298) (InsidePredicate_13574_16902 q@@291 w@@298 r@@291 u@@291)) (InsidePredicate_16902_16902 p@@299 v_1@@298 r@@291 u@@291))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_13574 p@@299 v_1@@298 q@@291 w@@298) (InsidePredicate_13574_16902 q@@291 w@@298 r@@291 u@@291))
)))
(assert (forall ((p@@300 T@Field_16931_16932) (v_1@@299 T@FrameType) (q@@292 T@Field_8623_16932) (w@@299 T@FrameType) (r@@292 T@Field_8623_16932) (u@@292 T@FrameType) ) (!  (=> (and (InsidePredicate_16902_13574 p@@300 v_1@@299 q@@292 w@@299) (InsidePredicate_13574_13574 q@@292 w@@299 r@@292 u@@292)) (InsidePredicate_16902_13574 p@@300 v_1@@299 r@@292 u@@292))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16902_13574 p@@300 v_1@@299 q@@292 w@@299) (InsidePredicate_13574_13574 q@@292 w@@299 r@@292 u@@292))
)))
(assert (forall ((p@@301 T@Field_8623_16932) (v_1@@300 T@FrameType) (q@@293 T@Field_20617_20618) (w@@300 T@FrameType) (r@@293 T@Field_20617_20618) (u@@293 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_20588 p@@301 v_1@@300 q@@293 w@@300) (InsidePredicate_20588_20588 q@@293 w@@300 r@@293 u@@293)) (InsidePredicate_13574_20588 p@@301 v_1@@300 r@@293 u@@293))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_20588 p@@301 v_1@@300 q@@293 w@@300) (InsidePredicate_20588_20588 q@@293 w@@300 r@@293 u@@293))
)))
(assert (forall ((p@@302 T@Field_8623_16932) (v_1@@301 T@FrameType) (q@@294 T@Field_20617_20618) (w@@301 T@FrameType) (r@@294 T@Field_19687_19688) (u@@294 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_20588 p@@302 v_1@@301 q@@294 w@@301) (InsidePredicate_20588_19654 q@@294 w@@301 r@@294 u@@294)) (InsidePredicate_13574_19654 p@@302 v_1@@301 r@@294 u@@294))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_20588 p@@302 v_1@@301 q@@294 w@@301) (InsidePredicate_20588_19654 q@@294 w@@301 r@@294 u@@294))
)))
(assert (forall ((p@@303 T@Field_8623_16932) (v_1@@302 T@FrameType) (q@@295 T@Field_20617_20618) (w@@302 T@FrameType) (r@@295 T@Field_18836_18837) (u@@295 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_20588 p@@303 v_1@@302 q@@295 w@@302) (InsidePredicate_20588_18805 q@@295 w@@302 r@@295 u@@295)) (InsidePredicate_13574_18805 p@@303 v_1@@302 r@@295 u@@295))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_20588 p@@303 v_1@@302 q@@295 w@@302) (InsidePredicate_20588_18805 q@@295 w@@302 r@@295 u@@295))
)))
(assert (forall ((p@@304 T@Field_8623_16932) (v_1@@303 T@FrameType) (q@@296 T@Field_20617_20618) (w@@303 T@FrameType) (r@@296 T@Field_18274_18275) (u@@296 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_20588 p@@304 v_1@@303 q@@296 w@@303) (InsidePredicate_20588_18247 q@@296 w@@303 r@@296 u@@296)) (InsidePredicate_13574_18247 p@@304 v_1@@303 r@@296 u@@296))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_20588 p@@304 v_1@@303 q@@296 w@@303) (InsidePredicate_20588_18247 q@@296 w@@303 r@@296 u@@296))
)))
(assert (forall ((p@@305 T@Field_8623_16932) (v_1@@304 T@FrameType) (q@@297 T@Field_20617_20618) (w@@304 T@FrameType) (r@@297 T@Field_17575_17576) (u@@297 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_20588 p@@305 v_1@@304 q@@297 w@@304) (InsidePredicate_20588_17546 q@@297 w@@304 r@@297 u@@297)) (InsidePredicate_13574_17546 p@@305 v_1@@304 r@@297 u@@297))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_20588 p@@305 v_1@@304 q@@297 w@@304) (InsidePredicate_20588_17546 q@@297 w@@304 r@@297 u@@297))
)))
(assert (forall ((p@@306 T@Field_8623_16932) (v_1@@305 T@FrameType) (q@@298 T@Field_20617_20618) (w@@305 T@FrameType) (r@@298 T@Field_16931_16932) (u@@298 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_20588 p@@306 v_1@@305 q@@298 w@@305) (InsidePredicate_20588_16902 q@@298 w@@305 r@@298 u@@298)) (InsidePredicate_13574_16902 p@@306 v_1@@305 r@@298 u@@298))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_20588 p@@306 v_1@@305 q@@298 w@@305) (InsidePredicate_20588_16902 q@@298 w@@305 r@@298 u@@298))
)))
(assert (forall ((p@@307 T@Field_8623_16932) (v_1@@306 T@FrameType) (q@@299 T@Field_20617_20618) (w@@306 T@FrameType) (r@@299 T@Field_8623_16932) (u@@299 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_20588 p@@307 v_1@@306 q@@299 w@@306) (InsidePredicate_20588_13574 q@@299 w@@306 r@@299 u@@299)) (InsidePredicate_13574_13574 p@@307 v_1@@306 r@@299 u@@299))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_20588 p@@307 v_1@@306 q@@299 w@@306) (InsidePredicate_20588_13574 q@@299 w@@306 r@@299 u@@299))
)))
(assert (forall ((p@@308 T@Field_8623_16932) (v_1@@307 T@FrameType) (q@@300 T@Field_19687_19688) (w@@307 T@FrameType) (r@@300 T@Field_20617_20618) (u@@300 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_19654 p@@308 v_1@@307 q@@300 w@@307) (InsidePredicate_19654_20588 q@@300 w@@307 r@@300 u@@300)) (InsidePredicate_13574_20588 p@@308 v_1@@307 r@@300 u@@300))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_19654 p@@308 v_1@@307 q@@300 w@@307) (InsidePredicate_19654_20588 q@@300 w@@307 r@@300 u@@300))
)))
(assert (forall ((p@@309 T@Field_8623_16932) (v_1@@308 T@FrameType) (q@@301 T@Field_19687_19688) (w@@308 T@FrameType) (r@@301 T@Field_19687_19688) (u@@301 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_19654 p@@309 v_1@@308 q@@301 w@@308) (InsidePredicate_19654_19654 q@@301 w@@308 r@@301 u@@301)) (InsidePredicate_13574_19654 p@@309 v_1@@308 r@@301 u@@301))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_19654 p@@309 v_1@@308 q@@301 w@@308) (InsidePredicate_19654_19654 q@@301 w@@308 r@@301 u@@301))
)))
(assert (forall ((p@@310 T@Field_8623_16932) (v_1@@309 T@FrameType) (q@@302 T@Field_19687_19688) (w@@309 T@FrameType) (r@@302 T@Field_18836_18837) (u@@302 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_19654 p@@310 v_1@@309 q@@302 w@@309) (InsidePredicate_19654_18805 q@@302 w@@309 r@@302 u@@302)) (InsidePredicate_13574_18805 p@@310 v_1@@309 r@@302 u@@302))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_19654 p@@310 v_1@@309 q@@302 w@@309) (InsidePredicate_19654_18805 q@@302 w@@309 r@@302 u@@302))
)))
(assert (forall ((p@@311 T@Field_8623_16932) (v_1@@310 T@FrameType) (q@@303 T@Field_19687_19688) (w@@310 T@FrameType) (r@@303 T@Field_18274_18275) (u@@303 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_19654 p@@311 v_1@@310 q@@303 w@@310) (InsidePredicate_19654_18247 q@@303 w@@310 r@@303 u@@303)) (InsidePredicate_13574_18247 p@@311 v_1@@310 r@@303 u@@303))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_19654 p@@311 v_1@@310 q@@303 w@@310) (InsidePredicate_19654_18247 q@@303 w@@310 r@@303 u@@303))
)))
(assert (forall ((p@@312 T@Field_8623_16932) (v_1@@311 T@FrameType) (q@@304 T@Field_19687_19688) (w@@311 T@FrameType) (r@@304 T@Field_17575_17576) (u@@304 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_19654 p@@312 v_1@@311 q@@304 w@@311) (InsidePredicate_19654_17546 q@@304 w@@311 r@@304 u@@304)) (InsidePredicate_13574_17546 p@@312 v_1@@311 r@@304 u@@304))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_19654 p@@312 v_1@@311 q@@304 w@@311) (InsidePredicate_19654_17546 q@@304 w@@311 r@@304 u@@304))
)))
(assert (forall ((p@@313 T@Field_8623_16932) (v_1@@312 T@FrameType) (q@@305 T@Field_19687_19688) (w@@312 T@FrameType) (r@@305 T@Field_16931_16932) (u@@305 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_19654 p@@313 v_1@@312 q@@305 w@@312) (InsidePredicate_19654_16902 q@@305 w@@312 r@@305 u@@305)) (InsidePredicate_13574_16902 p@@313 v_1@@312 r@@305 u@@305))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_19654 p@@313 v_1@@312 q@@305 w@@312) (InsidePredicate_19654_16902 q@@305 w@@312 r@@305 u@@305))
)))
(assert (forall ((p@@314 T@Field_8623_16932) (v_1@@313 T@FrameType) (q@@306 T@Field_19687_19688) (w@@313 T@FrameType) (r@@306 T@Field_8623_16932) (u@@306 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_19654 p@@314 v_1@@313 q@@306 w@@313) (InsidePredicate_19654_13574 q@@306 w@@313 r@@306 u@@306)) (InsidePredicate_13574_13574 p@@314 v_1@@313 r@@306 u@@306))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_19654 p@@314 v_1@@313 q@@306 w@@313) (InsidePredicate_19654_13574 q@@306 w@@313 r@@306 u@@306))
)))
(assert (forall ((p@@315 T@Field_8623_16932) (v_1@@314 T@FrameType) (q@@307 T@Field_18836_18837) (w@@314 T@FrameType) (r@@307 T@Field_20617_20618) (u@@307 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_18805 p@@315 v_1@@314 q@@307 w@@314) (InsidePredicate_18805_20588 q@@307 w@@314 r@@307 u@@307)) (InsidePredicate_13574_20588 p@@315 v_1@@314 r@@307 u@@307))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_18805 p@@315 v_1@@314 q@@307 w@@314) (InsidePredicate_18805_20588 q@@307 w@@314 r@@307 u@@307))
)))
(assert (forall ((p@@316 T@Field_8623_16932) (v_1@@315 T@FrameType) (q@@308 T@Field_18836_18837) (w@@315 T@FrameType) (r@@308 T@Field_19687_19688) (u@@308 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_18805 p@@316 v_1@@315 q@@308 w@@315) (InsidePredicate_18805_19654 q@@308 w@@315 r@@308 u@@308)) (InsidePredicate_13574_19654 p@@316 v_1@@315 r@@308 u@@308))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_18805 p@@316 v_1@@315 q@@308 w@@315) (InsidePredicate_18805_19654 q@@308 w@@315 r@@308 u@@308))
)))
(assert (forall ((p@@317 T@Field_8623_16932) (v_1@@316 T@FrameType) (q@@309 T@Field_18836_18837) (w@@316 T@FrameType) (r@@309 T@Field_18836_18837) (u@@309 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_18805 p@@317 v_1@@316 q@@309 w@@316) (InsidePredicate_18805_18805 q@@309 w@@316 r@@309 u@@309)) (InsidePredicate_13574_18805 p@@317 v_1@@316 r@@309 u@@309))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_18805 p@@317 v_1@@316 q@@309 w@@316) (InsidePredicate_18805_18805 q@@309 w@@316 r@@309 u@@309))
)))
(assert (forall ((p@@318 T@Field_8623_16932) (v_1@@317 T@FrameType) (q@@310 T@Field_18836_18837) (w@@317 T@FrameType) (r@@310 T@Field_18274_18275) (u@@310 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_18805 p@@318 v_1@@317 q@@310 w@@317) (InsidePredicate_18805_18247 q@@310 w@@317 r@@310 u@@310)) (InsidePredicate_13574_18247 p@@318 v_1@@317 r@@310 u@@310))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_18805 p@@318 v_1@@317 q@@310 w@@317) (InsidePredicate_18805_18247 q@@310 w@@317 r@@310 u@@310))
)))
(assert (forall ((p@@319 T@Field_8623_16932) (v_1@@318 T@FrameType) (q@@311 T@Field_18836_18837) (w@@318 T@FrameType) (r@@311 T@Field_17575_17576) (u@@311 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_18805 p@@319 v_1@@318 q@@311 w@@318) (InsidePredicate_18805_17546 q@@311 w@@318 r@@311 u@@311)) (InsidePredicate_13574_17546 p@@319 v_1@@318 r@@311 u@@311))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_18805 p@@319 v_1@@318 q@@311 w@@318) (InsidePredicate_18805_17546 q@@311 w@@318 r@@311 u@@311))
)))
(assert (forall ((p@@320 T@Field_8623_16932) (v_1@@319 T@FrameType) (q@@312 T@Field_18836_18837) (w@@319 T@FrameType) (r@@312 T@Field_16931_16932) (u@@312 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_18805 p@@320 v_1@@319 q@@312 w@@319) (InsidePredicate_18805_16902 q@@312 w@@319 r@@312 u@@312)) (InsidePredicate_13574_16902 p@@320 v_1@@319 r@@312 u@@312))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_18805 p@@320 v_1@@319 q@@312 w@@319) (InsidePredicate_18805_16902 q@@312 w@@319 r@@312 u@@312))
)))
(assert (forall ((p@@321 T@Field_8623_16932) (v_1@@320 T@FrameType) (q@@313 T@Field_18836_18837) (w@@320 T@FrameType) (r@@313 T@Field_8623_16932) (u@@313 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_18805 p@@321 v_1@@320 q@@313 w@@320) (InsidePredicate_18805_13574 q@@313 w@@320 r@@313 u@@313)) (InsidePredicate_13574_13574 p@@321 v_1@@320 r@@313 u@@313))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_18805 p@@321 v_1@@320 q@@313 w@@320) (InsidePredicate_18805_13574 q@@313 w@@320 r@@313 u@@313))
)))
(assert (forall ((p@@322 T@Field_8623_16932) (v_1@@321 T@FrameType) (q@@314 T@Field_18274_18275) (w@@321 T@FrameType) (r@@314 T@Field_20617_20618) (u@@314 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_18247 p@@322 v_1@@321 q@@314 w@@321) (InsidePredicate_18247_20588 q@@314 w@@321 r@@314 u@@314)) (InsidePredicate_13574_20588 p@@322 v_1@@321 r@@314 u@@314))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_18247 p@@322 v_1@@321 q@@314 w@@321) (InsidePredicate_18247_20588 q@@314 w@@321 r@@314 u@@314))
)))
(assert (forall ((p@@323 T@Field_8623_16932) (v_1@@322 T@FrameType) (q@@315 T@Field_18274_18275) (w@@322 T@FrameType) (r@@315 T@Field_19687_19688) (u@@315 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_18247 p@@323 v_1@@322 q@@315 w@@322) (InsidePredicate_18247_19654 q@@315 w@@322 r@@315 u@@315)) (InsidePredicate_13574_19654 p@@323 v_1@@322 r@@315 u@@315))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_18247 p@@323 v_1@@322 q@@315 w@@322) (InsidePredicate_18247_19654 q@@315 w@@322 r@@315 u@@315))
)))
(assert (forall ((p@@324 T@Field_8623_16932) (v_1@@323 T@FrameType) (q@@316 T@Field_18274_18275) (w@@323 T@FrameType) (r@@316 T@Field_18836_18837) (u@@316 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_18247 p@@324 v_1@@323 q@@316 w@@323) (InsidePredicate_18247_18805 q@@316 w@@323 r@@316 u@@316)) (InsidePredicate_13574_18805 p@@324 v_1@@323 r@@316 u@@316))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_18247 p@@324 v_1@@323 q@@316 w@@323) (InsidePredicate_18247_18805 q@@316 w@@323 r@@316 u@@316))
)))
(assert (forall ((p@@325 T@Field_8623_16932) (v_1@@324 T@FrameType) (q@@317 T@Field_18274_18275) (w@@324 T@FrameType) (r@@317 T@Field_18274_18275) (u@@317 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_18247 p@@325 v_1@@324 q@@317 w@@324) (InsidePredicate_18247_18247 q@@317 w@@324 r@@317 u@@317)) (InsidePredicate_13574_18247 p@@325 v_1@@324 r@@317 u@@317))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_18247 p@@325 v_1@@324 q@@317 w@@324) (InsidePredicate_18247_18247 q@@317 w@@324 r@@317 u@@317))
)))
(assert (forall ((p@@326 T@Field_8623_16932) (v_1@@325 T@FrameType) (q@@318 T@Field_18274_18275) (w@@325 T@FrameType) (r@@318 T@Field_17575_17576) (u@@318 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_18247 p@@326 v_1@@325 q@@318 w@@325) (InsidePredicate_18247_17546 q@@318 w@@325 r@@318 u@@318)) (InsidePredicate_13574_17546 p@@326 v_1@@325 r@@318 u@@318))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_18247 p@@326 v_1@@325 q@@318 w@@325) (InsidePredicate_18247_17546 q@@318 w@@325 r@@318 u@@318))
)))
(assert (forall ((p@@327 T@Field_8623_16932) (v_1@@326 T@FrameType) (q@@319 T@Field_18274_18275) (w@@326 T@FrameType) (r@@319 T@Field_16931_16932) (u@@319 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_18247 p@@327 v_1@@326 q@@319 w@@326) (InsidePredicate_18247_16902 q@@319 w@@326 r@@319 u@@319)) (InsidePredicate_13574_16902 p@@327 v_1@@326 r@@319 u@@319))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_18247 p@@327 v_1@@326 q@@319 w@@326) (InsidePredicate_18247_16902 q@@319 w@@326 r@@319 u@@319))
)))
(assert (forall ((p@@328 T@Field_8623_16932) (v_1@@327 T@FrameType) (q@@320 T@Field_18274_18275) (w@@327 T@FrameType) (r@@320 T@Field_8623_16932) (u@@320 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_18247 p@@328 v_1@@327 q@@320 w@@327) (InsidePredicate_18247_13574 q@@320 w@@327 r@@320 u@@320)) (InsidePredicate_13574_13574 p@@328 v_1@@327 r@@320 u@@320))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_18247 p@@328 v_1@@327 q@@320 w@@327) (InsidePredicate_18247_13574 q@@320 w@@327 r@@320 u@@320))
)))
(assert (forall ((p@@329 T@Field_8623_16932) (v_1@@328 T@FrameType) (q@@321 T@Field_17575_17576) (w@@328 T@FrameType) (r@@321 T@Field_20617_20618) (u@@321 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_17546 p@@329 v_1@@328 q@@321 w@@328) (InsidePredicate_17546_20588 q@@321 w@@328 r@@321 u@@321)) (InsidePredicate_13574_20588 p@@329 v_1@@328 r@@321 u@@321))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_17546 p@@329 v_1@@328 q@@321 w@@328) (InsidePredicate_17546_20588 q@@321 w@@328 r@@321 u@@321))
)))
(assert (forall ((p@@330 T@Field_8623_16932) (v_1@@329 T@FrameType) (q@@322 T@Field_17575_17576) (w@@329 T@FrameType) (r@@322 T@Field_19687_19688) (u@@322 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_17546 p@@330 v_1@@329 q@@322 w@@329) (InsidePredicate_17546_19654 q@@322 w@@329 r@@322 u@@322)) (InsidePredicate_13574_19654 p@@330 v_1@@329 r@@322 u@@322))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_17546 p@@330 v_1@@329 q@@322 w@@329) (InsidePredicate_17546_19654 q@@322 w@@329 r@@322 u@@322))
)))
(assert (forall ((p@@331 T@Field_8623_16932) (v_1@@330 T@FrameType) (q@@323 T@Field_17575_17576) (w@@330 T@FrameType) (r@@323 T@Field_18836_18837) (u@@323 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_17546 p@@331 v_1@@330 q@@323 w@@330) (InsidePredicate_17546_18805 q@@323 w@@330 r@@323 u@@323)) (InsidePredicate_13574_18805 p@@331 v_1@@330 r@@323 u@@323))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_17546 p@@331 v_1@@330 q@@323 w@@330) (InsidePredicate_17546_18805 q@@323 w@@330 r@@323 u@@323))
)))
(assert (forall ((p@@332 T@Field_8623_16932) (v_1@@331 T@FrameType) (q@@324 T@Field_17575_17576) (w@@331 T@FrameType) (r@@324 T@Field_18274_18275) (u@@324 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_17546 p@@332 v_1@@331 q@@324 w@@331) (InsidePredicate_17546_18247 q@@324 w@@331 r@@324 u@@324)) (InsidePredicate_13574_18247 p@@332 v_1@@331 r@@324 u@@324))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_17546 p@@332 v_1@@331 q@@324 w@@331) (InsidePredicate_17546_18247 q@@324 w@@331 r@@324 u@@324))
)))
(assert (forall ((p@@333 T@Field_8623_16932) (v_1@@332 T@FrameType) (q@@325 T@Field_17575_17576) (w@@332 T@FrameType) (r@@325 T@Field_17575_17576) (u@@325 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_17546 p@@333 v_1@@332 q@@325 w@@332) (InsidePredicate_17546_17546 q@@325 w@@332 r@@325 u@@325)) (InsidePredicate_13574_17546 p@@333 v_1@@332 r@@325 u@@325))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_17546 p@@333 v_1@@332 q@@325 w@@332) (InsidePredicate_17546_17546 q@@325 w@@332 r@@325 u@@325))
)))
(assert (forall ((p@@334 T@Field_8623_16932) (v_1@@333 T@FrameType) (q@@326 T@Field_17575_17576) (w@@333 T@FrameType) (r@@326 T@Field_16931_16932) (u@@326 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_17546 p@@334 v_1@@333 q@@326 w@@333) (InsidePredicate_17546_16902 q@@326 w@@333 r@@326 u@@326)) (InsidePredicate_13574_16902 p@@334 v_1@@333 r@@326 u@@326))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_17546 p@@334 v_1@@333 q@@326 w@@333) (InsidePredicate_17546_16902 q@@326 w@@333 r@@326 u@@326))
)))
(assert (forall ((p@@335 T@Field_8623_16932) (v_1@@334 T@FrameType) (q@@327 T@Field_17575_17576) (w@@334 T@FrameType) (r@@327 T@Field_8623_16932) (u@@327 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_17546 p@@335 v_1@@334 q@@327 w@@334) (InsidePredicate_17546_13574 q@@327 w@@334 r@@327 u@@327)) (InsidePredicate_13574_13574 p@@335 v_1@@334 r@@327 u@@327))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_17546 p@@335 v_1@@334 q@@327 w@@334) (InsidePredicate_17546_13574 q@@327 w@@334 r@@327 u@@327))
)))
(assert (forall ((p@@336 T@Field_8623_16932) (v_1@@335 T@FrameType) (q@@328 T@Field_16931_16932) (w@@335 T@FrameType) (r@@328 T@Field_20617_20618) (u@@328 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_16902 p@@336 v_1@@335 q@@328 w@@335) (InsidePredicate_16902_20588 q@@328 w@@335 r@@328 u@@328)) (InsidePredicate_13574_20588 p@@336 v_1@@335 r@@328 u@@328))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_16902 p@@336 v_1@@335 q@@328 w@@335) (InsidePredicate_16902_20588 q@@328 w@@335 r@@328 u@@328))
)))
(assert (forall ((p@@337 T@Field_8623_16932) (v_1@@336 T@FrameType) (q@@329 T@Field_16931_16932) (w@@336 T@FrameType) (r@@329 T@Field_19687_19688) (u@@329 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_16902 p@@337 v_1@@336 q@@329 w@@336) (InsidePredicate_16902_19654 q@@329 w@@336 r@@329 u@@329)) (InsidePredicate_13574_19654 p@@337 v_1@@336 r@@329 u@@329))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_16902 p@@337 v_1@@336 q@@329 w@@336) (InsidePredicate_16902_19654 q@@329 w@@336 r@@329 u@@329))
)))
(assert (forall ((p@@338 T@Field_8623_16932) (v_1@@337 T@FrameType) (q@@330 T@Field_16931_16932) (w@@337 T@FrameType) (r@@330 T@Field_18836_18837) (u@@330 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_16902 p@@338 v_1@@337 q@@330 w@@337) (InsidePredicate_16902_18805 q@@330 w@@337 r@@330 u@@330)) (InsidePredicate_13574_18805 p@@338 v_1@@337 r@@330 u@@330))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_16902 p@@338 v_1@@337 q@@330 w@@337) (InsidePredicate_16902_18805 q@@330 w@@337 r@@330 u@@330))
)))
(assert (forall ((p@@339 T@Field_8623_16932) (v_1@@338 T@FrameType) (q@@331 T@Field_16931_16932) (w@@338 T@FrameType) (r@@331 T@Field_18274_18275) (u@@331 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_16902 p@@339 v_1@@338 q@@331 w@@338) (InsidePredicate_16902_18247 q@@331 w@@338 r@@331 u@@331)) (InsidePredicate_13574_18247 p@@339 v_1@@338 r@@331 u@@331))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_16902 p@@339 v_1@@338 q@@331 w@@338) (InsidePredicate_16902_18247 q@@331 w@@338 r@@331 u@@331))
)))
(assert (forall ((p@@340 T@Field_8623_16932) (v_1@@339 T@FrameType) (q@@332 T@Field_16931_16932) (w@@339 T@FrameType) (r@@332 T@Field_17575_17576) (u@@332 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_16902 p@@340 v_1@@339 q@@332 w@@339) (InsidePredicate_16902_17546 q@@332 w@@339 r@@332 u@@332)) (InsidePredicate_13574_17546 p@@340 v_1@@339 r@@332 u@@332))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_16902 p@@340 v_1@@339 q@@332 w@@339) (InsidePredicate_16902_17546 q@@332 w@@339 r@@332 u@@332))
)))
(assert (forall ((p@@341 T@Field_8623_16932) (v_1@@340 T@FrameType) (q@@333 T@Field_16931_16932) (w@@340 T@FrameType) (r@@333 T@Field_16931_16932) (u@@333 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_16902 p@@341 v_1@@340 q@@333 w@@340) (InsidePredicate_16902_16902 q@@333 w@@340 r@@333 u@@333)) (InsidePredicate_13574_16902 p@@341 v_1@@340 r@@333 u@@333))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_16902 p@@341 v_1@@340 q@@333 w@@340) (InsidePredicate_16902_16902 q@@333 w@@340 r@@333 u@@333))
)))
(assert (forall ((p@@342 T@Field_8623_16932) (v_1@@341 T@FrameType) (q@@334 T@Field_16931_16932) (w@@341 T@FrameType) (r@@334 T@Field_8623_16932) (u@@334 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_16902 p@@342 v_1@@341 q@@334 w@@341) (InsidePredicate_16902_13574 q@@334 w@@341 r@@334 u@@334)) (InsidePredicate_13574_13574 p@@342 v_1@@341 r@@334 u@@334))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_16902 p@@342 v_1@@341 q@@334 w@@341) (InsidePredicate_16902_13574 q@@334 w@@341 r@@334 u@@334))
)))
(assert (forall ((p@@343 T@Field_8623_16932) (v_1@@342 T@FrameType) (q@@335 T@Field_8623_16932) (w@@342 T@FrameType) (r@@335 T@Field_20617_20618) (u@@335 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_13574 p@@343 v_1@@342 q@@335 w@@342) (InsidePredicate_13574_20588 q@@335 w@@342 r@@335 u@@335)) (InsidePredicate_13574_20588 p@@343 v_1@@342 r@@335 u@@335))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_13574 p@@343 v_1@@342 q@@335 w@@342) (InsidePredicate_13574_20588 q@@335 w@@342 r@@335 u@@335))
)))
(assert (forall ((p@@344 T@Field_8623_16932) (v_1@@343 T@FrameType) (q@@336 T@Field_8623_16932) (w@@343 T@FrameType) (r@@336 T@Field_19687_19688) (u@@336 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_13574 p@@344 v_1@@343 q@@336 w@@343) (InsidePredicate_13574_19654 q@@336 w@@343 r@@336 u@@336)) (InsidePredicate_13574_19654 p@@344 v_1@@343 r@@336 u@@336))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_13574 p@@344 v_1@@343 q@@336 w@@343) (InsidePredicate_13574_19654 q@@336 w@@343 r@@336 u@@336))
)))
(assert (forall ((p@@345 T@Field_8623_16932) (v_1@@344 T@FrameType) (q@@337 T@Field_8623_16932) (w@@344 T@FrameType) (r@@337 T@Field_18836_18837) (u@@337 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_13574 p@@345 v_1@@344 q@@337 w@@344) (InsidePredicate_13574_18805 q@@337 w@@344 r@@337 u@@337)) (InsidePredicate_13574_18805 p@@345 v_1@@344 r@@337 u@@337))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_13574 p@@345 v_1@@344 q@@337 w@@344) (InsidePredicate_13574_18805 q@@337 w@@344 r@@337 u@@337))
)))
(assert (forall ((p@@346 T@Field_8623_16932) (v_1@@345 T@FrameType) (q@@338 T@Field_8623_16932) (w@@345 T@FrameType) (r@@338 T@Field_18274_18275) (u@@338 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_13574 p@@346 v_1@@345 q@@338 w@@345) (InsidePredicate_13574_18247 q@@338 w@@345 r@@338 u@@338)) (InsidePredicate_13574_18247 p@@346 v_1@@345 r@@338 u@@338))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_13574 p@@346 v_1@@345 q@@338 w@@345) (InsidePredicate_13574_18247 q@@338 w@@345 r@@338 u@@338))
)))
(assert (forall ((p@@347 T@Field_8623_16932) (v_1@@346 T@FrameType) (q@@339 T@Field_8623_16932) (w@@346 T@FrameType) (r@@339 T@Field_17575_17576) (u@@339 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_13574 p@@347 v_1@@346 q@@339 w@@346) (InsidePredicate_13574_17546 q@@339 w@@346 r@@339 u@@339)) (InsidePredicate_13574_17546 p@@347 v_1@@346 r@@339 u@@339))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_13574 p@@347 v_1@@346 q@@339 w@@346) (InsidePredicate_13574_17546 q@@339 w@@346 r@@339 u@@339))
)))
(assert (forall ((p@@348 T@Field_8623_16932) (v_1@@347 T@FrameType) (q@@340 T@Field_8623_16932) (w@@347 T@FrameType) (r@@340 T@Field_16931_16932) (u@@340 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_13574 p@@348 v_1@@347 q@@340 w@@347) (InsidePredicate_13574_16902 q@@340 w@@347 r@@340 u@@340)) (InsidePredicate_13574_16902 p@@348 v_1@@347 r@@340 u@@340))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_13574 p@@348 v_1@@347 q@@340 w@@347) (InsidePredicate_13574_16902 q@@340 w@@347 r@@340 u@@340))
)))
(assert (forall ((p@@349 T@Field_8623_16932) (v_1@@348 T@FrameType) (q@@341 T@Field_8623_16932) (w@@348 T@FrameType) (r@@341 T@Field_8623_16932) (u@@341 T@FrameType) ) (!  (=> (and (InsidePredicate_13574_13574 p@@349 v_1@@348 q@@341 w@@348) (InsidePredicate_13574_13574 q@@341 w@@348 r@@341 u@@341)) (InsidePredicate_13574_13574 p@@349 v_1@@348 r@@341 u@@341))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13574_13574 p@@349 v_1@@348 q@@341 w@@348) (InsidePredicate_13574_13574 q@@341 w@@348 r@@341 u@@341))
)))
(assert (forall ((arg1@@35 T@Ref) (arg2@@35 Real) (arg3@@35 T@Ref) (arg4@@28 Int) (arg5@@22 T@Ref) (arg6@@8 Real) (arg7@@8 Bool) ) (! (IsWandField_8450_2181 (wand_5 arg1@@35 arg2@@35 arg3@@35 arg4@@28 arg5@@22 arg6@@8 arg7@@8))
 :qid |stdinbpl.280:15|
 :skolemid |43|
 :pattern ( (wand_5 arg1@@35 arg2@@35 arg3@@35 arg4@@28 arg5@@22 arg6@@8 arg7@@8))
)))
(assert (forall ((arg1@@36 T@Ref) (arg2@@36 Real) (arg3@@36 T@Ref) (arg4@@29 Int) (arg5@@23 T@Ref) (arg6@@9 Real) (arg7@@9 Bool) ) (! (IsWandField_8465_8466 (|wand_5#ft| arg1@@36 arg2@@36 arg3@@36 arg4@@29 arg5@@23 arg6@@9 arg7@@9))
 :qid |stdinbpl.284:15|
 :skolemid |44|
 :pattern ( (|wand_5#ft| arg1@@36 arg2@@36 arg3@@36 arg4@@29 arg5@@23 arg6@@9 arg7@@9))
)))
(assert (forall ((arg1@@37 T@Ref) (arg2@@37 Real) (arg3@@37 T@Ref) (arg4@@30 Int) (arg5@@24 T@Ref) (arg6@@10 Real) (arg7@@10 Bool) ) (!  (not (IsPredicateField_8450_2181 (wand_5 arg1@@37 arg2@@37 arg3@@37 arg4@@30 arg5@@24 arg6@@10 arg7@@10)))
 :qid |stdinbpl.288:15|
 :skolemid |45|
 :pattern ( (wand_5 arg1@@37 arg2@@37 arg3@@37 arg4@@30 arg5@@24 arg6@@10 arg7@@10))
)))
(assert (forall ((arg1@@38 T@Ref) (arg2@@38 Real) (arg3@@38 T@Ref) (arg4@@31 Int) (arg5@@25 T@Ref) (arg6@@11 Real) (arg7@@11 Bool) ) (!  (not (IsPredicateField_8465_8466 (|wand_5#ft| arg1@@38 arg2@@38 arg3@@38 arg4@@31 arg5@@25 arg6@@11 arg7@@11)))
 :qid |stdinbpl.292:15|
 :skolemid |46|
 :pattern ( (|wand_5#ft| arg1@@38 arg2@@38 arg3@@38 arg4@@31 arg5@@25 arg6@@11 arg7@@11))
)))
(assert (forall ((arg1@@39 T@Ref) (arg2@@39 Real) (arg3@@39 T@Ref) (arg4@@32 Int) (arg5@@26 T@Ref) (arg6@@12 Real) (arg7@@12 Bool) ) (! (= (getPredWandId_8450_2181 (wand_5 arg1@@39 arg2@@39 arg3@@39 arg4@@32 arg5@@26 arg6@@12 arg7@@12)) 3)
 :qid |stdinbpl.300:15|
 :skolemid |48|
 :pattern ( (wand_5 arg1@@39 arg2@@39 arg3@@39 arg4@@32 arg5@@26 arg6@@12 arg7@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((arg1@@40 T@Ref) (arg2@@40 Real) (arg3@@40 T@Ref) (arg4@@33 Real) (arg1_2@@4 T@Ref) (arg2_2@@4 Real) (arg3_2@@4 T@Ref) (arg4_2@@3 Real) ) (!  (=> (= (wand_1 arg1@@40 arg2@@40 arg3@@40 arg4@@33) (wand_1 arg1_2@@4 arg2_2@@4 arg3_2@@4 arg4_2@@3)) (and (= arg1@@40 arg1_2@@4) (and (= arg2@@40 arg2_2@@4) (and (= arg3@@40 arg3_2@@4) (= arg4@@33 arg4_2@@3)))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand_1 arg1@@40 arg2@@40 arg3@@40 arg4@@33) (wand_1 arg1_2@@4 arg2_2@@4 arg3_2@@4 arg4_2@@3))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b_8@12 () Bool)
(declare-fun b_13@6 () Bool)
(declare-fun Result_2Heap () T@PolymorphicMapType_13514)
(declare-fun x () T@Ref)
(declare-fun Mask@6 () T@PolymorphicMapType_13535)
(declare-fun Mask@5 () T@PolymorphicMapType_13535)
(declare-fun Heap@4 () T@PolymorphicMapType_13514)
(declare-fun Result_2Mask () T@PolymorphicMapType_13535)
(declare-fun b_8@11 () Bool)
(declare-fun neededTransfer@11 () Real)
(declare-fun Used_7Mask@3 () T@PolymorphicMapType_13535)
(declare-fun initNeededTransfer@1 () Real)
(declare-fun b_14@0 () Bool)
(declare-fun b_14@1 () Bool)
(declare-fun b_14@2 () Bool)
(declare-fun Ops_5Mask@8 () T@PolymorphicMapType_13535)
(declare-fun b_14@3 () Bool)
(declare-fun Ops_5Heap@3 () T@PolymorphicMapType_13514)
(declare-fun Used_7Heap@0 () T@PolymorphicMapType_13514)
(declare-fun b_14@4 () Bool)
(declare-fun takeTransfer@4 () Real)
(declare-fun neededTransfer@9 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_13535)
(declare-fun Heap@2 () T@PolymorphicMapType_13514)
(declare-fun b_13@3 () Bool)
(declare-fun Used_7Mask@1 () T@PolymorphicMapType_13535)
(declare-fun neededTransfer@10 () Real)
(declare-fun Used_7Mask@2 () T@PolymorphicMapType_13535)
(declare-fun b_13@4 () Bool)
(declare-fun b_13@5 () Bool)
(declare-fun Mask@4 () T@PolymorphicMapType_13535)
(declare-fun Heap@3 () T@PolymorphicMapType_13514)
(declare-fun maskTransfer@4 () Real)
(declare-fun takeTransfer@3 () Real)
(declare-fun Ops_5Mask@6 () T@PolymorphicMapType_13535)
(declare-fun b_13@0 () Bool)
(declare-fun neededTransfer@7 () Real)
(declare-fun neededTransfer@8 () Real)
(declare-fun Used_7Mask@0 () T@PolymorphicMapType_13535)
(declare-fun b_13@1 () Bool)
(declare-fun b_13@2 () Bool)
(declare-fun Ops_5Mask@7 () T@PolymorphicMapType_13535)
(declare-fun maskTransfer@3 () Real)
(declare-fun b_13 () Bool)
(declare-fun b_10@3 () Bool)
(declare-fun b_8@7 () Bool)
(declare-fun b_11@9 () Bool)
(declare-fun Result_1Heap () T@PolymorphicMapType_13514)
(declare-fun Ops_5Mask@5 () T@PolymorphicMapType_13535)
(declare-fun Ops_5Mask@4 () T@PolymorphicMapType_13535)
(declare-fun b_8@8 () Bool)
(declare-fun Ops_5Heap@2 () T@PolymorphicMapType_13514)
(declare-fun b_8@9 () Bool)
(declare-fun b_8@10 () Bool)
(declare-fun Mask@2 () T@PolymorphicMapType_13535)
(declare-fun Heap@1 () T@PolymorphicMapType_13514)
(declare-fun Result_1Mask () T@PolymorphicMapType_13535)
(declare-fun b_10@2 () Bool)
(declare-fun neededTransfer@6 () Real)
(declare-fun Used_6Mask@5 () T@PolymorphicMapType_13535)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_12@0 () Bool)
(declare-fun b_12@1 () Bool)
(declare-fun b_12@2 () Bool)
(declare-fun Ops_7Mask@1 () T@PolymorphicMapType_13535)
(declare-fun b_12@3 () Bool)
(declare-fun Ops_7Heap@0 () T@PolymorphicMapType_13514)
(declare-fun Used_6Heap@0 () T@PolymorphicMapType_13514)
(declare-fun b_12@4 () Bool)
(declare-fun takeTransfer@2 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_13535)
(declare-fun Used_6Mask@3 () T@PolymorphicMapType_13535)
(declare-fun b_11@6 () Bool)
(declare-fun neededTransfer@4 () Real)
(declare-fun Heap@@101 () T@PolymorphicMapType_13514)
(declare-fun neededTransfer@5 () Real)
(declare-fun Used_6Mask@4 () T@PolymorphicMapType_13535)
(declare-fun b_11@7 () Bool)
(declare-fun b_11@8 () Bool)
(declare-fun Mask@1 () T@PolymorphicMapType_13535)
(declare-fun Heap@0 () T@PolymorphicMapType_13514)
(declare-fun maskTransfer@2 () Real)
(declare-fun takeTransfer@1 () Real)
(declare-fun Ops_5Heap@0 () T@PolymorphicMapType_13514)
(declare-fun Ops_5Mask@2 () T@PolymorphicMapType_13535)
(declare-fun neededTransfer@2 () Real)
(declare-fun b_11@3 () Bool)
(declare-fun Used_6Mask@1 () T@PolymorphicMapType_13535)
(declare-fun neededTransfer@3 () Real)
(declare-fun Used_6Mask@2 () T@PolymorphicMapType_13535)
(declare-fun b_11@4 () Bool)
(declare-fun b_11@5 () Bool)
(declare-fun Ops_5Mask@3 () T@PolymorphicMapType_13535)
(declare-fun Ops_5Heap@1 () T@PolymorphicMapType_13514)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun b_11@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun neededTransfer@1 () Real)
(declare-fun Used_6Mask@0 () T@PolymorphicMapType_13535)
(declare-fun b_11@1 () Bool)
(declare-fun b_11@2 () Bool)
(declare-fun Ops_7Mask@0 () T@PolymorphicMapType_13535)
(declare-fun maskTransfer@0 () Real)
(declare-fun b_10@1 () Bool)
(declare-fun b_10@0 () Bool)
(declare-fun b_11 () Bool)
(declare-fun b_10 () Bool)
(declare-fun b_9@0 () Bool)
(declare-fun b_9 () Bool)
(declare-fun Used_5Heap@0 () T@PolymorphicMapType_13514)
(declare-fun b_8@6 () Bool)
(declare-fun b_8@5 () Bool)
(declare-fun b_8@4 () Bool)
(declare-fun b_8@3 () Bool)
(declare-fun Ops_5Mask@1 () T@PolymorphicMapType_13535)
(declare-fun b_8@0 () Bool)
(declare-fun perm@1 () Real)
(declare-fun b_8@1 () Bool)
(declare-fun Ops_5Mask@0 () T@PolymorphicMapType_13535)
(declare-fun b_8@2 () Bool)
(declare-fun perm@0 () Real)
(declare-fun b_8 () Bool)
(declare-fun b_7@0 () Bool)
(declare-fun b_7 () Bool)
(declare-fun Used_4Heap@0 () T@PolymorphicMapType_13514)
(set-info :boogie-vc-id t02)
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
 (=> (= (ControlFlow 0 0) 72) (let ((anon47_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (and (and b_8@12 b_8@12) b_13@6) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Result_2Heap) x f_7) 2))) (=> (=> (and (and b_8@12 b_8@12) b_13@6) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Result_2Heap) x f_7) 2)) (=> (= Mask@6 (PolymorphicMapType_13535 (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| Mask@5) (store (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| Mask@5) null (wand_2 x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2) (+ (select (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| Mask@5) null (wand_2 x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2)) FullPerm)) (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| Mask@5) (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| Mask@5))) (=> (and (and (state Heap@4 Mask@6) (state Heap@4 Mask@6)) (and (state Heap@4 Mask@6) (= (ControlFlow 0 2) (- 0 1)))) false))))))
(let ((anon72_Else_correct  (=> (and (not b_8@12) (= (ControlFlow 0 7) 2)) anon47_correct)))
(let ((anon72_Then_correct  (=> b_8@12 (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_8623_3574 Result_2Mask x f_7)) (=> (HasDirectPerm_8623_3574 Result_2Mask x f_7) (=> (= (ControlFlow 0 5) 2) anon47_correct))))))
(let ((anon71_Then_correct  (=> (and (and b_8@12 b_8@12) b_13@6) (and (=> (= (ControlFlow 0 8) 5) anon72_Then_correct) (=> (= (ControlFlow 0 8) 7) anon72_Else_correct)))))
(let ((anon71_Else_correct  (=> (and (not (and (and b_8@12 b_8@12) b_13@6)) (= (ControlFlow 0 4) 2)) anon47_correct)))
(let ((anon44_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (=> (and (and b_8@11 b_8@11) b_13@6) (and (= neededTransfer@11 0.0) (= (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Used_7Mask@3) x f_7) initNeededTransfer@1)))) (=> (=> (and (and b_8@11 b_8@11) b_13@6) (and (= neededTransfer@11 0.0) (= (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Used_7Mask@3) x f_7) initNeededTransfer@1))) (=> (and (= b_14@0  (and b_8@11 b_13@6)) (= b_14@1  (and b_14@0 (state Result_2Heap Result_2Mask)))) (=> (and (and (= b_14@2  (and b_14@1 (sumMask Result_2Mask Ops_5Mask@8 Used_7Mask@3))) (= b_14@3  (and (and b_14@2 (IdenticalOnKnownLocations Ops_5Heap@3 Result_2Heap Ops_5Mask@8)) (IdenticalOnKnownLocations Used_7Heap@0 Result_2Heap Used_7Mask@3)))) (and (= b_14@4  (and b_14@3 (state Result_2Heap Result_2Mask))) (= b_8@12  (and b_8@11 b_14@4)))) (and (=> (= (ControlFlow 0 9) 8) anon71_Then_correct) (=> (= (ControlFlow 0 9) 4) anon71_Else_correct))))))))
(let ((anon70_Else_correct  (=> (>= 0.0 takeTransfer@4) (=> (and (= neededTransfer@11 neededTransfer@9) (= Mask@5 Mask@3)) (=> (and (and (= Heap@4 Heap@2) (= b_13@6 b_13@3)) (and (= Used_7Mask@3 Used_7Mask@1) (= (ControlFlow 0 13) 9))) anon44_correct)))))
(let ((anon70_Then_correct  (=> (> takeTransfer@4 0.0) (=> (and (and (= neededTransfer@10 (- neededTransfer@9 takeTransfer@4)) (= Used_7Mask@2 (PolymorphicMapType_13535 (store (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Used_7Mask@1) x f_7 (+ (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Used_7Mask@1) x f_7) takeTransfer@4)) (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| Used_7Mask@1) (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| Used_7Mask@1)))) (and (= b_13@4  (and b_13@3 (state Used_7Heap@0 Used_7Mask@2))) (= b_13@5  (and b_13@4 (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@2) x f_7) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Used_7Heap@0) x f_7)))))) (=> (and (and (and (= Mask@4 (PolymorphicMapType_13535 (store (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Mask@3) x f_7 (- (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Mask@3) x f_7) takeTransfer@4)) (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| Mask@3) (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| Mask@3))) (= Heap@3 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@2) (store (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2) (PolymorphicMapType_14063 (store (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) x f_7 true) (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))) (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@2) null (|wand_2#sm| x (/ (to_real 1) (to_real 4)) x 2 x (/ (to_real 1) (to_real 4)) x 2))))) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@2) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@2)))) (and (= neededTransfer@11 neededTransfer@10) (= Mask@5 Mask@4))) (and (and (= Heap@4 Heap@3) (= b_13@6 b_13@5)) (and (= Used_7Mask@3 Used_7Mask@2) (= (ControlFlow 0 12) 9)))) anon44_correct)))))
(let ((anon69_Else_correct  (=> (and (< maskTransfer@4 neededTransfer@9) (= takeTransfer@4 maskTransfer@4)) (and (=> (= (ControlFlow 0 15) 12) anon70_Then_correct) (=> (= (ControlFlow 0 15) 13) anon70_Else_correct)))))
(let ((anon69_Then_correct  (=> (and (<= neededTransfer@9 maskTransfer@4) (= takeTransfer@4 neededTransfer@9)) (and (=> (= (ControlFlow 0 14) 12) anon70_Then_correct) (=> (= (ControlFlow 0 14) 13) anon70_Else_correct)))))
(let ((anon68_Then_correct  (=> (and (and (and (and (and b_8@11 b_8@11) b_13@3) true) (> neededTransfer@9 0.0)) (= maskTransfer@4 (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Mask@3) x f_7))) (and (=> (= (ControlFlow 0 16) 14) anon69_Then_correct) (=> (= (ControlFlow 0 16) 15) anon69_Else_correct)))))
(let ((anon68_Else_correct  (=> (not (and (and (and (and b_8@11 b_8@11) b_13@3) true) (> neededTransfer@9 0.0))) (=> (and (= neededTransfer@11 neededTransfer@9) (= Mask@5 Mask@3)) (=> (and (and (= Heap@4 Heap@2) (= b_13@6 b_13@3)) (and (= Used_7Mask@3 Used_7Mask@1) (= (ControlFlow 0 11) 9))) anon44_correct)))))
(let ((anon67_Else_correct  (=> (>= 0.0 takeTransfer@3) (=> (and (and (= Ops_5Mask@8 Ops_5Mask@6) (= Used_7Mask@1 ZeroMask)) (and (= b_13@3 b_13@0) (= neededTransfer@9 neededTransfer@7))) (and (=> (= (ControlFlow 0 19) 16) anon68_Then_correct) (=> (= (ControlFlow 0 19) 11) anon68_Else_correct))))))
(let ((anon67_Then_correct  (=> (and (> takeTransfer@3 0.0) (= neededTransfer@8 (- neededTransfer@7 takeTransfer@3))) (=> (and (and (and (= Used_7Mask@0 (PolymorphicMapType_13535 (store (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| ZeroMask) x f_7) takeTransfer@3)) (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| ZeroMask))) (= b_13@1  (and b_13@0 (state Used_7Heap@0 Used_7Mask@0)))) (and (= b_13@2  (and b_13@1 (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Ops_5Heap@3) x f_7) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Used_7Heap@0) x f_7)))) (= Ops_5Mask@7 (PolymorphicMapType_13535 (store (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Ops_5Mask@6) x f_7 (- (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Ops_5Mask@6) x f_7) takeTransfer@3)) (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| Ops_5Mask@6) (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| Ops_5Mask@6))))) (and (and (= Ops_5Mask@8 Ops_5Mask@7) (= Used_7Mask@1 Used_7Mask@0)) (and (= b_13@3 b_13@2) (= neededTransfer@9 neededTransfer@8)))) (and (=> (= (ControlFlow 0 18) 16) anon68_Then_correct) (=> (= (ControlFlow 0 18) 11) anon68_Else_correct))))))
(let ((anon66_Else_correct  (=> (and (< maskTransfer@3 neededTransfer@7) (= takeTransfer@3 maskTransfer@3)) (and (=> (= (ControlFlow 0 21) 18) anon67_Then_correct) (=> (= (ControlFlow 0 21) 19) anon67_Else_correct)))))
(let ((anon66_Then_correct  (=> (and (<= neededTransfer@7 maskTransfer@3) (= takeTransfer@3 neededTransfer@7)) (and (=> (= (ControlFlow 0 20) 18) anon67_Then_correct) (=> (= (ControlFlow 0 20) 19) anon67_Else_correct)))))
(let ((anon65_Then_correct  (=> (and (and (and (and (and b_8@11 b_8@11) b_13@0) true) (> neededTransfer@7 0.0)) (= maskTransfer@3 (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Ops_5Mask@6) x f_7))) (and (=> (= (ControlFlow 0 22) 20) anon66_Then_correct) (=> (= (ControlFlow 0 22) 21) anon66_Else_correct)))))
(let ((anon65_Else_correct  (=> (not (and (and (and (and b_8@11 b_8@11) b_13@0) true) (> neededTransfer@7 0.0))) (=> (and (and (= Ops_5Mask@8 Ops_5Mask@6) (= Used_7Mask@1 ZeroMask)) (and (= b_13@3 b_13@0) (= neededTransfer@9 neededTransfer@7))) (and (=> (= (ControlFlow 0 17) 16) anon68_Then_correct) (=> (= (ControlFlow 0 17) 11) anon68_Else_correct))))))
(let ((anon32_correct  (=> (= b_13@0  (and b_13 (state Used_7Heap@0 ZeroMask))) (=> (and (= neededTransfer@7 (/ (to_real 1) (to_real 4))) (= initNeededTransfer@1 (+ (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| ZeroMask) x f_7) neededTransfer@7))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (>= neededTransfer@7 0.0)) (=> (>= neededTransfer@7 0.0) (and (=> (= (ControlFlow 0 23) 22) anon65_Then_correct) (=> (= (ControlFlow 0 23) 17) anon65_Else_correct))))))))
(let ((anon31_correct  (and (=> (= (ControlFlow 0 26) (- 0 27)) (=> (and (and b_10@3 (and b_10@3 b_8@7)) b_11@9) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Result_1Heap) x f_7) 2))) (=> (=> (and (and b_10@3 (and b_10@3 b_8@7)) b_11@9) (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Result_1Heap) x f_7) 2)) (=> (and (= Ops_5Mask@5 (PolymorphicMapType_13535 (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| Ops_5Mask@4) (store (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| Ops_5Mask@4) null (wand_3 true x (/ (to_real 1) (to_real 2)) x 2) (+ (select (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| Ops_5Mask@4) null (wand_3 true x (/ (to_real 1) (to_real 2)) x 2)) FullPerm)) (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| Ops_5Mask@4) (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| Ops_5Mask@4))) (= b_8@8  (and b_8@7 (state Ops_5Heap@2 Ops_5Mask@5)))) (=> (and (and (and (= b_8@9  (and b_8@8 (state Ops_5Heap@2 Ops_5Mask@5))) (= b_8@10  (and b_8@9 (state Ops_5Heap@2 Ops_5Mask@5)))) (and (= b_8@11 b_8@10) (= Mask@3 Mask@2))) (and (and (= Ops_5Mask@6 Ops_5Mask@5) (= Ops_5Heap@3 Ops_5Heap@2)) (and (= Heap@2 Heap@1) (= (ControlFlow 0 26) 23)))) anon32_correct))))))
(let ((anon64_Else_correct  (=> (and (not b_10@3) (= (ControlFlow 0 31) 26)) anon31_correct)))
(let ((anon64_Then_correct  (=> b_10@3 (and (=> (= (ControlFlow 0 29) (- 0 30)) (HasDirectPerm_8623_3574 Result_1Mask x f_7)) (=> (HasDirectPerm_8623_3574 Result_1Mask x f_7) (=> (= (ControlFlow 0 29) 26) anon31_correct))))))
(let ((anon63_Then_correct  (=> (and (and b_10@3 (and b_10@3 b_8@7)) b_11@9) (and (=> (= (ControlFlow 0 32) 29) anon64_Then_correct) (=> (= (ControlFlow 0 32) 31) anon64_Else_correct)))))
(let ((anon63_Else_correct  (=> (and (not (and (and b_10@3 (and b_10@3 b_8@7)) b_11@9)) (= (ControlFlow 0 28) 26)) anon31_correct)))
(let ((anon28_correct  (and (=> (= (ControlFlow 0 33) (- 0 34)) (=> (and (and b_10@2 (and b_10@2 b_8@7)) b_11@9) (and (= neededTransfer@6 0.0) (= (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Used_6Mask@5) x f_7) initNeededTransfer@0)))) (=> (=> (and (and b_10@2 (and b_10@2 b_8@7)) b_11@9) (and (= neededTransfer@6 0.0) (= (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Used_6Mask@5) x f_7) initNeededTransfer@0))) (=> (and (= b_12@0  (and b_10@2 b_11@9)) (= b_12@1  (and b_12@0 (state Result_1Heap Result_1Mask)))) (=> (and (and (= b_12@2  (and b_12@1 (sumMask Result_1Mask Ops_7Mask@1 Used_6Mask@5))) (= b_12@3  (and (and b_12@2 (IdenticalOnKnownLocations Ops_7Heap@0 Result_1Heap Ops_7Mask@1)) (IdenticalOnKnownLocations Used_6Heap@0 Result_1Heap Used_6Mask@5)))) (and (= b_12@4  (and b_12@3 (state Result_1Heap Result_1Mask))) (= b_10@3  (and b_10@2 b_12@4)))) (and (=> (= (ControlFlow 0 33) 32) anon63_Then_correct) (=> (= (ControlFlow 0 33) 28) anon63_Else_correct))))))))
(let ((anon62_Else_correct  (=> (>= 0.0 takeTransfer@2) (=> (and (= Mask@2 Mask@0) (= Used_6Mask@5 Used_6Mask@3)) (=> (and (and (= b_11@9 b_11@6) (= neededTransfer@6 neededTransfer@4)) (and (= Heap@1 Heap@@101) (= (ControlFlow 0 37) 33))) anon28_correct)))))
(let ((anon62_Then_correct  (=> (> takeTransfer@2 0.0) (=> (and (and (= neededTransfer@5 (- neededTransfer@4 takeTransfer@2)) (= Used_6Mask@4 (PolymorphicMapType_13535 (store (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Used_6Mask@3) x f_7 (+ (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Used_6Mask@3) x f_7) takeTransfer@2)) (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| Used_6Mask@3) (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| Used_6Mask@3)))) (and (= b_11@7  (and b_11@6 (state Used_6Heap@0 Used_6Mask@4))) (= b_11@8  (and b_11@7 (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@101) x f_7) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Used_6Heap@0) x f_7)))))) (=> (and (and (and (= Mask@1 (PolymorphicMapType_13535 (store (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Mask@0) x f_7 (- (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Mask@0) x f_7) takeTransfer@2)) (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| Mask@0) (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| Mask@0))) (= Heap@0 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Heap@@101) (store (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2) (PolymorphicMapType_14063 (store (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) x f_7 true) (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Heap@@101) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))))) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Heap@@101) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Heap@@101)))) (and (= Mask@2 Mask@1) (= Used_6Mask@5 Used_6Mask@4))) (and (and (= b_11@9 b_11@8) (= neededTransfer@6 neededTransfer@5)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 36) 33)))) anon28_correct)))))
(let ((anon61_Else_correct  (=> (and (< maskTransfer@2 neededTransfer@4) (= takeTransfer@2 maskTransfer@2)) (and (=> (= (ControlFlow 0 39) 36) anon62_Then_correct) (=> (= (ControlFlow 0 39) 37) anon62_Else_correct)))))
(let ((anon61_Then_correct  (=> (and (<= neededTransfer@4 maskTransfer@2) (= takeTransfer@2 neededTransfer@4)) (and (=> (= (ControlFlow 0 38) 36) anon62_Then_correct) (=> (= (ControlFlow 0 38) 37) anon62_Else_correct)))))
(let ((anon60_Then_correct  (=> (and (and (and (and (and b_10@2 (and b_10@2 b_8@7)) b_11@6) true) (> neededTransfer@4 0.0)) (= maskTransfer@2 (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Mask@0) x f_7))) (and (=> (= (ControlFlow 0 40) 38) anon61_Then_correct) (=> (= (ControlFlow 0 40) 39) anon61_Else_correct)))))
(let ((anon60_Else_correct  (=> (not (and (and (and (and b_10@2 (and b_10@2 b_8@7)) b_11@6) true) (> neededTransfer@4 0.0))) (=> (and (= Mask@2 Mask@0) (= Used_6Mask@5 Used_6Mask@3)) (=> (and (and (= b_11@9 b_11@6) (= neededTransfer@6 neededTransfer@4)) (and (= Heap@1 Heap@@101) (= (ControlFlow 0 35) 33))) anon28_correct)))))
(let ((anon59_Else_correct  (=> (and (>= 0.0 takeTransfer@1) (= Ops_5Heap@2 Ops_5Heap@0)) (=> (and (and (= Ops_5Mask@4 Ops_5Mask@2) (= neededTransfer@4 neededTransfer@2)) (and (= b_11@6 b_11@3) (= Used_6Mask@3 Used_6Mask@1))) (and (=> (= (ControlFlow 0 43) 40) anon60_Then_correct) (=> (= (ControlFlow 0 43) 35) anon60_Else_correct))))))
(let ((anon59_Then_correct  (=> (and (and (> takeTransfer@1 0.0) (= neededTransfer@3 (- neededTransfer@2 takeTransfer@1))) (and (= Used_6Mask@2 (PolymorphicMapType_13535 (store (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Used_6Mask@1) x f_7 (+ (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Used_6Mask@1) x f_7) takeTransfer@1)) (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| Used_6Mask@1) (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| Used_6Mask@1))) (= b_11@4  (and b_11@3 (state Used_6Heap@0 Used_6Mask@2))))) (=> (and (and (and (= b_11@5  (and b_11@4 (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Ops_5Heap@0) x f_7) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Used_6Heap@0) x f_7)))) (= Ops_5Mask@3 (PolymorphicMapType_13535 (store (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Ops_5Mask@2) x f_7 (- (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Ops_5Mask@2) x f_7) takeTransfer@1)) (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| Ops_5Mask@2) (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| Ops_5Mask@2)))) (and (= Ops_5Heap@1 (PolymorphicMapType_13514 (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_8197_8198#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_8332_24220#PolymorphicMapType_13514| Ops_5Heap@0) (store (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2) (PolymorphicMapType_14063 (store (|PolymorphicMapType_14063_8623_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) x f_7 true) (|PolymorphicMapType_14063_8623_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_8623_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_8623_50975#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_8623_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_16902_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_16902_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_16902_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_16902_52023#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_16902_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_17546_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_17546_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_17546_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_17546_53071#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_17546_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18247_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18247_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18247_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18247_54119#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18247_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18805_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18805_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18805_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18805_55167#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_18805_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_19654_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_19654_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_19654_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_19654_56215#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_19654_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_20588_3574#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_20588_53#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_20588_13588#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_20588_57263#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))) (|PolymorphicMapType_14063_20588_16932#PolymorphicMapType_14063| (select (|PolymorphicMapType_13514_8382_28923#PolymorphicMapType_13514| Ops_5Heap@0) null (|wand_3#sm| true x (/ (to_real 1) (to_real 2)) x 2))))) (|PolymorphicMapType_13514_8522_31690#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_8457_37830#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_8623_40567#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_8623_16932#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_16902_3574#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_16902_53#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_16902_13588#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_16902_16932#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_17546_3574#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_17546_53#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_17546_13588#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_17546_16932#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_18247_3574#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_18247_53#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_18247_13588#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_18247_44013#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_18247_16932#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_18805_3574#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_18805_53#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_18805_13588#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_18805_16932#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_19654_3574#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_19654_53#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_19654_13588#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_19654_16932#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_20588_3574#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_20588_53#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_20588_13588#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_20588_47458#PolymorphicMapType_13514| Ops_5Heap@0) (|PolymorphicMapType_13514_20588_16932#PolymorphicMapType_13514| Ops_5Heap@0))) (= Ops_5Heap@2 Ops_5Heap@1))) (and (and (= Ops_5Mask@4 Ops_5Mask@3) (= neededTransfer@4 neededTransfer@3)) (and (= b_11@6 b_11@5) (= Used_6Mask@3 Used_6Mask@2)))) (and (=> (= (ControlFlow 0 42) 40) anon60_Then_correct) (=> (= (ControlFlow 0 42) 35) anon60_Else_correct))))))
(let ((anon58_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@2) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 45) 42) anon59_Then_correct) (=> (= (ControlFlow 0 45) 43) anon59_Else_correct)))))
(let ((anon58_Then_correct  (=> (and (<= neededTransfer@2 maskTransfer@1) (= takeTransfer@1 neededTransfer@2)) (and (=> (= (ControlFlow 0 44) 42) anon59_Then_correct) (=> (= (ControlFlow 0 44) 43) anon59_Else_correct)))))
(let ((anon57_Then_correct  (=> (and (and (and (and (and b_10@2 (and b_10@2 b_8@7)) b_11@3) true) (> neededTransfer@2 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| Ops_5Mask@2) x f_7))) (and (=> (= (ControlFlow 0 46) 44) anon58_Then_correct) (=> (= (ControlFlow 0 46) 45) anon58_Else_correct)))))
(let ((anon57_Else_correct  (=> (and (not (and (and (and (and b_10@2 (and b_10@2 b_8@7)) b_11@3) true) (> neededTransfer@2 0.0))) (= Ops_5Heap@2 Ops_5Heap@0)) (=> (and (and (= Ops_5Mask@4 Ops_5Mask@2) (= neededTransfer@4 neededTransfer@2)) (and (= b_11@6 b_11@3) (= Used_6Mask@3 Used_6Mask@1))) (and (=> (= (ControlFlow 0 41) 40) anon60_Then_correct) (=> (= (ControlFlow 0 41) 35) anon60_Else_correct))))))
(let ((anon56_Else_correct  (=> (>= 0.0 takeTransfer@0) (=> (and (and (= Ops_7Mask@1 ZeroMask) (= Used_6Mask@1 ZeroMask)) (and (= b_11@3 b_11@0) (= neededTransfer@2 neededTransfer@0))) (and (=> (= (ControlFlow 0 49) 46) anon57_Then_correct) (=> (= (ControlFlow 0 49) 41) anon57_Else_correct))))))
(let ((anon56_Then_correct  (=> (and (> takeTransfer@0 0.0) (= neededTransfer@1 (- neededTransfer@0 takeTransfer@0))) (=> (and (and (and (= Used_6Mask@0 (PolymorphicMapType_13535 (store (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| ZeroMask) x f_7) takeTransfer@0)) (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| ZeroMask))) (= b_11@1  (and b_11@0 (state Used_6Heap@0 Used_6Mask@0)))) (and (= b_11@2  (and b_11@1 (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Ops_7Heap@0) x f_7) (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Used_6Heap@0) x f_7)))) (= Ops_7Mask@0 (PolymorphicMapType_13535 (store (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| ZeroMask) x f_7 (- (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| ZeroMask) x f_7) takeTransfer@0)) (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| ZeroMask))))) (and (and (= Ops_7Mask@1 Ops_7Mask@0) (= Used_6Mask@1 Used_6Mask@0)) (and (= b_11@3 b_11@2) (= neededTransfer@2 neededTransfer@1)))) (and (=> (= (ControlFlow 0 48) 46) anon57_Then_correct) (=> (= (ControlFlow 0 48) 41) anon57_Else_correct))))))
(let ((anon55_Else_correct  (=> (and (< maskTransfer@0 neededTransfer@0) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 51) 48) anon56_Then_correct) (=> (= (ControlFlow 0 51) 49) anon56_Else_correct)))))
(let ((anon55_Then_correct  (=> (and (<= neededTransfer@0 maskTransfer@0) (= takeTransfer@0 neededTransfer@0)) (and (=> (= (ControlFlow 0 50) 48) anon56_Then_correct) (=> (= (ControlFlow 0 50) 49) anon56_Else_correct)))))
(let ((anon54_Then_correct  (=> (and (and (and (and (and b_10@2 (and b_10@2 b_8@7)) b_11@0) true) (> neededTransfer@0 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| ZeroMask) x f_7))) (and (=> (= (ControlFlow 0 52) 50) anon55_Then_correct) (=> (= (ControlFlow 0 52) 51) anon55_Else_correct)))))
(let ((anon54_Else_correct  (=> (not (and (and (and (and b_10@2 (and b_10@2 b_8@7)) b_11@0) true) (> neededTransfer@0 0.0))) (=> (and (and (= Ops_7Mask@1 ZeroMask) (= Used_6Mask@1 ZeroMask)) (and (= b_11@3 b_11@0) (= neededTransfer@2 neededTransfer@0))) (and (=> (= (ControlFlow 0 47) 46) anon57_Then_correct) (=> (= (ControlFlow 0 47) 41) anon57_Else_correct))))))
(let ((anon10_correct  (=> (= b_10@1  (and b_10@0 (state Ops_7Heap@0 ZeroMask))) (=> (and (and (= b_10@2  (and b_10@1 (state Ops_7Heap@0 ZeroMask))) (= b_11@0  (and b_11 (state Used_6Heap@0 ZeroMask)))) (and (= neededTransfer@0 (/ (to_real 1) (to_real 2))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| ZeroMask) x f_7) neededTransfer@0)))) (and (=> (= (ControlFlow 0 53) (- 0 54)) (>= neededTransfer@0 0.0)) (=> (>= neededTransfer@0 0.0) (and (=> (= (ControlFlow 0 53) 52) anon54_Then_correct) (=> (= (ControlFlow 0 53) 47) anon54_Else_correct))))))))
(let ((anon53_Else_correct  (=> (and (not b_10@0) (= (ControlFlow 0 56) 53)) anon10_correct)))
(let ((anon53_Then_correct  (=> (and b_10@0 (= (ControlFlow 0 55) 53)) anon10_correct)))
(let ((anon52_Then_correct  (=> b_8@7 (=> (and (= b_10@0  (and b_10 (state Ops_7Heap@0 ZeroMask))) (= b_9@0  (and b_9 (state Used_5Heap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 57) 55) anon53_Then_correct) (=> (= (ControlFlow 0 57) 56) anon53_Else_correct))))))
(let ((anon52_Else_correct  (=> (not b_8@7) (=> (and (= b_8@11 b_8@7) (= Mask@3 Mask@0)) (=> (and (and (= Ops_5Mask@6 Ops_5Mask@2) (= Ops_5Heap@3 Ops_5Heap@0)) (and (= Heap@2 Heap@@101) (= (ControlFlow 0 25) 23))) anon32_correct)))))
(let ((anon7_correct  (=> (and (= b_8@6  (and b_8@5 (state Ops_5Heap@0 Ops_5Mask@2))) (= b_8@7  (and b_8@6 (state Ops_5Heap@0 Ops_5Mask@2)))) (and (=> (= (ControlFlow 0 58) 57) anon52_Then_correct) (=> (= (ControlFlow 0 58) 25) anon52_Else_correct)))))
(let ((anon6_correct  (=> (and (and (= b_8@4  (and b_8@3 (= (select (|PolymorphicMapType_13514_8623_3574#PolymorphicMapType_13514| Ops_5Heap@0) x f_7) 2))) (= b_8@5 b_8@4)) (and (= Ops_5Mask@2 Ops_5Mask@1) (= (ControlFlow 0 61) 58))) anon7_correct)))
(let ((anon51_Else_correct  (=> (and (not b_8@3) (= (ControlFlow 0 64) 61)) anon6_correct)))
(let ((anon51_Then_correct  (=> b_8@3 (and (=> (= (ControlFlow 0 62) (- 0 63)) (HasDirectPerm_8623_3574 Ops_5Mask@1 x f_7)) (=> (HasDirectPerm_8623_3574 Ops_5Mask@1 x f_7) (=> (= (ControlFlow 0 62) 61) anon6_correct))))))
(let ((anon50_Then_correct  (=> b_8@3 (and (=> (= (ControlFlow 0 65) 62) anon51_Then_correct) (=> (= (ControlFlow 0 65) 64) anon51_Else_correct)))))
(let ((anon50_Else_correct  (=> (and (and (not b_8@3) (= b_8@5 b_8@3)) (and (= Ops_5Mask@2 Ops_5Mask@1) (= (ControlFlow 0 60) 58))) anon7_correct)))
(let ((anon49_Else_correct  (=> (not b_8@0) (=> (and (= Ops_5Mask@1 ZeroMask) (= b_8@3 b_8@0)) (and (=> (= (ControlFlow 0 68) 65) anon50_Then_correct) (=> (= (ControlFlow 0 68) 60) anon50_Else_correct))))))
(let ((anon49_Then_correct  (=> (and b_8@0 (= perm@1 (/ (to_real 1) (to_real 4)))) (and (=> (= (ControlFlow 0 66) (- 0 67)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (= b_8@1  (and b_8@0 (=> (> perm@1 NoPerm) (not (= x null))))) (=> (and (and (= Ops_5Mask@0 (PolymorphicMapType_13535 (store (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| ZeroMask) x f_7) perm@1)) (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| ZeroMask))) (= b_8@2  (and b_8@1 (state Ops_5Heap@0 Ops_5Mask@0)))) (and (= Ops_5Mask@1 Ops_5Mask@0) (= b_8@3 b_8@2))) (and (=> (= (ControlFlow 0 66) 65) anon50_Then_correct) (=> (= (ControlFlow 0 66) 60) anon50_Else_correct)))))))))
(let ((anon48_Then_correct  (=> b_8@0 (and (=> (= (ControlFlow 0 69) 66) anon49_Then_correct) (=> (= (ControlFlow 0 69) 68) anon49_Else_correct)))))
(let ((anon48_Else_correct  (=> (and (and (not b_8@0) (= b_8@5 b_8@0)) (and (= Ops_5Mask@2 ZeroMask) (= (ControlFlow 0 59) 58))) anon7_correct)))
(let ((anon0_correct  (=> (and (and (state Heap@@101 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_13514_8194_53#PolymorphicMapType_13514| Heap@@101) x $allocated) (= perm@0 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 70) (- 0 71)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (=> (> perm@0 NoPerm) (not (= x null))) (=> (and (= Mask@0 (PolymorphicMapType_13535 (store (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_13535_8623_3574#PolymorphicMapType_13535| ZeroMask) x f_7) perm@0)) (|PolymorphicMapType_13535_8326_1203#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_1900#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_1529#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_2678#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_3216#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_2181#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_74836#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8623_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_75250#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8326_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_75664#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8417_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_76078#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8377_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_76492#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8514_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_76906#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8585_16932#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_53#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_13588#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_77320#PolymorphicMapType_13535| ZeroMask) (|PolymorphicMapType_13535_8450_16932#PolymorphicMapType_13535| ZeroMask))) (state Heap@@101 Mask@0)) (=> (and (and (state Heap@@101 Mask@0) (state Heap@@101 Mask@0)) (and (= b_8@0  (and b_8 (state Ops_5Heap@0 ZeroMask))) (= b_7@0  (and b_7 (state Used_4Heap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 70) 69) anon48_Then_correct) (=> (= (ControlFlow 0 70) 59) anon48_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 72) 70) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
