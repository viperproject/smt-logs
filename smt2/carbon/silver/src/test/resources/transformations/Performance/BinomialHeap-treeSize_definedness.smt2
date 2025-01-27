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
(declare-sort T@Field_236046_53 0)
(declare-sort T@Field_236059_236060 0)
(declare-sort T@Field_239373_1189 0)
(declare-sort T@Field_239929_239930 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_240944_240945 0)
(declare-sort T@Field_243188_243193 0)
(declare-sort T@Field_244153_244158 0)
(declare-sort T@Field_304757_304758 0)
(declare-sort T@Field_304770_304775 0)
(declare-sort T@Field_120437_120941 0)
(declare-sort T@Field_120437_243193 0)
(declare-sort T@Field_120940_1189 0)
(declare-sort T@Field_120940_120448 0)
(declare-sort T@Field_120940_53 0)
(declare-sort T@Field_120911_1189 0)
(declare-sort T@Field_120911_120448 0)
(declare-sort T@Field_120911_53 0)
(declare-sort T@Field_120979_1189 0)
(declare-sort T@Field_120979_120448 0)
(declare-sort T@Field_120979_53 0)
(declare-datatypes ((T@PolymorphicMapType_236007 0)) (((PolymorphicMapType_236007 (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| (Array T@Ref T@Field_239929_239930 Real)) (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| (Array T@Ref T@Field_239373_1189 Real)) (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| (Array T@Ref T@Field_236059_236060 Real)) (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| (Array T@Ref T@Field_240944_240945 Real)) (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| (Array T@Ref T@Field_304757_304758 Real)) (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| (Array T@Ref T@Field_120911_1189 Real)) (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| (Array T@Ref T@Field_120911_120448 Real)) (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| (Array T@Ref T@Field_120911_53 Real)) (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| (Array T@Ref T@Field_243188_243193 Real)) (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| (Array T@Ref T@Field_120437_120941 Real)) (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| (Array T@Ref T@Field_236046_53 Real)) (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| (Array T@Ref T@Field_120437_243193 Real)) (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| (Array T@Ref T@Field_120940_1189 Real)) (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| (Array T@Ref T@Field_120940_120448 Real)) (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| (Array T@Ref T@Field_120940_53 Real)) (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| (Array T@Ref T@Field_244153_244158 Real)) (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| (Array T@Ref T@Field_120979_1189 Real)) (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| (Array T@Ref T@Field_120979_120448 Real)) (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| (Array T@Ref T@Field_120979_53 Real)) (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| (Array T@Ref T@Field_304770_304775 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_236535 0)) (((PolymorphicMapType_236535 (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| (Array T@Ref T@Field_239373_1189 Bool)) (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| (Array T@Ref T@Field_236059_236060 Bool)) (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| (Array T@Ref T@Field_236046_53 Bool)) (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| (Array T@Ref T@Field_120437_120941 Bool)) (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| (Array T@Ref T@Field_120437_243193 Bool)) (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| (Array T@Ref T@Field_120911_1189 Bool)) (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| (Array T@Ref T@Field_120911_120448 Bool)) (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| (Array T@Ref T@Field_120911_53 Bool)) (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| (Array T@Ref T@Field_239929_239930 Bool)) (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| (Array T@Ref T@Field_243188_243193 Bool)) (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| (Array T@Ref T@Field_120940_1189 Bool)) (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| (Array T@Ref T@Field_120940_120448 Bool)) (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| (Array T@Ref T@Field_120940_53 Bool)) (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| (Array T@Ref T@Field_240944_240945 Bool)) (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| (Array T@Ref T@Field_244153_244158 Bool)) (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| (Array T@Ref T@Field_120979_1189 Bool)) (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| (Array T@Ref T@Field_120979_120448 Bool)) (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| (Array T@Ref T@Field_120979_53 Bool)) (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| (Array T@Ref T@Field_304757_304758 Bool)) (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| (Array T@Ref T@Field_304770_304775 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_235986 0)) (((PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| (Array T@Ref T@Field_236046_53 Bool)) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| (Array T@Ref T@Field_236059_236060 T@Ref)) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| (Array T@Ref T@Field_239373_1189 Int)) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| (Array T@Ref T@Field_239929_239930 T@FrameType)) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| (Array T@Ref T@Field_240944_240945 T@FrameType)) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| (Array T@Ref T@Field_243188_243193 T@PolymorphicMapType_236535)) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| (Array T@Ref T@Field_244153_244158 T@PolymorphicMapType_236535)) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| (Array T@Ref T@Field_304757_304758 T@FrameType)) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| (Array T@Ref T@Field_304770_304775 T@PolymorphicMapType_236535)) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| (Array T@Ref T@Field_120437_120941 T@FrameType)) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| (Array T@Ref T@Field_120437_243193 T@PolymorphicMapType_236535)) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| (Array T@Ref T@Field_120940_1189 Int)) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| (Array T@Ref T@Field_120940_120448 T@Ref)) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| (Array T@Ref T@Field_120940_53 Bool)) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| (Array T@Ref T@Field_120911_1189 Int)) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| (Array T@Ref T@Field_120911_120448 T@Ref)) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| (Array T@Ref T@Field_120911_53 Bool)) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| (Array T@Ref T@Field_120979_1189 Int)) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| (Array T@Ref T@Field_120979_120448 T@Ref)) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| (Array T@Ref T@Field_120979_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_236046_53)
(declare-fun key_6 () T@Field_239373_1189)
(declare-fun degree () T@Field_239373_1189)
(declare-fun parent () T@Field_236059_236060)
(declare-fun sibling () T@Field_236059_236060)
(declare-fun child () T@Field_236059_236060)
(declare-fun Nodes_1 () T@Field_236059_236060)
(declare-fun size_3 () T@Field_239373_1189)
(declare-fun state (T@PolymorphicMapType_235986 T@PolymorphicMapType_236007) Bool)
(declare-fun segLength (T@PolymorphicMapType_235986 T@Ref T@Ref) Int)
(declare-fun |segLength#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |heapseg#trigger_120940| (T@PolymorphicMapType_235986 T@Field_240944_240945) Bool)
(declare-fun heapseg (T@Ref T@Ref) T@Field_240944_240945)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |segLength'| (T@PolymorphicMapType_235986 T@Ref T@Ref) Int)
(declare-fun succHeap (T@PolymorphicMapType_235986 T@PolymorphicMapType_235986) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_235986 T@PolymorphicMapType_235986) Bool)
(declare-fun segSize (T@PolymorphicMapType_235986 T@Ref T@Ref) Int)
(declare-fun |segSize#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |treeSize'| (T@PolymorphicMapType_235986 T@Ref) Int)
(declare-fun |segSize'| (T@PolymorphicMapType_235986 T@Ref T@Ref) Int)
(declare-fun treeKey (T@PolymorphicMapType_235986 T@Ref) Int)
(declare-fun |treeKey#triggerStateless| (T@Ref) Int)
(declare-fun |tree#trigger_120911| (T@PolymorphicMapType_235986 T@Field_239929_239930) Bool)
(declare-fun tree_1 (T@Ref) T@Field_239929_239930)
(declare-fun treeParent (T@PolymorphicMapType_235986 T@Ref) T@Ref)
(declare-fun |treeParent#triggerStateless| (T@Ref) T@Ref)
(declare-fun treeDegree (T@PolymorphicMapType_235986 T@Ref) Int)
(declare-fun |treeDegree#triggerStateless| (T@Ref) Int)
(declare-fun GoodMask (T@PolymorphicMapType_236007) Bool)
(declare-fun |segDegree'| (T@PolymorphicMapType_235986 T@Ref T@Ref Int) Int)
(declare-fun dummyFunction_1482 (Int) Bool)
(declare-fun |segDegree#triggerStateless| (T@Ref T@Ref Int) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_236535)
(declare-fun |segLength#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun null () T@Ref)
(declare-fun |segSize#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun |segParent'| (T@PolymorphicMapType_235986 T@Ref T@Ref) T@Ref)
(declare-fun |segParent#triggerStateless| (T@Ref T@Ref) T@Ref)
(declare-fun |segParent#frame| (T@FrameType T@Ref T@Ref) T@Ref)
(declare-fun IsPredicateField_120940_120941 (T@Field_240944_240945) Bool)
(declare-fun dummyFunction_120568 (T@Ref) Bool)
(declare-fun |sorted'| (T@PolymorphicMapType_235986 T@Ref T@Ref) Bool)
(declare-fun dummyFunction_9461 (Bool) Bool)
(declare-fun |sorted#triggerStateless| (T@Ref T@Ref) Bool)
(declare-fun |presorted'| (T@PolymorphicMapType_235986 T@Ref T@Ref) Bool)
(declare-fun |presorted#triggerStateless| (T@Ref T@Ref) Bool)
(declare-fun |validChildren'| (T@PolymorphicMapType_235986 T@Ref T@Ref) Bool)
(declare-fun |validChildren#triggerStateless| (T@Ref T@Ref) Bool)
(declare-fun |heapseg#everUsed_120940| (T@Field_240944_240945) Bool)
(declare-fun IsPredicateField_120911_120912 (T@Field_239929_239930) Bool)
(declare-fun heap_1 (T@Ref) T@Field_304757_304758)
(declare-fun IsPredicateField_120979_120980 (T@Field_304757_304758) Bool)
(declare-fun |treeKey'| (T@PolymorphicMapType_235986 T@Ref) Int)
(declare-fun |treeDegree'| (T@PolymorphicMapType_235986 T@Ref) Int)
(declare-fun |treeSize#triggerStateless| (T@Ref) Int)
(declare-fun |treeParent'| (T@PolymorphicMapType_235986 T@Ref) T@Ref)
(declare-fun |tree#everUsed_120911| (T@Field_239929_239930) Bool)
(declare-fun |heap#trigger_120979| (T@PolymorphicMapType_235986 T@Field_304757_304758) Bool)
(declare-fun |heap#everUsed_120979| (T@Field_304757_304758) Bool)
(declare-fun validChildren (T@PolymorphicMapType_235986 T@Ref T@Ref) Bool)
(declare-fun segDegree (T@PolymorphicMapType_235986 T@Ref T@Ref Int) Int)
(declare-fun treeSize (T@PolymorphicMapType_235986 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_235986 T@PolymorphicMapType_235986 T@PolymorphicMapType_236007) Bool)
(declare-fun PredicateMaskField_120979 (T@Field_304757_304758) T@Field_304770_304775)
(declare-fun HasDirectPerm_120979_120980 (T@PolymorphicMapType_236007 T@Ref T@Field_304757_304758) Bool)
(declare-fun PredicateMaskField_120911 (T@Field_239929_239930) T@Field_243188_243193)
(declare-fun HasDirectPerm_120911_120912 (T@PolymorphicMapType_236007 T@Ref T@Field_239929_239930) Bool)
(declare-fun PredicateMaskField_120940 (T@Field_240944_240945) T@Field_244153_244158)
(declare-fun HasDirectPerm_120940_120941 (T@PolymorphicMapType_236007 T@Ref T@Field_240944_240945) Bool)
(declare-fun IsPredicateField_120437_904804 (T@Field_120437_120941) Bool)
(declare-fun PredicateMaskField_120437 (T@Field_120437_120941) T@Field_120437_243193)
(declare-fun HasDirectPerm_120437_120941 (T@PolymorphicMapType_236007 T@Ref T@Field_120437_120941) Bool)
(declare-fun IsWandField_120979_912496 (T@Field_304757_304758) Bool)
(declare-fun WandMaskField_120979 (T@Field_304757_304758) T@Field_304770_304775)
(declare-fun IsWandField_120911_912139 (T@Field_239929_239930) Bool)
(declare-fun WandMaskField_120911 (T@Field_239929_239930) T@Field_243188_243193)
(declare-fun IsWandField_120940_911782 (T@Field_240944_240945) Bool)
(declare-fun WandMaskField_120940 (T@Field_240944_240945) T@Field_244153_244158)
(declare-fun IsWandField_120437_911425 (T@Field_120437_120941) Bool)
(declare-fun WandMaskField_120437 (T@Field_120437_120941) T@Field_120437_243193)
(declare-fun |heapseg#sm| (T@Ref T@Ref) T@Field_244153_244158)
(declare-fun |tree#sm| (T@Ref) T@Field_243188_243193)
(declare-fun |heap#sm| (T@Ref) T@Field_304770_304775)
(declare-fun dummyHeap () T@PolymorphicMapType_235986)
(declare-fun ZeroMask () T@PolymorphicMapType_236007)
(declare-fun InsidePredicate_236046_236046 (T@Field_120437_120941 T@FrameType T@Field_120437_120941 T@FrameType) Bool)
(declare-fun InsidePredicate_120979_304757 (T@Field_304757_304758 T@FrameType T@Field_304757_304758 T@FrameType) Bool)
(declare-fun InsidePredicate_120940_120940 (T@Field_240944_240945 T@FrameType T@Field_240944_240945 T@FrameType) Bool)
(declare-fun InsidePredicate_120911_120911 (T@Field_239929_239930 T@FrameType T@Field_239929_239930 T@FrameType) Bool)
(declare-fun IsPredicateField_120437_1189 (T@Field_239373_1189) Bool)
(declare-fun IsWandField_120437_1189 (T@Field_239373_1189) Bool)
(declare-fun IsPredicateField_120441_120442 (T@Field_236059_236060) Bool)
(declare-fun IsWandField_120441_120442 (T@Field_236059_236060) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_120979_926171 (T@Field_304770_304775) Bool)
(declare-fun IsWandField_120979_926187 (T@Field_304770_304775) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_120979_53 (T@Field_120979_53) Bool)
(declare-fun IsWandField_120979_53 (T@Field_120979_53) Bool)
(declare-fun IsPredicateField_120979_120448 (T@Field_120979_120448) Bool)
(declare-fun IsWandField_120979_120448 (T@Field_120979_120448) Bool)
(declare-fun IsPredicateField_120979_1189 (T@Field_120979_1189) Bool)
(declare-fun IsWandField_120979_1189 (T@Field_120979_1189) Bool)
(declare-fun IsPredicateField_120940_925340 (T@Field_244153_244158) Bool)
(declare-fun IsWandField_120940_925356 (T@Field_244153_244158) Bool)
(declare-fun IsPredicateField_120940_53 (T@Field_120940_53) Bool)
(declare-fun IsWandField_120940_53 (T@Field_120940_53) Bool)
(declare-fun IsPredicateField_120940_120448 (T@Field_120940_120448) Bool)
(declare-fun IsWandField_120940_120448 (T@Field_120940_120448) Bool)
(declare-fun IsPredicateField_120940_1189 (T@Field_120940_1189) Bool)
(declare-fun IsWandField_120940_1189 (T@Field_120940_1189) Bool)
(declare-fun IsPredicateField_120437_924509 (T@Field_120437_243193) Bool)
(declare-fun IsWandField_120437_924525 (T@Field_120437_243193) Bool)
(declare-fun IsPredicateField_120437_53 (T@Field_236046_53) Bool)
(declare-fun IsWandField_120437_53 (T@Field_236046_53) Bool)
(declare-fun IsPredicateField_120911_923706 (T@Field_243188_243193) Bool)
(declare-fun IsWandField_120911_923722 (T@Field_243188_243193) Bool)
(declare-fun IsPredicateField_120911_53 (T@Field_120911_53) Bool)
(declare-fun IsWandField_120911_53 (T@Field_120911_53) Bool)
(declare-fun IsPredicateField_120911_120448 (T@Field_120911_120448) Bool)
(declare-fun IsWandField_120911_120448 (T@Field_120911_120448) Bool)
(declare-fun IsPredicateField_120911_1189 (T@Field_120911_1189) Bool)
(declare-fun IsWandField_120911_1189 (T@Field_120911_1189) Bool)
(declare-fun presorted (T@PolymorphicMapType_235986 T@Ref T@Ref) Bool)
(declare-fun HasDirectPerm_120979_904559 (T@PolymorphicMapType_236007 T@Ref T@Field_304770_304775) Bool)
(declare-fun HasDirectPerm_120979_53 (T@PolymorphicMapType_236007 T@Ref T@Field_120979_53) Bool)
(declare-fun HasDirectPerm_120979_120448 (T@PolymorphicMapType_236007 T@Ref T@Field_120979_120448) Bool)
(declare-fun HasDirectPerm_120979_1189 (T@PolymorphicMapType_236007 T@Ref T@Field_120979_1189) Bool)
(declare-fun HasDirectPerm_120911_903461 (T@PolymorphicMapType_236007 T@Ref T@Field_243188_243193) Bool)
(declare-fun HasDirectPerm_120911_53 (T@PolymorphicMapType_236007 T@Ref T@Field_120911_53) Bool)
(declare-fun HasDirectPerm_120911_120448 (T@PolymorphicMapType_236007 T@Ref T@Field_120911_120448) Bool)
(declare-fun HasDirectPerm_120911_1189 (T@PolymorphicMapType_236007 T@Ref T@Field_120911_1189) Bool)
(declare-fun HasDirectPerm_120940_902363 (T@PolymorphicMapType_236007 T@Ref T@Field_244153_244158) Bool)
(declare-fun HasDirectPerm_120940_53 (T@PolymorphicMapType_236007 T@Ref T@Field_120940_53) Bool)
(declare-fun HasDirectPerm_120940_120448 (T@PolymorphicMapType_236007 T@Ref T@Field_120940_120448) Bool)
(declare-fun HasDirectPerm_120940_1189 (T@PolymorphicMapType_236007 T@Ref T@Field_120940_1189) Bool)
(declare-fun HasDirectPerm_120437_901222 (T@PolymorphicMapType_236007 T@Ref T@Field_120437_243193) Bool)
(declare-fun HasDirectPerm_120437_53 (T@PolymorphicMapType_236007 T@Ref T@Field_236046_53) Bool)
(declare-fun HasDirectPerm_120447_120448 (T@PolymorphicMapType_236007 T@Ref T@Field_236059_236060) Bool)
(declare-fun HasDirectPerm_120437_1189 (T@PolymorphicMapType_236007 T@Ref T@Field_239373_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun segParent (T@PolymorphicMapType_235986 T@Ref T@Ref) T@Ref)
(declare-fun sumMask (T@PolymorphicMapType_236007 T@PolymorphicMapType_236007 T@PolymorphicMapType_236007) Bool)
(declare-fun |sorted#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun |segDegree#frame| (T@FrameType T@Ref T@Ref Int) Int)
(declare-fun getPredWandId_120940_120941 (T@Field_240944_240945) Int)
(declare-fun |treeKey#frame| (T@FrameType T@Ref) Int)
(declare-fun |treeDegree#frame| (T@FrameType T@Ref) Int)
(declare-fun |treeSize#frame| (T@FrameType T@Ref) Int)
(declare-fun |treeParent#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun getPredWandId_120911_120912 (T@Field_239929_239930) Int)
(declare-fun getPredWandId_120979_120980 (T@Field_304757_304758) Int)
(declare-fun |segSize#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun |segLength#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun |treeDegree#trigger| (T@FrameType T@Ref) Bool)
(declare-fun sorted_1 (T@PolymorphicMapType_235986 T@Ref T@Ref) Bool)
(declare-fun |segDegree#trigger| (T@FrameType T@Ref T@Ref Int) Bool)
(declare-fun InsidePredicate_236046_304757 (T@Field_120437_120941 T@FrameType T@Field_304757_304758 T@FrameType) Bool)
(declare-fun InsidePredicate_236046_120911 (T@Field_120437_120941 T@FrameType T@Field_239929_239930 T@FrameType) Bool)
(declare-fun InsidePredicate_236046_120940 (T@Field_120437_120941 T@FrameType T@Field_240944_240945 T@FrameType) Bool)
(declare-fun InsidePredicate_120979_236046 (T@Field_304757_304758 T@FrameType T@Field_120437_120941 T@FrameType) Bool)
(declare-fun InsidePredicate_120979_120911 (T@Field_304757_304758 T@FrameType T@Field_239929_239930 T@FrameType) Bool)
(declare-fun InsidePredicate_120979_120940 (T@Field_304757_304758 T@FrameType T@Field_240944_240945 T@FrameType) Bool)
(declare-fun InsidePredicate_120911_304757 (T@Field_239929_239930 T@FrameType T@Field_304757_304758 T@FrameType) Bool)
(declare-fun InsidePredicate_120911_236046 (T@Field_239929_239930 T@FrameType T@Field_120437_120941 T@FrameType) Bool)
(declare-fun InsidePredicate_120911_120940 (T@Field_239929_239930 T@FrameType T@Field_240944_240945 T@FrameType) Bool)
(declare-fun InsidePredicate_120940_304757 (T@Field_240944_240945 T@FrameType T@Field_304757_304758 T@FrameType) Bool)
(declare-fun InsidePredicate_120940_236046 (T@Field_240944_240945 T@FrameType T@Field_120437_120941 T@FrameType) Bool)
(declare-fun InsidePredicate_120940_120911 (T@Field_240944_240945 T@FrameType T@Field_239929_239930 T@FrameType) Bool)
(declare-fun |sorted#frame| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun |presorted#frame| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun |validChildren#frame| (T@FrameType T@Ref T@Ref) Bool)
(assert (and (distinct key_6 degree size_3)(distinct parent sibling child Nodes_1))
)
(assert (forall ((Heap T@PolymorphicMapType_235986) (Mask T@PolymorphicMapType_236007) (this T@Ref) (last T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 8)) (= (segLength Heap this last) (ite (= this last) 0 (+ 1 (|segLength'| Heap (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap) this sibling) last)))))
 :qid |stdinbpl.771:15|
 :skolemid |45|
 :pattern ( (state Heap Mask) (segLength Heap this last))
 :pattern ( (state Heap Mask) (|segLength#triggerStateless| this last) (|heapseg#trigger_120940| Heap (heapseg this last)))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_235986) (Heap1 T@PolymorphicMapType_235986) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_235986) (Mask@@0 T@PolymorphicMapType_236007) (this@@0 T@Ref) (last@@0 T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 0)) (= (segSize Heap@@0 this@@0 last@@0) (ite (= this@@0 last@@0) 0 (+ (|treeSize'| Heap@@0 this@@0) (|segSize'| Heap@@0 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@0) this@@0 sibling) last@@0)))))
 :qid |stdinbpl.942:15|
 :skolemid |54|
 :pattern ( (state Heap@@0 Mask@@0) (segSize Heap@@0 this@@0 last@@0))
 :pattern ( (state Heap@@0 Mask@@0) (|segSize#triggerStateless| this@@0 last@@0) (|heapseg#trigger_120940| Heap@@0 (heapseg this@@0 last@@0)) (|heapseg#trigger_120940| Heap@@0 (heapseg this@@0 last@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_235986) (Mask@@1 T@PolymorphicMapType_236007) (this@@1 T@Ref) ) (!  (=> (and (state Heap@@1 Mask@@1) (< AssumeFunctionsAbove 2)) (= (treeKey Heap@@1 this@@1) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@1) this@@1 key_6)))
 :qid |stdinbpl.231:15|
 :skolemid |24|
 :pattern ( (state Heap@@1 Mask@@1) (treeKey Heap@@1 this@@1))
 :pattern ( (state Heap@@1 Mask@@1) (|treeKey#triggerStateless| this@@1) (|tree#trigger_120911| Heap@@1 (tree_1 this@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_235986) (Mask@@2 T@PolymorphicMapType_236007) (this@@2 T@Ref) ) (!  (=> (and (state Heap@@2 Mask@@2) (< AssumeFunctionsAbove 6)) (= (treeParent Heap@@2 this@@2) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@2) this@@2 parent)))
 :qid |stdinbpl.644:15|
 :skolemid |40|
 :pattern ( (state Heap@@2 Mask@@2) (treeParent Heap@@2 this@@2))
 :pattern ( (state Heap@@2 Mask@@2) (|treeParent#triggerStateless| this@@2) (|tree#trigger_120911| Heap@@2 (tree_1 this@@2)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_235986) (Mask@@3 T@PolymorphicMapType_236007) (this@@3 T@Ref) ) (!  (=> (and (state Heap@@3 Mask@@3) (< AssumeFunctionsAbove 9)) (= (treeDegree Heap@@3 this@@3) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@3) this@@3 degree)))
 :qid |stdinbpl.358:15|
 :skolemid |29|
 :pattern ( (state Heap@@3 Mask@@3) (treeDegree Heap@@3 this@@3))
 :pattern ( (state Heap@@3 Mask@@3) (|treeDegree#triggerStateless| this@@3) (|tree#trigger_120911| Heap@@3 (tree_1 this@@3)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_235986) (Mask@@4 T@PolymorphicMapType_236007) ) (!  (=> (state Heap@@4 Mask@@4) (GoodMask Mask@@4))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@4 Mask@@4))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_235986) (Heap1@@0 T@PolymorphicMapType_235986) (Heap2 T@PolymorphicMapType_235986) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_235986) (this@@4 T@Ref) (last@@1 T@Ref) (index Int) ) (! (dummyFunction_1482 (|segDegree#triggerStateless| this@@4 last@@1 index))
 :qid |stdinbpl.1105:15|
 :skolemid |60|
 :pattern ( (|segDegree'| Heap@@5 this@@4 last@@1 index))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_304770_304775) ) (!  (not (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_304757_304758) ) (!  (not (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_120979_53) ) (!  (not (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_120979_120448) ) (!  (not (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_120979_1189) ) (!  (not (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_244153_244158) ) (!  (not (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_240944_240945) ) (!  (not (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_120940_53) ) (!  (not (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_120940_120448) ) (!  (not (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_120940_1189) ) (!  (not (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_243188_243193) ) (!  (not (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_239929_239930) ) (!  (not (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_120911_53) ) (!  (not (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_120911_120448) ) (!  (not (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_120911_1189) ) (!  (not (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_120437_243193) ) (!  (not (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_120437_120941) ) (!  (not (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_236046_53) ) (!  (not (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_236059_236060) ) (!  (not (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_239373_1189) ) (!  (not (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_235986) (Mask@@5 T@PolymorphicMapType_236007) (this@@5 T@Ref) (last@@2 T@Ref) ) (!  (=> (state Heap@@6 Mask@@5) (= (|segLength'| Heap@@6 this@@5 last@@2) (|segLength#frame| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@6) null (heapseg this@@5 last@@2)) this@@5 last@@2)))
 :qid |stdinbpl.778:15|
 :skolemid |46|
 :pattern ( (state Heap@@6 Mask@@5) (|segLength'| Heap@@6 this@@5 last@@2))
 :pattern ( (state Heap@@6 Mask@@5) (|segLength#triggerStateless| this@@5 last@@2) (|heapseg#trigger_120940| Heap@@6 (heapseg this@@5 last@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_235986) (Mask@@6 T@PolymorphicMapType_236007) (this@@6 T@Ref) (last@@3 T@Ref) ) (!  (=> (state Heap@@7 Mask@@6) (= (|segSize'| Heap@@7 this@@6 last@@3) (|segSize#frame| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@7) null (heapseg this@@6 last@@3)) this@@6 last@@3)))
 :qid |stdinbpl.949:15|
 :skolemid |55|
 :pattern ( (state Heap@@7 Mask@@6) (|segSize'| Heap@@7 this@@6 last@@3))
 :pattern ( (state Heap@@7 Mask@@6) (|segSize#triggerStateless| this@@6 last@@3) (|heapseg#trigger_120940| Heap@@7 (heapseg this@@6 last@@3)) (|heapseg#trigger_120940| Heap@@7 (heapseg this@@6 last@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_235986) (Mask@@7 T@PolymorphicMapType_236007) (this@@7 T@Ref) (last@@4 T@Ref) ) (!  (=> (state Heap@@8 Mask@@7) (= (|segParent'| Heap@@8 this@@7 last@@4) (|segParent#frame| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@8) null (heapseg this@@7 last@@4)) this@@7 last@@4)))
 :qid |stdinbpl.1309:15|
 :skolemid |69|
 :pattern ( (state Heap@@8 Mask@@7) (|segParent'| Heap@@8 this@@7 last@@4))
 :pattern ( (state Heap@@8 Mask@@7) (|segParent#triggerStateless| this@@7 last@@4) (|heapseg#trigger_120940| Heap@@8 (heapseg this@@7 last@@4)))
)))
(assert (forall ((this@@8 T@Ref) (last@@5 T@Ref) ) (! (IsPredicateField_120940_120941 (heapseg this@@8 last@@5))
 :qid |stdinbpl.2292:15|
 :skolemid |98|
 :pattern ( (heapseg this@@8 last@@5))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_235986) (this@@9 T@Ref) (last@@6 T@Ref) ) (! (dummyFunction_1482 (|segLength#triggerStateless| this@@9 last@@6))
 :qid |stdinbpl.765:15|
 :skolemid |44|
 :pattern ( (|segLength'| Heap@@9 this@@9 last@@6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_235986) (this@@10 T@Ref) (last@@7 T@Ref) ) (! (dummyFunction_1482 (|segSize#triggerStateless| this@@10 last@@7))
 :qid |stdinbpl.936:15|
 :skolemid |53|
 :pattern ( (|segSize'| Heap@@10 this@@10 last@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_235986) (this@@11 T@Ref) (last@@8 T@Ref) ) (! (dummyFunction_120568 (|segParent#triggerStateless| this@@11 last@@8))
 :qid |stdinbpl.1296:15|
 :skolemid |67|
 :pattern ( (|segParent'| Heap@@11 this@@11 last@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_235986) (this@@12 T@Ref) (last@@9 T@Ref) ) (! (dummyFunction_9461 (|sorted#triggerStateless| this@@12 last@@9))
 :qid |stdinbpl.1430:15|
 :skolemid |73|
 :pattern ( (|sorted'| Heap@@12 this@@12 last@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_235986) (this@@13 T@Ref) (last@@10 T@Ref) ) (! (dummyFunction_9461 (|presorted#triggerStateless| this@@13 last@@10))
 :qid |stdinbpl.1650:15|
 :skolemid |80|
 :pattern ( (|presorted'| Heap@@13 this@@13 last@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_235986) (this@@14 T@Ref) (last@@11 T@Ref) ) (! (dummyFunction_9461 (|validChildren#triggerStateless| this@@14 last@@11))
 :qid |stdinbpl.1922:15|
 :skolemid |86|
 :pattern ( (|validChildren'| Heap@@14 this@@14 last@@11))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_235986) (this@@15 T@Ref) (last@@12 T@Ref) ) (! (|heapseg#everUsed_120940| (heapseg this@@15 last@@12))
 :qid |stdinbpl.2311:15|
 :skolemid |102|
 :pattern ( (|heapseg#trigger_120940| Heap@@15 (heapseg this@@15 last@@12)))
)))
(assert (forall ((this@@16 T@Ref) ) (! (IsPredicateField_120911_120912 (tree_1 this@@16))
 :qid |stdinbpl.2110:15|
 :skolemid |92|
 :pattern ( (tree_1 this@@16))
)))
(assert (forall ((this@@17 T@Ref) ) (! (IsPredicateField_120979_120980 (heap_1 this@@17))
 :qid |stdinbpl.2405:15|
 :skolemid |104|
 :pattern ( (heap_1 this@@17))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_235986) (this@@18 T@Ref) ) (! (dummyFunction_1482 (|treeKey#triggerStateless| this@@18))
 :qid |stdinbpl.225:15|
 :skolemid |23|
 :pattern ( (|treeKey'| Heap@@16 this@@18))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_235986) (this@@19 T@Ref) ) (! (dummyFunction_1482 (|treeDegree#triggerStateless| this@@19))
 :qid |stdinbpl.352:15|
 :skolemid |28|
 :pattern ( (|treeDegree'| Heap@@17 this@@19))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_235986) (this@@20 T@Ref) ) (! (dummyFunction_1482 (|treeSize#triggerStateless| this@@20))
 :qid |stdinbpl.491:15|
 :skolemid |34|
 :pattern ( (|treeSize'| Heap@@18 this@@20))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_235986) (this@@21 T@Ref) ) (! (dummyFunction_120568 (|treeParent#triggerStateless| this@@21))
 :qid |stdinbpl.638:15|
 :skolemid |39|
 :pattern ( (|treeParent'| Heap@@19 this@@21))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_235986) (this@@22 T@Ref) ) (! (|tree#everUsed_120911| (tree_1 this@@22))
 :qid |stdinbpl.2129:15|
 :skolemid |96|
 :pattern ( (|tree#trigger_120911| Heap@@20 (tree_1 this@@22)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_235986) (this@@23 T@Ref) ) (! (|heap#everUsed_120979| (heap_1 this@@23))
 :qid |stdinbpl.2424:15|
 :skolemid |108|
 :pattern ( (|heap#trigger_120979| Heap@@21 (heap_1 this@@23)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_235986) (Mask@@8 T@PolymorphicMapType_236007) (this@@24 T@Ref) (last@@13 T@Ref) ) (!  (=> (and (state Heap@@22 Mask@@8) (< AssumeFunctionsAbove 1)) (= (validChildren Heap@@22 this@@24 last@@13)  (=> (< 1 (segLength Heap@@22 this@@24 last@@13)) (and (= (treeDegree Heap@@22 this@@24) (+ (segDegree Heap@@22 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@22) this@@24 sibling) last@@13 0) 1)) (|validChildren'| Heap@@22 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@22) this@@24 sibling) last@@13)))))
 :qid |stdinbpl.1928:15|
 :skolemid |87|
 :pattern ( (state Heap@@22 Mask@@8) (validChildren Heap@@22 this@@24 last@@13))
 :pattern ( (state Heap@@22 Mask@@8) (|validChildren#triggerStateless| this@@24 last@@13) (|heapseg#trigger_120940| Heap@@22 (heapseg this@@24 last@@13)) (|heapseg#trigger_120940| Heap@@22 (heapseg this@@24 last@@13)) (|heapseg#trigger_120940| Heap@@22 (heapseg this@@24 last@@13)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_235986) (this@@25 T@Ref) ) (!  (and (= (treeKey Heap@@23 this@@25) (|treeKey'| Heap@@23 this@@25)) (dummyFunction_1482 (|treeKey#triggerStateless| this@@25)))
 :qid |stdinbpl.221:15|
 :skolemid |22|
 :pattern ( (treeKey Heap@@23 this@@25))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_235986) (this@@26 T@Ref) ) (!  (and (= (treeDegree Heap@@24 this@@26) (|treeDegree'| Heap@@24 this@@26)) (dummyFunction_1482 (|treeDegree#triggerStateless| this@@26)))
 :qid |stdinbpl.348:15|
 :skolemid |27|
 :pattern ( (treeDegree Heap@@24 this@@26))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_235986) (this@@27 T@Ref) ) (!  (and (= (treeSize Heap@@25 this@@27) (|treeSize'| Heap@@25 this@@27)) (dummyFunction_1482 (|treeSize#triggerStateless| this@@27)))
 :qid |stdinbpl.487:15|
 :skolemid |33|
 :pattern ( (treeSize Heap@@25 this@@27))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_235986) (this@@28 T@Ref) ) (!  (and (= (treeParent Heap@@26 this@@28) (|treeParent'| Heap@@26 this@@28)) (dummyFunction_120568 (|treeParent#triggerStateless| this@@28)))
 :qid |stdinbpl.634:15|
 :skolemid |38|
 :pattern ( (treeParent Heap@@26 this@@28))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_235986) (ExhaleHeap T@PolymorphicMapType_235986) (Mask@@9 T@PolymorphicMapType_236007) (pm_f_58 T@Field_304757_304758) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap Mask@@9) (=> (and (HasDirectPerm_120979_120980 Mask@@9 null pm_f_58) (IsPredicateField_120979_120980 pm_f_58)) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@27) null (PredicateMaskField_120979 pm_f_58)) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap) null (PredicateMaskField_120979 pm_f_58)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap Mask@@9) (IsPredicateField_120979_120980 pm_f_58) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap) null (PredicateMaskField_120979 pm_f_58)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_235986) (ExhaleHeap@@0 T@PolymorphicMapType_235986) (Mask@@10 T@PolymorphicMapType_236007) (pm_f_58@@0 T@Field_239929_239930) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@0 Mask@@10) (=> (and (HasDirectPerm_120911_120912 Mask@@10 null pm_f_58@@0) (IsPredicateField_120911_120912 pm_f_58@@0)) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@28) null (PredicateMaskField_120911 pm_f_58@@0)) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@0) null (PredicateMaskField_120911 pm_f_58@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@0 Mask@@10) (IsPredicateField_120911_120912 pm_f_58@@0) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@0) null (PredicateMaskField_120911 pm_f_58@@0)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_235986) (ExhaleHeap@@1 T@PolymorphicMapType_235986) (Mask@@11 T@PolymorphicMapType_236007) (pm_f_58@@1 T@Field_240944_240945) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@1 Mask@@11) (=> (and (HasDirectPerm_120940_120941 Mask@@11 null pm_f_58@@1) (IsPredicateField_120940_120941 pm_f_58@@1)) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@29) null (PredicateMaskField_120940 pm_f_58@@1)) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@1) null (PredicateMaskField_120940 pm_f_58@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@1 Mask@@11) (IsPredicateField_120940_120941 pm_f_58@@1) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@1) null (PredicateMaskField_120940 pm_f_58@@1)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_235986) (ExhaleHeap@@2 T@PolymorphicMapType_235986) (Mask@@12 T@PolymorphicMapType_236007) (pm_f_58@@2 T@Field_120437_120941) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@2 Mask@@12) (=> (and (HasDirectPerm_120437_120941 Mask@@12 null pm_f_58@@2) (IsPredicateField_120437_904804 pm_f_58@@2)) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@30) null (PredicateMaskField_120437 pm_f_58@@2)) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@2) null (PredicateMaskField_120437 pm_f_58@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@2 Mask@@12) (IsPredicateField_120437_904804 pm_f_58@@2) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@2) null (PredicateMaskField_120437 pm_f_58@@2)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_235986) (ExhaleHeap@@3 T@PolymorphicMapType_235986) (Mask@@13 T@PolymorphicMapType_236007) (pm_f_58@@3 T@Field_304757_304758) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@3 Mask@@13) (=> (and (HasDirectPerm_120979_120980 Mask@@13 null pm_f_58@@3) (IsWandField_120979_912496 pm_f_58@@3)) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@31) null (WandMaskField_120979 pm_f_58@@3)) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@3) null (WandMaskField_120979 pm_f_58@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@3 Mask@@13) (IsWandField_120979_912496 pm_f_58@@3) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@3) null (WandMaskField_120979 pm_f_58@@3)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_235986) (ExhaleHeap@@4 T@PolymorphicMapType_235986) (Mask@@14 T@PolymorphicMapType_236007) (pm_f_58@@4 T@Field_239929_239930) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@4 Mask@@14) (=> (and (HasDirectPerm_120911_120912 Mask@@14 null pm_f_58@@4) (IsWandField_120911_912139 pm_f_58@@4)) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@32) null (WandMaskField_120911 pm_f_58@@4)) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@4) null (WandMaskField_120911 pm_f_58@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@4 Mask@@14) (IsWandField_120911_912139 pm_f_58@@4) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@4) null (WandMaskField_120911 pm_f_58@@4)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_235986) (ExhaleHeap@@5 T@PolymorphicMapType_235986) (Mask@@15 T@PolymorphicMapType_236007) (pm_f_58@@5 T@Field_240944_240945) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@5 Mask@@15) (=> (and (HasDirectPerm_120940_120941 Mask@@15 null pm_f_58@@5) (IsWandField_120940_911782 pm_f_58@@5)) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@33) null (WandMaskField_120940 pm_f_58@@5)) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@5) null (WandMaskField_120940 pm_f_58@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@5 Mask@@15) (IsWandField_120940_911782 pm_f_58@@5) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@5) null (WandMaskField_120940 pm_f_58@@5)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_235986) (ExhaleHeap@@6 T@PolymorphicMapType_235986) (Mask@@16 T@PolymorphicMapType_236007) (pm_f_58@@6 T@Field_120437_120941) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@6 Mask@@16) (=> (and (HasDirectPerm_120437_120941 Mask@@16 null pm_f_58@@6) (IsWandField_120437_911425 pm_f_58@@6)) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@34) null (WandMaskField_120437 pm_f_58@@6)) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@6) null (WandMaskField_120437 pm_f_58@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@6 Mask@@16) (IsWandField_120437_911425 pm_f_58@@6) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@6) null (WandMaskField_120437 pm_f_58@@6)))
)))
(assert (forall ((this@@29 T@Ref) (last@@14 T@Ref) (this2 T@Ref) (last2 T@Ref) ) (!  (=> (= (heapseg this@@29 last@@14) (heapseg this2 last2)) (and (= this@@29 this2) (= last@@14 last2)))
 :qid |stdinbpl.2302:15|
 :skolemid |100|
 :pattern ( (heapseg this@@29 last@@14) (heapseg this2 last2))
)))
(assert (forall ((this@@30 T@Ref) (last@@15 T@Ref) (this2@@0 T@Ref) (last2@@0 T@Ref) ) (!  (=> (= (|heapseg#sm| this@@30 last@@15) (|heapseg#sm| this2@@0 last2@@0)) (and (= this@@30 this2@@0) (= last@@15 last2@@0)))
 :qid |stdinbpl.2306:15|
 :skolemid |101|
 :pattern ( (|heapseg#sm| this@@30 last@@15) (|heapseg#sm| this2@@0 last2@@0))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_235986) (ExhaleHeap@@7 T@PolymorphicMapType_235986) (Mask@@17 T@PolymorphicMapType_236007) (pm_f_58@@7 T@Field_304757_304758) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@7 Mask@@17) (=> (and (HasDirectPerm_120979_120980 Mask@@17 null pm_f_58@@7) (IsPredicateField_120979_120980 pm_f_58@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_59 T@Ref) (f_161 T@Field_239373_1189) ) (!  (=> (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59 f_161) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@35) o2_59 f_161) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59 f_161)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59 f_161))
)) (forall ((o2_59@@0 T@Ref) (f_161@@0 T@Field_236059_236060) ) (!  (=> (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@0 f_161@@0) (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@35) o2_59@@0 f_161@@0) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@0 f_161@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@0 f_161@@0))
))) (forall ((o2_59@@1 T@Ref) (f_161@@1 T@Field_236046_53) ) (!  (=> (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@1 f_161@@1) (= (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@35) o2_59@@1 f_161@@1) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@1 f_161@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@1 f_161@@1))
))) (forall ((o2_59@@2 T@Ref) (f_161@@2 T@Field_120437_120941) ) (!  (=> (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@2 f_161@@2) (= (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@35) o2_59@@2 f_161@@2) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@2 f_161@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@2 f_161@@2))
))) (forall ((o2_59@@3 T@Ref) (f_161@@3 T@Field_120437_243193) ) (!  (=> (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@3 f_161@@3) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@35) o2_59@@3 f_161@@3) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@3 f_161@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@3 f_161@@3))
))) (forall ((o2_59@@4 T@Ref) (f_161@@4 T@Field_120911_1189) ) (!  (=> (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@4 f_161@@4) (= (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@35) o2_59@@4 f_161@@4) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@4 f_161@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@4 f_161@@4))
))) (forall ((o2_59@@5 T@Ref) (f_161@@5 T@Field_120911_120448) ) (!  (=> (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@5 f_161@@5) (= (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@35) o2_59@@5 f_161@@5) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@5 f_161@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@5 f_161@@5))
))) (forall ((o2_59@@6 T@Ref) (f_161@@6 T@Field_120911_53) ) (!  (=> (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@6 f_161@@6) (= (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@35) o2_59@@6 f_161@@6) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@6 f_161@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@6 f_161@@6))
))) (forall ((o2_59@@7 T@Ref) (f_161@@7 T@Field_239929_239930) ) (!  (=> (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@7 f_161@@7) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@35) o2_59@@7 f_161@@7) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@7 f_161@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@7 f_161@@7))
))) (forall ((o2_59@@8 T@Ref) (f_161@@8 T@Field_243188_243193) ) (!  (=> (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@8 f_161@@8) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@35) o2_59@@8 f_161@@8) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@8 f_161@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@8 f_161@@8))
))) (forall ((o2_59@@9 T@Ref) (f_161@@9 T@Field_120940_1189) ) (!  (=> (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@9 f_161@@9) (= (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@35) o2_59@@9 f_161@@9) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@9 f_161@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@9 f_161@@9))
))) (forall ((o2_59@@10 T@Ref) (f_161@@10 T@Field_120940_120448) ) (!  (=> (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@10 f_161@@10) (= (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@35) o2_59@@10 f_161@@10) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@10 f_161@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@10 f_161@@10))
))) (forall ((o2_59@@11 T@Ref) (f_161@@11 T@Field_120940_53) ) (!  (=> (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@11 f_161@@11) (= (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@35) o2_59@@11 f_161@@11) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@11 f_161@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@11 f_161@@11))
))) (forall ((o2_59@@12 T@Ref) (f_161@@12 T@Field_240944_240945) ) (!  (=> (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@12 f_161@@12) (= (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@35) o2_59@@12 f_161@@12) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@12 f_161@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@12 f_161@@12))
))) (forall ((o2_59@@13 T@Ref) (f_161@@13 T@Field_244153_244158) ) (!  (=> (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@13 f_161@@13) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@35) o2_59@@13 f_161@@13) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@13 f_161@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@13 f_161@@13))
))) (forall ((o2_59@@14 T@Ref) (f_161@@14 T@Field_120979_1189) ) (!  (=> (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@14 f_161@@14) (= (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@35) o2_59@@14 f_161@@14) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@14 f_161@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@14 f_161@@14))
))) (forall ((o2_59@@15 T@Ref) (f_161@@15 T@Field_120979_120448) ) (!  (=> (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@15 f_161@@15) (= (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@35) o2_59@@15 f_161@@15) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@15 f_161@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@15 f_161@@15))
))) (forall ((o2_59@@16 T@Ref) (f_161@@16 T@Field_120979_53) ) (!  (=> (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@16 f_161@@16) (= (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@35) o2_59@@16 f_161@@16) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@16 f_161@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@16 f_161@@16))
))) (forall ((o2_59@@17 T@Ref) (f_161@@17 T@Field_304757_304758) ) (!  (=> (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@17 f_161@@17) (= (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@35) o2_59@@17 f_161@@17) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@17 f_161@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@17 f_161@@17))
))) (forall ((o2_59@@18 T@Ref) (f_161@@18 T@Field_304770_304775) ) (!  (=> (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@18 f_161@@18) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) o2_59@@18 f_161@@18) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@18 f_161@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@18 f_161@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@7 Mask@@17) (IsPredicateField_120979_120980 pm_f_58@@7))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_235986) (ExhaleHeap@@8 T@PolymorphicMapType_235986) (Mask@@18 T@PolymorphicMapType_236007) (pm_f_58@@8 T@Field_239929_239930) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@8 Mask@@18) (=> (and (HasDirectPerm_120911_120912 Mask@@18 null pm_f_58@@8) (IsPredicateField_120911_120912 pm_f_58@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_59@@19 T@Ref) (f_161@@19 T@Field_239373_1189) ) (!  (=> (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@19 f_161@@19) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@36) o2_59@@19 f_161@@19) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@19 f_161@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@19 f_161@@19))
)) (forall ((o2_59@@20 T@Ref) (f_161@@20 T@Field_236059_236060) ) (!  (=> (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@20 f_161@@20) (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@36) o2_59@@20 f_161@@20) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@20 f_161@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@20 f_161@@20))
))) (forall ((o2_59@@21 T@Ref) (f_161@@21 T@Field_236046_53) ) (!  (=> (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@21 f_161@@21) (= (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@36) o2_59@@21 f_161@@21) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@21 f_161@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@21 f_161@@21))
))) (forall ((o2_59@@22 T@Ref) (f_161@@22 T@Field_120437_120941) ) (!  (=> (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@22 f_161@@22) (= (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@36) o2_59@@22 f_161@@22) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@22 f_161@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@22 f_161@@22))
))) (forall ((o2_59@@23 T@Ref) (f_161@@23 T@Field_120437_243193) ) (!  (=> (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@23 f_161@@23) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@36) o2_59@@23 f_161@@23) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@23 f_161@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@23 f_161@@23))
))) (forall ((o2_59@@24 T@Ref) (f_161@@24 T@Field_120911_1189) ) (!  (=> (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@24 f_161@@24) (= (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@36) o2_59@@24 f_161@@24) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@24 f_161@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@24 f_161@@24))
))) (forall ((o2_59@@25 T@Ref) (f_161@@25 T@Field_120911_120448) ) (!  (=> (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@25 f_161@@25) (= (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@36) o2_59@@25 f_161@@25) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@25 f_161@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@25 f_161@@25))
))) (forall ((o2_59@@26 T@Ref) (f_161@@26 T@Field_120911_53) ) (!  (=> (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@26 f_161@@26) (= (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@36) o2_59@@26 f_161@@26) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@26 f_161@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@26 f_161@@26))
))) (forall ((o2_59@@27 T@Ref) (f_161@@27 T@Field_239929_239930) ) (!  (=> (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@27 f_161@@27) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@36) o2_59@@27 f_161@@27) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@27 f_161@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@27 f_161@@27))
))) (forall ((o2_59@@28 T@Ref) (f_161@@28 T@Field_243188_243193) ) (!  (=> (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@28 f_161@@28) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) o2_59@@28 f_161@@28) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@28 f_161@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@28 f_161@@28))
))) (forall ((o2_59@@29 T@Ref) (f_161@@29 T@Field_120940_1189) ) (!  (=> (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@29 f_161@@29) (= (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@36) o2_59@@29 f_161@@29) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@29 f_161@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@29 f_161@@29))
))) (forall ((o2_59@@30 T@Ref) (f_161@@30 T@Field_120940_120448) ) (!  (=> (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@30 f_161@@30) (= (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@36) o2_59@@30 f_161@@30) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@30 f_161@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@30 f_161@@30))
))) (forall ((o2_59@@31 T@Ref) (f_161@@31 T@Field_120940_53) ) (!  (=> (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@31 f_161@@31) (= (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@36) o2_59@@31 f_161@@31) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@31 f_161@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@31 f_161@@31))
))) (forall ((o2_59@@32 T@Ref) (f_161@@32 T@Field_240944_240945) ) (!  (=> (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@32 f_161@@32) (= (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@36) o2_59@@32 f_161@@32) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@32 f_161@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@32 f_161@@32))
))) (forall ((o2_59@@33 T@Ref) (f_161@@33 T@Field_244153_244158) ) (!  (=> (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@33 f_161@@33) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@36) o2_59@@33 f_161@@33) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@33 f_161@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@33 f_161@@33))
))) (forall ((o2_59@@34 T@Ref) (f_161@@34 T@Field_120979_1189) ) (!  (=> (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@34 f_161@@34) (= (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@36) o2_59@@34 f_161@@34) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@34 f_161@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@34 f_161@@34))
))) (forall ((o2_59@@35 T@Ref) (f_161@@35 T@Field_120979_120448) ) (!  (=> (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@35 f_161@@35) (= (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@36) o2_59@@35 f_161@@35) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@35 f_161@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@35 f_161@@35))
))) (forall ((o2_59@@36 T@Ref) (f_161@@36 T@Field_120979_53) ) (!  (=> (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@36 f_161@@36) (= (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@36) o2_59@@36 f_161@@36) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@36 f_161@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@36 f_161@@36))
))) (forall ((o2_59@@37 T@Ref) (f_161@@37 T@Field_304757_304758) ) (!  (=> (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@37 f_161@@37) (= (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@36) o2_59@@37 f_161@@37) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@37 f_161@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@37 f_161@@37))
))) (forall ((o2_59@@38 T@Ref) (f_161@@38 T@Field_304770_304775) ) (!  (=> (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@38 f_161@@38) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@36) o2_59@@38 f_161@@38) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@38 f_161@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@38 f_161@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@8 Mask@@18) (IsPredicateField_120911_120912 pm_f_58@@8))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_235986) (ExhaleHeap@@9 T@PolymorphicMapType_235986) (Mask@@19 T@PolymorphicMapType_236007) (pm_f_58@@9 T@Field_240944_240945) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@9 Mask@@19) (=> (and (HasDirectPerm_120940_120941 Mask@@19 null pm_f_58@@9) (IsPredicateField_120940_120941 pm_f_58@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_59@@39 T@Ref) (f_161@@39 T@Field_239373_1189) ) (!  (=> (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@39 f_161@@39) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@37) o2_59@@39 f_161@@39) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@39 f_161@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@39 f_161@@39))
)) (forall ((o2_59@@40 T@Ref) (f_161@@40 T@Field_236059_236060) ) (!  (=> (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@40 f_161@@40) (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@37) o2_59@@40 f_161@@40) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@40 f_161@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@40 f_161@@40))
))) (forall ((o2_59@@41 T@Ref) (f_161@@41 T@Field_236046_53) ) (!  (=> (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@41 f_161@@41) (= (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@37) o2_59@@41 f_161@@41) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@41 f_161@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@41 f_161@@41))
))) (forall ((o2_59@@42 T@Ref) (f_161@@42 T@Field_120437_120941) ) (!  (=> (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@42 f_161@@42) (= (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@37) o2_59@@42 f_161@@42) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@42 f_161@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@42 f_161@@42))
))) (forall ((o2_59@@43 T@Ref) (f_161@@43 T@Field_120437_243193) ) (!  (=> (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@43 f_161@@43) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@37) o2_59@@43 f_161@@43) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@43 f_161@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@43 f_161@@43))
))) (forall ((o2_59@@44 T@Ref) (f_161@@44 T@Field_120911_1189) ) (!  (=> (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@44 f_161@@44) (= (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@37) o2_59@@44 f_161@@44) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@44 f_161@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@44 f_161@@44))
))) (forall ((o2_59@@45 T@Ref) (f_161@@45 T@Field_120911_120448) ) (!  (=> (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@45 f_161@@45) (= (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@37) o2_59@@45 f_161@@45) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@45 f_161@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@45 f_161@@45))
))) (forall ((o2_59@@46 T@Ref) (f_161@@46 T@Field_120911_53) ) (!  (=> (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@46 f_161@@46) (= (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@37) o2_59@@46 f_161@@46) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@46 f_161@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@46 f_161@@46))
))) (forall ((o2_59@@47 T@Ref) (f_161@@47 T@Field_239929_239930) ) (!  (=> (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@47 f_161@@47) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@37) o2_59@@47 f_161@@47) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@47 f_161@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@47 f_161@@47))
))) (forall ((o2_59@@48 T@Ref) (f_161@@48 T@Field_243188_243193) ) (!  (=> (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@48 f_161@@48) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@37) o2_59@@48 f_161@@48) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@48 f_161@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@48 f_161@@48))
))) (forall ((o2_59@@49 T@Ref) (f_161@@49 T@Field_120940_1189) ) (!  (=> (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@49 f_161@@49) (= (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@37) o2_59@@49 f_161@@49) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@49 f_161@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@49 f_161@@49))
))) (forall ((o2_59@@50 T@Ref) (f_161@@50 T@Field_120940_120448) ) (!  (=> (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@50 f_161@@50) (= (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@37) o2_59@@50 f_161@@50) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@50 f_161@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@50 f_161@@50))
))) (forall ((o2_59@@51 T@Ref) (f_161@@51 T@Field_120940_53) ) (!  (=> (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@51 f_161@@51) (= (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@37) o2_59@@51 f_161@@51) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@51 f_161@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@51 f_161@@51))
))) (forall ((o2_59@@52 T@Ref) (f_161@@52 T@Field_240944_240945) ) (!  (=> (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@52 f_161@@52) (= (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@37) o2_59@@52 f_161@@52) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@52 f_161@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@52 f_161@@52))
))) (forall ((o2_59@@53 T@Ref) (f_161@@53 T@Field_244153_244158) ) (!  (=> (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@53 f_161@@53) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) o2_59@@53 f_161@@53) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@53 f_161@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@53 f_161@@53))
))) (forall ((o2_59@@54 T@Ref) (f_161@@54 T@Field_120979_1189) ) (!  (=> (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@54 f_161@@54) (= (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@37) o2_59@@54 f_161@@54) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@54 f_161@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@54 f_161@@54))
))) (forall ((o2_59@@55 T@Ref) (f_161@@55 T@Field_120979_120448) ) (!  (=> (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@55 f_161@@55) (= (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@37) o2_59@@55 f_161@@55) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@55 f_161@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@55 f_161@@55))
))) (forall ((o2_59@@56 T@Ref) (f_161@@56 T@Field_120979_53) ) (!  (=> (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@56 f_161@@56) (= (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@37) o2_59@@56 f_161@@56) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@56 f_161@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@56 f_161@@56))
))) (forall ((o2_59@@57 T@Ref) (f_161@@57 T@Field_304757_304758) ) (!  (=> (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@57 f_161@@57) (= (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@37) o2_59@@57 f_161@@57) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@57 f_161@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@57 f_161@@57))
))) (forall ((o2_59@@58 T@Ref) (f_161@@58 T@Field_304770_304775) ) (!  (=> (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@58 f_161@@58) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@37) o2_59@@58 f_161@@58) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@58 f_161@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@58 f_161@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@9 Mask@@19) (IsPredicateField_120940_120941 pm_f_58@@9))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_235986) (ExhaleHeap@@10 T@PolymorphicMapType_235986) (Mask@@20 T@PolymorphicMapType_236007) (pm_f_58@@10 T@Field_120437_120941) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@10 Mask@@20) (=> (and (HasDirectPerm_120437_120941 Mask@@20 null pm_f_58@@10) (IsPredicateField_120437_904804 pm_f_58@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_59@@59 T@Ref) (f_161@@59 T@Field_239373_1189) ) (!  (=> (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@59 f_161@@59) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@38) o2_59@@59 f_161@@59) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@59 f_161@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@59 f_161@@59))
)) (forall ((o2_59@@60 T@Ref) (f_161@@60 T@Field_236059_236060) ) (!  (=> (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@60 f_161@@60) (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@38) o2_59@@60 f_161@@60) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@60 f_161@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@60 f_161@@60))
))) (forall ((o2_59@@61 T@Ref) (f_161@@61 T@Field_236046_53) ) (!  (=> (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@61 f_161@@61) (= (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@38) o2_59@@61 f_161@@61) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@61 f_161@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@61 f_161@@61))
))) (forall ((o2_59@@62 T@Ref) (f_161@@62 T@Field_120437_120941) ) (!  (=> (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@62 f_161@@62) (= (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@38) o2_59@@62 f_161@@62) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@62 f_161@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@62 f_161@@62))
))) (forall ((o2_59@@63 T@Ref) (f_161@@63 T@Field_120437_243193) ) (!  (=> (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@63 f_161@@63) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) o2_59@@63 f_161@@63) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@63 f_161@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@63 f_161@@63))
))) (forall ((o2_59@@64 T@Ref) (f_161@@64 T@Field_120911_1189) ) (!  (=> (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@64 f_161@@64) (= (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@38) o2_59@@64 f_161@@64) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@64 f_161@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@64 f_161@@64))
))) (forall ((o2_59@@65 T@Ref) (f_161@@65 T@Field_120911_120448) ) (!  (=> (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@65 f_161@@65) (= (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@38) o2_59@@65 f_161@@65) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@65 f_161@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@65 f_161@@65))
))) (forall ((o2_59@@66 T@Ref) (f_161@@66 T@Field_120911_53) ) (!  (=> (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@66 f_161@@66) (= (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@38) o2_59@@66 f_161@@66) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@66 f_161@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@66 f_161@@66))
))) (forall ((o2_59@@67 T@Ref) (f_161@@67 T@Field_239929_239930) ) (!  (=> (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@67 f_161@@67) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@38) o2_59@@67 f_161@@67) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@67 f_161@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@67 f_161@@67))
))) (forall ((o2_59@@68 T@Ref) (f_161@@68 T@Field_243188_243193) ) (!  (=> (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@68 f_161@@68) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@38) o2_59@@68 f_161@@68) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@68 f_161@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@68 f_161@@68))
))) (forall ((o2_59@@69 T@Ref) (f_161@@69 T@Field_120940_1189) ) (!  (=> (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@69 f_161@@69) (= (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@38) o2_59@@69 f_161@@69) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@69 f_161@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@69 f_161@@69))
))) (forall ((o2_59@@70 T@Ref) (f_161@@70 T@Field_120940_120448) ) (!  (=> (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@70 f_161@@70) (= (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@38) o2_59@@70 f_161@@70) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@70 f_161@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@70 f_161@@70))
))) (forall ((o2_59@@71 T@Ref) (f_161@@71 T@Field_120940_53) ) (!  (=> (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@71 f_161@@71) (= (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@38) o2_59@@71 f_161@@71) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@71 f_161@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@71 f_161@@71))
))) (forall ((o2_59@@72 T@Ref) (f_161@@72 T@Field_240944_240945) ) (!  (=> (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@72 f_161@@72) (= (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@38) o2_59@@72 f_161@@72) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@72 f_161@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@72 f_161@@72))
))) (forall ((o2_59@@73 T@Ref) (f_161@@73 T@Field_244153_244158) ) (!  (=> (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@73 f_161@@73) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@38) o2_59@@73 f_161@@73) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@73 f_161@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@73 f_161@@73))
))) (forall ((o2_59@@74 T@Ref) (f_161@@74 T@Field_120979_1189) ) (!  (=> (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@74 f_161@@74) (= (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@38) o2_59@@74 f_161@@74) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@74 f_161@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@74 f_161@@74))
))) (forall ((o2_59@@75 T@Ref) (f_161@@75 T@Field_120979_120448) ) (!  (=> (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@75 f_161@@75) (= (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@38) o2_59@@75 f_161@@75) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@75 f_161@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@75 f_161@@75))
))) (forall ((o2_59@@76 T@Ref) (f_161@@76 T@Field_120979_53) ) (!  (=> (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@76 f_161@@76) (= (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@38) o2_59@@76 f_161@@76) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@76 f_161@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@76 f_161@@76))
))) (forall ((o2_59@@77 T@Ref) (f_161@@77 T@Field_304757_304758) ) (!  (=> (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@77 f_161@@77) (= (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@38) o2_59@@77 f_161@@77) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@77 f_161@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@77 f_161@@77))
))) (forall ((o2_59@@78 T@Ref) (f_161@@78 T@Field_304770_304775) ) (!  (=> (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@78 f_161@@78) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@38) o2_59@@78 f_161@@78) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@78 f_161@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@78 f_161@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@10 Mask@@20) (IsPredicateField_120437_904804 pm_f_58@@10))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_235986) (ExhaleHeap@@11 T@PolymorphicMapType_235986) (Mask@@21 T@PolymorphicMapType_236007) (pm_f_58@@11 T@Field_304757_304758) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@11 Mask@@21) (=> (and (HasDirectPerm_120979_120980 Mask@@21 null pm_f_58@@11) (IsWandField_120979_912496 pm_f_58@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_59@@79 T@Ref) (f_161@@79 T@Field_239373_1189) ) (!  (=> (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@79 f_161@@79) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@39) o2_59@@79 f_161@@79) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@79 f_161@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@79 f_161@@79))
)) (forall ((o2_59@@80 T@Ref) (f_161@@80 T@Field_236059_236060) ) (!  (=> (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@80 f_161@@80) (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@39) o2_59@@80 f_161@@80) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@80 f_161@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@80 f_161@@80))
))) (forall ((o2_59@@81 T@Ref) (f_161@@81 T@Field_236046_53) ) (!  (=> (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@81 f_161@@81) (= (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@39) o2_59@@81 f_161@@81) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@81 f_161@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@81 f_161@@81))
))) (forall ((o2_59@@82 T@Ref) (f_161@@82 T@Field_120437_120941) ) (!  (=> (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@82 f_161@@82) (= (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@39) o2_59@@82 f_161@@82) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@82 f_161@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@82 f_161@@82))
))) (forall ((o2_59@@83 T@Ref) (f_161@@83 T@Field_120437_243193) ) (!  (=> (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@83 f_161@@83) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@39) o2_59@@83 f_161@@83) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@83 f_161@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@83 f_161@@83))
))) (forall ((o2_59@@84 T@Ref) (f_161@@84 T@Field_120911_1189) ) (!  (=> (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@84 f_161@@84) (= (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@39) o2_59@@84 f_161@@84) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@84 f_161@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@84 f_161@@84))
))) (forall ((o2_59@@85 T@Ref) (f_161@@85 T@Field_120911_120448) ) (!  (=> (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@85 f_161@@85) (= (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@39) o2_59@@85 f_161@@85) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@85 f_161@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@85 f_161@@85))
))) (forall ((o2_59@@86 T@Ref) (f_161@@86 T@Field_120911_53) ) (!  (=> (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@86 f_161@@86) (= (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@39) o2_59@@86 f_161@@86) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@86 f_161@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@86 f_161@@86))
))) (forall ((o2_59@@87 T@Ref) (f_161@@87 T@Field_239929_239930) ) (!  (=> (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@87 f_161@@87) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@39) o2_59@@87 f_161@@87) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@87 f_161@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@87 f_161@@87))
))) (forall ((o2_59@@88 T@Ref) (f_161@@88 T@Field_243188_243193) ) (!  (=> (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@88 f_161@@88) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@39) o2_59@@88 f_161@@88) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@88 f_161@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@88 f_161@@88))
))) (forall ((o2_59@@89 T@Ref) (f_161@@89 T@Field_120940_1189) ) (!  (=> (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@89 f_161@@89) (= (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@39) o2_59@@89 f_161@@89) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@89 f_161@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@89 f_161@@89))
))) (forall ((o2_59@@90 T@Ref) (f_161@@90 T@Field_120940_120448) ) (!  (=> (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@90 f_161@@90) (= (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@39) o2_59@@90 f_161@@90) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@90 f_161@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@90 f_161@@90))
))) (forall ((o2_59@@91 T@Ref) (f_161@@91 T@Field_120940_53) ) (!  (=> (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@91 f_161@@91) (= (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@39) o2_59@@91 f_161@@91) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@91 f_161@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@91 f_161@@91))
))) (forall ((o2_59@@92 T@Ref) (f_161@@92 T@Field_240944_240945) ) (!  (=> (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@92 f_161@@92) (= (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@39) o2_59@@92 f_161@@92) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@92 f_161@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@92 f_161@@92))
))) (forall ((o2_59@@93 T@Ref) (f_161@@93 T@Field_244153_244158) ) (!  (=> (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@93 f_161@@93) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@39) o2_59@@93 f_161@@93) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@93 f_161@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@93 f_161@@93))
))) (forall ((o2_59@@94 T@Ref) (f_161@@94 T@Field_120979_1189) ) (!  (=> (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@94 f_161@@94) (= (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@39) o2_59@@94 f_161@@94) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@94 f_161@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@94 f_161@@94))
))) (forall ((o2_59@@95 T@Ref) (f_161@@95 T@Field_120979_120448) ) (!  (=> (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@95 f_161@@95) (= (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@39) o2_59@@95 f_161@@95) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@95 f_161@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@95 f_161@@95))
))) (forall ((o2_59@@96 T@Ref) (f_161@@96 T@Field_120979_53) ) (!  (=> (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@96 f_161@@96) (= (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@39) o2_59@@96 f_161@@96) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@96 f_161@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@96 f_161@@96))
))) (forall ((o2_59@@97 T@Ref) (f_161@@97 T@Field_304757_304758) ) (!  (=> (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@97 f_161@@97) (= (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@39) o2_59@@97 f_161@@97) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@97 f_161@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@97 f_161@@97))
))) (forall ((o2_59@@98 T@Ref) (f_161@@98 T@Field_304770_304775) ) (!  (=> (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@98 f_161@@98) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) o2_59@@98 f_161@@98) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@98 f_161@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@98 f_161@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@11 Mask@@21) (IsWandField_120979_912496 pm_f_58@@11))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_235986) (ExhaleHeap@@12 T@PolymorphicMapType_235986) (Mask@@22 T@PolymorphicMapType_236007) (pm_f_58@@12 T@Field_239929_239930) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@12 Mask@@22) (=> (and (HasDirectPerm_120911_120912 Mask@@22 null pm_f_58@@12) (IsWandField_120911_912139 pm_f_58@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_59@@99 T@Ref) (f_161@@99 T@Field_239373_1189) ) (!  (=> (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@99 f_161@@99) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@40) o2_59@@99 f_161@@99) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@99 f_161@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@99 f_161@@99))
)) (forall ((o2_59@@100 T@Ref) (f_161@@100 T@Field_236059_236060) ) (!  (=> (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@100 f_161@@100) (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@40) o2_59@@100 f_161@@100) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@100 f_161@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@100 f_161@@100))
))) (forall ((o2_59@@101 T@Ref) (f_161@@101 T@Field_236046_53) ) (!  (=> (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@101 f_161@@101) (= (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@40) o2_59@@101 f_161@@101) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@101 f_161@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@101 f_161@@101))
))) (forall ((o2_59@@102 T@Ref) (f_161@@102 T@Field_120437_120941) ) (!  (=> (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@102 f_161@@102) (= (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@40) o2_59@@102 f_161@@102) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@102 f_161@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@102 f_161@@102))
))) (forall ((o2_59@@103 T@Ref) (f_161@@103 T@Field_120437_243193) ) (!  (=> (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@103 f_161@@103) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@40) o2_59@@103 f_161@@103) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@103 f_161@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@103 f_161@@103))
))) (forall ((o2_59@@104 T@Ref) (f_161@@104 T@Field_120911_1189) ) (!  (=> (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@104 f_161@@104) (= (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@40) o2_59@@104 f_161@@104) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@104 f_161@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@104 f_161@@104))
))) (forall ((o2_59@@105 T@Ref) (f_161@@105 T@Field_120911_120448) ) (!  (=> (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@105 f_161@@105) (= (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@40) o2_59@@105 f_161@@105) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@105 f_161@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@105 f_161@@105))
))) (forall ((o2_59@@106 T@Ref) (f_161@@106 T@Field_120911_53) ) (!  (=> (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@106 f_161@@106) (= (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@40) o2_59@@106 f_161@@106) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@106 f_161@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@106 f_161@@106))
))) (forall ((o2_59@@107 T@Ref) (f_161@@107 T@Field_239929_239930) ) (!  (=> (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@107 f_161@@107) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@40) o2_59@@107 f_161@@107) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@107 f_161@@107)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@107 f_161@@107))
))) (forall ((o2_59@@108 T@Ref) (f_161@@108 T@Field_243188_243193) ) (!  (=> (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@108 f_161@@108) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) o2_59@@108 f_161@@108) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@108 f_161@@108)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@108 f_161@@108))
))) (forall ((o2_59@@109 T@Ref) (f_161@@109 T@Field_120940_1189) ) (!  (=> (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@109 f_161@@109) (= (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@40) o2_59@@109 f_161@@109) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@109 f_161@@109)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@109 f_161@@109))
))) (forall ((o2_59@@110 T@Ref) (f_161@@110 T@Field_120940_120448) ) (!  (=> (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@110 f_161@@110) (= (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@40) o2_59@@110 f_161@@110) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@110 f_161@@110)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@110 f_161@@110))
))) (forall ((o2_59@@111 T@Ref) (f_161@@111 T@Field_120940_53) ) (!  (=> (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@111 f_161@@111) (= (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@40) o2_59@@111 f_161@@111) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@111 f_161@@111)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@111 f_161@@111))
))) (forall ((o2_59@@112 T@Ref) (f_161@@112 T@Field_240944_240945) ) (!  (=> (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@112 f_161@@112) (= (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@40) o2_59@@112 f_161@@112) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@112 f_161@@112)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@112 f_161@@112))
))) (forall ((o2_59@@113 T@Ref) (f_161@@113 T@Field_244153_244158) ) (!  (=> (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@113 f_161@@113) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@40) o2_59@@113 f_161@@113) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@113 f_161@@113)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@113 f_161@@113))
))) (forall ((o2_59@@114 T@Ref) (f_161@@114 T@Field_120979_1189) ) (!  (=> (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@114 f_161@@114) (= (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@40) o2_59@@114 f_161@@114) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@114 f_161@@114)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@114 f_161@@114))
))) (forall ((o2_59@@115 T@Ref) (f_161@@115 T@Field_120979_120448) ) (!  (=> (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@115 f_161@@115) (= (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@40) o2_59@@115 f_161@@115) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@115 f_161@@115)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@115 f_161@@115))
))) (forall ((o2_59@@116 T@Ref) (f_161@@116 T@Field_120979_53) ) (!  (=> (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@116 f_161@@116) (= (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@40) o2_59@@116 f_161@@116) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@116 f_161@@116)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@116 f_161@@116))
))) (forall ((o2_59@@117 T@Ref) (f_161@@117 T@Field_304757_304758) ) (!  (=> (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@117 f_161@@117) (= (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@40) o2_59@@117 f_161@@117) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@117 f_161@@117)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@117 f_161@@117))
))) (forall ((o2_59@@118 T@Ref) (f_161@@118 T@Field_304770_304775) ) (!  (=> (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@118 f_161@@118) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@40) o2_59@@118 f_161@@118) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@118 f_161@@118)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@118 f_161@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@12 Mask@@22) (IsWandField_120911_912139 pm_f_58@@12))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_235986) (ExhaleHeap@@13 T@PolymorphicMapType_235986) (Mask@@23 T@PolymorphicMapType_236007) (pm_f_58@@13 T@Field_240944_240945) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@13 Mask@@23) (=> (and (HasDirectPerm_120940_120941 Mask@@23 null pm_f_58@@13) (IsWandField_120940_911782 pm_f_58@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_59@@119 T@Ref) (f_161@@119 T@Field_239373_1189) ) (!  (=> (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@119 f_161@@119) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@41) o2_59@@119 f_161@@119) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@119 f_161@@119)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@119 f_161@@119))
)) (forall ((o2_59@@120 T@Ref) (f_161@@120 T@Field_236059_236060) ) (!  (=> (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@120 f_161@@120) (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@41) o2_59@@120 f_161@@120) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@120 f_161@@120)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@120 f_161@@120))
))) (forall ((o2_59@@121 T@Ref) (f_161@@121 T@Field_236046_53) ) (!  (=> (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@121 f_161@@121) (= (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@41) o2_59@@121 f_161@@121) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@121 f_161@@121)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@121 f_161@@121))
))) (forall ((o2_59@@122 T@Ref) (f_161@@122 T@Field_120437_120941) ) (!  (=> (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@122 f_161@@122) (= (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@41) o2_59@@122 f_161@@122) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@122 f_161@@122)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@122 f_161@@122))
))) (forall ((o2_59@@123 T@Ref) (f_161@@123 T@Field_120437_243193) ) (!  (=> (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@123 f_161@@123) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@41) o2_59@@123 f_161@@123) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@123 f_161@@123)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@123 f_161@@123))
))) (forall ((o2_59@@124 T@Ref) (f_161@@124 T@Field_120911_1189) ) (!  (=> (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@124 f_161@@124) (= (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@41) o2_59@@124 f_161@@124) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@124 f_161@@124)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@124 f_161@@124))
))) (forall ((o2_59@@125 T@Ref) (f_161@@125 T@Field_120911_120448) ) (!  (=> (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@125 f_161@@125) (= (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@41) o2_59@@125 f_161@@125) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@125 f_161@@125)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@125 f_161@@125))
))) (forall ((o2_59@@126 T@Ref) (f_161@@126 T@Field_120911_53) ) (!  (=> (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@126 f_161@@126) (= (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@41) o2_59@@126 f_161@@126) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@126 f_161@@126)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@126 f_161@@126))
))) (forall ((o2_59@@127 T@Ref) (f_161@@127 T@Field_239929_239930) ) (!  (=> (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@127 f_161@@127) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@41) o2_59@@127 f_161@@127) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@127 f_161@@127)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@127 f_161@@127))
))) (forall ((o2_59@@128 T@Ref) (f_161@@128 T@Field_243188_243193) ) (!  (=> (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@128 f_161@@128) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@41) o2_59@@128 f_161@@128) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@128 f_161@@128)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@128 f_161@@128))
))) (forall ((o2_59@@129 T@Ref) (f_161@@129 T@Field_120940_1189) ) (!  (=> (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@129 f_161@@129) (= (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@41) o2_59@@129 f_161@@129) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@129 f_161@@129)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@129 f_161@@129))
))) (forall ((o2_59@@130 T@Ref) (f_161@@130 T@Field_120940_120448) ) (!  (=> (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@130 f_161@@130) (= (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@41) o2_59@@130 f_161@@130) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@130 f_161@@130)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@130 f_161@@130))
))) (forall ((o2_59@@131 T@Ref) (f_161@@131 T@Field_120940_53) ) (!  (=> (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@131 f_161@@131) (= (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@41) o2_59@@131 f_161@@131) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@131 f_161@@131)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@131 f_161@@131))
))) (forall ((o2_59@@132 T@Ref) (f_161@@132 T@Field_240944_240945) ) (!  (=> (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@132 f_161@@132) (= (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@41) o2_59@@132 f_161@@132) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@132 f_161@@132)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@132 f_161@@132))
))) (forall ((o2_59@@133 T@Ref) (f_161@@133 T@Field_244153_244158) ) (!  (=> (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@133 f_161@@133) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) o2_59@@133 f_161@@133) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@133 f_161@@133)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@133 f_161@@133))
))) (forall ((o2_59@@134 T@Ref) (f_161@@134 T@Field_120979_1189) ) (!  (=> (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@134 f_161@@134) (= (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@41) o2_59@@134 f_161@@134) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@134 f_161@@134)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@134 f_161@@134))
))) (forall ((o2_59@@135 T@Ref) (f_161@@135 T@Field_120979_120448) ) (!  (=> (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@135 f_161@@135) (= (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@41) o2_59@@135 f_161@@135) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@135 f_161@@135)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@135 f_161@@135))
))) (forall ((o2_59@@136 T@Ref) (f_161@@136 T@Field_120979_53) ) (!  (=> (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@136 f_161@@136) (= (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@41) o2_59@@136 f_161@@136) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@136 f_161@@136)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@136 f_161@@136))
))) (forall ((o2_59@@137 T@Ref) (f_161@@137 T@Field_304757_304758) ) (!  (=> (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@137 f_161@@137) (= (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@41) o2_59@@137 f_161@@137) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@137 f_161@@137)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@137 f_161@@137))
))) (forall ((o2_59@@138 T@Ref) (f_161@@138 T@Field_304770_304775) ) (!  (=> (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@138 f_161@@138) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@41) o2_59@@138 f_161@@138) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@138 f_161@@138)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@138 f_161@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@13 Mask@@23) (IsWandField_120940_911782 pm_f_58@@13))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_235986) (ExhaleHeap@@14 T@PolymorphicMapType_235986) (Mask@@24 T@PolymorphicMapType_236007) (pm_f_58@@14 T@Field_120437_120941) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@14 Mask@@24) (=> (and (HasDirectPerm_120437_120941 Mask@@24 null pm_f_58@@14) (IsWandField_120437_911425 pm_f_58@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_59@@139 T@Ref) (f_161@@139 T@Field_239373_1189) ) (!  (=> (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@139 f_161@@139) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@42) o2_59@@139 f_161@@139) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@139 f_161@@139)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@139 f_161@@139))
)) (forall ((o2_59@@140 T@Ref) (f_161@@140 T@Field_236059_236060) ) (!  (=> (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@140 f_161@@140) (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@42) o2_59@@140 f_161@@140) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@140 f_161@@140)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@140 f_161@@140))
))) (forall ((o2_59@@141 T@Ref) (f_161@@141 T@Field_236046_53) ) (!  (=> (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@141 f_161@@141) (= (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@42) o2_59@@141 f_161@@141) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@141 f_161@@141)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@141 f_161@@141))
))) (forall ((o2_59@@142 T@Ref) (f_161@@142 T@Field_120437_120941) ) (!  (=> (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@142 f_161@@142) (= (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@42) o2_59@@142 f_161@@142) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@142 f_161@@142)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@142 f_161@@142))
))) (forall ((o2_59@@143 T@Ref) (f_161@@143 T@Field_120437_243193) ) (!  (=> (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@143 f_161@@143) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) o2_59@@143 f_161@@143) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@143 f_161@@143)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@143 f_161@@143))
))) (forall ((o2_59@@144 T@Ref) (f_161@@144 T@Field_120911_1189) ) (!  (=> (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@144 f_161@@144) (= (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@42) o2_59@@144 f_161@@144) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@144 f_161@@144)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@144 f_161@@144))
))) (forall ((o2_59@@145 T@Ref) (f_161@@145 T@Field_120911_120448) ) (!  (=> (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@145 f_161@@145) (= (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@42) o2_59@@145 f_161@@145) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@145 f_161@@145)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@145 f_161@@145))
))) (forall ((o2_59@@146 T@Ref) (f_161@@146 T@Field_120911_53) ) (!  (=> (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@146 f_161@@146) (= (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@42) o2_59@@146 f_161@@146) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@146 f_161@@146)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@146 f_161@@146))
))) (forall ((o2_59@@147 T@Ref) (f_161@@147 T@Field_239929_239930) ) (!  (=> (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@147 f_161@@147) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@42) o2_59@@147 f_161@@147) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@147 f_161@@147)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@147 f_161@@147))
))) (forall ((o2_59@@148 T@Ref) (f_161@@148 T@Field_243188_243193) ) (!  (=> (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@148 f_161@@148) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@42) o2_59@@148 f_161@@148) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@148 f_161@@148)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@148 f_161@@148))
))) (forall ((o2_59@@149 T@Ref) (f_161@@149 T@Field_120940_1189) ) (!  (=> (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@149 f_161@@149) (= (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@42) o2_59@@149 f_161@@149) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@149 f_161@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@149 f_161@@149))
))) (forall ((o2_59@@150 T@Ref) (f_161@@150 T@Field_120940_120448) ) (!  (=> (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@150 f_161@@150) (= (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@42) o2_59@@150 f_161@@150) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@150 f_161@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@150 f_161@@150))
))) (forall ((o2_59@@151 T@Ref) (f_161@@151 T@Field_120940_53) ) (!  (=> (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@151 f_161@@151) (= (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@42) o2_59@@151 f_161@@151) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@151 f_161@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@151 f_161@@151))
))) (forall ((o2_59@@152 T@Ref) (f_161@@152 T@Field_240944_240945) ) (!  (=> (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@152 f_161@@152) (= (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@42) o2_59@@152 f_161@@152) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@152 f_161@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@152 f_161@@152))
))) (forall ((o2_59@@153 T@Ref) (f_161@@153 T@Field_244153_244158) ) (!  (=> (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@153 f_161@@153) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@42) o2_59@@153 f_161@@153) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@153 f_161@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@153 f_161@@153))
))) (forall ((o2_59@@154 T@Ref) (f_161@@154 T@Field_120979_1189) ) (!  (=> (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@154 f_161@@154) (= (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@42) o2_59@@154 f_161@@154) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@154 f_161@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@154 f_161@@154))
))) (forall ((o2_59@@155 T@Ref) (f_161@@155 T@Field_120979_120448) ) (!  (=> (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@155 f_161@@155) (= (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@42) o2_59@@155 f_161@@155) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@155 f_161@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@155 f_161@@155))
))) (forall ((o2_59@@156 T@Ref) (f_161@@156 T@Field_120979_53) ) (!  (=> (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@156 f_161@@156) (= (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@42) o2_59@@156 f_161@@156) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@156 f_161@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@156 f_161@@156))
))) (forall ((o2_59@@157 T@Ref) (f_161@@157 T@Field_304757_304758) ) (!  (=> (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@157 f_161@@157) (= (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@42) o2_59@@157 f_161@@157) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@157 f_161@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@157 f_161@@157))
))) (forall ((o2_59@@158 T@Ref) (f_161@@158 T@Field_304770_304775) ) (!  (=> (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@158 f_161@@158) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@42) o2_59@@158 f_161@@158) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@158 f_161@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@158 f_161@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@14 Mask@@24) (IsWandField_120437_911425 pm_f_58@@14))
)))
(assert (forall ((this@@31 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (tree_1 this@@31) (tree_1 this2@@1)) (= this@@31 this2@@1))
 :qid |stdinbpl.2120:15|
 :skolemid |94|
 :pattern ( (tree_1 this@@31) (tree_1 this2@@1))
)))
(assert (forall ((this@@32 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|tree#sm| this@@32) (|tree#sm| this2@@2)) (= this@@32 this2@@2))
 :qid |stdinbpl.2124:15|
 :skolemid |95|
 :pattern ( (|tree#sm| this@@32) (|tree#sm| this2@@2))
)))
(assert (forall ((this@@33 T@Ref) (this2@@3 T@Ref) ) (!  (=> (= (heap_1 this@@33) (heap_1 this2@@3)) (= this@@33 this2@@3))
 :qid |stdinbpl.2415:15|
 :skolemid |106|
 :pattern ( (heap_1 this@@33) (heap_1 this2@@3))
)))
(assert (forall ((this@@34 T@Ref) (this2@@4 T@Ref) ) (!  (=> (= (|heap#sm| this@@34) (|heap#sm| this2@@4)) (= this@@34 this2@@4))
 :qid |stdinbpl.2419:15|
 :skolemid |107|
 :pattern ( (|heap#sm| this@@34) (|heap#sm| this2@@4))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@43 T@PolymorphicMapType_235986) (ExhaleHeap@@15 T@PolymorphicMapType_235986) (Mask@@25 T@PolymorphicMapType_236007) (o_153 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@15 Mask@@25) (=> (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@43) o_153 $allocated) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@15) o_153 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@15 Mask@@25) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@15) o_153 $allocated))
)))
(assert (forall ((p T@Field_120437_120941) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_236046_236046 p v_1 p w))
 :qid |stdinbpl.183:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_236046_236046 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_304757_304758) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_120979_304757 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.183:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_120979_304757 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_240944_240945) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_120940_120940 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.183:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_120940_120940 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_239929_239930) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_120911_120911 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.183:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_120911_120911 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert  (not (IsPredicateField_120437_1189 key_6)))
(assert  (not (IsWandField_120437_1189 key_6)))
(assert  (not (IsPredicateField_120437_1189 degree)))
(assert  (not (IsWandField_120437_1189 degree)))
(assert  (not (IsPredicateField_120441_120442 parent)))
(assert  (not (IsWandField_120441_120442 parent)))
(assert  (not (IsPredicateField_120441_120442 sibling)))
(assert  (not (IsWandField_120441_120442 sibling)))
(assert  (not (IsPredicateField_120441_120442 child)))
(assert  (not (IsWandField_120441_120442 child)))
(assert  (not (IsPredicateField_120441_120442 Nodes_1)))
(assert  (not (IsWandField_120441_120442 Nodes_1)))
(assert  (not (IsPredicateField_120437_1189 size_3)))
(assert  (not (IsWandField_120437_1189 size_3)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_235986) (ExhaleHeap@@16 T@PolymorphicMapType_235986) (Mask@@26 T@PolymorphicMapType_236007) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@16 Mask@@26) (succHeap Heap@@44 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@16 Mask@@26))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_236007) (o_2@@19 T@Ref) (f_4@@19 T@Field_304770_304775) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| Mask@@27) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_120979_926171 f_4@@19))) (not (IsWandField_120979_926187 f_4@@19))) (<= (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| Mask@@27) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| Mask@@27) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_236007) (o_2@@20 T@Ref) (f_4@@20 T@Field_120979_53) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| Mask@@28) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_120979_53 f_4@@20))) (not (IsWandField_120979_53 f_4@@20))) (<= (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| Mask@@28) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| Mask@@28) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_236007) (o_2@@21 T@Ref) (f_4@@21 T@Field_120979_120448) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| Mask@@29) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_120979_120448 f_4@@21))) (not (IsWandField_120979_120448 f_4@@21))) (<= (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| Mask@@29) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| Mask@@29) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_236007) (o_2@@22 T@Ref) (f_4@@22 T@Field_120979_1189) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| Mask@@30) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_120979_1189 f_4@@22))) (not (IsWandField_120979_1189 f_4@@22))) (<= (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| Mask@@30) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| Mask@@30) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_236007) (o_2@@23 T@Ref) (f_4@@23 T@Field_304757_304758) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| Mask@@31) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_120979_120980 f_4@@23))) (not (IsWandField_120979_912496 f_4@@23))) (<= (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| Mask@@31) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| Mask@@31) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_236007) (o_2@@24 T@Ref) (f_4@@24 T@Field_244153_244158) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| Mask@@32) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_120940_925340 f_4@@24))) (not (IsWandField_120940_925356 f_4@@24))) (<= (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| Mask@@32) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| Mask@@32) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_236007) (o_2@@25 T@Ref) (f_4@@25 T@Field_120940_53) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| Mask@@33) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_120940_53 f_4@@25))) (not (IsWandField_120940_53 f_4@@25))) (<= (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| Mask@@33) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| Mask@@33) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_236007) (o_2@@26 T@Ref) (f_4@@26 T@Field_120940_120448) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| Mask@@34) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_120940_120448 f_4@@26))) (not (IsWandField_120940_120448 f_4@@26))) (<= (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| Mask@@34) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| Mask@@34) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_236007) (o_2@@27 T@Ref) (f_4@@27 T@Field_120940_1189) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| Mask@@35) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_120940_1189 f_4@@27))) (not (IsWandField_120940_1189 f_4@@27))) (<= (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| Mask@@35) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| Mask@@35) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_236007) (o_2@@28 T@Ref) (f_4@@28 T@Field_240944_240945) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| Mask@@36) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_120940_120941 f_4@@28))) (not (IsWandField_120940_911782 f_4@@28))) (<= (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| Mask@@36) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| Mask@@36) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_236007) (o_2@@29 T@Ref) (f_4@@29 T@Field_120437_243193) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| Mask@@37) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_120437_924509 f_4@@29))) (not (IsWandField_120437_924525 f_4@@29))) (<= (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| Mask@@37) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| Mask@@37) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_236007) (o_2@@30 T@Ref) (f_4@@30 T@Field_236046_53) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| Mask@@38) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_120437_53 f_4@@30))) (not (IsWandField_120437_53 f_4@@30))) (<= (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| Mask@@38) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| Mask@@38) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_236007) (o_2@@31 T@Ref) (f_4@@31 T@Field_236059_236060) ) (!  (=> (GoodMask Mask@@39) (and (>= (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| Mask@@39) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@39) AssumePermUpperBound) (not (IsPredicateField_120441_120442 f_4@@31))) (not (IsWandField_120441_120442 f_4@@31))) (<= (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| Mask@@39) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@39) (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| Mask@@39) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_236007) (o_2@@32 T@Ref) (f_4@@32 T@Field_239373_1189) ) (!  (=> (GoodMask Mask@@40) (and (>= (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| Mask@@40) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@40) AssumePermUpperBound) (not (IsPredicateField_120437_1189 f_4@@32))) (not (IsWandField_120437_1189 f_4@@32))) (<= (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| Mask@@40) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@40) (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| Mask@@40) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_236007) (o_2@@33 T@Ref) (f_4@@33 T@Field_120437_120941) ) (!  (=> (GoodMask Mask@@41) (and (>= (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| Mask@@41) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@41) AssumePermUpperBound) (not (IsPredicateField_120437_904804 f_4@@33))) (not (IsWandField_120437_911425 f_4@@33))) (<= (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| Mask@@41) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@41) (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| Mask@@41) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_236007) (o_2@@34 T@Ref) (f_4@@34 T@Field_243188_243193) ) (!  (=> (GoodMask Mask@@42) (and (>= (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| Mask@@42) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@42) AssumePermUpperBound) (not (IsPredicateField_120911_923706 f_4@@34))) (not (IsWandField_120911_923722 f_4@@34))) (<= (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| Mask@@42) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@42) (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| Mask@@42) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_236007) (o_2@@35 T@Ref) (f_4@@35 T@Field_120911_53) ) (!  (=> (GoodMask Mask@@43) (and (>= (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| Mask@@43) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@43) AssumePermUpperBound) (not (IsPredicateField_120911_53 f_4@@35))) (not (IsWandField_120911_53 f_4@@35))) (<= (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| Mask@@43) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@43) (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| Mask@@43) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_236007) (o_2@@36 T@Ref) (f_4@@36 T@Field_120911_120448) ) (!  (=> (GoodMask Mask@@44) (and (>= (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| Mask@@44) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@44) AssumePermUpperBound) (not (IsPredicateField_120911_120448 f_4@@36))) (not (IsWandField_120911_120448 f_4@@36))) (<= (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| Mask@@44) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@44) (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| Mask@@44) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_236007) (o_2@@37 T@Ref) (f_4@@37 T@Field_120911_1189) ) (!  (=> (GoodMask Mask@@45) (and (>= (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| Mask@@45) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@45) AssumePermUpperBound) (not (IsPredicateField_120911_1189 f_4@@37))) (not (IsWandField_120911_1189 f_4@@37))) (<= (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| Mask@@45) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@45) (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| Mask@@45) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_236007) (o_2@@38 T@Ref) (f_4@@38 T@Field_239929_239930) ) (!  (=> (GoodMask Mask@@46) (and (>= (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| Mask@@46) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@46) AssumePermUpperBound) (not (IsPredicateField_120911_120912 f_4@@38))) (not (IsWandField_120911_912139 f_4@@38))) (<= (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| Mask@@46) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@46) (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| Mask@@46) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_235986) (Mask@@47 T@PolymorphicMapType_236007) (this@@35 T@Ref) (last@@16 T@Ref) ) (!  (=> (and (state Heap@@45 Mask@@47) (< AssumeFunctionsAbove 5)) (= (presorted Heap@@45 this@@35 last@@16)  (and (=> (< 1 (segLength Heap@@45 this@@35 last@@16)) (and (<= (treeDegree Heap@@45 this@@35) (segDegree Heap@@45 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@45) this@@35 sibling) last@@16 0)) (|presorted'| Heap@@45 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@45) this@@35 sibling) last@@16))) (=> (and (< 2 (segLength Heap@@45 this@@35 last@@16)) (= (segDegree Heap@@45 this@@35 last@@16 0) (segDegree Heap@@45 this@@35 last@@16 1))) (< (segDegree Heap@@45 this@@35 last@@16 1) (segDegree Heap@@45 this@@35 last@@16 2))))))
 :qid |stdinbpl.1656:15|
 :skolemid |81|
 :pattern ( (state Heap@@45 Mask@@47) (presorted Heap@@45 this@@35 last@@16))
 :pattern ( (state Heap@@45 Mask@@47) (|presorted#triggerStateless| this@@35 last@@16) (|heapseg#trigger_120940| Heap@@45 (heapseg this@@35 last@@16)) (|heapseg#trigger_120940| Heap@@45 (heapseg this@@35 last@@16)) (|heapseg#trigger_120940| Heap@@45 (heapseg this@@35 last@@16)))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_236007) (o_2@@39 T@Ref) (f_4@@39 T@Field_304770_304775) ) (! (= (HasDirectPerm_120979_904559 Mask@@48 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| Mask@@48) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120979_904559 Mask@@48 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_236007) (o_2@@40 T@Ref) (f_4@@40 T@Field_120979_53) ) (! (= (HasDirectPerm_120979_53 Mask@@49 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| Mask@@49) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120979_53 Mask@@49 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_236007) (o_2@@41 T@Ref) (f_4@@41 T@Field_304757_304758) ) (! (= (HasDirectPerm_120979_120980 Mask@@50 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| Mask@@50) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120979_120980 Mask@@50 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_236007) (o_2@@42 T@Ref) (f_4@@42 T@Field_120979_120448) ) (! (= (HasDirectPerm_120979_120448 Mask@@51 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| Mask@@51) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120979_120448 Mask@@51 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_236007) (o_2@@43 T@Ref) (f_4@@43 T@Field_120979_1189) ) (! (= (HasDirectPerm_120979_1189 Mask@@52 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| Mask@@52) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120979_1189 Mask@@52 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_236007) (o_2@@44 T@Ref) (f_4@@44 T@Field_243188_243193) ) (! (= (HasDirectPerm_120911_903461 Mask@@53 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| Mask@@53) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120911_903461 Mask@@53 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_236007) (o_2@@45 T@Ref) (f_4@@45 T@Field_120911_53) ) (! (= (HasDirectPerm_120911_53 Mask@@54 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| Mask@@54) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120911_53 Mask@@54 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_236007) (o_2@@46 T@Ref) (f_4@@46 T@Field_239929_239930) ) (! (= (HasDirectPerm_120911_120912 Mask@@55 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| Mask@@55) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120911_120912 Mask@@55 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_236007) (o_2@@47 T@Ref) (f_4@@47 T@Field_120911_120448) ) (! (= (HasDirectPerm_120911_120448 Mask@@56 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| Mask@@56) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120911_120448 Mask@@56 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_236007) (o_2@@48 T@Ref) (f_4@@48 T@Field_120911_1189) ) (! (= (HasDirectPerm_120911_1189 Mask@@57 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| Mask@@57) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120911_1189 Mask@@57 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_236007) (o_2@@49 T@Ref) (f_4@@49 T@Field_244153_244158) ) (! (= (HasDirectPerm_120940_902363 Mask@@58 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| Mask@@58) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120940_902363 Mask@@58 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_236007) (o_2@@50 T@Ref) (f_4@@50 T@Field_120940_53) ) (! (= (HasDirectPerm_120940_53 Mask@@59 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| Mask@@59) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120940_53 Mask@@59 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_236007) (o_2@@51 T@Ref) (f_4@@51 T@Field_240944_240945) ) (! (= (HasDirectPerm_120940_120941 Mask@@60 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| Mask@@60) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120940_120941 Mask@@60 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_236007) (o_2@@52 T@Ref) (f_4@@52 T@Field_120940_120448) ) (! (= (HasDirectPerm_120940_120448 Mask@@61 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| Mask@@61) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120940_120448 Mask@@61 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@62 T@PolymorphicMapType_236007) (o_2@@53 T@Ref) (f_4@@53 T@Field_120940_1189) ) (! (= (HasDirectPerm_120940_1189 Mask@@62 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| Mask@@62) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120940_1189 Mask@@62 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@63 T@PolymorphicMapType_236007) (o_2@@54 T@Ref) (f_4@@54 T@Field_120437_243193) ) (! (= (HasDirectPerm_120437_901222 Mask@@63 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| Mask@@63) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120437_901222 Mask@@63 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@64 T@PolymorphicMapType_236007) (o_2@@55 T@Ref) (f_4@@55 T@Field_236046_53) ) (! (= (HasDirectPerm_120437_53 Mask@@64 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| Mask@@64) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120437_53 Mask@@64 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@65 T@PolymorphicMapType_236007) (o_2@@56 T@Ref) (f_4@@56 T@Field_120437_120941) ) (! (= (HasDirectPerm_120437_120941 Mask@@65 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| Mask@@65) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120437_120941 Mask@@65 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@66 T@PolymorphicMapType_236007) (o_2@@57 T@Ref) (f_4@@57 T@Field_236059_236060) ) (! (= (HasDirectPerm_120447_120448 Mask@@66 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| Mask@@66) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120447_120448 Mask@@66 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@67 T@PolymorphicMapType_236007) (o_2@@58 T@Ref) (f_4@@58 T@Field_239373_1189) ) (! (= (HasDirectPerm_120437_1189 Mask@@67 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| Mask@@67) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120437_1189 Mask@@67 o_2@@58 f_4@@58))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_235986) (Mask@@68 T@PolymorphicMapType_236007) (this@@36 T@Ref) ) (!  (=> (and (state Heap@@46 Mask@@68) (< AssumeFunctionsAbove 0)) (= (treeSize Heap@@46 this@@36) (ite (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@46) this@@36 degree) 0) 1 (+ 1 (|segSize'| Heap@@46 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@46) this@@36 child) null)))))
 :qid |stdinbpl.497:15|
 :skolemid |35|
 :pattern ( (state Heap@@46 Mask@@68) (treeSize Heap@@46 this@@36))
 :pattern ( (state Heap@@46 Mask@@68) (|treeSize#triggerStateless| this@@36) (|tree#trigger_120911| Heap@@46 (tree_1 this@@36)))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.171:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_235986) (ExhaleHeap@@17 T@PolymorphicMapType_235986) (Mask@@69 T@PolymorphicMapType_236007) (o_153@@0 T@Ref) (f_161@@159 T@Field_304770_304775) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@17 Mask@@69) (=> (HasDirectPerm_120979_904559 Mask@@69 o_153@@0 f_161@@159) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@47) o_153@@0 f_161@@159) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@17) o_153@@0 f_161@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@17 Mask@@69) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@17) o_153@@0 f_161@@159))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_235986) (ExhaleHeap@@18 T@PolymorphicMapType_235986) (Mask@@70 T@PolymorphicMapType_236007) (o_153@@1 T@Ref) (f_161@@160 T@Field_120979_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@18 Mask@@70) (=> (HasDirectPerm_120979_53 Mask@@70 o_153@@1 f_161@@160) (= (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@48) o_153@@1 f_161@@160) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@18) o_153@@1 f_161@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@18 Mask@@70) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@18) o_153@@1 f_161@@160))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_235986) (ExhaleHeap@@19 T@PolymorphicMapType_235986) (Mask@@71 T@PolymorphicMapType_236007) (o_153@@2 T@Ref) (f_161@@161 T@Field_304757_304758) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@19 Mask@@71) (=> (HasDirectPerm_120979_120980 Mask@@71 o_153@@2 f_161@@161) (= (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@49) o_153@@2 f_161@@161) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@19) o_153@@2 f_161@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@19 Mask@@71) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@19) o_153@@2 f_161@@161))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_235986) (ExhaleHeap@@20 T@PolymorphicMapType_235986) (Mask@@72 T@PolymorphicMapType_236007) (o_153@@3 T@Ref) (f_161@@162 T@Field_120979_120448) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@20 Mask@@72) (=> (HasDirectPerm_120979_120448 Mask@@72 o_153@@3 f_161@@162) (= (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@50) o_153@@3 f_161@@162) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@20) o_153@@3 f_161@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@20 Mask@@72) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@20) o_153@@3 f_161@@162))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_235986) (ExhaleHeap@@21 T@PolymorphicMapType_235986) (Mask@@73 T@PolymorphicMapType_236007) (o_153@@4 T@Ref) (f_161@@163 T@Field_120979_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@21 Mask@@73) (=> (HasDirectPerm_120979_1189 Mask@@73 o_153@@4 f_161@@163) (= (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@51) o_153@@4 f_161@@163) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@21) o_153@@4 f_161@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@21 Mask@@73) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@21) o_153@@4 f_161@@163))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_235986) (ExhaleHeap@@22 T@PolymorphicMapType_235986) (Mask@@74 T@PolymorphicMapType_236007) (o_153@@5 T@Ref) (f_161@@164 T@Field_243188_243193) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@22 Mask@@74) (=> (HasDirectPerm_120911_903461 Mask@@74 o_153@@5 f_161@@164) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@52) o_153@@5 f_161@@164) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@22) o_153@@5 f_161@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@22 Mask@@74) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@22) o_153@@5 f_161@@164))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_235986) (ExhaleHeap@@23 T@PolymorphicMapType_235986) (Mask@@75 T@PolymorphicMapType_236007) (o_153@@6 T@Ref) (f_161@@165 T@Field_120911_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@23 Mask@@75) (=> (HasDirectPerm_120911_53 Mask@@75 o_153@@6 f_161@@165) (= (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@53) o_153@@6 f_161@@165) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@23) o_153@@6 f_161@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@23 Mask@@75) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@23) o_153@@6 f_161@@165))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_235986) (ExhaleHeap@@24 T@PolymorphicMapType_235986) (Mask@@76 T@PolymorphicMapType_236007) (o_153@@7 T@Ref) (f_161@@166 T@Field_239929_239930) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@24 Mask@@76) (=> (HasDirectPerm_120911_120912 Mask@@76 o_153@@7 f_161@@166) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@54) o_153@@7 f_161@@166) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@24) o_153@@7 f_161@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@24 Mask@@76) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@24) o_153@@7 f_161@@166))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_235986) (ExhaleHeap@@25 T@PolymorphicMapType_235986) (Mask@@77 T@PolymorphicMapType_236007) (o_153@@8 T@Ref) (f_161@@167 T@Field_120911_120448) ) (!  (=> (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@25 Mask@@77) (=> (HasDirectPerm_120911_120448 Mask@@77 o_153@@8 f_161@@167) (= (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@55) o_153@@8 f_161@@167) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@25) o_153@@8 f_161@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@25 Mask@@77) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@25) o_153@@8 f_161@@167))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_235986) (ExhaleHeap@@26 T@PolymorphicMapType_235986) (Mask@@78 T@PolymorphicMapType_236007) (o_153@@9 T@Ref) (f_161@@168 T@Field_120911_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@26 Mask@@78) (=> (HasDirectPerm_120911_1189 Mask@@78 o_153@@9 f_161@@168) (= (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@56) o_153@@9 f_161@@168) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@26) o_153@@9 f_161@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@26 Mask@@78) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@26) o_153@@9 f_161@@168))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_235986) (ExhaleHeap@@27 T@PolymorphicMapType_235986) (Mask@@79 T@PolymorphicMapType_236007) (o_153@@10 T@Ref) (f_161@@169 T@Field_244153_244158) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@27 Mask@@79) (=> (HasDirectPerm_120940_902363 Mask@@79 o_153@@10 f_161@@169) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@57) o_153@@10 f_161@@169) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@27) o_153@@10 f_161@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@27 Mask@@79) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@27) o_153@@10 f_161@@169))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_235986) (ExhaleHeap@@28 T@PolymorphicMapType_235986) (Mask@@80 T@PolymorphicMapType_236007) (o_153@@11 T@Ref) (f_161@@170 T@Field_120940_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@28 Mask@@80) (=> (HasDirectPerm_120940_53 Mask@@80 o_153@@11 f_161@@170) (= (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@58) o_153@@11 f_161@@170) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@28) o_153@@11 f_161@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@28 Mask@@80) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@28) o_153@@11 f_161@@170))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_235986) (ExhaleHeap@@29 T@PolymorphicMapType_235986) (Mask@@81 T@PolymorphicMapType_236007) (o_153@@12 T@Ref) (f_161@@171 T@Field_240944_240945) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@29 Mask@@81) (=> (HasDirectPerm_120940_120941 Mask@@81 o_153@@12 f_161@@171) (= (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@59) o_153@@12 f_161@@171) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@29) o_153@@12 f_161@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@29 Mask@@81) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@29) o_153@@12 f_161@@171))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_235986) (ExhaleHeap@@30 T@PolymorphicMapType_235986) (Mask@@82 T@PolymorphicMapType_236007) (o_153@@13 T@Ref) (f_161@@172 T@Field_120940_120448) ) (!  (=> (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@30 Mask@@82) (=> (HasDirectPerm_120940_120448 Mask@@82 o_153@@13 f_161@@172) (= (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@60) o_153@@13 f_161@@172) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@30) o_153@@13 f_161@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@30 Mask@@82) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@30) o_153@@13 f_161@@172))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_235986) (ExhaleHeap@@31 T@PolymorphicMapType_235986) (Mask@@83 T@PolymorphicMapType_236007) (o_153@@14 T@Ref) (f_161@@173 T@Field_120940_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@31 Mask@@83) (=> (HasDirectPerm_120940_1189 Mask@@83 o_153@@14 f_161@@173) (= (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@61) o_153@@14 f_161@@173) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@31) o_153@@14 f_161@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@31 Mask@@83) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@31) o_153@@14 f_161@@173))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_235986) (ExhaleHeap@@32 T@PolymorphicMapType_235986) (Mask@@84 T@PolymorphicMapType_236007) (o_153@@15 T@Ref) (f_161@@174 T@Field_120437_243193) ) (!  (=> (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@32 Mask@@84) (=> (HasDirectPerm_120437_901222 Mask@@84 o_153@@15 f_161@@174) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@62) o_153@@15 f_161@@174) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@32) o_153@@15 f_161@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@32 Mask@@84) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@32) o_153@@15 f_161@@174))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_235986) (ExhaleHeap@@33 T@PolymorphicMapType_235986) (Mask@@85 T@PolymorphicMapType_236007) (o_153@@16 T@Ref) (f_161@@175 T@Field_236046_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@33 Mask@@85) (=> (HasDirectPerm_120437_53 Mask@@85 o_153@@16 f_161@@175) (= (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@63) o_153@@16 f_161@@175) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@33) o_153@@16 f_161@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@33 Mask@@85) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@33) o_153@@16 f_161@@175))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_235986) (ExhaleHeap@@34 T@PolymorphicMapType_235986) (Mask@@86 T@PolymorphicMapType_236007) (o_153@@17 T@Ref) (f_161@@176 T@Field_120437_120941) ) (!  (=> (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@34 Mask@@86) (=> (HasDirectPerm_120437_120941 Mask@@86 o_153@@17 f_161@@176) (= (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@64) o_153@@17 f_161@@176) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@34) o_153@@17 f_161@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@34 Mask@@86) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@34) o_153@@17 f_161@@176))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_235986) (ExhaleHeap@@35 T@PolymorphicMapType_235986) (Mask@@87 T@PolymorphicMapType_236007) (o_153@@18 T@Ref) (f_161@@177 T@Field_236059_236060) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@35 Mask@@87) (=> (HasDirectPerm_120447_120448 Mask@@87 o_153@@18 f_161@@177) (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@65) o_153@@18 f_161@@177) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@35) o_153@@18 f_161@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@35 Mask@@87) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@35) o_153@@18 f_161@@177))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_235986) (ExhaleHeap@@36 T@PolymorphicMapType_235986) (Mask@@88 T@PolymorphicMapType_236007) (o_153@@19 T@Ref) (f_161@@178 T@Field_239373_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@36 Mask@@88) (=> (HasDirectPerm_120437_1189 Mask@@88 o_153@@19 f_161@@178) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@66) o_153@@19 f_161@@178) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@36) o_153@@19 f_161@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@36 Mask@@88) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@36) o_153@@19 f_161@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_304770_304775) ) (! (= (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_120979_53) ) (! (= (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_120979_120448) ) (! (= (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_120979_1189) ) (! (= (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_304757_304758) ) (! (= (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_244153_244158) ) (! (= (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_120940_53) ) (! (= (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_120940_120448) ) (! (= (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_120940_1189) ) (! (= (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_240944_240945) ) (! (= (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_120437_243193) ) (! (= (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_236046_53) ) (! (= (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_236059_236060) ) (! (= (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_239373_1189) ) (! (= (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_120437_120941) ) (! (= (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_243188_243193) ) (! (= (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_120911_53) ) (! (= (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_120911_120448) ) (! (= (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_120911_1189) ) (! (= (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_239929_239930) ) (! (= (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_235986) (this@@37 T@Ref) (last@@17 T@Ref) ) (!  (and (= (segLength Heap@@67 this@@37 last@@17) (|segLength'| Heap@@67 this@@37 last@@17)) (dummyFunction_1482 (|segLength#triggerStateless| this@@37 last@@17)))
 :qid |stdinbpl.761:15|
 :skolemid |43|
 :pattern ( (segLength Heap@@67 this@@37 last@@17))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_235986) (this@@38 T@Ref) (last@@18 T@Ref) ) (!  (and (= (segSize Heap@@68 this@@38 last@@18) (|segSize'| Heap@@68 this@@38 last@@18)) (dummyFunction_1482 (|segSize#triggerStateless| this@@38 last@@18)))
 :qid |stdinbpl.932:15|
 :skolemid |52|
 :pattern ( (segSize Heap@@68 this@@38 last@@18))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_235986) (this@@39 T@Ref) (last@@19 T@Ref) ) (!  (and (= (segParent Heap@@69 this@@39 last@@19) (|segParent'| Heap@@69 this@@39 last@@19)) (dummyFunction_120568 (|segParent#triggerStateless| this@@39 last@@19)))
 :qid |stdinbpl.1292:15|
 :skolemid |66|
 :pattern ( (segParent Heap@@69 this@@39 last@@19))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_236007) (SummandMask1 T@PolymorphicMapType_236007) (SummandMask2 T@PolymorphicMapType_236007) (o_2@@79 T@Ref) (f_4@@79 T@Field_304770_304775) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_236007) (SummandMask1@@0 T@PolymorphicMapType_236007) (SummandMask2@@0 T@PolymorphicMapType_236007) (o_2@@80 T@Ref) (f_4@@80 T@Field_120979_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_236007) (SummandMask1@@1 T@PolymorphicMapType_236007) (SummandMask2@@1 T@PolymorphicMapType_236007) (o_2@@81 T@Ref) (f_4@@81 T@Field_120979_120448) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_236007) (SummandMask1@@2 T@PolymorphicMapType_236007) (SummandMask2@@2 T@PolymorphicMapType_236007) (o_2@@82 T@Ref) (f_4@@82 T@Field_120979_1189) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_236007) (SummandMask1@@3 T@PolymorphicMapType_236007) (SummandMask2@@3 T@PolymorphicMapType_236007) (o_2@@83 T@Ref) (f_4@@83 T@Field_304757_304758) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_236007) (SummandMask1@@4 T@PolymorphicMapType_236007) (SummandMask2@@4 T@PolymorphicMapType_236007) (o_2@@84 T@Ref) (f_4@@84 T@Field_244153_244158) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_236007) (SummandMask1@@5 T@PolymorphicMapType_236007) (SummandMask2@@5 T@PolymorphicMapType_236007) (o_2@@85 T@Ref) (f_4@@85 T@Field_120940_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_236007) (SummandMask1@@6 T@PolymorphicMapType_236007) (SummandMask2@@6 T@PolymorphicMapType_236007) (o_2@@86 T@Ref) (f_4@@86 T@Field_120940_120448) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_236007) (SummandMask1@@7 T@PolymorphicMapType_236007) (SummandMask2@@7 T@PolymorphicMapType_236007) (o_2@@87 T@Ref) (f_4@@87 T@Field_120940_1189) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_236007) (SummandMask1@@8 T@PolymorphicMapType_236007) (SummandMask2@@8 T@PolymorphicMapType_236007) (o_2@@88 T@Ref) (f_4@@88 T@Field_240944_240945) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_236007) (SummandMask1@@9 T@PolymorphicMapType_236007) (SummandMask2@@9 T@PolymorphicMapType_236007) (o_2@@89 T@Ref) (f_4@@89 T@Field_120437_243193) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_236007) (SummandMask1@@10 T@PolymorphicMapType_236007) (SummandMask2@@10 T@PolymorphicMapType_236007) (o_2@@90 T@Ref) (f_4@@90 T@Field_236046_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_236007) (SummandMask1@@11 T@PolymorphicMapType_236007) (SummandMask2@@11 T@PolymorphicMapType_236007) (o_2@@91 T@Ref) (f_4@@91 T@Field_236059_236060) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_236007) (SummandMask1@@12 T@PolymorphicMapType_236007) (SummandMask2@@12 T@PolymorphicMapType_236007) (o_2@@92 T@Ref) (f_4@@92 T@Field_239373_1189) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_236007) (SummandMask1@@13 T@PolymorphicMapType_236007) (SummandMask2@@13 T@PolymorphicMapType_236007) (o_2@@93 T@Ref) (f_4@@93 T@Field_120437_120941) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_236007) (SummandMask1@@14 T@PolymorphicMapType_236007) (SummandMask2@@14 T@PolymorphicMapType_236007) (o_2@@94 T@Ref) (f_4@@94 T@Field_243188_243193) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_236007) (SummandMask1@@15 T@PolymorphicMapType_236007) (SummandMask2@@15 T@PolymorphicMapType_236007) (o_2@@95 T@Ref) (f_4@@95 T@Field_120911_53) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_236007) (SummandMask1@@16 T@PolymorphicMapType_236007) (SummandMask2@@16 T@PolymorphicMapType_236007) (o_2@@96 T@Ref) (f_4@@96 T@Field_120911_120448) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_236007) (SummandMask1@@17 T@PolymorphicMapType_236007) (SummandMask2@@17 T@PolymorphicMapType_236007) (o_2@@97 T@Ref) (f_4@@97 T@Field_120911_1189) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_236007) (SummandMask1@@18 T@PolymorphicMapType_236007) (SummandMask2@@18 T@PolymorphicMapType_236007) (o_2@@98 T@Ref) (f_4@@98 T@Field_239929_239930) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_235986) (Mask@@89 T@PolymorphicMapType_236007) (this@@40 T@Ref) (last@@20 T@Ref) ) (!  (=> (and (state Heap@@70 Mask@@89) (or (< AssumeFunctionsAbove 3) (|sorted#trigger| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@70) null (heapseg this@@40 last@@20)) this@@40 last@@20))) (=> (|sorted'| Heap@@70 this@@40 last@@20) (presorted Heap@@70 this@@40 last@@20)))
 :qid |stdinbpl.1449:15|
 :skolemid |76|
 :pattern ( (state Heap@@70 Mask@@89) (|sorted'| Heap@@70 this@@40 last@@20))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_235986) (this@@41 T@Ref) (last@@21 T@Ref) (index@@0 Int) ) (!  (and (= (segDegree Heap@@71 this@@41 last@@21 index@@0) (|segDegree'| Heap@@71 this@@41 last@@21 index@@0)) (dummyFunction_1482 (|segDegree#triggerStateless| this@@41 last@@21 index@@0)))
 :qid |stdinbpl.1101:15|
 :skolemid |59|
 :pattern ( (segDegree Heap@@71 this@@41 last@@21 index@@0))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_235986) (Mask@@90 T@PolymorphicMapType_236007) (this@@42 T@Ref) (last@@22 T@Ref) (index@@1 Int) ) (!  (=> (state Heap@@72 Mask@@90) (= (|segDegree'| Heap@@72 this@@42 last@@22 index@@1) (|segDegree#frame| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@72) null (heapseg this@@42 last@@22)) this@@42 last@@22 index@@1)))
 :qid |stdinbpl.1118:15|
 :skolemid |62|
 :pattern ( (state Heap@@72 Mask@@90) (|segDegree'| Heap@@72 this@@42 last@@22 index@@1))
 :pattern ( (state Heap@@72 Mask@@90) (|segDegree#triggerStateless| this@@42 last@@22 index@@1) (|heapseg#trigger_120940| Heap@@72 (heapseg this@@42 last@@22)) (|heapseg#trigger_120940| Heap@@72 (heapseg this@@42 last@@22)))
)))
(assert (forall ((this@@43 T@Ref) (last@@23 T@Ref) ) (! (= (getPredWandId_120940_120941 (heapseg this@@43 last@@23)) 1)
 :qid |stdinbpl.2296:15|
 :skolemid |99|
 :pattern ( (heapseg this@@43 last@@23))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_235986) (Mask@@91 T@PolymorphicMapType_236007) (this@@44 T@Ref) ) (!  (=> (state Heap@@73 Mask@@91) (= (|treeKey'| Heap@@73 this@@44) (|treeKey#frame| (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@73) null (tree_1 this@@44)) this@@44)))
 :qid |stdinbpl.238:15|
 :skolemid |25|
 :pattern ( (state Heap@@73 Mask@@91) (|treeKey'| Heap@@73 this@@44))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_235986) (Mask@@92 T@PolymorphicMapType_236007) (this@@45 T@Ref) ) (!  (=> (state Heap@@74 Mask@@92) (= (|treeDegree'| Heap@@74 this@@45) (|treeDegree#frame| (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@74) null (tree_1 this@@45)) this@@45)))
 :qid |stdinbpl.365:15|
 :skolemid |30|
 :pattern ( (state Heap@@74 Mask@@92) (|treeDegree'| Heap@@74 this@@45))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_235986) (Mask@@93 T@PolymorphicMapType_236007) (this@@46 T@Ref) ) (!  (=> (state Heap@@75 Mask@@93) (= (|treeSize'| Heap@@75 this@@46) (|treeSize#frame| (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@75) null (tree_1 this@@46)) this@@46)))
 :qid |stdinbpl.504:15|
 :skolemid |36|
 :pattern ( (state Heap@@75 Mask@@93) (|treeSize'| Heap@@75 this@@46))
 :pattern ( (state Heap@@75 Mask@@93) (|treeSize#triggerStateless| this@@46) (|tree#trigger_120911| Heap@@75 (tree_1 this@@46)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_235986) (Mask@@94 T@PolymorphicMapType_236007) (this@@47 T@Ref) ) (!  (=> (state Heap@@76 Mask@@94) (= (|treeParent'| Heap@@76 this@@47) (|treeParent#frame| (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@76) null (tree_1 this@@47)) this@@47)))
 :qid |stdinbpl.651:15|
 :skolemid |41|
 :pattern ( (state Heap@@76 Mask@@94) (|treeParent'| Heap@@76 this@@47))
)))
(assert (forall ((this@@48 T@Ref) ) (! (= (getPredWandId_120911_120912 (tree_1 this@@48)) 0)
 :qid |stdinbpl.2114:15|
 :skolemid |93|
 :pattern ( (tree_1 this@@48))
)))
(assert (forall ((this@@49 T@Ref) ) (! (= (getPredWandId_120979_120980 (heap_1 this@@49)) 2)
 :qid |stdinbpl.2409:15|
 :skolemid |105|
 :pattern ( (heap_1 this@@49))
)))
(assert (forall ((this@@50 T@Ref) (last@@24 T@Ref) ) (! (= (PredicateMaskField_120940 (heapseg this@@50 last@@24)) (|heapseg#sm| this@@50 last@@24))
 :qid |stdinbpl.2288:15|
 :skolemid |97|
 :pattern ( (PredicateMaskField_120940 (heapseg this@@50 last@@24)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_235986) (Mask@@95 T@PolymorphicMapType_236007) (this@@51 T@Ref) (last@@25 T@Ref) ) (!  (=> (and (state Heap@@77 Mask@@95) (or (< AssumeFunctionsAbove 0) (|segSize#trigger| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@77) null (heapseg this@@51 last@@25)) this@@51 last@@25))) (=> (= this@@51 last@@25) (= (|segSize'| Heap@@77 this@@51 last@@25) 0)))
 :qid |stdinbpl.955:15|
 :skolemid |56|
 :pattern ( (state Heap@@77 Mask@@95) (|segSize'| Heap@@77 this@@51 last@@25))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_235986) (Mask@@96 T@PolymorphicMapType_236007) (this@@52 T@Ref) (last@@26 T@Ref) ) (!  (=> (and (state Heap@@78 Mask@@96) (or (< AssumeFunctionsAbove 8) (|segLength#trigger| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@78) null (heapseg this@@52 last@@26)) this@@52 last@@26))) (<= 0 (|segLength'| Heap@@78 this@@52 last@@26)))
 :qid |stdinbpl.784:15|
 :skolemid |47|
 :pattern ( (state Heap@@78 Mask@@96) (|segLength'| Heap@@78 this@@52 last@@26))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_235986) (Mask@@97 T@PolymorphicMapType_236007) (this@@53 T@Ref) ) (!  (=> (and (state Heap@@79 Mask@@97) (or (< AssumeFunctionsAbove 9) (|treeDegree#trigger| (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@79) null (tree_1 this@@53)) this@@53))) (<= 0 (|treeDegree'| Heap@@79 this@@53)))
 :qid |stdinbpl.371:15|
 :skolemid |31|
 :pattern ( (state Heap@@79 Mask@@97) (|treeDegree'| Heap@@79 this@@53))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_235986) (o_152 T@Ref) (f_162 T@Field_304770_304775) (v T@PolymorphicMapType_236535) ) (! (succHeap Heap@@80 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@80) (store (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@80) o_152 f_162 v) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@80)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@80) (store (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@80) o_152 f_162 v) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@80)))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_235986) (o_152@@0 T@Ref) (f_162@@0 T@Field_304757_304758) (v@@0 T@FrameType) ) (! (succHeap Heap@@81 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@81) (store (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@81) o_152@@0 f_162@@0 v@@0) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@81)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@81) (store (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@81) o_152@@0 f_162@@0 v@@0) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@81)))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_235986) (o_152@@1 T@Ref) (f_162@@1 T@Field_120979_1189) (v@@1 Int) ) (! (succHeap Heap@@82 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@82) (store (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@82) o_152@@1 f_162@@1 v@@1) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@82)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@82) (store (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@82) o_152@@1 f_162@@1 v@@1) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@82)))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_235986) (o_152@@2 T@Ref) (f_162@@2 T@Field_120979_120448) (v@@2 T@Ref) ) (! (succHeap Heap@@83 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@83) (store (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@83) o_152@@2 f_162@@2 v@@2) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@83)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@83) (store (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@83) o_152@@2 f_162@@2 v@@2) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@83)))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_235986) (o_152@@3 T@Ref) (f_162@@3 T@Field_120979_53) (v@@3 Bool) ) (! (succHeap Heap@@84 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@84) (store (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@84) o_152@@3 f_162@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@84) (store (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@84) o_152@@3 f_162@@3 v@@3)))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_235986) (o_152@@4 T@Ref) (f_162@@4 T@Field_244153_244158) (v@@4 T@PolymorphicMapType_236535) ) (! (succHeap Heap@@85 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@85) (store (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@85) o_152@@4 f_162@@4 v@@4) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@85)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@85) (store (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@85) o_152@@4 f_162@@4 v@@4) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@85)))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_235986) (o_152@@5 T@Ref) (f_162@@5 T@Field_240944_240945) (v@@5 T@FrameType) ) (! (succHeap Heap@@86 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@86) (store (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@86) o_152@@5 f_162@@5 v@@5) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@86)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@86) (store (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@86) o_152@@5 f_162@@5 v@@5) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@86)))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_235986) (o_152@@6 T@Ref) (f_162@@6 T@Field_120940_1189) (v@@6 Int) ) (! (succHeap Heap@@87 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@87) (store (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@87) o_152@@6 f_162@@6 v@@6) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@87)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@87) (store (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@87) o_152@@6 f_162@@6 v@@6) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@87)))
)))
(assert (forall ((Heap@@88 T@PolymorphicMapType_235986) (o_152@@7 T@Ref) (f_162@@7 T@Field_120940_120448) (v@@7 T@Ref) ) (! (succHeap Heap@@88 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@88) (store (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@88) o_152@@7 f_162@@7 v@@7) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@88)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@88) (store (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@88) o_152@@7 f_162@@7 v@@7) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@88)))
)))
(assert (forall ((Heap@@89 T@PolymorphicMapType_235986) (o_152@@8 T@Ref) (f_162@@8 T@Field_120940_53) (v@@8 Bool) ) (! (succHeap Heap@@89 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@89) (store (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@89) o_152@@8 f_162@@8 v@@8) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@89)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@89) (store (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@89) o_152@@8 f_162@@8 v@@8) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@89)))
)))
(assert (forall ((Heap@@90 T@PolymorphicMapType_235986) (o_152@@9 T@Ref) (f_162@@9 T@Field_243188_243193) (v@@9 T@PolymorphicMapType_236535) ) (! (succHeap Heap@@90 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@90) (store (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@90) o_152@@9 f_162@@9 v@@9) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@90)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@90) (store (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@90) o_152@@9 f_162@@9 v@@9) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@90)))
)))
(assert (forall ((Heap@@91 T@PolymorphicMapType_235986) (o_152@@10 T@Ref) (f_162@@10 T@Field_239929_239930) (v@@10 T@FrameType) ) (! (succHeap Heap@@91 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@91) (store (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@91) o_152@@10 f_162@@10 v@@10) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@91)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@91) (store (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@91) o_152@@10 f_162@@10 v@@10) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@91)))
)))
(assert (forall ((Heap@@92 T@PolymorphicMapType_235986) (o_152@@11 T@Ref) (f_162@@11 T@Field_120911_1189) (v@@11 Int) ) (! (succHeap Heap@@92 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@92) (store (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@92) o_152@@11 f_162@@11 v@@11) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@92)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@92) (store (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@92) o_152@@11 f_162@@11 v@@11) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@92)))
)))
(assert (forall ((Heap@@93 T@PolymorphicMapType_235986) (o_152@@12 T@Ref) (f_162@@12 T@Field_120911_120448) (v@@12 T@Ref) ) (! (succHeap Heap@@93 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@93) (store (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@93) o_152@@12 f_162@@12 v@@12) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@93)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@93) (store (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@93) o_152@@12 f_162@@12 v@@12) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@93)))
)))
(assert (forall ((Heap@@94 T@PolymorphicMapType_235986) (o_152@@13 T@Ref) (f_162@@13 T@Field_120911_53) (v@@13 Bool) ) (! (succHeap Heap@@94 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@94) (store (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@94) o_152@@13 f_162@@13 v@@13) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@94)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@94) (store (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@94) o_152@@13 f_162@@13 v@@13) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@94)))
)))
(assert (forall ((Heap@@95 T@PolymorphicMapType_235986) (o_152@@14 T@Ref) (f_162@@14 T@Field_120437_243193) (v@@14 T@PolymorphicMapType_236535) ) (! (succHeap Heap@@95 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@95) (store (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@95) o_152@@14 f_162@@14 v@@14) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@95)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@95) (store (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@95) o_152@@14 f_162@@14 v@@14) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@95)))
)))
(assert (forall ((Heap@@96 T@PolymorphicMapType_235986) (o_152@@15 T@Ref) (f_162@@15 T@Field_120437_120941) (v@@15 T@FrameType) ) (! (succHeap Heap@@96 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@96) (store (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@96) o_152@@15 f_162@@15 v@@15) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@96)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@96) (store (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@96) o_152@@15 f_162@@15 v@@15) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@96)))
)))
(assert (forall ((Heap@@97 T@PolymorphicMapType_235986) (o_152@@16 T@Ref) (f_162@@16 T@Field_239373_1189) (v@@16 Int) ) (! (succHeap Heap@@97 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@97) (store (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@97) o_152@@16 f_162@@16 v@@16) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@97)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@97) (store (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@97) o_152@@16 f_162@@16 v@@16) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@97)))
)))
(assert (forall ((Heap@@98 T@PolymorphicMapType_235986) (o_152@@17 T@Ref) (f_162@@17 T@Field_236059_236060) (v@@17 T@Ref) ) (! (succHeap Heap@@98 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@98) (store (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@98) o_152@@17 f_162@@17 v@@17) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@98)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@98) (store (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@98) o_152@@17 f_162@@17 v@@17) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@98)))
)))
(assert (forall ((Heap@@99 T@PolymorphicMapType_235986) (o_152@@18 T@Ref) (f_162@@18 T@Field_236046_53) (v@@18 Bool) ) (! (succHeap Heap@@99 (PolymorphicMapType_235986 (store (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@99) o_152@@18 f_162@@18 v@@18) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@99)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (store (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@99) o_152@@18 f_162@@18 v@@18) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@99)))
)))
(assert (forall ((this@@54 T@Ref) ) (! (= (PredicateMaskField_120911 (tree_1 this@@54)) (|tree#sm| this@@54))
 :qid |stdinbpl.2106:15|
 :skolemid |91|
 :pattern ( (PredicateMaskField_120911 (tree_1 this@@54)))
)))
(assert (forall ((this@@55 T@Ref) ) (! (= (PredicateMaskField_120979 (heap_1 this@@55)) (|heap#sm| this@@55))
 :qid |stdinbpl.2401:15|
 :skolemid |103|
 :pattern ( (PredicateMaskField_120979 (heap_1 this@@55)))
)))
(assert (forall ((Heap@@100 T@PolymorphicMapType_235986) (Mask@@98 T@PolymorphicMapType_236007) (this@@56 T@Ref) (last@@27 T@Ref) ) (!  (=> (and (state Heap@@100 Mask@@98) (< AssumeFunctionsAbove 3)) (= (sorted_1 Heap@@100 this@@56 last@@27)  (=> (< 1 (segLength Heap@@100 this@@56 last@@27)) (and (< (treeDegree Heap@@100 this@@56) (segDegree Heap@@100 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@100) this@@56 sibling) last@@27 0)) (|sorted'| Heap@@100 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@100) this@@56 sibling) last@@27)))))
 :qid |stdinbpl.1436:15|
 :skolemid |74|
 :pattern ( (state Heap@@100 Mask@@98) (sorted_1 Heap@@100 this@@56 last@@27))
 :pattern ( (state Heap@@100 Mask@@98) (|sorted#triggerStateless| this@@56 last@@27) (|heapseg#trigger_120940| Heap@@100 (heapseg this@@56 last@@27)) (|heapseg#trigger_120940| Heap@@100 (heapseg this@@56 last@@27)) (|heapseg#trigger_120940| Heap@@100 (heapseg this@@56 last@@27)))
)))
(assert (forall ((Heap@@101 T@PolymorphicMapType_235986) (Mask@@99 T@PolymorphicMapType_236007) (this@@57 T@Ref) (last@@28 T@Ref) (index@@2 Int) ) (!  (=> (and (state Heap@@101 Mask@@99) (or (< AssumeFunctionsAbove 7) (|segDegree#trigger| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@101) null (heapseg this@@57 last@@28)) this@@57 last@@28 index@@2))) (=> (and (<= 0 index@@2) (< index@@2 (segLength Heap@@101 this@@57 last@@28))) (<= 0 (|segDegree'| Heap@@101 this@@57 last@@28 index@@2))))
 :qid |stdinbpl.1124:15|
 :skolemid |63|
 :pattern ( (state Heap@@101 Mask@@99) (|segDegree'| Heap@@101 this@@57 last@@28 index@@2))
)))
(assert (forall ((o_152@@19 T@Ref) (f_160 T@Field_236059_236060) (Heap@@102 T@PolymorphicMapType_235986) ) (!  (=> (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@102) o_152@@19 $allocated) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@102) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@102) o_152@@19 f_160) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@102) o_152@@19 f_160))
)))
(assert (forall ((p@@4 T@Field_120437_120941) (v_1@@3 T@FrameType) (q T@Field_120437_120941) (w@@3 T@FrameType) (r T@Field_304757_304758) (u T@FrameType) ) (!  (=> (and (InsidePredicate_236046_236046 p@@4 v_1@@3 q w@@3) (InsidePredicate_236046_304757 q w@@3 r u)) (InsidePredicate_236046_304757 p@@4 v_1@@3 r u))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_236046 p@@4 v_1@@3 q w@@3) (InsidePredicate_236046_304757 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_120437_120941) (v_1@@4 T@FrameType) (q@@0 T@Field_120437_120941) (w@@4 T@FrameType) (r@@0 T@Field_120437_120941) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_236046 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_236046_236046 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_236046_236046 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_236046 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_236046_236046 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_120437_120941) (v_1@@5 T@FrameType) (q@@1 T@Field_120437_120941) (w@@5 T@FrameType) (r@@1 T@Field_239929_239930) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_236046 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_236046_120911 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_236046_120911 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_236046 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_236046_120911 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_120437_120941) (v_1@@6 T@FrameType) (q@@2 T@Field_120437_120941) (w@@6 T@FrameType) (r@@2 T@Field_240944_240945) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_236046 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_236046_120940 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_236046_120940 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_236046 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_236046_120940 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_120437_120941) (v_1@@7 T@FrameType) (q@@3 T@Field_304757_304758) (w@@7 T@FrameType) (r@@3 T@Field_304757_304758) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_304757 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_120979_304757 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_236046_304757 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_304757 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_120979_304757 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_120437_120941) (v_1@@8 T@FrameType) (q@@4 T@Field_304757_304758) (w@@8 T@FrameType) (r@@4 T@Field_120437_120941) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_304757 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_120979_236046 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_236046_236046 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_304757 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_120979_236046 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_120437_120941) (v_1@@9 T@FrameType) (q@@5 T@Field_304757_304758) (w@@9 T@FrameType) (r@@5 T@Field_239929_239930) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_304757 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_120979_120911 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_236046_120911 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_304757 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_120979_120911 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_120437_120941) (v_1@@10 T@FrameType) (q@@6 T@Field_304757_304758) (w@@10 T@FrameType) (r@@6 T@Field_240944_240945) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_304757 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_120979_120940 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_236046_120940 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_304757 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_120979_120940 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_120437_120941) (v_1@@11 T@FrameType) (q@@7 T@Field_239929_239930) (w@@11 T@FrameType) (r@@7 T@Field_304757_304758) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_120911 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_120911_304757 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_236046_304757 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_120911 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_120911_304757 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_120437_120941) (v_1@@12 T@FrameType) (q@@8 T@Field_239929_239930) (w@@12 T@FrameType) (r@@8 T@Field_120437_120941) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_120911 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_120911_236046 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_236046_236046 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_120911 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_120911_236046 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_120437_120941) (v_1@@13 T@FrameType) (q@@9 T@Field_239929_239930) (w@@13 T@FrameType) (r@@9 T@Field_239929_239930) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_120911 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_120911_120911 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_236046_120911 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_120911 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_120911_120911 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_120437_120941) (v_1@@14 T@FrameType) (q@@10 T@Field_239929_239930) (w@@14 T@FrameType) (r@@10 T@Field_240944_240945) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_120911 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_120911_120940 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_236046_120940 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_120911 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_120911_120940 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_120437_120941) (v_1@@15 T@FrameType) (q@@11 T@Field_240944_240945) (w@@15 T@FrameType) (r@@11 T@Field_304757_304758) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_120940 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_120940_304757 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_236046_304757 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_120940 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_120940_304757 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_120437_120941) (v_1@@16 T@FrameType) (q@@12 T@Field_240944_240945) (w@@16 T@FrameType) (r@@12 T@Field_120437_120941) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_120940 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_120940_236046 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_236046_236046 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_120940 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_120940_236046 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_120437_120941) (v_1@@17 T@FrameType) (q@@13 T@Field_240944_240945) (w@@17 T@FrameType) (r@@13 T@Field_239929_239930) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_120940 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_120940_120911 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_236046_120911 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_120940 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_120940_120911 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_120437_120941) (v_1@@18 T@FrameType) (q@@14 T@Field_240944_240945) (w@@18 T@FrameType) (r@@14 T@Field_240944_240945) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_120940 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_120940_120940 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_236046_120940 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_120940 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_120940_120940 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_304757_304758) (v_1@@19 T@FrameType) (q@@15 T@Field_120437_120941) (w@@19 T@FrameType) (r@@15 T@Field_304757_304758) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_236046 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_236046_304757 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_120979_304757 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_236046 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_236046_304757 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_304757_304758) (v_1@@20 T@FrameType) (q@@16 T@Field_120437_120941) (w@@20 T@FrameType) (r@@16 T@Field_120437_120941) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_236046 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_236046_236046 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_120979_236046 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_236046 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_236046_236046 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_304757_304758) (v_1@@21 T@FrameType) (q@@17 T@Field_120437_120941) (w@@21 T@FrameType) (r@@17 T@Field_239929_239930) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_236046 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_236046_120911 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_120979_120911 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_236046 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_236046_120911 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_304757_304758) (v_1@@22 T@FrameType) (q@@18 T@Field_120437_120941) (w@@22 T@FrameType) (r@@18 T@Field_240944_240945) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_236046 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_236046_120940 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_120979_120940 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_236046 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_236046_120940 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_304757_304758) (v_1@@23 T@FrameType) (q@@19 T@Field_304757_304758) (w@@23 T@FrameType) (r@@19 T@Field_304757_304758) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_304757 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_120979_304757 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_120979_304757 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_304757 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_120979_304757 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_304757_304758) (v_1@@24 T@FrameType) (q@@20 T@Field_304757_304758) (w@@24 T@FrameType) (r@@20 T@Field_120437_120941) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_304757 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_120979_236046 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_120979_236046 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_304757 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_120979_236046 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_304757_304758) (v_1@@25 T@FrameType) (q@@21 T@Field_304757_304758) (w@@25 T@FrameType) (r@@21 T@Field_239929_239930) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_304757 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_120979_120911 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_120979_120911 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_304757 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_120979_120911 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_304757_304758) (v_1@@26 T@FrameType) (q@@22 T@Field_304757_304758) (w@@26 T@FrameType) (r@@22 T@Field_240944_240945) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_304757 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_120979_120940 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_120979_120940 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_304757 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_120979_120940 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_304757_304758) (v_1@@27 T@FrameType) (q@@23 T@Field_239929_239930) (w@@27 T@FrameType) (r@@23 T@Field_304757_304758) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_120911 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_120911_304757 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_120979_304757 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_120911 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_120911_304757 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_304757_304758) (v_1@@28 T@FrameType) (q@@24 T@Field_239929_239930) (w@@28 T@FrameType) (r@@24 T@Field_120437_120941) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_120911 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_120911_236046 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_120979_236046 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_120911 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_120911_236046 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_304757_304758) (v_1@@29 T@FrameType) (q@@25 T@Field_239929_239930) (w@@29 T@FrameType) (r@@25 T@Field_239929_239930) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_120911 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_120911_120911 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_120979_120911 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_120911 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_120911_120911 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_304757_304758) (v_1@@30 T@FrameType) (q@@26 T@Field_239929_239930) (w@@30 T@FrameType) (r@@26 T@Field_240944_240945) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_120911 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_120911_120940 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_120979_120940 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_120911 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_120911_120940 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_304757_304758) (v_1@@31 T@FrameType) (q@@27 T@Field_240944_240945) (w@@31 T@FrameType) (r@@27 T@Field_304757_304758) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_120940 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_120940_304757 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_120979_304757 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_120940 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_120940_304757 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_304757_304758) (v_1@@32 T@FrameType) (q@@28 T@Field_240944_240945) (w@@32 T@FrameType) (r@@28 T@Field_120437_120941) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_120940 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_120940_236046 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_120979_236046 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_120940 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_120940_236046 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_304757_304758) (v_1@@33 T@FrameType) (q@@29 T@Field_240944_240945) (w@@33 T@FrameType) (r@@29 T@Field_239929_239930) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_120940 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_120940_120911 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_120979_120911 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_120940 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_120940_120911 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_304757_304758) (v_1@@34 T@FrameType) (q@@30 T@Field_240944_240945) (w@@34 T@FrameType) (r@@30 T@Field_240944_240945) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_120940 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_120940_120940 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_120979_120940 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_120940 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_120940_120940 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_240944_240945) (v_1@@35 T@FrameType) (q@@31 T@Field_120437_120941) (w@@35 T@FrameType) (r@@31 T@Field_304757_304758) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_236046 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_236046_304757 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_120940_304757 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_236046 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_236046_304757 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_240944_240945) (v_1@@36 T@FrameType) (q@@32 T@Field_120437_120941) (w@@36 T@FrameType) (r@@32 T@Field_120437_120941) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_236046 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_236046_236046 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_120940_236046 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_236046 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_236046_236046 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_240944_240945) (v_1@@37 T@FrameType) (q@@33 T@Field_120437_120941) (w@@37 T@FrameType) (r@@33 T@Field_239929_239930) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_236046 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_236046_120911 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_120940_120911 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_236046 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_236046_120911 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_240944_240945) (v_1@@38 T@FrameType) (q@@34 T@Field_120437_120941) (w@@38 T@FrameType) (r@@34 T@Field_240944_240945) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_236046 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_236046_120940 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_120940_120940 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_236046 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_236046_120940 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_240944_240945) (v_1@@39 T@FrameType) (q@@35 T@Field_304757_304758) (w@@39 T@FrameType) (r@@35 T@Field_304757_304758) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_304757 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_120979_304757 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_120940_304757 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_304757 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_120979_304757 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_240944_240945) (v_1@@40 T@FrameType) (q@@36 T@Field_304757_304758) (w@@40 T@FrameType) (r@@36 T@Field_120437_120941) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_304757 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_120979_236046 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_120940_236046 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_304757 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_120979_236046 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_240944_240945) (v_1@@41 T@FrameType) (q@@37 T@Field_304757_304758) (w@@41 T@FrameType) (r@@37 T@Field_239929_239930) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_304757 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_120979_120911 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_120940_120911 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_304757 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_120979_120911 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_240944_240945) (v_1@@42 T@FrameType) (q@@38 T@Field_304757_304758) (w@@42 T@FrameType) (r@@38 T@Field_240944_240945) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_304757 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_120979_120940 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_120940_120940 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_304757 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_120979_120940 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_240944_240945) (v_1@@43 T@FrameType) (q@@39 T@Field_239929_239930) (w@@43 T@FrameType) (r@@39 T@Field_304757_304758) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_120911 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_120911_304757 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_120940_304757 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_120911 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_120911_304757 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_240944_240945) (v_1@@44 T@FrameType) (q@@40 T@Field_239929_239930) (w@@44 T@FrameType) (r@@40 T@Field_120437_120941) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_120911 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_120911_236046 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_120940_236046 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_120911 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_120911_236046 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_240944_240945) (v_1@@45 T@FrameType) (q@@41 T@Field_239929_239930) (w@@45 T@FrameType) (r@@41 T@Field_239929_239930) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_120911 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_120911_120911 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_120940_120911 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_120911 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_120911_120911 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_240944_240945) (v_1@@46 T@FrameType) (q@@42 T@Field_239929_239930) (w@@46 T@FrameType) (r@@42 T@Field_240944_240945) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_120911 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_120911_120940 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_120940_120940 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_120911 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_120911_120940 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_240944_240945) (v_1@@47 T@FrameType) (q@@43 T@Field_240944_240945) (w@@47 T@FrameType) (r@@43 T@Field_304757_304758) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_120940 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_120940_304757 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_120940_304757 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_120940 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_120940_304757 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_240944_240945) (v_1@@48 T@FrameType) (q@@44 T@Field_240944_240945) (w@@48 T@FrameType) (r@@44 T@Field_120437_120941) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_120940 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_120940_236046 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_120940_236046 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_120940 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_120940_236046 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_240944_240945) (v_1@@49 T@FrameType) (q@@45 T@Field_240944_240945) (w@@49 T@FrameType) (r@@45 T@Field_239929_239930) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_120940 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_120940_120911 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_120940_120911 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_120940 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_120940_120911 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_240944_240945) (v_1@@50 T@FrameType) (q@@46 T@Field_240944_240945) (w@@50 T@FrameType) (r@@46 T@Field_240944_240945) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_120940 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_120940_120940 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_120940_120940 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_120940 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_120940_120940 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_239929_239930) (v_1@@51 T@FrameType) (q@@47 T@Field_120437_120941) (w@@51 T@FrameType) (r@@47 T@Field_304757_304758) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_236046 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_236046_304757 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_120911_304757 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_236046 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_236046_304757 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_239929_239930) (v_1@@52 T@FrameType) (q@@48 T@Field_120437_120941) (w@@52 T@FrameType) (r@@48 T@Field_120437_120941) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_236046 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_236046_236046 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_120911_236046 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_236046 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_236046_236046 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_239929_239930) (v_1@@53 T@FrameType) (q@@49 T@Field_120437_120941) (w@@53 T@FrameType) (r@@49 T@Field_239929_239930) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_236046 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_236046_120911 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_120911_120911 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_236046 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_236046_120911 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_239929_239930) (v_1@@54 T@FrameType) (q@@50 T@Field_120437_120941) (w@@54 T@FrameType) (r@@50 T@Field_240944_240945) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_236046 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_236046_120940 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_120911_120940 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_236046 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_236046_120940 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_239929_239930) (v_1@@55 T@FrameType) (q@@51 T@Field_304757_304758) (w@@55 T@FrameType) (r@@51 T@Field_304757_304758) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_304757 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_120979_304757 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_120911_304757 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_304757 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_120979_304757 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_239929_239930) (v_1@@56 T@FrameType) (q@@52 T@Field_304757_304758) (w@@56 T@FrameType) (r@@52 T@Field_120437_120941) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_304757 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_120979_236046 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_120911_236046 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_304757 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_120979_236046 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_239929_239930) (v_1@@57 T@FrameType) (q@@53 T@Field_304757_304758) (w@@57 T@FrameType) (r@@53 T@Field_239929_239930) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_304757 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_120979_120911 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_120911_120911 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_304757 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_120979_120911 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_239929_239930) (v_1@@58 T@FrameType) (q@@54 T@Field_304757_304758) (w@@58 T@FrameType) (r@@54 T@Field_240944_240945) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_304757 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_120979_120940 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_120911_120940 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_304757 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_120979_120940 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_239929_239930) (v_1@@59 T@FrameType) (q@@55 T@Field_239929_239930) (w@@59 T@FrameType) (r@@55 T@Field_304757_304758) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_120911 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_120911_304757 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_120911_304757 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_120911 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_120911_304757 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_239929_239930) (v_1@@60 T@FrameType) (q@@56 T@Field_239929_239930) (w@@60 T@FrameType) (r@@56 T@Field_120437_120941) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_120911 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_120911_236046 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_120911_236046 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_120911 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_120911_236046 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_239929_239930) (v_1@@61 T@FrameType) (q@@57 T@Field_239929_239930) (w@@61 T@FrameType) (r@@57 T@Field_239929_239930) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_120911 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_120911_120911 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_120911_120911 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_120911 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_120911_120911 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_239929_239930) (v_1@@62 T@FrameType) (q@@58 T@Field_239929_239930) (w@@62 T@FrameType) (r@@58 T@Field_240944_240945) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_120911 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_120911_120940 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_120911_120940 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_120911 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_120911_120940 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_239929_239930) (v_1@@63 T@FrameType) (q@@59 T@Field_240944_240945) (w@@63 T@FrameType) (r@@59 T@Field_304757_304758) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_120940 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_120940_304757 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_120911_304757 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_120940 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_120940_304757 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_239929_239930) (v_1@@64 T@FrameType) (q@@60 T@Field_240944_240945) (w@@64 T@FrameType) (r@@60 T@Field_120437_120941) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_120940 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_120940_236046 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_120911_236046 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_120940 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_120940_236046 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_239929_239930) (v_1@@65 T@FrameType) (q@@61 T@Field_240944_240945) (w@@65 T@FrameType) (r@@61 T@Field_239929_239930) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_120940 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_120940_120911 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_120911_120911 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_120940 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_120940_120911 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_239929_239930) (v_1@@66 T@FrameType) (q@@62 T@Field_240944_240945) (w@@66 T@FrameType) (r@@62 T@Field_240944_240945) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_120940 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_120940_120940 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_120911_120940 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_120940 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_120940_120940 q@@62 w@@66 r@@62 u@@62))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@103 T@PolymorphicMapType_235986) (Mask@@100 T@PolymorphicMapType_236007) (this@@58 T@Ref) (last@@29 T@Ref) ) (!  (=> (and (state Heap@@103 Mask@@100) (< AssumeFunctionsAbove 4)) (=> (not (= this@@58 last@@29)) (= (segParent Heap@@103 this@@58 last@@29) (treeParent Heap@@103 this@@58))))
 :qid |stdinbpl.1302:15|
 :skolemid |68|
 :pattern ( (state Heap@@103 Mask@@100) (segParent Heap@@103 this@@58 last@@29))
 :pattern ( (state Heap@@103 Mask@@100) (|segParent#triggerStateless| this@@58 last@@29) (|heapseg#trigger_120940| Heap@@103 (heapseg this@@58 last@@29)))
)))
(assert (forall ((Heap@@104 T@PolymorphicMapType_235986) (Mask@@101 T@PolymorphicMapType_236007) (this@@59 T@Ref) (last@@30 T@Ref) (index@@3 Int) ) (!  (=> (and (state Heap@@104 Mask@@101) (< AssumeFunctionsAbove 7)) (=> (and (<= 0 index@@3) (< index@@3 (segLength Heap@@104 this@@59 last@@30))) (= (segDegree Heap@@104 this@@59 last@@30 index@@3) (ite (= index@@3 0) (treeDegree Heap@@104 this@@59) (|segDegree'| Heap@@104 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@104) this@@59 sibling) last@@30 (- index@@3 1))))))
 :qid |stdinbpl.1111:15|
 :skolemid |61|
 :pattern ( (state Heap@@104 Mask@@101) (segDegree Heap@@104 this@@59 last@@30 index@@3))
 :pattern ( (state Heap@@104 Mask@@101) (|segDegree#triggerStateless| this@@59 last@@30 index@@3) (|heapseg#trigger_120940| Heap@@104 (heapseg this@@59 last@@30)) (|heapseg#trigger_120940| Heap@@104 (heapseg this@@59 last@@30)))
)))
(assert (forall ((Heap@@105 T@PolymorphicMapType_235986) (this@@60 T@Ref) (last@@31 T@Ref) ) (!  (and (= (sorted_1 Heap@@105 this@@60 last@@31) (|sorted'| Heap@@105 this@@60 last@@31)) (dummyFunction_9461 (|sorted#triggerStateless| this@@60 last@@31)))
 :qid |stdinbpl.1426:15|
 :skolemid |72|
 :pattern ( (sorted_1 Heap@@105 this@@60 last@@31))
)))
(assert (forall ((Heap@@106 T@PolymorphicMapType_235986) (this@@61 T@Ref) (last@@32 T@Ref) ) (!  (and (= (presorted Heap@@106 this@@61 last@@32) (|presorted'| Heap@@106 this@@61 last@@32)) (dummyFunction_9461 (|presorted#triggerStateless| this@@61 last@@32)))
 :qid |stdinbpl.1646:15|
 :skolemid |79|
 :pattern ( (presorted Heap@@106 this@@61 last@@32))
)))
(assert (forall ((Heap@@107 T@PolymorphicMapType_235986) (this@@62 T@Ref) (last@@33 T@Ref) ) (!  (and (= (validChildren Heap@@107 this@@62 last@@33) (|validChildren'| Heap@@107 this@@62 last@@33)) (dummyFunction_9461 (|validChildren#triggerStateless| this@@62 last@@33)))
 :qid |stdinbpl.1918:15|
 :skolemid |85|
 :pattern ( (validChildren Heap@@107 this@@62 last@@33))
)))
(assert (forall ((Heap@@108 T@PolymorphicMapType_235986) (Mask@@102 T@PolymorphicMapType_236007) (this@@63 T@Ref) (last@@34 T@Ref) ) (!  (=> (state Heap@@108 Mask@@102) (= (|sorted'| Heap@@108 this@@63 last@@34) (|sorted#frame| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@108) null (heapseg this@@63 last@@34)) this@@63 last@@34)))
 :qid |stdinbpl.1443:15|
 :skolemid |75|
 :pattern ( (state Heap@@108 Mask@@102) (|sorted'| Heap@@108 this@@63 last@@34))
 :pattern ( (state Heap@@108 Mask@@102) (|sorted#triggerStateless| this@@63 last@@34) (|heapseg#trigger_120940| Heap@@108 (heapseg this@@63 last@@34)) (|heapseg#trigger_120940| Heap@@108 (heapseg this@@63 last@@34)) (|heapseg#trigger_120940| Heap@@108 (heapseg this@@63 last@@34)))
)))
(assert (forall ((Heap@@109 T@PolymorphicMapType_235986) (Mask@@103 T@PolymorphicMapType_236007) (this@@64 T@Ref) (last@@35 T@Ref) ) (!  (=> (state Heap@@109 Mask@@103) (= (|presorted'| Heap@@109 this@@64 last@@35) (|presorted#frame| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@109) null (heapseg this@@64 last@@35)) this@@64 last@@35)))
 :qid |stdinbpl.1663:15|
 :skolemid |82|
 :pattern ( (state Heap@@109 Mask@@103) (|presorted'| Heap@@109 this@@64 last@@35))
 :pattern ( (state Heap@@109 Mask@@103) (|presorted#triggerStateless| this@@64 last@@35) (|heapseg#trigger_120940| Heap@@109 (heapseg this@@64 last@@35)) (|heapseg#trigger_120940| Heap@@109 (heapseg this@@64 last@@35)) (|heapseg#trigger_120940| Heap@@109 (heapseg this@@64 last@@35)))
)))
(assert (forall ((Heap@@110 T@PolymorphicMapType_235986) (Mask@@104 T@PolymorphicMapType_236007) (this@@65 T@Ref) (last@@36 T@Ref) ) (!  (=> (state Heap@@110 Mask@@104) (= (|validChildren'| Heap@@110 this@@65 last@@36) (|validChildren#frame| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@110) null (heapseg this@@65 last@@36)) this@@65 last@@36)))
 :qid |stdinbpl.1935:15|
 :skolemid |88|
 :pattern ( (state Heap@@110 Mask@@104) (|validChildren'| Heap@@110 this@@65 last@@36))
 :pattern ( (state Heap@@110 Mask@@104) (|validChildren#triggerStateless| this@@65 last@@36) (|heapseg#trigger_120940| Heap@@110 (heapseg this@@65 last@@36)) (|heapseg#trigger_120940| Heap@@110 (heapseg this@@65 last@@36)) (|heapseg#trigger_120940| Heap@@110 (heapseg this@@65 last@@36)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@111 () T@PolymorphicMapType_235986)
(declare-fun this@@66 () T@Ref)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_236007)
(declare-fun Mask@0 () T@PolymorphicMapType_236007)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun FrameFragment_120448 (T@Ref) T@FrameType)
(declare-fun FrameFragment_120408 (T@FrameType) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_236007)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_236007)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_236007)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_236007)
(set-info :boogie-vc-id |treeSize#definedness|)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon8_correct true))
(let ((anon11_Then_correct  (=> (and (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@111) this@@66 degree) 0) (= (ControlFlow 0 4) 3)) anon8_correct)))
(let ((anon12_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| UnfoldingMask@4) null (heapseg (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@111) this@@66 child) null)))))))
(let ((anon11_Else_correct  (=> (not (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@111) this@@66 degree) 0)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_120447_120448 UnfoldingMask@4 this@@66 child)) (=> (HasDirectPerm_120447_120448 UnfoldingMask@4 this@@66 child) (and (=> (= (ControlFlow 0 5) 2) anon12_Then_correct) (=> (= (ControlFlow 0 5) 3) anon8_correct)))))))
(let ((anon4_correct  (=> (state Heap@@111 UnfoldingMask@4) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_120437_1189 UnfoldingMask@4 this@@66 degree)) (=> (HasDirectPerm_120437_1189 UnfoldingMask@4 this@@66 degree) (and (=> (= (ControlFlow 0 7) 4) anon11_Then_correct) (=> (= (ControlFlow 0 7) 5) anon11_Else_correct)))))))
(let ((anon10_Else_correct  (=> (and (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@111) this@@66 child) null) (= (ControlFlow 0 10) 7)) anon4_correct)))
(let ((anon10_Then_correct  (=> (and (and (not (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@111) this@@66 child) null)) (state Heap@@111 UnfoldingMask@4)) (and (= (segParent Heap@@111 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@111) this@@66 child) null) this@@66) (= (ControlFlow 0 9) 7))) anon4_correct)))
(let ((anon2_correct  (=> (and (state Heap@@111 UnfoldingMask@4) (validChildren Heap@@111 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@111) this@@66 child) null)) (and (=> (= (ControlFlow 0 11) 9) anon10_Then_correct) (=> (= (ControlFlow 0 11) 10) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (and (<= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@111) this@@66 degree) 0) (= (ControlFlow 0 13) 11)) anon2_correct)))
(let ((anon9_Then_correct  (=> (and (and (< 0 (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@111) this@@66 degree)) (state Heap@@111 UnfoldingMask@4)) (and (= (segDegree Heap@@111 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@111) this@@66 child) null 0) (- (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@111) this@@66 degree) 1)) (= (ControlFlow 0 12) 11))) anon2_correct)))
(let ((anon0_correct  (=> (state Heap@@111 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@111) this@@66 $allocated)) (and (= AssumeFunctionsAbove 0) (= Mask@0 (PolymorphicMapType_236007 (store (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| ZeroMask) null (tree_1 this@@66) (+ (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| ZeroMask) null (tree_1 this@@66)) FullPerm)) (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| ZeroMask) (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| ZeroMask) (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| ZeroMask) (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| ZeroMask) (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| ZeroMask) (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| ZeroMask) (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| ZeroMask) (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| ZeroMask) (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| ZeroMask) (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| ZeroMask) (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| ZeroMask) (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| ZeroMask) (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| ZeroMask) (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| ZeroMask) (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| ZeroMask) (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| ZeroMask) (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| ZeroMask) (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| ZeroMask) (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| ZeroMask))))) (and (and (state Heap@@111 Mask@0) (state Heap@@111 Mask@0)) (and (|tree#trigger_120911| Heap@@111 (tree_1 this@@66)) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@111) null (tree_1 this@@66)) (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@111) this@@66 key_6)) (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@111) this@@66 degree)) (CombineFrames (FrameFragment_120448 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@111) this@@66 child)) (CombineFrames (FrameFragment_120448 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@111) this@@66 parent)) (CombineFrames (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@111) null (heapseg (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@111) this@@66 child) null)) (CombineFrames (FrameFragment_120408 (ite (< 0 (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@111) this@@66 degree)) EmptyFrame EmptyFrame)) (FrameFragment_120408 (ite (not (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@111) this@@66 child) null)) EmptyFrame EmptyFrame)))))))))))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| Mask@0) null (tree_1 this@@66))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| Mask@0) null (tree_1 this@@66)))) (=> (and (not (= this@@66 null)) (= UnfoldingMask@0 (PolymorphicMapType_236007 (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| Mask@0) (store (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| Mask@0) this@@66 key_6 (+ (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| Mask@0) this@@66 key_6) FullPerm)) (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| Mask@0) (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| Mask@0) (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| Mask@0) (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| Mask@0) (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| Mask@0) (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| Mask@0) (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| Mask@0) (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| Mask@0) (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| Mask@0) (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| Mask@0) (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| Mask@0) (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| Mask@0) (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| Mask@0) (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| Mask@0) (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| Mask@0) (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| Mask@0) (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| Mask@0) (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| Mask@0)))) (=> (and (and (and (and (state Heap@@111 UnfoldingMask@0) (not (= this@@66 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_236007 (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| UnfoldingMask@0) (store (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| UnfoldingMask@0) this@@66 degree (+ (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| UnfoldingMask@0) this@@66 degree) FullPerm)) (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| UnfoldingMask@0) (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| UnfoldingMask@0) (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| UnfoldingMask@0) (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| UnfoldingMask@0) (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| UnfoldingMask@0) (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| UnfoldingMask@0) (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| UnfoldingMask@0) (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| UnfoldingMask@0) (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| UnfoldingMask@0) (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| UnfoldingMask@0) (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| UnfoldingMask@0) (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| UnfoldingMask@0) (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| UnfoldingMask@0) (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| UnfoldingMask@0) (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| UnfoldingMask@0) (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| UnfoldingMask@0) (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| UnfoldingMask@0) (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| UnfoldingMask@0))) (state Heap@@111 UnfoldingMask@1))) (and (and (not (= this@@66 null)) (= UnfoldingMask@2 (PolymorphicMapType_236007 (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| UnfoldingMask@1) (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| UnfoldingMask@1) (store (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| UnfoldingMask@1) this@@66 child (+ (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| UnfoldingMask@1) this@@66 child) FullPerm)) (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| UnfoldingMask@1) (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| UnfoldingMask@1) (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| UnfoldingMask@1) (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| UnfoldingMask@1) (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| UnfoldingMask@1) (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| UnfoldingMask@1) (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| UnfoldingMask@1) (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| UnfoldingMask@1) (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| UnfoldingMask@1) (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| UnfoldingMask@1) (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| UnfoldingMask@1) (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| UnfoldingMask@1) (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| UnfoldingMask@1) (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| UnfoldingMask@1) (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| UnfoldingMask@1) (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| UnfoldingMask@1) (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| UnfoldingMask@1)))) (and (state Heap@@111 UnfoldingMask@2) (not (= this@@66 null))))) (and (and (and (= UnfoldingMask@3 (PolymorphicMapType_236007 (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| UnfoldingMask@2) (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| UnfoldingMask@2) (store (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| UnfoldingMask@2) this@@66 parent (+ (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| UnfoldingMask@2) this@@66 parent) FullPerm)) (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| UnfoldingMask@2) (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| UnfoldingMask@2) (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| UnfoldingMask@2) (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| UnfoldingMask@2) (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| UnfoldingMask@2) (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| UnfoldingMask@2) (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| UnfoldingMask@2) (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| UnfoldingMask@2) (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| UnfoldingMask@2) (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| UnfoldingMask@2) (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| UnfoldingMask@2) (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| UnfoldingMask@2) (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| UnfoldingMask@2) (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| UnfoldingMask@2) (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| UnfoldingMask@2) (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| UnfoldingMask@2) (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| UnfoldingMask@2))) (state Heap@@111 UnfoldingMask@3)) (and (<= 0 (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@111) this@@66 degree)) (= UnfoldingMask@4 (PolymorphicMapType_236007 (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| UnfoldingMask@3) (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| UnfoldingMask@3) (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| UnfoldingMask@3) (store (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| UnfoldingMask@3) null (heapseg (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@111) this@@66 child) null) (+ (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| UnfoldingMask@3) null (heapseg (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@111) this@@66 child) null)) FullPerm)) (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| UnfoldingMask@3) (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| UnfoldingMask@3) (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| UnfoldingMask@3) (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| UnfoldingMask@3) (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| UnfoldingMask@3) (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| UnfoldingMask@3) (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| UnfoldingMask@3) (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| UnfoldingMask@3) (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| UnfoldingMask@3) (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| UnfoldingMask@3) (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| UnfoldingMask@3) (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| UnfoldingMask@3) (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| UnfoldingMask@3) (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| UnfoldingMask@3) (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| UnfoldingMask@3) (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| UnfoldingMask@3))))) (and (and (InsidePredicate_120911_120940 (tree_1 this@@66) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@111) null (tree_1 this@@66)) (heapseg (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@111) this@@66 child) null) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@111) null (heapseg (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@111) this@@66 child) null))) (state Heap@@111 UnfoldingMask@4)) (and (state Heap@@111 UnfoldingMask@4) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@111) this@@66 degree) (segLength Heap@@111 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@111) this@@66 child) null)))))) (and (=> (= (ControlFlow 0 14) 12) anon9_Then_correct) (=> (= (ControlFlow 0 14) 13) anon9_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16) 14) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
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
(declare-sort T@Field_236046_53 0)
(declare-sort T@Field_236059_236060 0)
(declare-sort T@Field_239373_1189 0)
(declare-sort T@Field_239929_239930 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_240944_240945 0)
(declare-sort T@Field_243188_243193 0)
(declare-sort T@Field_244153_244158 0)
(declare-sort T@Field_304757_304758 0)
(declare-sort T@Field_304770_304775 0)
(declare-sort T@Field_120437_120941 0)
(declare-sort T@Field_120437_243193 0)
(declare-sort T@Field_120940_1189 0)
(declare-sort T@Field_120940_120448 0)
(declare-sort T@Field_120940_53 0)
(declare-sort T@Field_120911_1189 0)
(declare-sort T@Field_120911_120448 0)
(declare-sort T@Field_120911_53 0)
(declare-sort T@Field_120979_1189 0)
(declare-sort T@Field_120979_120448 0)
(declare-sort T@Field_120979_53 0)
(declare-datatypes ((T@PolymorphicMapType_236007 0)) (((PolymorphicMapType_236007 (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| (Array T@Ref T@Field_239929_239930 Real)) (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| (Array T@Ref T@Field_239373_1189 Real)) (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| (Array T@Ref T@Field_236059_236060 Real)) (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| (Array T@Ref T@Field_240944_240945 Real)) (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| (Array T@Ref T@Field_304757_304758 Real)) (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| (Array T@Ref T@Field_120911_1189 Real)) (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| (Array T@Ref T@Field_120911_120448 Real)) (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| (Array T@Ref T@Field_120911_53 Real)) (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| (Array T@Ref T@Field_243188_243193 Real)) (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| (Array T@Ref T@Field_120437_120941 Real)) (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| (Array T@Ref T@Field_236046_53 Real)) (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| (Array T@Ref T@Field_120437_243193 Real)) (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| (Array T@Ref T@Field_120940_1189 Real)) (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| (Array T@Ref T@Field_120940_120448 Real)) (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| (Array T@Ref T@Field_120940_53 Real)) (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| (Array T@Ref T@Field_244153_244158 Real)) (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| (Array T@Ref T@Field_120979_1189 Real)) (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| (Array T@Ref T@Field_120979_120448 Real)) (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| (Array T@Ref T@Field_120979_53 Real)) (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| (Array T@Ref T@Field_304770_304775 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_236535 0)) (((PolymorphicMapType_236535 (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| (Array T@Ref T@Field_239373_1189 Bool)) (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| (Array T@Ref T@Field_236059_236060 Bool)) (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| (Array T@Ref T@Field_236046_53 Bool)) (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| (Array T@Ref T@Field_120437_120941 Bool)) (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| (Array T@Ref T@Field_120437_243193 Bool)) (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| (Array T@Ref T@Field_120911_1189 Bool)) (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| (Array T@Ref T@Field_120911_120448 Bool)) (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| (Array T@Ref T@Field_120911_53 Bool)) (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| (Array T@Ref T@Field_239929_239930 Bool)) (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| (Array T@Ref T@Field_243188_243193 Bool)) (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| (Array T@Ref T@Field_120940_1189 Bool)) (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| (Array T@Ref T@Field_120940_120448 Bool)) (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| (Array T@Ref T@Field_120940_53 Bool)) (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| (Array T@Ref T@Field_240944_240945 Bool)) (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| (Array T@Ref T@Field_244153_244158 Bool)) (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| (Array T@Ref T@Field_120979_1189 Bool)) (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| (Array T@Ref T@Field_120979_120448 Bool)) (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| (Array T@Ref T@Field_120979_53 Bool)) (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| (Array T@Ref T@Field_304757_304758 Bool)) (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| (Array T@Ref T@Field_304770_304775 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_235986 0)) (((PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| (Array T@Ref T@Field_236046_53 Bool)) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| (Array T@Ref T@Field_236059_236060 T@Ref)) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| (Array T@Ref T@Field_239373_1189 Int)) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| (Array T@Ref T@Field_239929_239930 T@FrameType)) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| (Array T@Ref T@Field_240944_240945 T@FrameType)) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| (Array T@Ref T@Field_243188_243193 T@PolymorphicMapType_236535)) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| (Array T@Ref T@Field_244153_244158 T@PolymorphicMapType_236535)) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| (Array T@Ref T@Field_304757_304758 T@FrameType)) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| (Array T@Ref T@Field_304770_304775 T@PolymorphicMapType_236535)) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| (Array T@Ref T@Field_120437_120941 T@FrameType)) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| (Array T@Ref T@Field_120437_243193 T@PolymorphicMapType_236535)) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| (Array T@Ref T@Field_120940_1189 Int)) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| (Array T@Ref T@Field_120940_120448 T@Ref)) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| (Array T@Ref T@Field_120940_53 Bool)) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| (Array T@Ref T@Field_120911_1189 Int)) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| (Array T@Ref T@Field_120911_120448 T@Ref)) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| (Array T@Ref T@Field_120911_53 Bool)) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| (Array T@Ref T@Field_120979_1189 Int)) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| (Array T@Ref T@Field_120979_120448 T@Ref)) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| (Array T@Ref T@Field_120979_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_236046_53)
(declare-fun key_6 () T@Field_239373_1189)
(declare-fun degree () T@Field_239373_1189)
(declare-fun parent () T@Field_236059_236060)
(declare-fun sibling () T@Field_236059_236060)
(declare-fun child () T@Field_236059_236060)
(declare-fun Nodes_1 () T@Field_236059_236060)
(declare-fun size_3 () T@Field_239373_1189)
(declare-fun state (T@PolymorphicMapType_235986 T@PolymorphicMapType_236007) Bool)
(declare-fun segLength (T@PolymorphicMapType_235986 T@Ref T@Ref) Int)
(declare-fun |segLength#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |heapseg#trigger_120940| (T@PolymorphicMapType_235986 T@Field_240944_240945) Bool)
(declare-fun heapseg (T@Ref T@Ref) T@Field_240944_240945)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |segLength'| (T@PolymorphicMapType_235986 T@Ref T@Ref) Int)
(declare-fun succHeap (T@PolymorphicMapType_235986 T@PolymorphicMapType_235986) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_235986 T@PolymorphicMapType_235986) Bool)
(declare-fun segSize (T@PolymorphicMapType_235986 T@Ref T@Ref) Int)
(declare-fun |segSize#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |treeSize'| (T@PolymorphicMapType_235986 T@Ref) Int)
(declare-fun |segSize'| (T@PolymorphicMapType_235986 T@Ref T@Ref) Int)
(declare-fun treeKey (T@PolymorphicMapType_235986 T@Ref) Int)
(declare-fun |treeKey#triggerStateless| (T@Ref) Int)
(declare-fun |tree#trigger_120911| (T@PolymorphicMapType_235986 T@Field_239929_239930) Bool)
(declare-fun tree_1 (T@Ref) T@Field_239929_239930)
(declare-fun treeParent (T@PolymorphicMapType_235986 T@Ref) T@Ref)
(declare-fun |treeParent#triggerStateless| (T@Ref) T@Ref)
(declare-fun treeDegree (T@PolymorphicMapType_235986 T@Ref) Int)
(declare-fun |treeDegree#triggerStateless| (T@Ref) Int)
(declare-fun GoodMask (T@PolymorphicMapType_236007) Bool)
(declare-fun |segDegree'| (T@PolymorphicMapType_235986 T@Ref T@Ref Int) Int)
(declare-fun dummyFunction_1482 (Int) Bool)
(declare-fun |segDegree#triggerStateless| (T@Ref T@Ref Int) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_236535)
(declare-fun |segLength#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun null () T@Ref)
(declare-fun |segSize#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun |segParent'| (T@PolymorphicMapType_235986 T@Ref T@Ref) T@Ref)
(declare-fun |segParent#triggerStateless| (T@Ref T@Ref) T@Ref)
(declare-fun |segParent#frame| (T@FrameType T@Ref T@Ref) T@Ref)
(declare-fun IsPredicateField_120940_120941 (T@Field_240944_240945) Bool)
(declare-fun dummyFunction_120568 (T@Ref) Bool)
(declare-fun |sorted'| (T@PolymorphicMapType_235986 T@Ref T@Ref) Bool)
(declare-fun dummyFunction_9461 (Bool) Bool)
(declare-fun |sorted#triggerStateless| (T@Ref T@Ref) Bool)
(declare-fun |presorted'| (T@PolymorphicMapType_235986 T@Ref T@Ref) Bool)
(declare-fun |presorted#triggerStateless| (T@Ref T@Ref) Bool)
(declare-fun |validChildren'| (T@PolymorphicMapType_235986 T@Ref T@Ref) Bool)
(declare-fun |validChildren#triggerStateless| (T@Ref T@Ref) Bool)
(declare-fun |heapseg#everUsed_120940| (T@Field_240944_240945) Bool)
(declare-fun IsPredicateField_120911_120912 (T@Field_239929_239930) Bool)
(declare-fun heap_1 (T@Ref) T@Field_304757_304758)
(declare-fun IsPredicateField_120979_120980 (T@Field_304757_304758) Bool)
(declare-fun |treeKey'| (T@PolymorphicMapType_235986 T@Ref) Int)
(declare-fun |treeDegree'| (T@PolymorphicMapType_235986 T@Ref) Int)
(declare-fun |treeSize#triggerStateless| (T@Ref) Int)
(declare-fun |treeParent'| (T@PolymorphicMapType_235986 T@Ref) T@Ref)
(declare-fun |tree#everUsed_120911| (T@Field_239929_239930) Bool)
(declare-fun |heap#trigger_120979| (T@PolymorphicMapType_235986 T@Field_304757_304758) Bool)
(declare-fun |heap#everUsed_120979| (T@Field_304757_304758) Bool)
(declare-fun validChildren (T@PolymorphicMapType_235986 T@Ref T@Ref) Bool)
(declare-fun segDegree (T@PolymorphicMapType_235986 T@Ref T@Ref Int) Int)
(declare-fun treeSize (T@PolymorphicMapType_235986 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_235986 T@PolymorphicMapType_235986 T@PolymorphicMapType_236007) Bool)
(declare-fun PredicateMaskField_120979 (T@Field_304757_304758) T@Field_304770_304775)
(declare-fun HasDirectPerm_120979_120980 (T@PolymorphicMapType_236007 T@Ref T@Field_304757_304758) Bool)
(declare-fun PredicateMaskField_120911 (T@Field_239929_239930) T@Field_243188_243193)
(declare-fun HasDirectPerm_120911_120912 (T@PolymorphicMapType_236007 T@Ref T@Field_239929_239930) Bool)
(declare-fun PredicateMaskField_120940 (T@Field_240944_240945) T@Field_244153_244158)
(declare-fun HasDirectPerm_120940_120941 (T@PolymorphicMapType_236007 T@Ref T@Field_240944_240945) Bool)
(declare-fun IsPredicateField_120437_904804 (T@Field_120437_120941) Bool)
(declare-fun PredicateMaskField_120437 (T@Field_120437_120941) T@Field_120437_243193)
(declare-fun HasDirectPerm_120437_120941 (T@PolymorphicMapType_236007 T@Ref T@Field_120437_120941) Bool)
(declare-fun IsWandField_120979_912496 (T@Field_304757_304758) Bool)
(declare-fun WandMaskField_120979 (T@Field_304757_304758) T@Field_304770_304775)
(declare-fun IsWandField_120911_912139 (T@Field_239929_239930) Bool)
(declare-fun WandMaskField_120911 (T@Field_239929_239930) T@Field_243188_243193)
(declare-fun IsWandField_120940_911782 (T@Field_240944_240945) Bool)
(declare-fun WandMaskField_120940 (T@Field_240944_240945) T@Field_244153_244158)
(declare-fun IsWandField_120437_911425 (T@Field_120437_120941) Bool)
(declare-fun WandMaskField_120437 (T@Field_120437_120941) T@Field_120437_243193)
(declare-fun |heapseg#sm| (T@Ref T@Ref) T@Field_244153_244158)
(declare-fun |tree#sm| (T@Ref) T@Field_243188_243193)
(declare-fun |heap#sm| (T@Ref) T@Field_304770_304775)
(declare-fun dummyHeap () T@PolymorphicMapType_235986)
(declare-fun ZeroMask () T@PolymorphicMapType_236007)
(declare-fun InsidePredicate_236046_236046 (T@Field_120437_120941 T@FrameType T@Field_120437_120941 T@FrameType) Bool)
(declare-fun InsidePredicate_120979_304757 (T@Field_304757_304758 T@FrameType T@Field_304757_304758 T@FrameType) Bool)
(declare-fun InsidePredicate_120940_120940 (T@Field_240944_240945 T@FrameType T@Field_240944_240945 T@FrameType) Bool)
(declare-fun InsidePredicate_120911_120911 (T@Field_239929_239930 T@FrameType T@Field_239929_239930 T@FrameType) Bool)
(declare-fun IsPredicateField_120437_1189 (T@Field_239373_1189) Bool)
(declare-fun IsWandField_120437_1189 (T@Field_239373_1189) Bool)
(declare-fun IsPredicateField_120441_120442 (T@Field_236059_236060) Bool)
(declare-fun IsWandField_120441_120442 (T@Field_236059_236060) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_120979_926171 (T@Field_304770_304775) Bool)
(declare-fun IsWandField_120979_926187 (T@Field_304770_304775) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_120979_53 (T@Field_120979_53) Bool)
(declare-fun IsWandField_120979_53 (T@Field_120979_53) Bool)
(declare-fun IsPredicateField_120979_120448 (T@Field_120979_120448) Bool)
(declare-fun IsWandField_120979_120448 (T@Field_120979_120448) Bool)
(declare-fun IsPredicateField_120979_1189 (T@Field_120979_1189) Bool)
(declare-fun IsWandField_120979_1189 (T@Field_120979_1189) Bool)
(declare-fun IsPredicateField_120940_925340 (T@Field_244153_244158) Bool)
(declare-fun IsWandField_120940_925356 (T@Field_244153_244158) Bool)
(declare-fun IsPredicateField_120940_53 (T@Field_120940_53) Bool)
(declare-fun IsWandField_120940_53 (T@Field_120940_53) Bool)
(declare-fun IsPredicateField_120940_120448 (T@Field_120940_120448) Bool)
(declare-fun IsWandField_120940_120448 (T@Field_120940_120448) Bool)
(declare-fun IsPredicateField_120940_1189 (T@Field_120940_1189) Bool)
(declare-fun IsWandField_120940_1189 (T@Field_120940_1189) Bool)
(declare-fun IsPredicateField_120437_924509 (T@Field_120437_243193) Bool)
(declare-fun IsWandField_120437_924525 (T@Field_120437_243193) Bool)
(declare-fun IsPredicateField_120437_53 (T@Field_236046_53) Bool)
(declare-fun IsWandField_120437_53 (T@Field_236046_53) Bool)
(declare-fun IsPredicateField_120911_923706 (T@Field_243188_243193) Bool)
(declare-fun IsWandField_120911_923722 (T@Field_243188_243193) Bool)
(declare-fun IsPredicateField_120911_53 (T@Field_120911_53) Bool)
(declare-fun IsWandField_120911_53 (T@Field_120911_53) Bool)
(declare-fun IsPredicateField_120911_120448 (T@Field_120911_120448) Bool)
(declare-fun IsWandField_120911_120448 (T@Field_120911_120448) Bool)
(declare-fun IsPredicateField_120911_1189 (T@Field_120911_1189) Bool)
(declare-fun IsWandField_120911_1189 (T@Field_120911_1189) Bool)
(declare-fun presorted (T@PolymorphicMapType_235986 T@Ref T@Ref) Bool)
(declare-fun HasDirectPerm_120979_904559 (T@PolymorphicMapType_236007 T@Ref T@Field_304770_304775) Bool)
(declare-fun HasDirectPerm_120979_53 (T@PolymorphicMapType_236007 T@Ref T@Field_120979_53) Bool)
(declare-fun HasDirectPerm_120979_120448 (T@PolymorphicMapType_236007 T@Ref T@Field_120979_120448) Bool)
(declare-fun HasDirectPerm_120979_1189 (T@PolymorphicMapType_236007 T@Ref T@Field_120979_1189) Bool)
(declare-fun HasDirectPerm_120911_903461 (T@PolymorphicMapType_236007 T@Ref T@Field_243188_243193) Bool)
(declare-fun HasDirectPerm_120911_53 (T@PolymorphicMapType_236007 T@Ref T@Field_120911_53) Bool)
(declare-fun HasDirectPerm_120911_120448 (T@PolymorphicMapType_236007 T@Ref T@Field_120911_120448) Bool)
(declare-fun HasDirectPerm_120911_1189 (T@PolymorphicMapType_236007 T@Ref T@Field_120911_1189) Bool)
(declare-fun HasDirectPerm_120940_902363 (T@PolymorphicMapType_236007 T@Ref T@Field_244153_244158) Bool)
(declare-fun HasDirectPerm_120940_53 (T@PolymorphicMapType_236007 T@Ref T@Field_120940_53) Bool)
(declare-fun HasDirectPerm_120940_120448 (T@PolymorphicMapType_236007 T@Ref T@Field_120940_120448) Bool)
(declare-fun HasDirectPerm_120940_1189 (T@PolymorphicMapType_236007 T@Ref T@Field_120940_1189) Bool)
(declare-fun HasDirectPerm_120437_901222 (T@PolymorphicMapType_236007 T@Ref T@Field_120437_243193) Bool)
(declare-fun HasDirectPerm_120437_53 (T@PolymorphicMapType_236007 T@Ref T@Field_236046_53) Bool)
(declare-fun HasDirectPerm_120447_120448 (T@PolymorphicMapType_236007 T@Ref T@Field_236059_236060) Bool)
(declare-fun HasDirectPerm_120437_1189 (T@PolymorphicMapType_236007 T@Ref T@Field_239373_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun segParent (T@PolymorphicMapType_235986 T@Ref T@Ref) T@Ref)
(declare-fun sumMask (T@PolymorphicMapType_236007 T@PolymorphicMapType_236007 T@PolymorphicMapType_236007) Bool)
(declare-fun |sorted#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun |segDegree#frame| (T@FrameType T@Ref T@Ref Int) Int)
(declare-fun getPredWandId_120940_120941 (T@Field_240944_240945) Int)
(declare-fun |treeKey#frame| (T@FrameType T@Ref) Int)
(declare-fun |treeDegree#frame| (T@FrameType T@Ref) Int)
(declare-fun |treeSize#frame| (T@FrameType T@Ref) Int)
(declare-fun |treeParent#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun getPredWandId_120911_120912 (T@Field_239929_239930) Int)
(declare-fun getPredWandId_120979_120980 (T@Field_304757_304758) Int)
(declare-fun |segSize#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun |segLength#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun |treeDegree#trigger| (T@FrameType T@Ref) Bool)
(declare-fun sorted_1 (T@PolymorphicMapType_235986 T@Ref T@Ref) Bool)
(declare-fun |segDegree#trigger| (T@FrameType T@Ref T@Ref Int) Bool)
(declare-fun InsidePredicate_236046_304757 (T@Field_120437_120941 T@FrameType T@Field_304757_304758 T@FrameType) Bool)
(declare-fun InsidePredicate_236046_120911 (T@Field_120437_120941 T@FrameType T@Field_239929_239930 T@FrameType) Bool)
(declare-fun InsidePredicate_236046_120940 (T@Field_120437_120941 T@FrameType T@Field_240944_240945 T@FrameType) Bool)
(declare-fun InsidePredicate_120979_236046 (T@Field_304757_304758 T@FrameType T@Field_120437_120941 T@FrameType) Bool)
(declare-fun InsidePredicate_120979_120911 (T@Field_304757_304758 T@FrameType T@Field_239929_239930 T@FrameType) Bool)
(declare-fun InsidePredicate_120979_120940 (T@Field_304757_304758 T@FrameType T@Field_240944_240945 T@FrameType) Bool)
(declare-fun InsidePredicate_120911_304757 (T@Field_239929_239930 T@FrameType T@Field_304757_304758 T@FrameType) Bool)
(declare-fun InsidePredicate_120911_236046 (T@Field_239929_239930 T@FrameType T@Field_120437_120941 T@FrameType) Bool)
(declare-fun InsidePredicate_120911_120940 (T@Field_239929_239930 T@FrameType T@Field_240944_240945 T@FrameType) Bool)
(declare-fun InsidePredicate_120940_304757 (T@Field_240944_240945 T@FrameType T@Field_304757_304758 T@FrameType) Bool)
(declare-fun InsidePredicate_120940_236046 (T@Field_240944_240945 T@FrameType T@Field_120437_120941 T@FrameType) Bool)
(declare-fun InsidePredicate_120940_120911 (T@Field_240944_240945 T@FrameType T@Field_239929_239930 T@FrameType) Bool)
(declare-fun |sorted#frame| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun |presorted#frame| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun |validChildren#frame| (T@FrameType T@Ref T@Ref) Bool)
(assert (and (distinct key_6 degree size_3)(distinct parent sibling child Nodes_1))
)
(assert (forall ((Heap T@PolymorphicMapType_235986) (Mask T@PolymorphicMapType_236007) (this T@Ref) (last T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 8)) (= (segLength Heap this last) (ite (= this last) 0 (+ 1 (|segLength'| Heap (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap) this sibling) last)))))
 :qid |stdinbpl.771:15|
 :skolemid |45|
 :pattern ( (state Heap Mask) (segLength Heap this last))
 :pattern ( (state Heap Mask) (|segLength#triggerStateless| this last) (|heapseg#trigger_120940| Heap (heapseg this last)))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_235986) (Heap1 T@PolymorphicMapType_235986) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_235986) (Mask@@0 T@PolymorphicMapType_236007) (this@@0 T@Ref) (last@@0 T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 0)) (= (segSize Heap@@0 this@@0 last@@0) (ite (= this@@0 last@@0) 0 (+ (|treeSize'| Heap@@0 this@@0) (|segSize'| Heap@@0 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@0) this@@0 sibling) last@@0)))))
 :qid |stdinbpl.942:15|
 :skolemid |54|
 :pattern ( (state Heap@@0 Mask@@0) (segSize Heap@@0 this@@0 last@@0))
 :pattern ( (state Heap@@0 Mask@@0) (|segSize#triggerStateless| this@@0 last@@0) (|heapseg#trigger_120940| Heap@@0 (heapseg this@@0 last@@0)) (|heapseg#trigger_120940| Heap@@0 (heapseg this@@0 last@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_235986) (Mask@@1 T@PolymorphicMapType_236007) (this@@1 T@Ref) ) (!  (=> (and (state Heap@@1 Mask@@1) (< AssumeFunctionsAbove 2)) (= (treeKey Heap@@1 this@@1) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@1) this@@1 key_6)))
 :qid |stdinbpl.231:15|
 :skolemid |24|
 :pattern ( (state Heap@@1 Mask@@1) (treeKey Heap@@1 this@@1))
 :pattern ( (state Heap@@1 Mask@@1) (|treeKey#triggerStateless| this@@1) (|tree#trigger_120911| Heap@@1 (tree_1 this@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_235986) (Mask@@2 T@PolymorphicMapType_236007) (this@@2 T@Ref) ) (!  (=> (and (state Heap@@2 Mask@@2) (< AssumeFunctionsAbove 6)) (= (treeParent Heap@@2 this@@2) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@2) this@@2 parent)))
 :qid |stdinbpl.644:15|
 :skolemid |40|
 :pattern ( (state Heap@@2 Mask@@2) (treeParent Heap@@2 this@@2))
 :pattern ( (state Heap@@2 Mask@@2) (|treeParent#triggerStateless| this@@2) (|tree#trigger_120911| Heap@@2 (tree_1 this@@2)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_235986) (Mask@@3 T@PolymorphicMapType_236007) (this@@3 T@Ref) ) (!  (=> (and (state Heap@@3 Mask@@3) (< AssumeFunctionsAbove 9)) (= (treeDegree Heap@@3 this@@3) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@3) this@@3 degree)))
 :qid |stdinbpl.358:15|
 :skolemid |29|
 :pattern ( (state Heap@@3 Mask@@3) (treeDegree Heap@@3 this@@3))
 :pattern ( (state Heap@@3 Mask@@3) (|treeDegree#triggerStateless| this@@3) (|tree#trigger_120911| Heap@@3 (tree_1 this@@3)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_235986) (Mask@@4 T@PolymorphicMapType_236007) ) (!  (=> (state Heap@@4 Mask@@4) (GoodMask Mask@@4))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@4 Mask@@4))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_235986) (Heap1@@0 T@PolymorphicMapType_235986) (Heap2 T@PolymorphicMapType_235986) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_235986) (this@@4 T@Ref) (last@@1 T@Ref) (index Int) ) (! (dummyFunction_1482 (|segDegree#triggerStateless| this@@4 last@@1 index))
 :qid |stdinbpl.1105:15|
 :skolemid |60|
 :pattern ( (|segDegree'| Heap@@5 this@@4 last@@1 index))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_304770_304775) ) (!  (not (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_304757_304758) ) (!  (not (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_120979_53) ) (!  (not (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_120979_120448) ) (!  (not (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_120979_1189) ) (!  (not (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_244153_244158) ) (!  (not (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_240944_240945) ) (!  (not (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_120940_53) ) (!  (not (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_120940_120448) ) (!  (not (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_120940_1189) ) (!  (not (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_243188_243193) ) (!  (not (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_239929_239930) ) (!  (not (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_120911_53) ) (!  (not (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_120911_120448) ) (!  (not (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_120911_1189) ) (!  (not (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_120437_243193) ) (!  (not (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_120437_120941) ) (!  (not (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_236046_53) ) (!  (not (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_236059_236060) ) (!  (not (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_239373_1189) ) (!  (not (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_235986) (Mask@@5 T@PolymorphicMapType_236007) (this@@5 T@Ref) (last@@2 T@Ref) ) (!  (=> (state Heap@@6 Mask@@5) (= (|segLength'| Heap@@6 this@@5 last@@2) (|segLength#frame| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@6) null (heapseg this@@5 last@@2)) this@@5 last@@2)))
 :qid |stdinbpl.778:15|
 :skolemid |46|
 :pattern ( (state Heap@@6 Mask@@5) (|segLength'| Heap@@6 this@@5 last@@2))
 :pattern ( (state Heap@@6 Mask@@5) (|segLength#triggerStateless| this@@5 last@@2) (|heapseg#trigger_120940| Heap@@6 (heapseg this@@5 last@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_235986) (Mask@@6 T@PolymorphicMapType_236007) (this@@6 T@Ref) (last@@3 T@Ref) ) (!  (=> (state Heap@@7 Mask@@6) (= (|segSize'| Heap@@7 this@@6 last@@3) (|segSize#frame| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@7) null (heapseg this@@6 last@@3)) this@@6 last@@3)))
 :qid |stdinbpl.949:15|
 :skolemid |55|
 :pattern ( (state Heap@@7 Mask@@6) (|segSize'| Heap@@7 this@@6 last@@3))
 :pattern ( (state Heap@@7 Mask@@6) (|segSize#triggerStateless| this@@6 last@@3) (|heapseg#trigger_120940| Heap@@7 (heapseg this@@6 last@@3)) (|heapseg#trigger_120940| Heap@@7 (heapseg this@@6 last@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_235986) (Mask@@7 T@PolymorphicMapType_236007) (this@@7 T@Ref) (last@@4 T@Ref) ) (!  (=> (state Heap@@8 Mask@@7) (= (|segParent'| Heap@@8 this@@7 last@@4) (|segParent#frame| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@8) null (heapseg this@@7 last@@4)) this@@7 last@@4)))
 :qid |stdinbpl.1309:15|
 :skolemid |69|
 :pattern ( (state Heap@@8 Mask@@7) (|segParent'| Heap@@8 this@@7 last@@4))
 :pattern ( (state Heap@@8 Mask@@7) (|segParent#triggerStateless| this@@7 last@@4) (|heapseg#trigger_120940| Heap@@8 (heapseg this@@7 last@@4)))
)))
(assert (forall ((this@@8 T@Ref) (last@@5 T@Ref) ) (! (IsPredicateField_120940_120941 (heapseg this@@8 last@@5))
 :qid |stdinbpl.2292:15|
 :skolemid |98|
 :pattern ( (heapseg this@@8 last@@5))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_235986) (this@@9 T@Ref) (last@@6 T@Ref) ) (! (dummyFunction_1482 (|segLength#triggerStateless| this@@9 last@@6))
 :qid |stdinbpl.765:15|
 :skolemid |44|
 :pattern ( (|segLength'| Heap@@9 this@@9 last@@6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_235986) (this@@10 T@Ref) (last@@7 T@Ref) ) (! (dummyFunction_1482 (|segSize#triggerStateless| this@@10 last@@7))
 :qid |stdinbpl.936:15|
 :skolemid |53|
 :pattern ( (|segSize'| Heap@@10 this@@10 last@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_235986) (this@@11 T@Ref) (last@@8 T@Ref) ) (! (dummyFunction_120568 (|segParent#triggerStateless| this@@11 last@@8))
 :qid |stdinbpl.1296:15|
 :skolemid |67|
 :pattern ( (|segParent'| Heap@@11 this@@11 last@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_235986) (this@@12 T@Ref) (last@@9 T@Ref) ) (! (dummyFunction_9461 (|sorted#triggerStateless| this@@12 last@@9))
 :qid |stdinbpl.1430:15|
 :skolemid |73|
 :pattern ( (|sorted'| Heap@@12 this@@12 last@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_235986) (this@@13 T@Ref) (last@@10 T@Ref) ) (! (dummyFunction_9461 (|presorted#triggerStateless| this@@13 last@@10))
 :qid |stdinbpl.1650:15|
 :skolemid |80|
 :pattern ( (|presorted'| Heap@@13 this@@13 last@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_235986) (this@@14 T@Ref) (last@@11 T@Ref) ) (! (dummyFunction_9461 (|validChildren#triggerStateless| this@@14 last@@11))
 :qid |stdinbpl.1922:15|
 :skolemid |86|
 :pattern ( (|validChildren'| Heap@@14 this@@14 last@@11))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_235986) (this@@15 T@Ref) (last@@12 T@Ref) ) (! (|heapseg#everUsed_120940| (heapseg this@@15 last@@12))
 :qid |stdinbpl.2311:15|
 :skolemid |102|
 :pattern ( (|heapseg#trigger_120940| Heap@@15 (heapseg this@@15 last@@12)))
)))
(assert (forall ((this@@16 T@Ref) ) (! (IsPredicateField_120911_120912 (tree_1 this@@16))
 :qid |stdinbpl.2110:15|
 :skolemid |92|
 :pattern ( (tree_1 this@@16))
)))
(assert (forall ((this@@17 T@Ref) ) (! (IsPredicateField_120979_120980 (heap_1 this@@17))
 :qid |stdinbpl.2405:15|
 :skolemid |104|
 :pattern ( (heap_1 this@@17))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_235986) (this@@18 T@Ref) ) (! (dummyFunction_1482 (|treeKey#triggerStateless| this@@18))
 :qid |stdinbpl.225:15|
 :skolemid |23|
 :pattern ( (|treeKey'| Heap@@16 this@@18))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_235986) (this@@19 T@Ref) ) (! (dummyFunction_1482 (|treeDegree#triggerStateless| this@@19))
 :qid |stdinbpl.352:15|
 :skolemid |28|
 :pattern ( (|treeDegree'| Heap@@17 this@@19))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_235986) (this@@20 T@Ref) ) (! (dummyFunction_1482 (|treeSize#triggerStateless| this@@20))
 :qid |stdinbpl.491:15|
 :skolemid |34|
 :pattern ( (|treeSize'| Heap@@18 this@@20))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_235986) (this@@21 T@Ref) ) (! (dummyFunction_120568 (|treeParent#triggerStateless| this@@21))
 :qid |stdinbpl.638:15|
 :skolemid |39|
 :pattern ( (|treeParent'| Heap@@19 this@@21))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_235986) (this@@22 T@Ref) ) (! (|tree#everUsed_120911| (tree_1 this@@22))
 :qid |stdinbpl.2129:15|
 :skolemid |96|
 :pattern ( (|tree#trigger_120911| Heap@@20 (tree_1 this@@22)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_235986) (this@@23 T@Ref) ) (! (|heap#everUsed_120979| (heap_1 this@@23))
 :qid |stdinbpl.2424:15|
 :skolemid |108|
 :pattern ( (|heap#trigger_120979| Heap@@21 (heap_1 this@@23)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_235986) (Mask@@8 T@PolymorphicMapType_236007) (this@@24 T@Ref) (last@@13 T@Ref) ) (!  (=> (and (state Heap@@22 Mask@@8) (< AssumeFunctionsAbove 1)) (= (validChildren Heap@@22 this@@24 last@@13)  (=> (< 1 (segLength Heap@@22 this@@24 last@@13)) (and (= (treeDegree Heap@@22 this@@24) (+ (segDegree Heap@@22 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@22) this@@24 sibling) last@@13 0) 1)) (|validChildren'| Heap@@22 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@22) this@@24 sibling) last@@13)))))
 :qid |stdinbpl.1928:15|
 :skolemid |87|
 :pattern ( (state Heap@@22 Mask@@8) (validChildren Heap@@22 this@@24 last@@13))
 :pattern ( (state Heap@@22 Mask@@8) (|validChildren#triggerStateless| this@@24 last@@13) (|heapseg#trigger_120940| Heap@@22 (heapseg this@@24 last@@13)) (|heapseg#trigger_120940| Heap@@22 (heapseg this@@24 last@@13)) (|heapseg#trigger_120940| Heap@@22 (heapseg this@@24 last@@13)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_235986) (this@@25 T@Ref) ) (!  (and (= (treeKey Heap@@23 this@@25) (|treeKey'| Heap@@23 this@@25)) (dummyFunction_1482 (|treeKey#triggerStateless| this@@25)))
 :qid |stdinbpl.221:15|
 :skolemid |22|
 :pattern ( (treeKey Heap@@23 this@@25))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_235986) (this@@26 T@Ref) ) (!  (and (= (treeDegree Heap@@24 this@@26) (|treeDegree'| Heap@@24 this@@26)) (dummyFunction_1482 (|treeDegree#triggerStateless| this@@26)))
 :qid |stdinbpl.348:15|
 :skolemid |27|
 :pattern ( (treeDegree Heap@@24 this@@26))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_235986) (this@@27 T@Ref) ) (!  (and (= (treeSize Heap@@25 this@@27) (|treeSize'| Heap@@25 this@@27)) (dummyFunction_1482 (|treeSize#triggerStateless| this@@27)))
 :qid |stdinbpl.487:15|
 :skolemid |33|
 :pattern ( (treeSize Heap@@25 this@@27))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_235986) (this@@28 T@Ref) ) (!  (and (= (treeParent Heap@@26 this@@28) (|treeParent'| Heap@@26 this@@28)) (dummyFunction_120568 (|treeParent#triggerStateless| this@@28)))
 :qid |stdinbpl.634:15|
 :skolemid |38|
 :pattern ( (treeParent Heap@@26 this@@28))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_235986) (ExhaleHeap T@PolymorphicMapType_235986) (Mask@@9 T@PolymorphicMapType_236007) (pm_f_58 T@Field_304757_304758) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap Mask@@9) (=> (and (HasDirectPerm_120979_120980 Mask@@9 null pm_f_58) (IsPredicateField_120979_120980 pm_f_58)) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@27) null (PredicateMaskField_120979 pm_f_58)) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap) null (PredicateMaskField_120979 pm_f_58)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap Mask@@9) (IsPredicateField_120979_120980 pm_f_58) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap) null (PredicateMaskField_120979 pm_f_58)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_235986) (ExhaleHeap@@0 T@PolymorphicMapType_235986) (Mask@@10 T@PolymorphicMapType_236007) (pm_f_58@@0 T@Field_239929_239930) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@0 Mask@@10) (=> (and (HasDirectPerm_120911_120912 Mask@@10 null pm_f_58@@0) (IsPredicateField_120911_120912 pm_f_58@@0)) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@28) null (PredicateMaskField_120911 pm_f_58@@0)) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@0) null (PredicateMaskField_120911 pm_f_58@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@0 Mask@@10) (IsPredicateField_120911_120912 pm_f_58@@0) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@0) null (PredicateMaskField_120911 pm_f_58@@0)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_235986) (ExhaleHeap@@1 T@PolymorphicMapType_235986) (Mask@@11 T@PolymorphicMapType_236007) (pm_f_58@@1 T@Field_240944_240945) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@1 Mask@@11) (=> (and (HasDirectPerm_120940_120941 Mask@@11 null pm_f_58@@1) (IsPredicateField_120940_120941 pm_f_58@@1)) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@29) null (PredicateMaskField_120940 pm_f_58@@1)) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@1) null (PredicateMaskField_120940 pm_f_58@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@1 Mask@@11) (IsPredicateField_120940_120941 pm_f_58@@1) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@1) null (PredicateMaskField_120940 pm_f_58@@1)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_235986) (ExhaleHeap@@2 T@PolymorphicMapType_235986) (Mask@@12 T@PolymorphicMapType_236007) (pm_f_58@@2 T@Field_120437_120941) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@2 Mask@@12) (=> (and (HasDirectPerm_120437_120941 Mask@@12 null pm_f_58@@2) (IsPredicateField_120437_904804 pm_f_58@@2)) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@30) null (PredicateMaskField_120437 pm_f_58@@2)) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@2) null (PredicateMaskField_120437 pm_f_58@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@2 Mask@@12) (IsPredicateField_120437_904804 pm_f_58@@2) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@2) null (PredicateMaskField_120437 pm_f_58@@2)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_235986) (ExhaleHeap@@3 T@PolymorphicMapType_235986) (Mask@@13 T@PolymorphicMapType_236007) (pm_f_58@@3 T@Field_304757_304758) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@3 Mask@@13) (=> (and (HasDirectPerm_120979_120980 Mask@@13 null pm_f_58@@3) (IsWandField_120979_912496 pm_f_58@@3)) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@31) null (WandMaskField_120979 pm_f_58@@3)) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@3) null (WandMaskField_120979 pm_f_58@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@3 Mask@@13) (IsWandField_120979_912496 pm_f_58@@3) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@3) null (WandMaskField_120979 pm_f_58@@3)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_235986) (ExhaleHeap@@4 T@PolymorphicMapType_235986) (Mask@@14 T@PolymorphicMapType_236007) (pm_f_58@@4 T@Field_239929_239930) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@4 Mask@@14) (=> (and (HasDirectPerm_120911_120912 Mask@@14 null pm_f_58@@4) (IsWandField_120911_912139 pm_f_58@@4)) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@32) null (WandMaskField_120911 pm_f_58@@4)) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@4) null (WandMaskField_120911 pm_f_58@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@4 Mask@@14) (IsWandField_120911_912139 pm_f_58@@4) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@4) null (WandMaskField_120911 pm_f_58@@4)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_235986) (ExhaleHeap@@5 T@PolymorphicMapType_235986) (Mask@@15 T@PolymorphicMapType_236007) (pm_f_58@@5 T@Field_240944_240945) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@5 Mask@@15) (=> (and (HasDirectPerm_120940_120941 Mask@@15 null pm_f_58@@5) (IsWandField_120940_911782 pm_f_58@@5)) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@33) null (WandMaskField_120940 pm_f_58@@5)) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@5) null (WandMaskField_120940 pm_f_58@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@5 Mask@@15) (IsWandField_120940_911782 pm_f_58@@5) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@5) null (WandMaskField_120940 pm_f_58@@5)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_235986) (ExhaleHeap@@6 T@PolymorphicMapType_235986) (Mask@@16 T@PolymorphicMapType_236007) (pm_f_58@@6 T@Field_120437_120941) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@6 Mask@@16) (=> (and (HasDirectPerm_120437_120941 Mask@@16 null pm_f_58@@6) (IsWandField_120437_911425 pm_f_58@@6)) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@34) null (WandMaskField_120437 pm_f_58@@6)) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@6) null (WandMaskField_120437 pm_f_58@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@6 Mask@@16) (IsWandField_120437_911425 pm_f_58@@6) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@6) null (WandMaskField_120437 pm_f_58@@6)))
)))
(assert (forall ((this@@29 T@Ref) (last@@14 T@Ref) (this2 T@Ref) (last2 T@Ref) ) (!  (=> (= (heapseg this@@29 last@@14) (heapseg this2 last2)) (and (= this@@29 this2) (= last@@14 last2)))
 :qid |stdinbpl.2302:15|
 :skolemid |100|
 :pattern ( (heapseg this@@29 last@@14) (heapseg this2 last2))
)))
(assert (forall ((this@@30 T@Ref) (last@@15 T@Ref) (this2@@0 T@Ref) (last2@@0 T@Ref) ) (!  (=> (= (|heapseg#sm| this@@30 last@@15) (|heapseg#sm| this2@@0 last2@@0)) (and (= this@@30 this2@@0) (= last@@15 last2@@0)))
 :qid |stdinbpl.2306:15|
 :skolemid |101|
 :pattern ( (|heapseg#sm| this@@30 last@@15) (|heapseg#sm| this2@@0 last2@@0))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_235986) (ExhaleHeap@@7 T@PolymorphicMapType_235986) (Mask@@17 T@PolymorphicMapType_236007) (pm_f_58@@7 T@Field_304757_304758) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@7 Mask@@17) (=> (and (HasDirectPerm_120979_120980 Mask@@17 null pm_f_58@@7) (IsPredicateField_120979_120980 pm_f_58@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_59 T@Ref) (f_161 T@Field_239373_1189) ) (!  (=> (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59 f_161) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@35) o2_59 f_161) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59 f_161)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59 f_161))
)) (forall ((o2_59@@0 T@Ref) (f_161@@0 T@Field_236059_236060) ) (!  (=> (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@0 f_161@@0) (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@35) o2_59@@0 f_161@@0) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@0 f_161@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@0 f_161@@0))
))) (forall ((o2_59@@1 T@Ref) (f_161@@1 T@Field_236046_53) ) (!  (=> (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@1 f_161@@1) (= (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@35) o2_59@@1 f_161@@1) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@1 f_161@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@1 f_161@@1))
))) (forall ((o2_59@@2 T@Ref) (f_161@@2 T@Field_120437_120941) ) (!  (=> (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@2 f_161@@2) (= (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@35) o2_59@@2 f_161@@2) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@2 f_161@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@2 f_161@@2))
))) (forall ((o2_59@@3 T@Ref) (f_161@@3 T@Field_120437_243193) ) (!  (=> (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@3 f_161@@3) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@35) o2_59@@3 f_161@@3) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@3 f_161@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@3 f_161@@3))
))) (forall ((o2_59@@4 T@Ref) (f_161@@4 T@Field_120911_1189) ) (!  (=> (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@4 f_161@@4) (= (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@35) o2_59@@4 f_161@@4) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@4 f_161@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@4 f_161@@4))
))) (forall ((o2_59@@5 T@Ref) (f_161@@5 T@Field_120911_120448) ) (!  (=> (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@5 f_161@@5) (= (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@35) o2_59@@5 f_161@@5) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@5 f_161@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@5 f_161@@5))
))) (forall ((o2_59@@6 T@Ref) (f_161@@6 T@Field_120911_53) ) (!  (=> (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@6 f_161@@6) (= (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@35) o2_59@@6 f_161@@6) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@6 f_161@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@6 f_161@@6))
))) (forall ((o2_59@@7 T@Ref) (f_161@@7 T@Field_239929_239930) ) (!  (=> (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@7 f_161@@7) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@35) o2_59@@7 f_161@@7) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@7 f_161@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@7 f_161@@7))
))) (forall ((o2_59@@8 T@Ref) (f_161@@8 T@Field_243188_243193) ) (!  (=> (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@8 f_161@@8) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@35) o2_59@@8 f_161@@8) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@8 f_161@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@8 f_161@@8))
))) (forall ((o2_59@@9 T@Ref) (f_161@@9 T@Field_120940_1189) ) (!  (=> (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@9 f_161@@9) (= (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@35) o2_59@@9 f_161@@9) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@9 f_161@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@9 f_161@@9))
))) (forall ((o2_59@@10 T@Ref) (f_161@@10 T@Field_120940_120448) ) (!  (=> (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@10 f_161@@10) (= (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@35) o2_59@@10 f_161@@10) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@10 f_161@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@10 f_161@@10))
))) (forall ((o2_59@@11 T@Ref) (f_161@@11 T@Field_120940_53) ) (!  (=> (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@11 f_161@@11) (= (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@35) o2_59@@11 f_161@@11) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@11 f_161@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@11 f_161@@11))
))) (forall ((o2_59@@12 T@Ref) (f_161@@12 T@Field_240944_240945) ) (!  (=> (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@12 f_161@@12) (= (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@35) o2_59@@12 f_161@@12) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@12 f_161@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@12 f_161@@12))
))) (forall ((o2_59@@13 T@Ref) (f_161@@13 T@Field_244153_244158) ) (!  (=> (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@13 f_161@@13) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@35) o2_59@@13 f_161@@13) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@13 f_161@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@13 f_161@@13))
))) (forall ((o2_59@@14 T@Ref) (f_161@@14 T@Field_120979_1189) ) (!  (=> (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@14 f_161@@14) (= (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@35) o2_59@@14 f_161@@14) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@14 f_161@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@14 f_161@@14))
))) (forall ((o2_59@@15 T@Ref) (f_161@@15 T@Field_120979_120448) ) (!  (=> (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@15 f_161@@15) (= (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@35) o2_59@@15 f_161@@15) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@15 f_161@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@15 f_161@@15))
))) (forall ((o2_59@@16 T@Ref) (f_161@@16 T@Field_120979_53) ) (!  (=> (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@16 f_161@@16) (= (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@35) o2_59@@16 f_161@@16) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@16 f_161@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@16 f_161@@16))
))) (forall ((o2_59@@17 T@Ref) (f_161@@17 T@Field_304757_304758) ) (!  (=> (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@17 f_161@@17) (= (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@35) o2_59@@17 f_161@@17) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@17 f_161@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@17 f_161@@17))
))) (forall ((o2_59@@18 T@Ref) (f_161@@18 T@Field_304770_304775) ) (!  (=> (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) null (PredicateMaskField_120979 pm_f_58@@7))) o2_59@@18 f_161@@18) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@35) o2_59@@18 f_161@@18) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@18 f_161@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@7) o2_59@@18 f_161@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@7 Mask@@17) (IsPredicateField_120979_120980 pm_f_58@@7))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_235986) (ExhaleHeap@@8 T@PolymorphicMapType_235986) (Mask@@18 T@PolymorphicMapType_236007) (pm_f_58@@8 T@Field_239929_239930) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@8 Mask@@18) (=> (and (HasDirectPerm_120911_120912 Mask@@18 null pm_f_58@@8) (IsPredicateField_120911_120912 pm_f_58@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_59@@19 T@Ref) (f_161@@19 T@Field_239373_1189) ) (!  (=> (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@19 f_161@@19) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@36) o2_59@@19 f_161@@19) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@19 f_161@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@19 f_161@@19))
)) (forall ((o2_59@@20 T@Ref) (f_161@@20 T@Field_236059_236060) ) (!  (=> (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@20 f_161@@20) (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@36) o2_59@@20 f_161@@20) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@20 f_161@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@20 f_161@@20))
))) (forall ((o2_59@@21 T@Ref) (f_161@@21 T@Field_236046_53) ) (!  (=> (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@21 f_161@@21) (= (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@36) o2_59@@21 f_161@@21) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@21 f_161@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@21 f_161@@21))
))) (forall ((o2_59@@22 T@Ref) (f_161@@22 T@Field_120437_120941) ) (!  (=> (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@22 f_161@@22) (= (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@36) o2_59@@22 f_161@@22) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@22 f_161@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@22 f_161@@22))
))) (forall ((o2_59@@23 T@Ref) (f_161@@23 T@Field_120437_243193) ) (!  (=> (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@23 f_161@@23) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@36) o2_59@@23 f_161@@23) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@23 f_161@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@23 f_161@@23))
))) (forall ((o2_59@@24 T@Ref) (f_161@@24 T@Field_120911_1189) ) (!  (=> (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@24 f_161@@24) (= (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@36) o2_59@@24 f_161@@24) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@24 f_161@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@24 f_161@@24))
))) (forall ((o2_59@@25 T@Ref) (f_161@@25 T@Field_120911_120448) ) (!  (=> (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@25 f_161@@25) (= (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@36) o2_59@@25 f_161@@25) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@25 f_161@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@25 f_161@@25))
))) (forall ((o2_59@@26 T@Ref) (f_161@@26 T@Field_120911_53) ) (!  (=> (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@26 f_161@@26) (= (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@36) o2_59@@26 f_161@@26) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@26 f_161@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@26 f_161@@26))
))) (forall ((o2_59@@27 T@Ref) (f_161@@27 T@Field_239929_239930) ) (!  (=> (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@27 f_161@@27) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@36) o2_59@@27 f_161@@27) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@27 f_161@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@27 f_161@@27))
))) (forall ((o2_59@@28 T@Ref) (f_161@@28 T@Field_243188_243193) ) (!  (=> (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@28 f_161@@28) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) o2_59@@28 f_161@@28) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@28 f_161@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@28 f_161@@28))
))) (forall ((o2_59@@29 T@Ref) (f_161@@29 T@Field_120940_1189) ) (!  (=> (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@29 f_161@@29) (= (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@36) o2_59@@29 f_161@@29) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@29 f_161@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@29 f_161@@29))
))) (forall ((o2_59@@30 T@Ref) (f_161@@30 T@Field_120940_120448) ) (!  (=> (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@30 f_161@@30) (= (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@36) o2_59@@30 f_161@@30) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@30 f_161@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@30 f_161@@30))
))) (forall ((o2_59@@31 T@Ref) (f_161@@31 T@Field_120940_53) ) (!  (=> (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@31 f_161@@31) (= (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@36) o2_59@@31 f_161@@31) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@31 f_161@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@31 f_161@@31))
))) (forall ((o2_59@@32 T@Ref) (f_161@@32 T@Field_240944_240945) ) (!  (=> (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@32 f_161@@32) (= (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@36) o2_59@@32 f_161@@32) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@32 f_161@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@32 f_161@@32))
))) (forall ((o2_59@@33 T@Ref) (f_161@@33 T@Field_244153_244158) ) (!  (=> (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@33 f_161@@33) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@36) o2_59@@33 f_161@@33) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@33 f_161@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@33 f_161@@33))
))) (forall ((o2_59@@34 T@Ref) (f_161@@34 T@Field_120979_1189) ) (!  (=> (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@34 f_161@@34) (= (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@36) o2_59@@34 f_161@@34) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@34 f_161@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@34 f_161@@34))
))) (forall ((o2_59@@35 T@Ref) (f_161@@35 T@Field_120979_120448) ) (!  (=> (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@35 f_161@@35) (= (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@36) o2_59@@35 f_161@@35) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@35 f_161@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@35 f_161@@35))
))) (forall ((o2_59@@36 T@Ref) (f_161@@36 T@Field_120979_53) ) (!  (=> (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@36 f_161@@36) (= (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@36) o2_59@@36 f_161@@36) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@36 f_161@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@36 f_161@@36))
))) (forall ((o2_59@@37 T@Ref) (f_161@@37 T@Field_304757_304758) ) (!  (=> (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@37 f_161@@37) (= (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@36) o2_59@@37 f_161@@37) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@37 f_161@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@37 f_161@@37))
))) (forall ((o2_59@@38 T@Ref) (f_161@@38 T@Field_304770_304775) ) (!  (=> (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@36) null (PredicateMaskField_120911 pm_f_58@@8))) o2_59@@38 f_161@@38) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@36) o2_59@@38 f_161@@38) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@38 f_161@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@8) o2_59@@38 f_161@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@8 Mask@@18) (IsPredicateField_120911_120912 pm_f_58@@8))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_235986) (ExhaleHeap@@9 T@PolymorphicMapType_235986) (Mask@@19 T@PolymorphicMapType_236007) (pm_f_58@@9 T@Field_240944_240945) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@9 Mask@@19) (=> (and (HasDirectPerm_120940_120941 Mask@@19 null pm_f_58@@9) (IsPredicateField_120940_120941 pm_f_58@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_59@@39 T@Ref) (f_161@@39 T@Field_239373_1189) ) (!  (=> (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@39 f_161@@39) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@37) o2_59@@39 f_161@@39) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@39 f_161@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@39 f_161@@39))
)) (forall ((o2_59@@40 T@Ref) (f_161@@40 T@Field_236059_236060) ) (!  (=> (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@40 f_161@@40) (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@37) o2_59@@40 f_161@@40) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@40 f_161@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@40 f_161@@40))
))) (forall ((o2_59@@41 T@Ref) (f_161@@41 T@Field_236046_53) ) (!  (=> (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@41 f_161@@41) (= (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@37) o2_59@@41 f_161@@41) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@41 f_161@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@41 f_161@@41))
))) (forall ((o2_59@@42 T@Ref) (f_161@@42 T@Field_120437_120941) ) (!  (=> (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@42 f_161@@42) (= (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@37) o2_59@@42 f_161@@42) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@42 f_161@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@42 f_161@@42))
))) (forall ((o2_59@@43 T@Ref) (f_161@@43 T@Field_120437_243193) ) (!  (=> (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@43 f_161@@43) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@37) o2_59@@43 f_161@@43) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@43 f_161@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@43 f_161@@43))
))) (forall ((o2_59@@44 T@Ref) (f_161@@44 T@Field_120911_1189) ) (!  (=> (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@44 f_161@@44) (= (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@37) o2_59@@44 f_161@@44) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@44 f_161@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@44 f_161@@44))
))) (forall ((o2_59@@45 T@Ref) (f_161@@45 T@Field_120911_120448) ) (!  (=> (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@45 f_161@@45) (= (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@37) o2_59@@45 f_161@@45) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@45 f_161@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@45 f_161@@45))
))) (forall ((o2_59@@46 T@Ref) (f_161@@46 T@Field_120911_53) ) (!  (=> (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@46 f_161@@46) (= (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@37) o2_59@@46 f_161@@46) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@46 f_161@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@46 f_161@@46))
))) (forall ((o2_59@@47 T@Ref) (f_161@@47 T@Field_239929_239930) ) (!  (=> (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@47 f_161@@47) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@37) o2_59@@47 f_161@@47) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@47 f_161@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@47 f_161@@47))
))) (forall ((o2_59@@48 T@Ref) (f_161@@48 T@Field_243188_243193) ) (!  (=> (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@48 f_161@@48) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@37) o2_59@@48 f_161@@48) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@48 f_161@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@48 f_161@@48))
))) (forall ((o2_59@@49 T@Ref) (f_161@@49 T@Field_120940_1189) ) (!  (=> (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@49 f_161@@49) (= (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@37) o2_59@@49 f_161@@49) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@49 f_161@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@49 f_161@@49))
))) (forall ((o2_59@@50 T@Ref) (f_161@@50 T@Field_120940_120448) ) (!  (=> (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@50 f_161@@50) (= (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@37) o2_59@@50 f_161@@50) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@50 f_161@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@50 f_161@@50))
))) (forall ((o2_59@@51 T@Ref) (f_161@@51 T@Field_120940_53) ) (!  (=> (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@51 f_161@@51) (= (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@37) o2_59@@51 f_161@@51) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@51 f_161@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@51 f_161@@51))
))) (forall ((o2_59@@52 T@Ref) (f_161@@52 T@Field_240944_240945) ) (!  (=> (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@52 f_161@@52) (= (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@37) o2_59@@52 f_161@@52) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@52 f_161@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@52 f_161@@52))
))) (forall ((o2_59@@53 T@Ref) (f_161@@53 T@Field_244153_244158) ) (!  (=> (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@53 f_161@@53) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) o2_59@@53 f_161@@53) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@53 f_161@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@53 f_161@@53))
))) (forall ((o2_59@@54 T@Ref) (f_161@@54 T@Field_120979_1189) ) (!  (=> (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@54 f_161@@54) (= (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@37) o2_59@@54 f_161@@54) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@54 f_161@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@54 f_161@@54))
))) (forall ((o2_59@@55 T@Ref) (f_161@@55 T@Field_120979_120448) ) (!  (=> (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@55 f_161@@55) (= (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@37) o2_59@@55 f_161@@55) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@55 f_161@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@55 f_161@@55))
))) (forall ((o2_59@@56 T@Ref) (f_161@@56 T@Field_120979_53) ) (!  (=> (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@56 f_161@@56) (= (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@37) o2_59@@56 f_161@@56) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@56 f_161@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@56 f_161@@56))
))) (forall ((o2_59@@57 T@Ref) (f_161@@57 T@Field_304757_304758) ) (!  (=> (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@57 f_161@@57) (= (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@37) o2_59@@57 f_161@@57) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@57 f_161@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@57 f_161@@57))
))) (forall ((o2_59@@58 T@Ref) (f_161@@58 T@Field_304770_304775) ) (!  (=> (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@37) null (PredicateMaskField_120940 pm_f_58@@9))) o2_59@@58 f_161@@58) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@37) o2_59@@58 f_161@@58) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@58 f_161@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@9) o2_59@@58 f_161@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@9 Mask@@19) (IsPredicateField_120940_120941 pm_f_58@@9))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_235986) (ExhaleHeap@@10 T@PolymorphicMapType_235986) (Mask@@20 T@PolymorphicMapType_236007) (pm_f_58@@10 T@Field_120437_120941) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@10 Mask@@20) (=> (and (HasDirectPerm_120437_120941 Mask@@20 null pm_f_58@@10) (IsPredicateField_120437_904804 pm_f_58@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_59@@59 T@Ref) (f_161@@59 T@Field_239373_1189) ) (!  (=> (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@59 f_161@@59) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@38) o2_59@@59 f_161@@59) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@59 f_161@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@59 f_161@@59))
)) (forall ((o2_59@@60 T@Ref) (f_161@@60 T@Field_236059_236060) ) (!  (=> (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@60 f_161@@60) (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@38) o2_59@@60 f_161@@60) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@60 f_161@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@60 f_161@@60))
))) (forall ((o2_59@@61 T@Ref) (f_161@@61 T@Field_236046_53) ) (!  (=> (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@61 f_161@@61) (= (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@38) o2_59@@61 f_161@@61) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@61 f_161@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@61 f_161@@61))
))) (forall ((o2_59@@62 T@Ref) (f_161@@62 T@Field_120437_120941) ) (!  (=> (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@62 f_161@@62) (= (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@38) o2_59@@62 f_161@@62) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@62 f_161@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@62 f_161@@62))
))) (forall ((o2_59@@63 T@Ref) (f_161@@63 T@Field_120437_243193) ) (!  (=> (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@63 f_161@@63) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) o2_59@@63 f_161@@63) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@63 f_161@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@63 f_161@@63))
))) (forall ((o2_59@@64 T@Ref) (f_161@@64 T@Field_120911_1189) ) (!  (=> (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@64 f_161@@64) (= (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@38) o2_59@@64 f_161@@64) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@64 f_161@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@64 f_161@@64))
))) (forall ((o2_59@@65 T@Ref) (f_161@@65 T@Field_120911_120448) ) (!  (=> (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@65 f_161@@65) (= (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@38) o2_59@@65 f_161@@65) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@65 f_161@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@65 f_161@@65))
))) (forall ((o2_59@@66 T@Ref) (f_161@@66 T@Field_120911_53) ) (!  (=> (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@66 f_161@@66) (= (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@38) o2_59@@66 f_161@@66) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@66 f_161@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@66 f_161@@66))
))) (forall ((o2_59@@67 T@Ref) (f_161@@67 T@Field_239929_239930) ) (!  (=> (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@67 f_161@@67) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@38) o2_59@@67 f_161@@67) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@67 f_161@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@67 f_161@@67))
))) (forall ((o2_59@@68 T@Ref) (f_161@@68 T@Field_243188_243193) ) (!  (=> (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@68 f_161@@68) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@38) o2_59@@68 f_161@@68) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@68 f_161@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@68 f_161@@68))
))) (forall ((o2_59@@69 T@Ref) (f_161@@69 T@Field_120940_1189) ) (!  (=> (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@69 f_161@@69) (= (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@38) o2_59@@69 f_161@@69) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@69 f_161@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@69 f_161@@69))
))) (forall ((o2_59@@70 T@Ref) (f_161@@70 T@Field_120940_120448) ) (!  (=> (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@70 f_161@@70) (= (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@38) o2_59@@70 f_161@@70) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@70 f_161@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@70 f_161@@70))
))) (forall ((o2_59@@71 T@Ref) (f_161@@71 T@Field_120940_53) ) (!  (=> (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@71 f_161@@71) (= (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@38) o2_59@@71 f_161@@71) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@71 f_161@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@71 f_161@@71))
))) (forall ((o2_59@@72 T@Ref) (f_161@@72 T@Field_240944_240945) ) (!  (=> (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@72 f_161@@72) (= (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@38) o2_59@@72 f_161@@72) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@72 f_161@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@72 f_161@@72))
))) (forall ((o2_59@@73 T@Ref) (f_161@@73 T@Field_244153_244158) ) (!  (=> (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@73 f_161@@73) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@38) o2_59@@73 f_161@@73) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@73 f_161@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@73 f_161@@73))
))) (forall ((o2_59@@74 T@Ref) (f_161@@74 T@Field_120979_1189) ) (!  (=> (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@74 f_161@@74) (= (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@38) o2_59@@74 f_161@@74) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@74 f_161@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@74 f_161@@74))
))) (forall ((o2_59@@75 T@Ref) (f_161@@75 T@Field_120979_120448) ) (!  (=> (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@75 f_161@@75) (= (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@38) o2_59@@75 f_161@@75) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@75 f_161@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@75 f_161@@75))
))) (forall ((o2_59@@76 T@Ref) (f_161@@76 T@Field_120979_53) ) (!  (=> (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@76 f_161@@76) (= (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@38) o2_59@@76 f_161@@76) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@76 f_161@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@76 f_161@@76))
))) (forall ((o2_59@@77 T@Ref) (f_161@@77 T@Field_304757_304758) ) (!  (=> (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@77 f_161@@77) (= (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@38) o2_59@@77 f_161@@77) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@77 f_161@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@77 f_161@@77))
))) (forall ((o2_59@@78 T@Ref) (f_161@@78 T@Field_304770_304775) ) (!  (=> (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@38) null (PredicateMaskField_120437 pm_f_58@@10))) o2_59@@78 f_161@@78) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@38) o2_59@@78 f_161@@78) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@78 f_161@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@10) o2_59@@78 f_161@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@10 Mask@@20) (IsPredicateField_120437_904804 pm_f_58@@10))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_235986) (ExhaleHeap@@11 T@PolymorphicMapType_235986) (Mask@@21 T@PolymorphicMapType_236007) (pm_f_58@@11 T@Field_304757_304758) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@11 Mask@@21) (=> (and (HasDirectPerm_120979_120980 Mask@@21 null pm_f_58@@11) (IsWandField_120979_912496 pm_f_58@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_59@@79 T@Ref) (f_161@@79 T@Field_239373_1189) ) (!  (=> (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@79 f_161@@79) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@39) o2_59@@79 f_161@@79) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@79 f_161@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@79 f_161@@79))
)) (forall ((o2_59@@80 T@Ref) (f_161@@80 T@Field_236059_236060) ) (!  (=> (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@80 f_161@@80) (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@39) o2_59@@80 f_161@@80) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@80 f_161@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@80 f_161@@80))
))) (forall ((o2_59@@81 T@Ref) (f_161@@81 T@Field_236046_53) ) (!  (=> (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@81 f_161@@81) (= (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@39) o2_59@@81 f_161@@81) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@81 f_161@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@81 f_161@@81))
))) (forall ((o2_59@@82 T@Ref) (f_161@@82 T@Field_120437_120941) ) (!  (=> (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@82 f_161@@82) (= (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@39) o2_59@@82 f_161@@82) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@82 f_161@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@82 f_161@@82))
))) (forall ((o2_59@@83 T@Ref) (f_161@@83 T@Field_120437_243193) ) (!  (=> (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@83 f_161@@83) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@39) o2_59@@83 f_161@@83) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@83 f_161@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@83 f_161@@83))
))) (forall ((o2_59@@84 T@Ref) (f_161@@84 T@Field_120911_1189) ) (!  (=> (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@84 f_161@@84) (= (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@39) o2_59@@84 f_161@@84) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@84 f_161@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@84 f_161@@84))
))) (forall ((o2_59@@85 T@Ref) (f_161@@85 T@Field_120911_120448) ) (!  (=> (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@85 f_161@@85) (= (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@39) o2_59@@85 f_161@@85) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@85 f_161@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@85 f_161@@85))
))) (forall ((o2_59@@86 T@Ref) (f_161@@86 T@Field_120911_53) ) (!  (=> (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@86 f_161@@86) (= (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@39) o2_59@@86 f_161@@86) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@86 f_161@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@86 f_161@@86))
))) (forall ((o2_59@@87 T@Ref) (f_161@@87 T@Field_239929_239930) ) (!  (=> (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@87 f_161@@87) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@39) o2_59@@87 f_161@@87) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@87 f_161@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@87 f_161@@87))
))) (forall ((o2_59@@88 T@Ref) (f_161@@88 T@Field_243188_243193) ) (!  (=> (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@88 f_161@@88) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@39) o2_59@@88 f_161@@88) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@88 f_161@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@88 f_161@@88))
))) (forall ((o2_59@@89 T@Ref) (f_161@@89 T@Field_120940_1189) ) (!  (=> (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@89 f_161@@89) (= (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@39) o2_59@@89 f_161@@89) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@89 f_161@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@89 f_161@@89))
))) (forall ((o2_59@@90 T@Ref) (f_161@@90 T@Field_120940_120448) ) (!  (=> (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@90 f_161@@90) (= (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@39) o2_59@@90 f_161@@90) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@90 f_161@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@90 f_161@@90))
))) (forall ((o2_59@@91 T@Ref) (f_161@@91 T@Field_120940_53) ) (!  (=> (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@91 f_161@@91) (= (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@39) o2_59@@91 f_161@@91) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@91 f_161@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@91 f_161@@91))
))) (forall ((o2_59@@92 T@Ref) (f_161@@92 T@Field_240944_240945) ) (!  (=> (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@92 f_161@@92) (= (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@39) o2_59@@92 f_161@@92) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@92 f_161@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@92 f_161@@92))
))) (forall ((o2_59@@93 T@Ref) (f_161@@93 T@Field_244153_244158) ) (!  (=> (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@93 f_161@@93) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@39) o2_59@@93 f_161@@93) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@93 f_161@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@93 f_161@@93))
))) (forall ((o2_59@@94 T@Ref) (f_161@@94 T@Field_120979_1189) ) (!  (=> (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@94 f_161@@94) (= (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@39) o2_59@@94 f_161@@94) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@94 f_161@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@94 f_161@@94))
))) (forall ((o2_59@@95 T@Ref) (f_161@@95 T@Field_120979_120448) ) (!  (=> (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@95 f_161@@95) (= (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@39) o2_59@@95 f_161@@95) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@95 f_161@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@95 f_161@@95))
))) (forall ((o2_59@@96 T@Ref) (f_161@@96 T@Field_120979_53) ) (!  (=> (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@96 f_161@@96) (= (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@39) o2_59@@96 f_161@@96) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@96 f_161@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@96 f_161@@96))
))) (forall ((o2_59@@97 T@Ref) (f_161@@97 T@Field_304757_304758) ) (!  (=> (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@97 f_161@@97) (= (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@39) o2_59@@97 f_161@@97) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@97 f_161@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@97 f_161@@97))
))) (forall ((o2_59@@98 T@Ref) (f_161@@98 T@Field_304770_304775) ) (!  (=> (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) null (WandMaskField_120979 pm_f_58@@11))) o2_59@@98 f_161@@98) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@39) o2_59@@98 f_161@@98) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@98 f_161@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@11) o2_59@@98 f_161@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@11 Mask@@21) (IsWandField_120979_912496 pm_f_58@@11))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_235986) (ExhaleHeap@@12 T@PolymorphicMapType_235986) (Mask@@22 T@PolymorphicMapType_236007) (pm_f_58@@12 T@Field_239929_239930) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@12 Mask@@22) (=> (and (HasDirectPerm_120911_120912 Mask@@22 null pm_f_58@@12) (IsWandField_120911_912139 pm_f_58@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_59@@99 T@Ref) (f_161@@99 T@Field_239373_1189) ) (!  (=> (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@99 f_161@@99) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@40) o2_59@@99 f_161@@99) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@99 f_161@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@99 f_161@@99))
)) (forall ((o2_59@@100 T@Ref) (f_161@@100 T@Field_236059_236060) ) (!  (=> (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@100 f_161@@100) (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@40) o2_59@@100 f_161@@100) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@100 f_161@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@100 f_161@@100))
))) (forall ((o2_59@@101 T@Ref) (f_161@@101 T@Field_236046_53) ) (!  (=> (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@101 f_161@@101) (= (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@40) o2_59@@101 f_161@@101) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@101 f_161@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@101 f_161@@101))
))) (forall ((o2_59@@102 T@Ref) (f_161@@102 T@Field_120437_120941) ) (!  (=> (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@102 f_161@@102) (= (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@40) o2_59@@102 f_161@@102) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@102 f_161@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@102 f_161@@102))
))) (forall ((o2_59@@103 T@Ref) (f_161@@103 T@Field_120437_243193) ) (!  (=> (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@103 f_161@@103) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@40) o2_59@@103 f_161@@103) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@103 f_161@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@103 f_161@@103))
))) (forall ((o2_59@@104 T@Ref) (f_161@@104 T@Field_120911_1189) ) (!  (=> (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@104 f_161@@104) (= (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@40) o2_59@@104 f_161@@104) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@104 f_161@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@104 f_161@@104))
))) (forall ((o2_59@@105 T@Ref) (f_161@@105 T@Field_120911_120448) ) (!  (=> (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@105 f_161@@105) (= (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@40) o2_59@@105 f_161@@105) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@105 f_161@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@105 f_161@@105))
))) (forall ((o2_59@@106 T@Ref) (f_161@@106 T@Field_120911_53) ) (!  (=> (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@106 f_161@@106) (= (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@40) o2_59@@106 f_161@@106) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@106 f_161@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@106 f_161@@106))
))) (forall ((o2_59@@107 T@Ref) (f_161@@107 T@Field_239929_239930) ) (!  (=> (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@107 f_161@@107) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@40) o2_59@@107 f_161@@107) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@107 f_161@@107)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@107 f_161@@107))
))) (forall ((o2_59@@108 T@Ref) (f_161@@108 T@Field_243188_243193) ) (!  (=> (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@108 f_161@@108) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) o2_59@@108 f_161@@108) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@108 f_161@@108)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@108 f_161@@108))
))) (forall ((o2_59@@109 T@Ref) (f_161@@109 T@Field_120940_1189) ) (!  (=> (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@109 f_161@@109) (= (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@40) o2_59@@109 f_161@@109) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@109 f_161@@109)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@109 f_161@@109))
))) (forall ((o2_59@@110 T@Ref) (f_161@@110 T@Field_120940_120448) ) (!  (=> (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@110 f_161@@110) (= (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@40) o2_59@@110 f_161@@110) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@110 f_161@@110)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@110 f_161@@110))
))) (forall ((o2_59@@111 T@Ref) (f_161@@111 T@Field_120940_53) ) (!  (=> (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@111 f_161@@111) (= (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@40) o2_59@@111 f_161@@111) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@111 f_161@@111)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@111 f_161@@111))
))) (forall ((o2_59@@112 T@Ref) (f_161@@112 T@Field_240944_240945) ) (!  (=> (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@112 f_161@@112) (= (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@40) o2_59@@112 f_161@@112) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@112 f_161@@112)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@112 f_161@@112))
))) (forall ((o2_59@@113 T@Ref) (f_161@@113 T@Field_244153_244158) ) (!  (=> (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@113 f_161@@113) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@40) o2_59@@113 f_161@@113) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@113 f_161@@113)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@113 f_161@@113))
))) (forall ((o2_59@@114 T@Ref) (f_161@@114 T@Field_120979_1189) ) (!  (=> (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@114 f_161@@114) (= (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@40) o2_59@@114 f_161@@114) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@114 f_161@@114)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@114 f_161@@114))
))) (forall ((o2_59@@115 T@Ref) (f_161@@115 T@Field_120979_120448) ) (!  (=> (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@115 f_161@@115) (= (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@40) o2_59@@115 f_161@@115) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@115 f_161@@115)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@115 f_161@@115))
))) (forall ((o2_59@@116 T@Ref) (f_161@@116 T@Field_120979_53) ) (!  (=> (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@116 f_161@@116) (= (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@40) o2_59@@116 f_161@@116) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@116 f_161@@116)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@116 f_161@@116))
))) (forall ((o2_59@@117 T@Ref) (f_161@@117 T@Field_304757_304758) ) (!  (=> (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@117 f_161@@117) (= (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@40) o2_59@@117 f_161@@117) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@117 f_161@@117)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@117 f_161@@117))
))) (forall ((o2_59@@118 T@Ref) (f_161@@118 T@Field_304770_304775) ) (!  (=> (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@40) null (WandMaskField_120911 pm_f_58@@12))) o2_59@@118 f_161@@118) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@40) o2_59@@118 f_161@@118) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@118 f_161@@118)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@12) o2_59@@118 f_161@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@12 Mask@@22) (IsWandField_120911_912139 pm_f_58@@12))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_235986) (ExhaleHeap@@13 T@PolymorphicMapType_235986) (Mask@@23 T@PolymorphicMapType_236007) (pm_f_58@@13 T@Field_240944_240945) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@13 Mask@@23) (=> (and (HasDirectPerm_120940_120941 Mask@@23 null pm_f_58@@13) (IsWandField_120940_911782 pm_f_58@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_59@@119 T@Ref) (f_161@@119 T@Field_239373_1189) ) (!  (=> (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@119 f_161@@119) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@41) o2_59@@119 f_161@@119) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@119 f_161@@119)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@119 f_161@@119))
)) (forall ((o2_59@@120 T@Ref) (f_161@@120 T@Field_236059_236060) ) (!  (=> (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@120 f_161@@120) (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@41) o2_59@@120 f_161@@120) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@120 f_161@@120)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@120 f_161@@120))
))) (forall ((o2_59@@121 T@Ref) (f_161@@121 T@Field_236046_53) ) (!  (=> (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@121 f_161@@121) (= (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@41) o2_59@@121 f_161@@121) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@121 f_161@@121)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@121 f_161@@121))
))) (forall ((o2_59@@122 T@Ref) (f_161@@122 T@Field_120437_120941) ) (!  (=> (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@122 f_161@@122) (= (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@41) o2_59@@122 f_161@@122) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@122 f_161@@122)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@122 f_161@@122))
))) (forall ((o2_59@@123 T@Ref) (f_161@@123 T@Field_120437_243193) ) (!  (=> (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@123 f_161@@123) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@41) o2_59@@123 f_161@@123) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@123 f_161@@123)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@123 f_161@@123))
))) (forall ((o2_59@@124 T@Ref) (f_161@@124 T@Field_120911_1189) ) (!  (=> (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@124 f_161@@124) (= (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@41) o2_59@@124 f_161@@124) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@124 f_161@@124)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@124 f_161@@124))
))) (forall ((o2_59@@125 T@Ref) (f_161@@125 T@Field_120911_120448) ) (!  (=> (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@125 f_161@@125) (= (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@41) o2_59@@125 f_161@@125) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@125 f_161@@125)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@125 f_161@@125))
))) (forall ((o2_59@@126 T@Ref) (f_161@@126 T@Field_120911_53) ) (!  (=> (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@126 f_161@@126) (= (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@41) o2_59@@126 f_161@@126) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@126 f_161@@126)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@126 f_161@@126))
))) (forall ((o2_59@@127 T@Ref) (f_161@@127 T@Field_239929_239930) ) (!  (=> (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@127 f_161@@127) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@41) o2_59@@127 f_161@@127) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@127 f_161@@127)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@127 f_161@@127))
))) (forall ((o2_59@@128 T@Ref) (f_161@@128 T@Field_243188_243193) ) (!  (=> (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@128 f_161@@128) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@41) o2_59@@128 f_161@@128) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@128 f_161@@128)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@128 f_161@@128))
))) (forall ((o2_59@@129 T@Ref) (f_161@@129 T@Field_120940_1189) ) (!  (=> (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@129 f_161@@129) (= (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@41) o2_59@@129 f_161@@129) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@129 f_161@@129)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@129 f_161@@129))
))) (forall ((o2_59@@130 T@Ref) (f_161@@130 T@Field_120940_120448) ) (!  (=> (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@130 f_161@@130) (= (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@41) o2_59@@130 f_161@@130) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@130 f_161@@130)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@130 f_161@@130))
))) (forall ((o2_59@@131 T@Ref) (f_161@@131 T@Field_120940_53) ) (!  (=> (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@131 f_161@@131) (= (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@41) o2_59@@131 f_161@@131) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@131 f_161@@131)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@131 f_161@@131))
))) (forall ((o2_59@@132 T@Ref) (f_161@@132 T@Field_240944_240945) ) (!  (=> (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@132 f_161@@132) (= (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@41) o2_59@@132 f_161@@132) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@132 f_161@@132)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@132 f_161@@132))
))) (forall ((o2_59@@133 T@Ref) (f_161@@133 T@Field_244153_244158) ) (!  (=> (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@133 f_161@@133) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) o2_59@@133 f_161@@133) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@133 f_161@@133)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@133 f_161@@133))
))) (forall ((o2_59@@134 T@Ref) (f_161@@134 T@Field_120979_1189) ) (!  (=> (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@134 f_161@@134) (= (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@41) o2_59@@134 f_161@@134) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@134 f_161@@134)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@134 f_161@@134))
))) (forall ((o2_59@@135 T@Ref) (f_161@@135 T@Field_120979_120448) ) (!  (=> (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@135 f_161@@135) (= (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@41) o2_59@@135 f_161@@135) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@135 f_161@@135)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@135 f_161@@135))
))) (forall ((o2_59@@136 T@Ref) (f_161@@136 T@Field_120979_53) ) (!  (=> (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@136 f_161@@136) (= (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@41) o2_59@@136 f_161@@136) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@136 f_161@@136)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@136 f_161@@136))
))) (forall ((o2_59@@137 T@Ref) (f_161@@137 T@Field_304757_304758) ) (!  (=> (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@137 f_161@@137) (= (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@41) o2_59@@137 f_161@@137) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@137 f_161@@137)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@137 f_161@@137))
))) (forall ((o2_59@@138 T@Ref) (f_161@@138 T@Field_304770_304775) ) (!  (=> (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@41) null (WandMaskField_120940 pm_f_58@@13))) o2_59@@138 f_161@@138) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@41) o2_59@@138 f_161@@138) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@138 f_161@@138)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@13) o2_59@@138 f_161@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@13 Mask@@23) (IsWandField_120940_911782 pm_f_58@@13))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_235986) (ExhaleHeap@@14 T@PolymorphicMapType_235986) (Mask@@24 T@PolymorphicMapType_236007) (pm_f_58@@14 T@Field_120437_120941) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@14 Mask@@24) (=> (and (HasDirectPerm_120437_120941 Mask@@24 null pm_f_58@@14) (IsWandField_120437_911425 pm_f_58@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_59@@139 T@Ref) (f_161@@139 T@Field_239373_1189) ) (!  (=> (select (|PolymorphicMapType_236535_120437_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@139 f_161@@139) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@42) o2_59@@139 f_161@@139) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@139 f_161@@139)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@139 f_161@@139))
)) (forall ((o2_59@@140 T@Ref) (f_161@@140 T@Field_236059_236060) ) (!  (=> (select (|PolymorphicMapType_236535_120447_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@140 f_161@@140) (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@42) o2_59@@140 f_161@@140) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@140 f_161@@140)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@140 f_161@@140))
))) (forall ((o2_59@@141 T@Ref) (f_161@@141 T@Field_236046_53) ) (!  (=> (select (|PolymorphicMapType_236535_120437_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@141 f_161@@141) (= (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@42) o2_59@@141 f_161@@141) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@141 f_161@@141)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@141 f_161@@141))
))) (forall ((o2_59@@142 T@Ref) (f_161@@142 T@Field_120437_120941) ) (!  (=> (select (|PolymorphicMapType_236535_120437_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@142 f_161@@142) (= (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@42) o2_59@@142 f_161@@142) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@142 f_161@@142)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@142 f_161@@142))
))) (forall ((o2_59@@143 T@Ref) (f_161@@143 T@Field_120437_243193) ) (!  (=> (select (|PolymorphicMapType_236535_120437_906911#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@143 f_161@@143) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) o2_59@@143 f_161@@143) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@143 f_161@@143)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@143 f_161@@143))
))) (forall ((o2_59@@144 T@Ref) (f_161@@144 T@Field_120911_1189) ) (!  (=> (select (|PolymorphicMapType_236535_239929_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@144 f_161@@144) (= (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@42) o2_59@@144 f_161@@144) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@144 f_161@@144)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@144 f_161@@144))
))) (forall ((o2_59@@145 T@Ref) (f_161@@145 T@Field_120911_120448) ) (!  (=> (select (|PolymorphicMapType_236535_239929_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@145 f_161@@145) (= (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@42) o2_59@@145 f_161@@145) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@145 f_161@@145)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@145 f_161@@145))
))) (forall ((o2_59@@146 T@Ref) (f_161@@146 T@Field_120911_53) ) (!  (=> (select (|PolymorphicMapType_236535_239929_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@146 f_161@@146) (= (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@42) o2_59@@146 f_161@@146) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@146 f_161@@146)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@146 f_161@@146))
))) (forall ((o2_59@@147 T@Ref) (f_161@@147 T@Field_239929_239930) ) (!  (=> (select (|PolymorphicMapType_236535_239929_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@147 f_161@@147) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@42) o2_59@@147 f_161@@147) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@147 f_161@@147)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@147 f_161@@147))
))) (forall ((o2_59@@148 T@Ref) (f_161@@148 T@Field_243188_243193) ) (!  (=> (select (|PolymorphicMapType_236535_239929_907959#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@148 f_161@@148) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@42) o2_59@@148 f_161@@148) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@148 f_161@@148)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@148 f_161@@148))
))) (forall ((o2_59@@149 T@Ref) (f_161@@149 T@Field_120940_1189) ) (!  (=> (select (|PolymorphicMapType_236535_240944_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@149 f_161@@149) (= (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@42) o2_59@@149 f_161@@149) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@149 f_161@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@149 f_161@@149))
))) (forall ((o2_59@@150 T@Ref) (f_161@@150 T@Field_120940_120448) ) (!  (=> (select (|PolymorphicMapType_236535_240944_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@150 f_161@@150) (= (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@42) o2_59@@150 f_161@@150) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@150 f_161@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@150 f_161@@150))
))) (forall ((o2_59@@151 T@Ref) (f_161@@151 T@Field_120940_53) ) (!  (=> (select (|PolymorphicMapType_236535_240944_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@151 f_161@@151) (= (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@42) o2_59@@151 f_161@@151) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@151 f_161@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@151 f_161@@151))
))) (forall ((o2_59@@152 T@Ref) (f_161@@152 T@Field_240944_240945) ) (!  (=> (select (|PolymorphicMapType_236535_240944_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@152 f_161@@152) (= (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@42) o2_59@@152 f_161@@152) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@152 f_161@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@152 f_161@@152))
))) (forall ((o2_59@@153 T@Ref) (f_161@@153 T@Field_244153_244158) ) (!  (=> (select (|PolymorphicMapType_236535_240944_909007#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@153 f_161@@153) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@42) o2_59@@153 f_161@@153) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@153 f_161@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@153 f_161@@153))
))) (forall ((o2_59@@154 T@Ref) (f_161@@154 T@Field_120979_1189) ) (!  (=> (select (|PolymorphicMapType_236535_304757_1189#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@154 f_161@@154) (= (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@42) o2_59@@154 f_161@@154) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@154 f_161@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@154 f_161@@154))
))) (forall ((o2_59@@155 T@Ref) (f_161@@155 T@Field_120979_120448) ) (!  (=> (select (|PolymorphicMapType_236535_304757_120448#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@155 f_161@@155) (= (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@42) o2_59@@155 f_161@@155) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@155 f_161@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@155 f_161@@155))
))) (forall ((o2_59@@156 T@Ref) (f_161@@156 T@Field_120979_53) ) (!  (=> (select (|PolymorphicMapType_236535_304757_53#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@156 f_161@@156) (= (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@42) o2_59@@156 f_161@@156) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@156 f_161@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@156 f_161@@156))
))) (forall ((o2_59@@157 T@Ref) (f_161@@157 T@Field_304757_304758) ) (!  (=> (select (|PolymorphicMapType_236535_304757_239930#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@157 f_161@@157) (= (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@42) o2_59@@157 f_161@@157) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@157 f_161@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@157 f_161@@157))
))) (forall ((o2_59@@158 T@Ref) (f_161@@158 T@Field_304770_304775) ) (!  (=> (select (|PolymorphicMapType_236535_304757_910055#PolymorphicMapType_236535| (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@42) null (WandMaskField_120437 pm_f_58@@14))) o2_59@@158 f_161@@158) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@42) o2_59@@158 f_161@@158) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@158 f_161@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@14) o2_59@@158 f_161@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@14 Mask@@24) (IsWandField_120437_911425 pm_f_58@@14))
)))
(assert (forall ((this@@31 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (tree_1 this@@31) (tree_1 this2@@1)) (= this@@31 this2@@1))
 :qid |stdinbpl.2120:15|
 :skolemid |94|
 :pattern ( (tree_1 this@@31) (tree_1 this2@@1))
)))
(assert (forall ((this@@32 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|tree#sm| this@@32) (|tree#sm| this2@@2)) (= this@@32 this2@@2))
 :qid |stdinbpl.2124:15|
 :skolemid |95|
 :pattern ( (|tree#sm| this@@32) (|tree#sm| this2@@2))
)))
(assert (forall ((this@@33 T@Ref) (this2@@3 T@Ref) ) (!  (=> (= (heap_1 this@@33) (heap_1 this2@@3)) (= this@@33 this2@@3))
 :qid |stdinbpl.2415:15|
 :skolemid |106|
 :pattern ( (heap_1 this@@33) (heap_1 this2@@3))
)))
(assert (forall ((this@@34 T@Ref) (this2@@4 T@Ref) ) (!  (=> (= (|heap#sm| this@@34) (|heap#sm| this2@@4)) (= this@@34 this2@@4))
 :qid |stdinbpl.2419:15|
 :skolemid |107|
 :pattern ( (|heap#sm| this@@34) (|heap#sm| this2@@4))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@43 T@PolymorphicMapType_235986) (ExhaleHeap@@15 T@PolymorphicMapType_235986) (Mask@@25 T@PolymorphicMapType_236007) (o_153 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@15 Mask@@25) (=> (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@43) o_153 $allocated) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@15) o_153 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@15 Mask@@25) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@15) o_153 $allocated))
)))
(assert (forall ((p T@Field_120437_120941) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_236046_236046 p v_1 p w))
 :qid |stdinbpl.183:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_236046_236046 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_304757_304758) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_120979_304757 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.183:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_120979_304757 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_240944_240945) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_120940_120940 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.183:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_120940_120940 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_239929_239930) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_120911_120911 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.183:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_120911_120911 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert  (not (IsPredicateField_120437_1189 key_6)))
(assert  (not (IsWandField_120437_1189 key_6)))
(assert  (not (IsPredicateField_120437_1189 degree)))
(assert  (not (IsWandField_120437_1189 degree)))
(assert  (not (IsPredicateField_120441_120442 parent)))
(assert  (not (IsWandField_120441_120442 parent)))
(assert  (not (IsPredicateField_120441_120442 sibling)))
(assert  (not (IsWandField_120441_120442 sibling)))
(assert  (not (IsPredicateField_120441_120442 child)))
(assert  (not (IsWandField_120441_120442 child)))
(assert  (not (IsPredicateField_120441_120442 Nodes_1)))
(assert  (not (IsWandField_120441_120442 Nodes_1)))
(assert  (not (IsPredicateField_120437_1189 size_3)))
(assert  (not (IsWandField_120437_1189 size_3)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_235986) (ExhaleHeap@@16 T@PolymorphicMapType_235986) (Mask@@26 T@PolymorphicMapType_236007) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@16 Mask@@26) (succHeap Heap@@44 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@16 Mask@@26))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_236007) (o_2@@19 T@Ref) (f_4@@19 T@Field_304770_304775) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| Mask@@27) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_120979_926171 f_4@@19))) (not (IsWandField_120979_926187 f_4@@19))) (<= (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| Mask@@27) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| Mask@@27) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_236007) (o_2@@20 T@Ref) (f_4@@20 T@Field_120979_53) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| Mask@@28) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_120979_53 f_4@@20))) (not (IsWandField_120979_53 f_4@@20))) (<= (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| Mask@@28) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| Mask@@28) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_236007) (o_2@@21 T@Ref) (f_4@@21 T@Field_120979_120448) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| Mask@@29) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_120979_120448 f_4@@21))) (not (IsWandField_120979_120448 f_4@@21))) (<= (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| Mask@@29) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| Mask@@29) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_236007) (o_2@@22 T@Ref) (f_4@@22 T@Field_120979_1189) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| Mask@@30) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_120979_1189 f_4@@22))) (not (IsWandField_120979_1189 f_4@@22))) (<= (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| Mask@@30) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| Mask@@30) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_236007) (o_2@@23 T@Ref) (f_4@@23 T@Field_304757_304758) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| Mask@@31) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_120979_120980 f_4@@23))) (not (IsWandField_120979_912496 f_4@@23))) (<= (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| Mask@@31) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| Mask@@31) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_236007) (o_2@@24 T@Ref) (f_4@@24 T@Field_244153_244158) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| Mask@@32) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_120940_925340 f_4@@24))) (not (IsWandField_120940_925356 f_4@@24))) (<= (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| Mask@@32) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| Mask@@32) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_236007) (o_2@@25 T@Ref) (f_4@@25 T@Field_120940_53) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| Mask@@33) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_120940_53 f_4@@25))) (not (IsWandField_120940_53 f_4@@25))) (<= (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| Mask@@33) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| Mask@@33) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_236007) (o_2@@26 T@Ref) (f_4@@26 T@Field_120940_120448) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| Mask@@34) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_120940_120448 f_4@@26))) (not (IsWandField_120940_120448 f_4@@26))) (<= (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| Mask@@34) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| Mask@@34) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_236007) (o_2@@27 T@Ref) (f_4@@27 T@Field_120940_1189) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| Mask@@35) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_120940_1189 f_4@@27))) (not (IsWandField_120940_1189 f_4@@27))) (<= (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| Mask@@35) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| Mask@@35) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_236007) (o_2@@28 T@Ref) (f_4@@28 T@Field_240944_240945) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| Mask@@36) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_120940_120941 f_4@@28))) (not (IsWandField_120940_911782 f_4@@28))) (<= (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| Mask@@36) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| Mask@@36) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_236007) (o_2@@29 T@Ref) (f_4@@29 T@Field_120437_243193) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| Mask@@37) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_120437_924509 f_4@@29))) (not (IsWandField_120437_924525 f_4@@29))) (<= (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| Mask@@37) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| Mask@@37) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_236007) (o_2@@30 T@Ref) (f_4@@30 T@Field_236046_53) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| Mask@@38) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_120437_53 f_4@@30))) (not (IsWandField_120437_53 f_4@@30))) (<= (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| Mask@@38) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| Mask@@38) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_236007) (o_2@@31 T@Ref) (f_4@@31 T@Field_236059_236060) ) (!  (=> (GoodMask Mask@@39) (and (>= (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| Mask@@39) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@39) AssumePermUpperBound) (not (IsPredicateField_120441_120442 f_4@@31))) (not (IsWandField_120441_120442 f_4@@31))) (<= (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| Mask@@39) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@39) (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| Mask@@39) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_236007) (o_2@@32 T@Ref) (f_4@@32 T@Field_239373_1189) ) (!  (=> (GoodMask Mask@@40) (and (>= (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| Mask@@40) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@40) AssumePermUpperBound) (not (IsPredicateField_120437_1189 f_4@@32))) (not (IsWandField_120437_1189 f_4@@32))) (<= (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| Mask@@40) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@40) (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| Mask@@40) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_236007) (o_2@@33 T@Ref) (f_4@@33 T@Field_120437_120941) ) (!  (=> (GoodMask Mask@@41) (and (>= (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| Mask@@41) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@41) AssumePermUpperBound) (not (IsPredicateField_120437_904804 f_4@@33))) (not (IsWandField_120437_911425 f_4@@33))) (<= (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| Mask@@41) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@41) (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| Mask@@41) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_236007) (o_2@@34 T@Ref) (f_4@@34 T@Field_243188_243193) ) (!  (=> (GoodMask Mask@@42) (and (>= (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| Mask@@42) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@42) AssumePermUpperBound) (not (IsPredicateField_120911_923706 f_4@@34))) (not (IsWandField_120911_923722 f_4@@34))) (<= (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| Mask@@42) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@42) (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| Mask@@42) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_236007) (o_2@@35 T@Ref) (f_4@@35 T@Field_120911_53) ) (!  (=> (GoodMask Mask@@43) (and (>= (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| Mask@@43) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@43) AssumePermUpperBound) (not (IsPredicateField_120911_53 f_4@@35))) (not (IsWandField_120911_53 f_4@@35))) (<= (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| Mask@@43) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@43) (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| Mask@@43) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_236007) (o_2@@36 T@Ref) (f_4@@36 T@Field_120911_120448) ) (!  (=> (GoodMask Mask@@44) (and (>= (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| Mask@@44) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@44) AssumePermUpperBound) (not (IsPredicateField_120911_120448 f_4@@36))) (not (IsWandField_120911_120448 f_4@@36))) (<= (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| Mask@@44) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@44) (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| Mask@@44) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_236007) (o_2@@37 T@Ref) (f_4@@37 T@Field_120911_1189) ) (!  (=> (GoodMask Mask@@45) (and (>= (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| Mask@@45) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@45) AssumePermUpperBound) (not (IsPredicateField_120911_1189 f_4@@37))) (not (IsWandField_120911_1189 f_4@@37))) (<= (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| Mask@@45) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@45) (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| Mask@@45) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_236007) (o_2@@38 T@Ref) (f_4@@38 T@Field_239929_239930) ) (!  (=> (GoodMask Mask@@46) (and (>= (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| Mask@@46) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@46) AssumePermUpperBound) (not (IsPredicateField_120911_120912 f_4@@38))) (not (IsWandField_120911_912139 f_4@@38))) (<= (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| Mask@@46) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@46) (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| Mask@@46) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_235986) (Mask@@47 T@PolymorphicMapType_236007) (this@@35 T@Ref) (last@@16 T@Ref) ) (!  (=> (and (state Heap@@45 Mask@@47) (< AssumeFunctionsAbove 5)) (= (presorted Heap@@45 this@@35 last@@16)  (and (=> (< 1 (segLength Heap@@45 this@@35 last@@16)) (and (<= (treeDegree Heap@@45 this@@35) (segDegree Heap@@45 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@45) this@@35 sibling) last@@16 0)) (|presorted'| Heap@@45 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@45) this@@35 sibling) last@@16))) (=> (and (< 2 (segLength Heap@@45 this@@35 last@@16)) (= (segDegree Heap@@45 this@@35 last@@16 0) (segDegree Heap@@45 this@@35 last@@16 1))) (< (segDegree Heap@@45 this@@35 last@@16 1) (segDegree Heap@@45 this@@35 last@@16 2))))))
 :qid |stdinbpl.1656:15|
 :skolemid |81|
 :pattern ( (state Heap@@45 Mask@@47) (presorted Heap@@45 this@@35 last@@16))
 :pattern ( (state Heap@@45 Mask@@47) (|presorted#triggerStateless| this@@35 last@@16) (|heapseg#trigger_120940| Heap@@45 (heapseg this@@35 last@@16)) (|heapseg#trigger_120940| Heap@@45 (heapseg this@@35 last@@16)) (|heapseg#trigger_120940| Heap@@45 (heapseg this@@35 last@@16)))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_236007) (o_2@@39 T@Ref) (f_4@@39 T@Field_304770_304775) ) (! (= (HasDirectPerm_120979_904559 Mask@@48 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| Mask@@48) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120979_904559 Mask@@48 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_236007) (o_2@@40 T@Ref) (f_4@@40 T@Field_120979_53) ) (! (= (HasDirectPerm_120979_53 Mask@@49 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| Mask@@49) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120979_53 Mask@@49 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_236007) (o_2@@41 T@Ref) (f_4@@41 T@Field_304757_304758) ) (! (= (HasDirectPerm_120979_120980 Mask@@50 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| Mask@@50) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120979_120980 Mask@@50 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_236007) (o_2@@42 T@Ref) (f_4@@42 T@Field_120979_120448) ) (! (= (HasDirectPerm_120979_120448 Mask@@51 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| Mask@@51) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120979_120448 Mask@@51 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_236007) (o_2@@43 T@Ref) (f_4@@43 T@Field_120979_1189) ) (! (= (HasDirectPerm_120979_1189 Mask@@52 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| Mask@@52) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120979_1189 Mask@@52 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_236007) (o_2@@44 T@Ref) (f_4@@44 T@Field_243188_243193) ) (! (= (HasDirectPerm_120911_903461 Mask@@53 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| Mask@@53) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120911_903461 Mask@@53 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_236007) (o_2@@45 T@Ref) (f_4@@45 T@Field_120911_53) ) (! (= (HasDirectPerm_120911_53 Mask@@54 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| Mask@@54) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120911_53 Mask@@54 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_236007) (o_2@@46 T@Ref) (f_4@@46 T@Field_239929_239930) ) (! (= (HasDirectPerm_120911_120912 Mask@@55 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| Mask@@55) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120911_120912 Mask@@55 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_236007) (o_2@@47 T@Ref) (f_4@@47 T@Field_120911_120448) ) (! (= (HasDirectPerm_120911_120448 Mask@@56 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| Mask@@56) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120911_120448 Mask@@56 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_236007) (o_2@@48 T@Ref) (f_4@@48 T@Field_120911_1189) ) (! (= (HasDirectPerm_120911_1189 Mask@@57 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| Mask@@57) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120911_1189 Mask@@57 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_236007) (o_2@@49 T@Ref) (f_4@@49 T@Field_244153_244158) ) (! (= (HasDirectPerm_120940_902363 Mask@@58 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| Mask@@58) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120940_902363 Mask@@58 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_236007) (o_2@@50 T@Ref) (f_4@@50 T@Field_120940_53) ) (! (= (HasDirectPerm_120940_53 Mask@@59 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| Mask@@59) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120940_53 Mask@@59 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_236007) (o_2@@51 T@Ref) (f_4@@51 T@Field_240944_240945) ) (! (= (HasDirectPerm_120940_120941 Mask@@60 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| Mask@@60) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120940_120941 Mask@@60 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_236007) (o_2@@52 T@Ref) (f_4@@52 T@Field_120940_120448) ) (! (= (HasDirectPerm_120940_120448 Mask@@61 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| Mask@@61) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120940_120448 Mask@@61 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@62 T@PolymorphicMapType_236007) (o_2@@53 T@Ref) (f_4@@53 T@Field_120940_1189) ) (! (= (HasDirectPerm_120940_1189 Mask@@62 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| Mask@@62) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120940_1189 Mask@@62 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@63 T@PolymorphicMapType_236007) (o_2@@54 T@Ref) (f_4@@54 T@Field_120437_243193) ) (! (= (HasDirectPerm_120437_901222 Mask@@63 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| Mask@@63) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120437_901222 Mask@@63 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@64 T@PolymorphicMapType_236007) (o_2@@55 T@Ref) (f_4@@55 T@Field_236046_53) ) (! (= (HasDirectPerm_120437_53 Mask@@64 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| Mask@@64) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120437_53 Mask@@64 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@65 T@PolymorphicMapType_236007) (o_2@@56 T@Ref) (f_4@@56 T@Field_120437_120941) ) (! (= (HasDirectPerm_120437_120941 Mask@@65 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| Mask@@65) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120437_120941 Mask@@65 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@66 T@PolymorphicMapType_236007) (o_2@@57 T@Ref) (f_4@@57 T@Field_236059_236060) ) (! (= (HasDirectPerm_120447_120448 Mask@@66 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| Mask@@66) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120447_120448 Mask@@66 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@67 T@PolymorphicMapType_236007) (o_2@@58 T@Ref) (f_4@@58 T@Field_239373_1189) ) (! (= (HasDirectPerm_120437_1189 Mask@@67 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| Mask@@67) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_120437_1189 Mask@@67 o_2@@58 f_4@@58))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_235986) (Mask@@68 T@PolymorphicMapType_236007) (this@@36 T@Ref) ) (!  (=> (and (state Heap@@46 Mask@@68) (< AssumeFunctionsAbove 0)) (= (treeSize Heap@@46 this@@36) (ite (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@46) this@@36 degree) 0) 1 (+ 1 (|segSize'| Heap@@46 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@46) this@@36 child) null)))))
 :qid |stdinbpl.497:15|
 :skolemid |35|
 :pattern ( (state Heap@@46 Mask@@68) (treeSize Heap@@46 this@@36))
 :pattern ( (state Heap@@46 Mask@@68) (|treeSize#triggerStateless| this@@36) (|tree#trigger_120911| Heap@@46 (tree_1 this@@36)))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.171:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_235986) (ExhaleHeap@@17 T@PolymorphicMapType_235986) (Mask@@69 T@PolymorphicMapType_236007) (o_153@@0 T@Ref) (f_161@@159 T@Field_304770_304775) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@17 Mask@@69) (=> (HasDirectPerm_120979_904559 Mask@@69 o_153@@0 f_161@@159) (= (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@47) o_153@@0 f_161@@159) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@17) o_153@@0 f_161@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@17 Mask@@69) (select (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| ExhaleHeap@@17) o_153@@0 f_161@@159))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_235986) (ExhaleHeap@@18 T@PolymorphicMapType_235986) (Mask@@70 T@PolymorphicMapType_236007) (o_153@@1 T@Ref) (f_161@@160 T@Field_120979_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@18 Mask@@70) (=> (HasDirectPerm_120979_53 Mask@@70 o_153@@1 f_161@@160) (= (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@48) o_153@@1 f_161@@160) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@18) o_153@@1 f_161@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@18 Mask@@70) (select (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| ExhaleHeap@@18) o_153@@1 f_161@@160))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_235986) (ExhaleHeap@@19 T@PolymorphicMapType_235986) (Mask@@71 T@PolymorphicMapType_236007) (o_153@@2 T@Ref) (f_161@@161 T@Field_304757_304758) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@19 Mask@@71) (=> (HasDirectPerm_120979_120980 Mask@@71 o_153@@2 f_161@@161) (= (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@49) o_153@@2 f_161@@161) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@19) o_153@@2 f_161@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@19 Mask@@71) (select (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| ExhaleHeap@@19) o_153@@2 f_161@@161))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_235986) (ExhaleHeap@@20 T@PolymorphicMapType_235986) (Mask@@72 T@PolymorphicMapType_236007) (o_153@@3 T@Ref) (f_161@@162 T@Field_120979_120448) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@20 Mask@@72) (=> (HasDirectPerm_120979_120448 Mask@@72 o_153@@3 f_161@@162) (= (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@50) o_153@@3 f_161@@162) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@20) o_153@@3 f_161@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@20 Mask@@72) (select (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| ExhaleHeap@@20) o_153@@3 f_161@@162))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_235986) (ExhaleHeap@@21 T@PolymorphicMapType_235986) (Mask@@73 T@PolymorphicMapType_236007) (o_153@@4 T@Ref) (f_161@@163 T@Field_120979_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@21 Mask@@73) (=> (HasDirectPerm_120979_1189 Mask@@73 o_153@@4 f_161@@163) (= (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@51) o_153@@4 f_161@@163) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@21) o_153@@4 f_161@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@21 Mask@@73) (select (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| ExhaleHeap@@21) o_153@@4 f_161@@163))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_235986) (ExhaleHeap@@22 T@PolymorphicMapType_235986) (Mask@@74 T@PolymorphicMapType_236007) (o_153@@5 T@Ref) (f_161@@164 T@Field_243188_243193) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@22 Mask@@74) (=> (HasDirectPerm_120911_903461 Mask@@74 o_153@@5 f_161@@164) (= (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@52) o_153@@5 f_161@@164) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@22) o_153@@5 f_161@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@22 Mask@@74) (select (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| ExhaleHeap@@22) o_153@@5 f_161@@164))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_235986) (ExhaleHeap@@23 T@PolymorphicMapType_235986) (Mask@@75 T@PolymorphicMapType_236007) (o_153@@6 T@Ref) (f_161@@165 T@Field_120911_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@23 Mask@@75) (=> (HasDirectPerm_120911_53 Mask@@75 o_153@@6 f_161@@165) (= (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@53) o_153@@6 f_161@@165) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@23) o_153@@6 f_161@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@23 Mask@@75) (select (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| ExhaleHeap@@23) o_153@@6 f_161@@165))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_235986) (ExhaleHeap@@24 T@PolymorphicMapType_235986) (Mask@@76 T@PolymorphicMapType_236007) (o_153@@7 T@Ref) (f_161@@166 T@Field_239929_239930) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@24 Mask@@76) (=> (HasDirectPerm_120911_120912 Mask@@76 o_153@@7 f_161@@166) (= (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@54) o_153@@7 f_161@@166) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@24) o_153@@7 f_161@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@24 Mask@@76) (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| ExhaleHeap@@24) o_153@@7 f_161@@166))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_235986) (ExhaleHeap@@25 T@PolymorphicMapType_235986) (Mask@@77 T@PolymorphicMapType_236007) (o_153@@8 T@Ref) (f_161@@167 T@Field_120911_120448) ) (!  (=> (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@25 Mask@@77) (=> (HasDirectPerm_120911_120448 Mask@@77 o_153@@8 f_161@@167) (= (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@55) o_153@@8 f_161@@167) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@25) o_153@@8 f_161@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@25 Mask@@77) (select (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| ExhaleHeap@@25) o_153@@8 f_161@@167))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_235986) (ExhaleHeap@@26 T@PolymorphicMapType_235986) (Mask@@78 T@PolymorphicMapType_236007) (o_153@@9 T@Ref) (f_161@@168 T@Field_120911_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@26 Mask@@78) (=> (HasDirectPerm_120911_1189 Mask@@78 o_153@@9 f_161@@168) (= (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@56) o_153@@9 f_161@@168) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@26) o_153@@9 f_161@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@26 Mask@@78) (select (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| ExhaleHeap@@26) o_153@@9 f_161@@168))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_235986) (ExhaleHeap@@27 T@PolymorphicMapType_235986) (Mask@@79 T@PolymorphicMapType_236007) (o_153@@10 T@Ref) (f_161@@169 T@Field_244153_244158) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@27 Mask@@79) (=> (HasDirectPerm_120940_902363 Mask@@79 o_153@@10 f_161@@169) (= (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@57) o_153@@10 f_161@@169) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@27) o_153@@10 f_161@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@27 Mask@@79) (select (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| ExhaleHeap@@27) o_153@@10 f_161@@169))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_235986) (ExhaleHeap@@28 T@PolymorphicMapType_235986) (Mask@@80 T@PolymorphicMapType_236007) (o_153@@11 T@Ref) (f_161@@170 T@Field_120940_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@28 Mask@@80) (=> (HasDirectPerm_120940_53 Mask@@80 o_153@@11 f_161@@170) (= (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@58) o_153@@11 f_161@@170) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@28) o_153@@11 f_161@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@28 Mask@@80) (select (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| ExhaleHeap@@28) o_153@@11 f_161@@170))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_235986) (ExhaleHeap@@29 T@PolymorphicMapType_235986) (Mask@@81 T@PolymorphicMapType_236007) (o_153@@12 T@Ref) (f_161@@171 T@Field_240944_240945) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@29 Mask@@81) (=> (HasDirectPerm_120940_120941 Mask@@81 o_153@@12 f_161@@171) (= (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@59) o_153@@12 f_161@@171) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@29) o_153@@12 f_161@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@29 Mask@@81) (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| ExhaleHeap@@29) o_153@@12 f_161@@171))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_235986) (ExhaleHeap@@30 T@PolymorphicMapType_235986) (Mask@@82 T@PolymorphicMapType_236007) (o_153@@13 T@Ref) (f_161@@172 T@Field_120940_120448) ) (!  (=> (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@30 Mask@@82) (=> (HasDirectPerm_120940_120448 Mask@@82 o_153@@13 f_161@@172) (= (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@60) o_153@@13 f_161@@172) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@30) o_153@@13 f_161@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@30 Mask@@82) (select (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| ExhaleHeap@@30) o_153@@13 f_161@@172))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_235986) (ExhaleHeap@@31 T@PolymorphicMapType_235986) (Mask@@83 T@PolymorphicMapType_236007) (o_153@@14 T@Ref) (f_161@@173 T@Field_120940_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@31 Mask@@83) (=> (HasDirectPerm_120940_1189 Mask@@83 o_153@@14 f_161@@173) (= (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@61) o_153@@14 f_161@@173) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@31) o_153@@14 f_161@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@31 Mask@@83) (select (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| ExhaleHeap@@31) o_153@@14 f_161@@173))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_235986) (ExhaleHeap@@32 T@PolymorphicMapType_235986) (Mask@@84 T@PolymorphicMapType_236007) (o_153@@15 T@Ref) (f_161@@174 T@Field_120437_243193) ) (!  (=> (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@32 Mask@@84) (=> (HasDirectPerm_120437_901222 Mask@@84 o_153@@15 f_161@@174) (= (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@62) o_153@@15 f_161@@174) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@32) o_153@@15 f_161@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@32 Mask@@84) (select (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| ExhaleHeap@@32) o_153@@15 f_161@@174))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_235986) (ExhaleHeap@@33 T@PolymorphicMapType_235986) (Mask@@85 T@PolymorphicMapType_236007) (o_153@@16 T@Ref) (f_161@@175 T@Field_236046_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@33 Mask@@85) (=> (HasDirectPerm_120437_53 Mask@@85 o_153@@16 f_161@@175) (= (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@63) o_153@@16 f_161@@175) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@33) o_153@@16 f_161@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@33 Mask@@85) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| ExhaleHeap@@33) o_153@@16 f_161@@175))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_235986) (ExhaleHeap@@34 T@PolymorphicMapType_235986) (Mask@@86 T@PolymorphicMapType_236007) (o_153@@17 T@Ref) (f_161@@176 T@Field_120437_120941) ) (!  (=> (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@34 Mask@@86) (=> (HasDirectPerm_120437_120941 Mask@@86 o_153@@17 f_161@@176) (= (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@64) o_153@@17 f_161@@176) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@34) o_153@@17 f_161@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@34 Mask@@86) (select (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| ExhaleHeap@@34) o_153@@17 f_161@@176))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_235986) (ExhaleHeap@@35 T@PolymorphicMapType_235986) (Mask@@87 T@PolymorphicMapType_236007) (o_153@@18 T@Ref) (f_161@@177 T@Field_236059_236060) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@35 Mask@@87) (=> (HasDirectPerm_120447_120448 Mask@@87 o_153@@18 f_161@@177) (= (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@65) o_153@@18 f_161@@177) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@35) o_153@@18 f_161@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@35 Mask@@87) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| ExhaleHeap@@35) o_153@@18 f_161@@177))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_235986) (ExhaleHeap@@36 T@PolymorphicMapType_235986) (Mask@@88 T@PolymorphicMapType_236007) (o_153@@19 T@Ref) (f_161@@178 T@Field_239373_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@36 Mask@@88) (=> (HasDirectPerm_120437_1189 Mask@@88 o_153@@19 f_161@@178) (= (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@66) o_153@@19 f_161@@178) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@36) o_153@@19 f_161@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@36 Mask@@88) (select (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| ExhaleHeap@@36) o_153@@19 f_161@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_304770_304775) ) (! (= (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_120979_53) ) (! (= (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_120979_120448) ) (! (= (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_120979_1189) ) (! (= (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_304757_304758) ) (! (= (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_244153_244158) ) (! (= (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_120940_53) ) (! (= (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_120940_120448) ) (! (= (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_120940_1189) ) (! (= (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_240944_240945) ) (! (= (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_120437_243193) ) (! (= (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_236046_53) ) (! (= (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_236059_236060) ) (! (= (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_239373_1189) ) (! (= (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_120437_120941) ) (! (= (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_243188_243193) ) (! (= (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_120911_53) ) (! (= (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_120911_120448) ) (! (= (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_120911_1189) ) (! (= (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_239929_239930) ) (! (= (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_235986) (this@@37 T@Ref) (last@@17 T@Ref) ) (!  (and (= (segLength Heap@@67 this@@37 last@@17) (|segLength'| Heap@@67 this@@37 last@@17)) (dummyFunction_1482 (|segLength#triggerStateless| this@@37 last@@17)))
 :qid |stdinbpl.761:15|
 :skolemid |43|
 :pattern ( (segLength Heap@@67 this@@37 last@@17))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_235986) (this@@38 T@Ref) (last@@18 T@Ref) ) (!  (and (= (segSize Heap@@68 this@@38 last@@18) (|segSize'| Heap@@68 this@@38 last@@18)) (dummyFunction_1482 (|segSize#triggerStateless| this@@38 last@@18)))
 :qid |stdinbpl.932:15|
 :skolemid |52|
 :pattern ( (segSize Heap@@68 this@@38 last@@18))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_235986) (this@@39 T@Ref) (last@@19 T@Ref) ) (!  (and (= (segParent Heap@@69 this@@39 last@@19) (|segParent'| Heap@@69 this@@39 last@@19)) (dummyFunction_120568 (|segParent#triggerStateless| this@@39 last@@19)))
 :qid |stdinbpl.1292:15|
 :skolemid |66|
 :pattern ( (segParent Heap@@69 this@@39 last@@19))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_236007) (SummandMask1 T@PolymorphicMapType_236007) (SummandMask2 T@PolymorphicMapType_236007) (o_2@@79 T@Ref) (f_4@@79 T@Field_304770_304775) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_236007_120979_921567#PolymorphicMapType_236007| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_236007) (SummandMask1@@0 T@PolymorphicMapType_236007) (SummandMask2@@0 T@PolymorphicMapType_236007) (o_2@@80 T@Ref) (f_4@@80 T@Field_120979_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_236007_120979_53#PolymorphicMapType_236007| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_236007) (SummandMask1@@1 T@PolymorphicMapType_236007) (SummandMask2@@1 T@PolymorphicMapType_236007) (o_2@@81 T@Ref) (f_4@@81 T@Field_120979_120448) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_236007_120979_120448#PolymorphicMapType_236007| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_236007) (SummandMask1@@2 T@PolymorphicMapType_236007) (SummandMask2@@2 T@PolymorphicMapType_236007) (o_2@@82 T@Ref) (f_4@@82 T@Field_120979_1189) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_236007_120979_1189#PolymorphicMapType_236007| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_236007) (SummandMask1@@3 T@PolymorphicMapType_236007) (SummandMask2@@3 T@PolymorphicMapType_236007) (o_2@@83 T@Ref) (f_4@@83 T@Field_304757_304758) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_236007_120979_120980#PolymorphicMapType_236007| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_236007) (SummandMask1@@4 T@PolymorphicMapType_236007) (SummandMask2@@4 T@PolymorphicMapType_236007) (o_2@@84 T@Ref) (f_4@@84 T@Field_244153_244158) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_236007_120940_921156#PolymorphicMapType_236007| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_236007) (SummandMask1@@5 T@PolymorphicMapType_236007) (SummandMask2@@5 T@PolymorphicMapType_236007) (o_2@@85 T@Ref) (f_4@@85 T@Field_120940_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_236007_120940_53#PolymorphicMapType_236007| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_236007) (SummandMask1@@6 T@PolymorphicMapType_236007) (SummandMask2@@6 T@PolymorphicMapType_236007) (o_2@@86 T@Ref) (f_4@@86 T@Field_120940_120448) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_236007_120940_120448#PolymorphicMapType_236007| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_236007) (SummandMask1@@7 T@PolymorphicMapType_236007) (SummandMask2@@7 T@PolymorphicMapType_236007) (o_2@@87 T@Ref) (f_4@@87 T@Field_120940_1189) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_236007_120940_1189#PolymorphicMapType_236007| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_236007) (SummandMask1@@8 T@PolymorphicMapType_236007) (SummandMask2@@8 T@PolymorphicMapType_236007) (o_2@@88 T@Ref) (f_4@@88 T@Field_240944_240945) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_236007_120940_120941#PolymorphicMapType_236007| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_236007) (SummandMask1@@9 T@PolymorphicMapType_236007) (SummandMask2@@9 T@PolymorphicMapType_236007) (o_2@@89 T@Ref) (f_4@@89 T@Field_120437_243193) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_236007_120437_920745#PolymorphicMapType_236007| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_236007) (SummandMask1@@10 T@PolymorphicMapType_236007) (SummandMask2@@10 T@PolymorphicMapType_236007) (o_2@@90 T@Ref) (f_4@@90 T@Field_236046_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_236007_120437_53#PolymorphicMapType_236007| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_236007) (SummandMask1@@11 T@PolymorphicMapType_236007) (SummandMask2@@11 T@PolymorphicMapType_236007) (o_2@@91 T@Ref) (f_4@@91 T@Field_236059_236060) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_236007_120447_120448#PolymorphicMapType_236007| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_236007) (SummandMask1@@12 T@PolymorphicMapType_236007) (SummandMask2@@12 T@PolymorphicMapType_236007) (o_2@@92 T@Ref) (f_4@@92 T@Field_239373_1189) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_236007_120437_1189#PolymorphicMapType_236007| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_236007) (SummandMask1@@13 T@PolymorphicMapType_236007) (SummandMask2@@13 T@PolymorphicMapType_236007) (o_2@@93 T@Ref) (f_4@@93 T@Field_120437_120941) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_236007_120437_120912#PolymorphicMapType_236007| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_236007) (SummandMask1@@14 T@PolymorphicMapType_236007) (SummandMask2@@14 T@PolymorphicMapType_236007) (o_2@@94 T@Ref) (f_4@@94 T@Field_243188_243193) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_236007_120911_920346#PolymorphicMapType_236007| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_236007) (SummandMask1@@15 T@PolymorphicMapType_236007) (SummandMask2@@15 T@PolymorphicMapType_236007) (o_2@@95 T@Ref) (f_4@@95 T@Field_120911_53) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_236007_120911_53#PolymorphicMapType_236007| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_236007) (SummandMask1@@16 T@PolymorphicMapType_236007) (SummandMask2@@16 T@PolymorphicMapType_236007) (o_2@@96 T@Ref) (f_4@@96 T@Field_120911_120448) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_236007_120911_120448#PolymorphicMapType_236007| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_236007) (SummandMask1@@17 T@PolymorphicMapType_236007) (SummandMask2@@17 T@PolymorphicMapType_236007) (o_2@@97 T@Ref) (f_4@@97 T@Field_120911_1189) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_236007_120911_1189#PolymorphicMapType_236007| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_236007) (SummandMask1@@18 T@PolymorphicMapType_236007) (SummandMask2@@18 T@PolymorphicMapType_236007) (o_2@@98 T@Ref) (f_4@@98 T@Field_239929_239930) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_236007_120911_120912#PolymorphicMapType_236007| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_235986) (Mask@@89 T@PolymorphicMapType_236007) (this@@40 T@Ref) (last@@20 T@Ref) ) (!  (=> (and (state Heap@@70 Mask@@89) (or (< AssumeFunctionsAbove 3) (|sorted#trigger| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@70) null (heapseg this@@40 last@@20)) this@@40 last@@20))) (=> (|sorted'| Heap@@70 this@@40 last@@20) (presorted Heap@@70 this@@40 last@@20)))
 :qid |stdinbpl.1449:15|
 :skolemid |76|
 :pattern ( (state Heap@@70 Mask@@89) (|sorted'| Heap@@70 this@@40 last@@20))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_235986) (this@@41 T@Ref) (last@@21 T@Ref) (index@@0 Int) ) (!  (and (= (segDegree Heap@@71 this@@41 last@@21 index@@0) (|segDegree'| Heap@@71 this@@41 last@@21 index@@0)) (dummyFunction_1482 (|segDegree#triggerStateless| this@@41 last@@21 index@@0)))
 :qid |stdinbpl.1101:15|
 :skolemid |59|
 :pattern ( (segDegree Heap@@71 this@@41 last@@21 index@@0))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_235986) (Mask@@90 T@PolymorphicMapType_236007) (this@@42 T@Ref) (last@@22 T@Ref) (index@@1 Int) ) (!  (=> (state Heap@@72 Mask@@90) (= (|segDegree'| Heap@@72 this@@42 last@@22 index@@1) (|segDegree#frame| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@72) null (heapseg this@@42 last@@22)) this@@42 last@@22 index@@1)))
 :qid |stdinbpl.1118:15|
 :skolemid |62|
 :pattern ( (state Heap@@72 Mask@@90) (|segDegree'| Heap@@72 this@@42 last@@22 index@@1))
 :pattern ( (state Heap@@72 Mask@@90) (|segDegree#triggerStateless| this@@42 last@@22 index@@1) (|heapseg#trigger_120940| Heap@@72 (heapseg this@@42 last@@22)) (|heapseg#trigger_120940| Heap@@72 (heapseg this@@42 last@@22)))
)))
(assert (forall ((this@@43 T@Ref) (last@@23 T@Ref) ) (! (= (getPredWandId_120940_120941 (heapseg this@@43 last@@23)) 1)
 :qid |stdinbpl.2296:15|
 :skolemid |99|
 :pattern ( (heapseg this@@43 last@@23))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_235986) (Mask@@91 T@PolymorphicMapType_236007) (this@@44 T@Ref) ) (!  (=> (state Heap@@73 Mask@@91) (= (|treeKey'| Heap@@73 this@@44) (|treeKey#frame| (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@73) null (tree_1 this@@44)) this@@44)))
 :qid |stdinbpl.238:15|
 :skolemid |25|
 :pattern ( (state Heap@@73 Mask@@91) (|treeKey'| Heap@@73 this@@44))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_235986) (Mask@@92 T@PolymorphicMapType_236007) (this@@45 T@Ref) ) (!  (=> (state Heap@@74 Mask@@92) (= (|treeDegree'| Heap@@74 this@@45) (|treeDegree#frame| (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@74) null (tree_1 this@@45)) this@@45)))
 :qid |stdinbpl.365:15|
 :skolemid |30|
 :pattern ( (state Heap@@74 Mask@@92) (|treeDegree'| Heap@@74 this@@45))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_235986) (Mask@@93 T@PolymorphicMapType_236007) (this@@46 T@Ref) ) (!  (=> (state Heap@@75 Mask@@93) (= (|treeSize'| Heap@@75 this@@46) (|treeSize#frame| (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@75) null (tree_1 this@@46)) this@@46)))
 :qid |stdinbpl.504:15|
 :skolemid |36|
 :pattern ( (state Heap@@75 Mask@@93) (|treeSize'| Heap@@75 this@@46))
 :pattern ( (state Heap@@75 Mask@@93) (|treeSize#triggerStateless| this@@46) (|tree#trigger_120911| Heap@@75 (tree_1 this@@46)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_235986) (Mask@@94 T@PolymorphicMapType_236007) (this@@47 T@Ref) ) (!  (=> (state Heap@@76 Mask@@94) (= (|treeParent'| Heap@@76 this@@47) (|treeParent#frame| (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@76) null (tree_1 this@@47)) this@@47)))
 :qid |stdinbpl.651:15|
 :skolemid |41|
 :pattern ( (state Heap@@76 Mask@@94) (|treeParent'| Heap@@76 this@@47))
)))
(assert (forall ((this@@48 T@Ref) ) (! (= (getPredWandId_120911_120912 (tree_1 this@@48)) 0)
 :qid |stdinbpl.2114:15|
 :skolemid |93|
 :pattern ( (tree_1 this@@48))
)))
(assert (forall ((this@@49 T@Ref) ) (! (= (getPredWandId_120979_120980 (heap_1 this@@49)) 2)
 :qid |stdinbpl.2409:15|
 :skolemid |105|
 :pattern ( (heap_1 this@@49))
)))
(assert (forall ((this@@50 T@Ref) (last@@24 T@Ref) ) (! (= (PredicateMaskField_120940 (heapseg this@@50 last@@24)) (|heapseg#sm| this@@50 last@@24))
 :qid |stdinbpl.2288:15|
 :skolemid |97|
 :pattern ( (PredicateMaskField_120940 (heapseg this@@50 last@@24)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_235986) (Mask@@95 T@PolymorphicMapType_236007) (this@@51 T@Ref) (last@@25 T@Ref) ) (!  (=> (and (state Heap@@77 Mask@@95) (or (< AssumeFunctionsAbove 0) (|segSize#trigger| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@77) null (heapseg this@@51 last@@25)) this@@51 last@@25))) (=> (= this@@51 last@@25) (= (|segSize'| Heap@@77 this@@51 last@@25) 0)))
 :qid |stdinbpl.955:15|
 :skolemid |56|
 :pattern ( (state Heap@@77 Mask@@95) (|segSize'| Heap@@77 this@@51 last@@25))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_235986) (Mask@@96 T@PolymorphicMapType_236007) (this@@52 T@Ref) (last@@26 T@Ref) ) (!  (=> (and (state Heap@@78 Mask@@96) (or (< AssumeFunctionsAbove 8) (|segLength#trigger| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@78) null (heapseg this@@52 last@@26)) this@@52 last@@26))) (<= 0 (|segLength'| Heap@@78 this@@52 last@@26)))
 :qid |stdinbpl.784:15|
 :skolemid |47|
 :pattern ( (state Heap@@78 Mask@@96) (|segLength'| Heap@@78 this@@52 last@@26))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_235986) (Mask@@97 T@PolymorphicMapType_236007) (this@@53 T@Ref) ) (!  (=> (and (state Heap@@79 Mask@@97) (or (< AssumeFunctionsAbove 9) (|treeDegree#trigger| (select (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@79) null (tree_1 this@@53)) this@@53))) (<= 0 (|treeDegree'| Heap@@79 this@@53)))
 :qid |stdinbpl.371:15|
 :skolemid |31|
 :pattern ( (state Heap@@79 Mask@@97) (|treeDegree'| Heap@@79 this@@53))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_235986) (o_152 T@Ref) (f_162 T@Field_304770_304775) (v T@PolymorphicMapType_236535) ) (! (succHeap Heap@@80 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@80) (store (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@80) o_152 f_162 v) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@80)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@80) (store (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@80) o_152 f_162 v) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@80) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@80)))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_235986) (o_152@@0 T@Ref) (f_162@@0 T@Field_304757_304758) (v@@0 T@FrameType) ) (! (succHeap Heap@@81 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@81) (store (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@81) o_152@@0 f_162@@0 v@@0) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@81)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@81) (store (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@81) o_152@@0 f_162@@0 v@@0) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@81) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@81)))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_235986) (o_152@@1 T@Ref) (f_162@@1 T@Field_120979_1189) (v@@1 Int) ) (! (succHeap Heap@@82 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@82) (store (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@82) o_152@@1 f_162@@1 v@@1) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@82)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@82) (store (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@82) o_152@@1 f_162@@1 v@@1) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@82) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@82)))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_235986) (o_152@@2 T@Ref) (f_162@@2 T@Field_120979_120448) (v@@2 T@Ref) ) (! (succHeap Heap@@83 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@83) (store (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@83) o_152@@2 f_162@@2 v@@2) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@83)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@83) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@83) (store (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@83) o_152@@2 f_162@@2 v@@2) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@83)))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_235986) (o_152@@3 T@Ref) (f_162@@3 T@Field_120979_53) (v@@3 Bool) ) (! (succHeap Heap@@84 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@84) (store (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@84) o_152@@3 f_162@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@84) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@84) (store (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@84) o_152@@3 f_162@@3 v@@3)))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_235986) (o_152@@4 T@Ref) (f_162@@4 T@Field_244153_244158) (v@@4 T@PolymorphicMapType_236535) ) (! (succHeap Heap@@85 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@85) (store (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@85) o_152@@4 f_162@@4 v@@4) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@85)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@85) (store (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@85) o_152@@4 f_162@@4 v@@4) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@85) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@85)))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_235986) (o_152@@5 T@Ref) (f_162@@5 T@Field_240944_240945) (v@@5 T@FrameType) ) (! (succHeap Heap@@86 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@86) (store (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@86) o_152@@5 f_162@@5 v@@5) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@86)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@86) (store (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@86) o_152@@5 f_162@@5 v@@5) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@86) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@86)))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_235986) (o_152@@6 T@Ref) (f_162@@6 T@Field_120940_1189) (v@@6 Int) ) (! (succHeap Heap@@87 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@87) (store (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@87) o_152@@6 f_162@@6 v@@6) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@87)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@87) (store (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@87) o_152@@6 f_162@@6 v@@6) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@87) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@87)))
)))
(assert (forall ((Heap@@88 T@PolymorphicMapType_235986) (o_152@@7 T@Ref) (f_162@@7 T@Field_120940_120448) (v@@7 T@Ref) ) (! (succHeap Heap@@88 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@88) (store (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@88) o_152@@7 f_162@@7 v@@7) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@88)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@88) (store (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@88) o_152@@7 f_162@@7 v@@7) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@88) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@88)))
)))
(assert (forall ((Heap@@89 T@PolymorphicMapType_235986) (o_152@@8 T@Ref) (f_162@@8 T@Field_120940_53) (v@@8 Bool) ) (! (succHeap Heap@@89 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@89) (store (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@89) o_152@@8 f_162@@8 v@@8) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@89)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@89) (store (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@89) o_152@@8 f_162@@8 v@@8) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@89) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@89)))
)))
(assert (forall ((Heap@@90 T@PolymorphicMapType_235986) (o_152@@9 T@Ref) (f_162@@9 T@Field_243188_243193) (v@@9 T@PolymorphicMapType_236535) ) (! (succHeap Heap@@90 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@90) (store (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@90) o_152@@9 f_162@@9 v@@9) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@90)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@90) (store (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@90) o_152@@9 f_162@@9 v@@9) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@90) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@90)))
)))
(assert (forall ((Heap@@91 T@PolymorphicMapType_235986) (o_152@@10 T@Ref) (f_162@@10 T@Field_239929_239930) (v@@10 T@FrameType) ) (! (succHeap Heap@@91 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@91) (store (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@91) o_152@@10 f_162@@10 v@@10) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@91)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@91) (store (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@91) o_152@@10 f_162@@10 v@@10) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@91) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@91)))
)))
(assert (forall ((Heap@@92 T@PolymorphicMapType_235986) (o_152@@11 T@Ref) (f_162@@11 T@Field_120911_1189) (v@@11 Int) ) (! (succHeap Heap@@92 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@92) (store (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@92) o_152@@11 f_162@@11 v@@11) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@92)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@92) (store (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@92) o_152@@11 f_162@@11 v@@11) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@92) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@92)))
)))
(assert (forall ((Heap@@93 T@PolymorphicMapType_235986) (o_152@@12 T@Ref) (f_162@@12 T@Field_120911_120448) (v@@12 T@Ref) ) (! (succHeap Heap@@93 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@93) (store (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@93) o_152@@12 f_162@@12 v@@12) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@93)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@93) (store (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@93) o_152@@12 f_162@@12 v@@12) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@93) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@93)))
)))
(assert (forall ((Heap@@94 T@PolymorphicMapType_235986) (o_152@@13 T@Ref) (f_162@@13 T@Field_120911_53) (v@@13 Bool) ) (! (succHeap Heap@@94 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@94) (store (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@94) o_152@@13 f_162@@13 v@@13) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@94)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@94) (store (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@94) o_152@@13 f_162@@13 v@@13) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@94) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@94)))
)))
(assert (forall ((Heap@@95 T@PolymorphicMapType_235986) (o_152@@14 T@Ref) (f_162@@14 T@Field_120437_243193) (v@@14 T@PolymorphicMapType_236535) ) (! (succHeap Heap@@95 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@95) (store (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@95) o_152@@14 f_162@@14 v@@14) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@95)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@95) (store (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@95) o_152@@14 f_162@@14 v@@14) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@95) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@95)))
)))
(assert (forall ((Heap@@96 T@PolymorphicMapType_235986) (o_152@@15 T@Ref) (f_162@@15 T@Field_120437_120941) (v@@15 T@FrameType) ) (! (succHeap Heap@@96 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@96) (store (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@96) o_152@@15 f_162@@15 v@@15) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@96)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@96) (store (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@96) o_152@@15 f_162@@15 v@@15) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@96) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@96)))
)))
(assert (forall ((Heap@@97 T@PolymorphicMapType_235986) (o_152@@16 T@Ref) (f_162@@16 T@Field_239373_1189) (v@@16 Int) ) (! (succHeap Heap@@97 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@97) (store (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@97) o_152@@16 f_162@@16 v@@16) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@97)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@97) (store (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@97) o_152@@16 f_162@@16 v@@16) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@97) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@97)))
)))
(assert (forall ((Heap@@98 T@PolymorphicMapType_235986) (o_152@@17 T@Ref) (f_162@@17 T@Field_236059_236060) (v@@17 T@Ref) ) (! (succHeap Heap@@98 (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@98) (store (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@98) o_152@@17 f_162@@17 v@@17) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@98)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@98) (store (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@98) o_152@@17 f_162@@17 v@@17) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@98) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@98)))
)))
(assert (forall ((Heap@@99 T@PolymorphicMapType_235986) (o_152@@18 T@Ref) (f_162@@18 T@Field_236046_53) (v@@18 Bool) ) (! (succHeap Heap@@99 (PolymorphicMapType_235986 (store (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@99) o_152@@18 f_162@@18 v@@18) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@99)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_235986 (store (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@99) o_152@@18 f_162@@18 v@@18) (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120437_1189#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120911_120912#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120915_243280#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120945_244194#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120979_120980#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120983_898912#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120437_120941#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120437_901264#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120940_1189#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120940_120448#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120940_53#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120911_1189#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120911_120448#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120911_53#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120979_1189#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120979_120448#PolymorphicMapType_235986| Heap@@99) (|PolymorphicMapType_235986_120979_53#PolymorphicMapType_235986| Heap@@99)))
)))
(assert (forall ((this@@54 T@Ref) ) (! (= (PredicateMaskField_120911 (tree_1 this@@54)) (|tree#sm| this@@54))
 :qid |stdinbpl.2106:15|
 :skolemid |91|
 :pattern ( (PredicateMaskField_120911 (tree_1 this@@54)))
)))
(assert (forall ((this@@55 T@Ref) ) (! (= (PredicateMaskField_120979 (heap_1 this@@55)) (|heap#sm| this@@55))
 :qid |stdinbpl.2401:15|
 :skolemid |103|
 :pattern ( (PredicateMaskField_120979 (heap_1 this@@55)))
)))
(assert (forall ((Heap@@100 T@PolymorphicMapType_235986) (Mask@@98 T@PolymorphicMapType_236007) (this@@56 T@Ref) (last@@27 T@Ref) ) (!  (=> (and (state Heap@@100 Mask@@98) (< AssumeFunctionsAbove 3)) (= (sorted_1 Heap@@100 this@@56 last@@27)  (=> (< 1 (segLength Heap@@100 this@@56 last@@27)) (and (< (treeDegree Heap@@100 this@@56) (segDegree Heap@@100 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@100) this@@56 sibling) last@@27 0)) (|sorted'| Heap@@100 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@100) this@@56 sibling) last@@27)))))
 :qid |stdinbpl.1436:15|
 :skolemid |74|
 :pattern ( (state Heap@@100 Mask@@98) (sorted_1 Heap@@100 this@@56 last@@27))
 :pattern ( (state Heap@@100 Mask@@98) (|sorted#triggerStateless| this@@56 last@@27) (|heapseg#trigger_120940| Heap@@100 (heapseg this@@56 last@@27)) (|heapseg#trigger_120940| Heap@@100 (heapseg this@@56 last@@27)) (|heapseg#trigger_120940| Heap@@100 (heapseg this@@56 last@@27)))
)))
(assert (forall ((Heap@@101 T@PolymorphicMapType_235986) (Mask@@99 T@PolymorphicMapType_236007) (this@@57 T@Ref) (last@@28 T@Ref) (index@@2 Int) ) (!  (=> (and (state Heap@@101 Mask@@99) (or (< AssumeFunctionsAbove 7) (|segDegree#trigger| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@101) null (heapseg this@@57 last@@28)) this@@57 last@@28 index@@2))) (=> (and (<= 0 index@@2) (< index@@2 (segLength Heap@@101 this@@57 last@@28))) (<= 0 (|segDegree'| Heap@@101 this@@57 last@@28 index@@2))))
 :qid |stdinbpl.1124:15|
 :skolemid |63|
 :pattern ( (state Heap@@101 Mask@@99) (|segDegree'| Heap@@101 this@@57 last@@28 index@@2))
)))
(assert (forall ((o_152@@19 T@Ref) (f_160 T@Field_236059_236060) (Heap@@102 T@PolymorphicMapType_235986) ) (!  (=> (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@102) o_152@@19 $allocated) (select (|PolymorphicMapType_235986_120309_53#PolymorphicMapType_235986| Heap@@102) (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@102) o_152@@19 f_160) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@102) o_152@@19 f_160))
)))
(assert (forall ((p@@4 T@Field_120437_120941) (v_1@@3 T@FrameType) (q T@Field_120437_120941) (w@@3 T@FrameType) (r T@Field_304757_304758) (u T@FrameType) ) (!  (=> (and (InsidePredicate_236046_236046 p@@4 v_1@@3 q w@@3) (InsidePredicate_236046_304757 q w@@3 r u)) (InsidePredicate_236046_304757 p@@4 v_1@@3 r u))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_236046 p@@4 v_1@@3 q w@@3) (InsidePredicate_236046_304757 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_120437_120941) (v_1@@4 T@FrameType) (q@@0 T@Field_120437_120941) (w@@4 T@FrameType) (r@@0 T@Field_120437_120941) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_236046 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_236046_236046 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_236046_236046 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_236046 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_236046_236046 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_120437_120941) (v_1@@5 T@FrameType) (q@@1 T@Field_120437_120941) (w@@5 T@FrameType) (r@@1 T@Field_239929_239930) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_236046 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_236046_120911 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_236046_120911 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_236046 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_236046_120911 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_120437_120941) (v_1@@6 T@FrameType) (q@@2 T@Field_120437_120941) (w@@6 T@FrameType) (r@@2 T@Field_240944_240945) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_236046 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_236046_120940 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_236046_120940 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_236046 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_236046_120940 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_120437_120941) (v_1@@7 T@FrameType) (q@@3 T@Field_304757_304758) (w@@7 T@FrameType) (r@@3 T@Field_304757_304758) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_304757 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_120979_304757 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_236046_304757 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_304757 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_120979_304757 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_120437_120941) (v_1@@8 T@FrameType) (q@@4 T@Field_304757_304758) (w@@8 T@FrameType) (r@@4 T@Field_120437_120941) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_304757 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_120979_236046 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_236046_236046 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_304757 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_120979_236046 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_120437_120941) (v_1@@9 T@FrameType) (q@@5 T@Field_304757_304758) (w@@9 T@FrameType) (r@@5 T@Field_239929_239930) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_304757 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_120979_120911 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_236046_120911 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_304757 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_120979_120911 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_120437_120941) (v_1@@10 T@FrameType) (q@@6 T@Field_304757_304758) (w@@10 T@FrameType) (r@@6 T@Field_240944_240945) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_304757 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_120979_120940 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_236046_120940 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_304757 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_120979_120940 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_120437_120941) (v_1@@11 T@FrameType) (q@@7 T@Field_239929_239930) (w@@11 T@FrameType) (r@@7 T@Field_304757_304758) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_120911 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_120911_304757 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_236046_304757 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_120911 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_120911_304757 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_120437_120941) (v_1@@12 T@FrameType) (q@@8 T@Field_239929_239930) (w@@12 T@FrameType) (r@@8 T@Field_120437_120941) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_120911 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_120911_236046 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_236046_236046 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_120911 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_120911_236046 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_120437_120941) (v_1@@13 T@FrameType) (q@@9 T@Field_239929_239930) (w@@13 T@FrameType) (r@@9 T@Field_239929_239930) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_120911 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_120911_120911 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_236046_120911 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_120911 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_120911_120911 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_120437_120941) (v_1@@14 T@FrameType) (q@@10 T@Field_239929_239930) (w@@14 T@FrameType) (r@@10 T@Field_240944_240945) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_120911 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_120911_120940 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_236046_120940 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_120911 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_120911_120940 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_120437_120941) (v_1@@15 T@FrameType) (q@@11 T@Field_240944_240945) (w@@15 T@FrameType) (r@@11 T@Field_304757_304758) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_120940 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_120940_304757 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_236046_304757 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_120940 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_120940_304757 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_120437_120941) (v_1@@16 T@FrameType) (q@@12 T@Field_240944_240945) (w@@16 T@FrameType) (r@@12 T@Field_120437_120941) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_120940 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_120940_236046 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_236046_236046 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_120940 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_120940_236046 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_120437_120941) (v_1@@17 T@FrameType) (q@@13 T@Field_240944_240945) (w@@17 T@FrameType) (r@@13 T@Field_239929_239930) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_120940 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_120940_120911 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_236046_120911 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_120940 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_120940_120911 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_120437_120941) (v_1@@18 T@FrameType) (q@@14 T@Field_240944_240945) (w@@18 T@FrameType) (r@@14 T@Field_240944_240945) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_236046_120940 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_120940_120940 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_236046_120940 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_236046_120940 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_120940_120940 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_304757_304758) (v_1@@19 T@FrameType) (q@@15 T@Field_120437_120941) (w@@19 T@FrameType) (r@@15 T@Field_304757_304758) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_236046 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_236046_304757 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_120979_304757 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_236046 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_236046_304757 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_304757_304758) (v_1@@20 T@FrameType) (q@@16 T@Field_120437_120941) (w@@20 T@FrameType) (r@@16 T@Field_120437_120941) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_236046 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_236046_236046 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_120979_236046 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_236046 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_236046_236046 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_304757_304758) (v_1@@21 T@FrameType) (q@@17 T@Field_120437_120941) (w@@21 T@FrameType) (r@@17 T@Field_239929_239930) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_236046 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_236046_120911 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_120979_120911 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_236046 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_236046_120911 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_304757_304758) (v_1@@22 T@FrameType) (q@@18 T@Field_120437_120941) (w@@22 T@FrameType) (r@@18 T@Field_240944_240945) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_236046 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_236046_120940 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_120979_120940 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_236046 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_236046_120940 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_304757_304758) (v_1@@23 T@FrameType) (q@@19 T@Field_304757_304758) (w@@23 T@FrameType) (r@@19 T@Field_304757_304758) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_304757 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_120979_304757 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_120979_304757 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_304757 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_120979_304757 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_304757_304758) (v_1@@24 T@FrameType) (q@@20 T@Field_304757_304758) (w@@24 T@FrameType) (r@@20 T@Field_120437_120941) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_304757 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_120979_236046 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_120979_236046 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_304757 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_120979_236046 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_304757_304758) (v_1@@25 T@FrameType) (q@@21 T@Field_304757_304758) (w@@25 T@FrameType) (r@@21 T@Field_239929_239930) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_304757 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_120979_120911 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_120979_120911 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_304757 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_120979_120911 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_304757_304758) (v_1@@26 T@FrameType) (q@@22 T@Field_304757_304758) (w@@26 T@FrameType) (r@@22 T@Field_240944_240945) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_304757 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_120979_120940 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_120979_120940 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_304757 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_120979_120940 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_304757_304758) (v_1@@27 T@FrameType) (q@@23 T@Field_239929_239930) (w@@27 T@FrameType) (r@@23 T@Field_304757_304758) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_120911 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_120911_304757 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_120979_304757 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_120911 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_120911_304757 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_304757_304758) (v_1@@28 T@FrameType) (q@@24 T@Field_239929_239930) (w@@28 T@FrameType) (r@@24 T@Field_120437_120941) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_120911 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_120911_236046 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_120979_236046 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_120911 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_120911_236046 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_304757_304758) (v_1@@29 T@FrameType) (q@@25 T@Field_239929_239930) (w@@29 T@FrameType) (r@@25 T@Field_239929_239930) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_120911 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_120911_120911 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_120979_120911 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_120911 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_120911_120911 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_304757_304758) (v_1@@30 T@FrameType) (q@@26 T@Field_239929_239930) (w@@30 T@FrameType) (r@@26 T@Field_240944_240945) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_120911 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_120911_120940 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_120979_120940 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_120911 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_120911_120940 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_304757_304758) (v_1@@31 T@FrameType) (q@@27 T@Field_240944_240945) (w@@31 T@FrameType) (r@@27 T@Field_304757_304758) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_120940 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_120940_304757 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_120979_304757 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_120940 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_120940_304757 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_304757_304758) (v_1@@32 T@FrameType) (q@@28 T@Field_240944_240945) (w@@32 T@FrameType) (r@@28 T@Field_120437_120941) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_120940 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_120940_236046 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_120979_236046 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_120940 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_120940_236046 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_304757_304758) (v_1@@33 T@FrameType) (q@@29 T@Field_240944_240945) (w@@33 T@FrameType) (r@@29 T@Field_239929_239930) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_120940 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_120940_120911 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_120979_120911 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_120940 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_120940_120911 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_304757_304758) (v_1@@34 T@FrameType) (q@@30 T@Field_240944_240945) (w@@34 T@FrameType) (r@@30 T@Field_240944_240945) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_120979_120940 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_120940_120940 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_120979_120940 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120979_120940 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_120940_120940 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_240944_240945) (v_1@@35 T@FrameType) (q@@31 T@Field_120437_120941) (w@@35 T@FrameType) (r@@31 T@Field_304757_304758) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_236046 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_236046_304757 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_120940_304757 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_236046 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_236046_304757 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_240944_240945) (v_1@@36 T@FrameType) (q@@32 T@Field_120437_120941) (w@@36 T@FrameType) (r@@32 T@Field_120437_120941) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_236046 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_236046_236046 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_120940_236046 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_236046 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_236046_236046 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_240944_240945) (v_1@@37 T@FrameType) (q@@33 T@Field_120437_120941) (w@@37 T@FrameType) (r@@33 T@Field_239929_239930) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_236046 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_236046_120911 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_120940_120911 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_236046 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_236046_120911 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_240944_240945) (v_1@@38 T@FrameType) (q@@34 T@Field_120437_120941) (w@@38 T@FrameType) (r@@34 T@Field_240944_240945) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_236046 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_236046_120940 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_120940_120940 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_236046 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_236046_120940 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_240944_240945) (v_1@@39 T@FrameType) (q@@35 T@Field_304757_304758) (w@@39 T@FrameType) (r@@35 T@Field_304757_304758) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_304757 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_120979_304757 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_120940_304757 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_304757 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_120979_304757 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_240944_240945) (v_1@@40 T@FrameType) (q@@36 T@Field_304757_304758) (w@@40 T@FrameType) (r@@36 T@Field_120437_120941) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_304757 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_120979_236046 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_120940_236046 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_304757 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_120979_236046 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_240944_240945) (v_1@@41 T@FrameType) (q@@37 T@Field_304757_304758) (w@@41 T@FrameType) (r@@37 T@Field_239929_239930) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_304757 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_120979_120911 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_120940_120911 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_304757 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_120979_120911 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_240944_240945) (v_1@@42 T@FrameType) (q@@38 T@Field_304757_304758) (w@@42 T@FrameType) (r@@38 T@Field_240944_240945) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_304757 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_120979_120940 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_120940_120940 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_304757 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_120979_120940 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_240944_240945) (v_1@@43 T@FrameType) (q@@39 T@Field_239929_239930) (w@@43 T@FrameType) (r@@39 T@Field_304757_304758) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_120911 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_120911_304757 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_120940_304757 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_120911 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_120911_304757 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_240944_240945) (v_1@@44 T@FrameType) (q@@40 T@Field_239929_239930) (w@@44 T@FrameType) (r@@40 T@Field_120437_120941) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_120911 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_120911_236046 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_120940_236046 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_120911 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_120911_236046 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_240944_240945) (v_1@@45 T@FrameType) (q@@41 T@Field_239929_239930) (w@@45 T@FrameType) (r@@41 T@Field_239929_239930) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_120911 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_120911_120911 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_120940_120911 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_120911 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_120911_120911 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_240944_240945) (v_1@@46 T@FrameType) (q@@42 T@Field_239929_239930) (w@@46 T@FrameType) (r@@42 T@Field_240944_240945) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_120911 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_120911_120940 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_120940_120940 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_120911 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_120911_120940 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_240944_240945) (v_1@@47 T@FrameType) (q@@43 T@Field_240944_240945) (w@@47 T@FrameType) (r@@43 T@Field_304757_304758) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_120940 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_120940_304757 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_120940_304757 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_120940 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_120940_304757 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_240944_240945) (v_1@@48 T@FrameType) (q@@44 T@Field_240944_240945) (w@@48 T@FrameType) (r@@44 T@Field_120437_120941) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_120940 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_120940_236046 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_120940_236046 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_120940 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_120940_236046 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_240944_240945) (v_1@@49 T@FrameType) (q@@45 T@Field_240944_240945) (w@@49 T@FrameType) (r@@45 T@Field_239929_239930) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_120940 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_120940_120911 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_120940_120911 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_120940 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_120940_120911 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_240944_240945) (v_1@@50 T@FrameType) (q@@46 T@Field_240944_240945) (w@@50 T@FrameType) (r@@46 T@Field_240944_240945) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_120940_120940 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_120940_120940 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_120940_120940 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120940_120940 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_120940_120940 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_239929_239930) (v_1@@51 T@FrameType) (q@@47 T@Field_120437_120941) (w@@51 T@FrameType) (r@@47 T@Field_304757_304758) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_236046 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_236046_304757 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_120911_304757 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_236046 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_236046_304757 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_239929_239930) (v_1@@52 T@FrameType) (q@@48 T@Field_120437_120941) (w@@52 T@FrameType) (r@@48 T@Field_120437_120941) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_236046 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_236046_236046 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_120911_236046 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_236046 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_236046_236046 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_239929_239930) (v_1@@53 T@FrameType) (q@@49 T@Field_120437_120941) (w@@53 T@FrameType) (r@@49 T@Field_239929_239930) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_236046 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_236046_120911 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_120911_120911 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_236046 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_236046_120911 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_239929_239930) (v_1@@54 T@FrameType) (q@@50 T@Field_120437_120941) (w@@54 T@FrameType) (r@@50 T@Field_240944_240945) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_236046 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_236046_120940 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_120911_120940 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_236046 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_236046_120940 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_239929_239930) (v_1@@55 T@FrameType) (q@@51 T@Field_304757_304758) (w@@55 T@FrameType) (r@@51 T@Field_304757_304758) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_304757 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_120979_304757 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_120911_304757 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_304757 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_120979_304757 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_239929_239930) (v_1@@56 T@FrameType) (q@@52 T@Field_304757_304758) (w@@56 T@FrameType) (r@@52 T@Field_120437_120941) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_304757 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_120979_236046 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_120911_236046 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_304757 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_120979_236046 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_239929_239930) (v_1@@57 T@FrameType) (q@@53 T@Field_304757_304758) (w@@57 T@FrameType) (r@@53 T@Field_239929_239930) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_304757 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_120979_120911 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_120911_120911 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_304757 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_120979_120911 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_239929_239930) (v_1@@58 T@FrameType) (q@@54 T@Field_304757_304758) (w@@58 T@FrameType) (r@@54 T@Field_240944_240945) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_304757 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_120979_120940 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_120911_120940 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_304757 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_120979_120940 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_239929_239930) (v_1@@59 T@FrameType) (q@@55 T@Field_239929_239930) (w@@59 T@FrameType) (r@@55 T@Field_304757_304758) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_120911 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_120911_304757 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_120911_304757 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_120911 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_120911_304757 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_239929_239930) (v_1@@60 T@FrameType) (q@@56 T@Field_239929_239930) (w@@60 T@FrameType) (r@@56 T@Field_120437_120941) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_120911 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_120911_236046 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_120911_236046 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_120911 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_120911_236046 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_239929_239930) (v_1@@61 T@FrameType) (q@@57 T@Field_239929_239930) (w@@61 T@FrameType) (r@@57 T@Field_239929_239930) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_120911 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_120911_120911 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_120911_120911 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_120911 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_120911_120911 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_239929_239930) (v_1@@62 T@FrameType) (q@@58 T@Field_239929_239930) (w@@62 T@FrameType) (r@@58 T@Field_240944_240945) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_120911 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_120911_120940 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_120911_120940 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_120911 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_120911_120940 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_239929_239930) (v_1@@63 T@FrameType) (q@@59 T@Field_240944_240945) (w@@63 T@FrameType) (r@@59 T@Field_304757_304758) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_120940 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_120940_304757 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_120911_304757 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_120940 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_120940_304757 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_239929_239930) (v_1@@64 T@FrameType) (q@@60 T@Field_240944_240945) (w@@64 T@FrameType) (r@@60 T@Field_120437_120941) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_120940 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_120940_236046 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_120911_236046 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_120940 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_120940_236046 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_239929_239930) (v_1@@65 T@FrameType) (q@@61 T@Field_240944_240945) (w@@65 T@FrameType) (r@@61 T@Field_239929_239930) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_120940 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_120940_120911 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_120911_120911 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_120940 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_120940_120911 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_239929_239930) (v_1@@66 T@FrameType) (q@@62 T@Field_240944_240945) (w@@66 T@FrameType) (r@@62 T@Field_240944_240945) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_120911_120940 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_120940_120940 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_120911_120940 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_120911_120940 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_120940_120940 q@@62 w@@66 r@@62 u@@62))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@103 T@PolymorphicMapType_235986) (Mask@@100 T@PolymorphicMapType_236007) (this@@58 T@Ref) (last@@29 T@Ref) ) (!  (=> (and (state Heap@@103 Mask@@100) (< AssumeFunctionsAbove 4)) (=> (not (= this@@58 last@@29)) (= (segParent Heap@@103 this@@58 last@@29) (treeParent Heap@@103 this@@58))))
 :qid |stdinbpl.1302:15|
 :skolemid |68|
 :pattern ( (state Heap@@103 Mask@@100) (segParent Heap@@103 this@@58 last@@29))
 :pattern ( (state Heap@@103 Mask@@100) (|segParent#triggerStateless| this@@58 last@@29) (|heapseg#trigger_120940| Heap@@103 (heapseg this@@58 last@@29)))
)))
(assert (forall ((Heap@@104 T@PolymorphicMapType_235986) (Mask@@101 T@PolymorphicMapType_236007) (this@@59 T@Ref) (last@@30 T@Ref) (index@@3 Int) ) (!  (=> (and (state Heap@@104 Mask@@101) (< AssumeFunctionsAbove 7)) (=> (and (<= 0 index@@3) (< index@@3 (segLength Heap@@104 this@@59 last@@30))) (= (segDegree Heap@@104 this@@59 last@@30 index@@3) (ite (= index@@3 0) (treeDegree Heap@@104 this@@59) (|segDegree'| Heap@@104 (select (|PolymorphicMapType_235986_120312_120313#PolymorphicMapType_235986| Heap@@104) this@@59 sibling) last@@30 (- index@@3 1))))))
 :qid |stdinbpl.1111:15|
 :skolemid |61|
 :pattern ( (state Heap@@104 Mask@@101) (segDegree Heap@@104 this@@59 last@@30 index@@3))
 :pattern ( (state Heap@@104 Mask@@101) (|segDegree#triggerStateless| this@@59 last@@30 index@@3) (|heapseg#trigger_120940| Heap@@104 (heapseg this@@59 last@@30)) (|heapseg#trigger_120940| Heap@@104 (heapseg this@@59 last@@30)))
)))
(assert (forall ((Heap@@105 T@PolymorphicMapType_235986) (this@@60 T@Ref) (last@@31 T@Ref) ) (!  (and (= (sorted_1 Heap@@105 this@@60 last@@31) (|sorted'| Heap@@105 this@@60 last@@31)) (dummyFunction_9461 (|sorted#triggerStateless| this@@60 last@@31)))
 :qid |stdinbpl.1426:15|
 :skolemid |72|
 :pattern ( (sorted_1 Heap@@105 this@@60 last@@31))
)))
(assert (forall ((Heap@@106 T@PolymorphicMapType_235986) (this@@61 T@Ref) (last@@32 T@Ref) ) (!  (and (= (presorted Heap@@106 this@@61 last@@32) (|presorted'| Heap@@106 this@@61 last@@32)) (dummyFunction_9461 (|presorted#triggerStateless| this@@61 last@@32)))
 :qid |stdinbpl.1646:15|
 :skolemid |79|
 :pattern ( (presorted Heap@@106 this@@61 last@@32))
)))
(assert (forall ((Heap@@107 T@PolymorphicMapType_235986) (this@@62 T@Ref) (last@@33 T@Ref) ) (!  (and (= (validChildren Heap@@107 this@@62 last@@33) (|validChildren'| Heap@@107 this@@62 last@@33)) (dummyFunction_9461 (|validChildren#triggerStateless| this@@62 last@@33)))
 :qid |stdinbpl.1918:15|
 :skolemid |85|
 :pattern ( (validChildren Heap@@107 this@@62 last@@33))
)))
(assert (forall ((Heap@@108 T@PolymorphicMapType_235986) (Mask@@102 T@PolymorphicMapType_236007) (this@@63 T@Ref) (last@@34 T@Ref) ) (!  (=> (state Heap@@108 Mask@@102) (= (|sorted'| Heap@@108 this@@63 last@@34) (|sorted#frame| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@108) null (heapseg this@@63 last@@34)) this@@63 last@@34)))
 :qid |stdinbpl.1443:15|
 :skolemid |75|
 :pattern ( (state Heap@@108 Mask@@102) (|sorted'| Heap@@108 this@@63 last@@34))
 :pattern ( (state Heap@@108 Mask@@102) (|sorted#triggerStateless| this@@63 last@@34) (|heapseg#trigger_120940| Heap@@108 (heapseg this@@63 last@@34)) (|heapseg#trigger_120940| Heap@@108 (heapseg this@@63 last@@34)) (|heapseg#trigger_120940| Heap@@108 (heapseg this@@63 last@@34)))
)))
(assert (forall ((Heap@@109 T@PolymorphicMapType_235986) (Mask@@103 T@PolymorphicMapType_236007) (this@@64 T@Ref) (last@@35 T@Ref) ) (!  (=> (state Heap@@109 Mask@@103) (= (|presorted'| Heap@@109 this@@64 last@@35) (|presorted#frame| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@109) null (heapseg this@@64 last@@35)) this@@64 last@@35)))
 :qid |stdinbpl.1663:15|
 :skolemid |82|
 :pattern ( (state Heap@@109 Mask@@103) (|presorted'| Heap@@109 this@@64 last@@35))
 :pattern ( (state Heap@@109 Mask@@103) (|presorted#triggerStateless| this@@64 last@@35) (|heapseg#trigger_120940| Heap@@109 (heapseg this@@64 last@@35)) (|heapseg#trigger_120940| Heap@@109 (heapseg this@@64 last@@35)) (|heapseg#trigger_120940| Heap@@109 (heapseg this@@64 last@@35)))
)))
(assert (forall ((Heap@@110 T@PolymorphicMapType_235986) (Mask@@104 T@PolymorphicMapType_236007) (this@@65 T@Ref) (last@@36 T@Ref) ) (!  (=> (state Heap@@110 Mask@@104) (= (|validChildren'| Heap@@110 this@@65 last@@36) (|validChildren#frame| (select (|PolymorphicMapType_235986_120940_120941#PolymorphicMapType_235986| Heap@@110) null (heapseg this@@65 last@@36)) this@@65 last@@36)))
 :qid |stdinbpl.1935:15|
 :skolemid |88|
 :pattern ( (state Heap@@110 Mask@@104) (|validChildren'| Heap@@110 this@@65 last@@36))
 :pattern ( (state Heap@@110 Mask@@104) (|validChildren#triggerStateless| this@@65 last@@36) (|heapseg#trigger_120940| Heap@@110 (heapseg this@@65 last@@36)) (|heapseg#trigger_120940| Heap@@110 (heapseg this@@65 last@@36)) (|heapseg#trigger_120940| Heap@@110 (heapseg this@@65 last@@36)))
)))
; Valid

