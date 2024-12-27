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
(declare-sort T@Field_11140_53 0)
(declare-sort T@Field_11153_11154 0)
(declare-sort T@Field_14955_14956 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14467_1189 0)
(declare-sort T@Field_19166_19171 0)
(declare-sort T@Field_5808_5880 0)
(declare-sort T@Field_5808_19171 0)
(declare-sort T@Field_5879_5809 0)
(declare-sort T@Field_5879_53 0)
(declare-sort T@Field_5879_1189 0)
(declare-datatypes ((T@PolymorphicMapType_11101 0)) (((PolymorphicMapType_11101 (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| (Array T@Ref T@Field_14955_14956 Real)) (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| (Array T@Ref T@Field_11153_11154 Real)) (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| (Array T@Ref T@Field_14467_1189 Real)) (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| (Array T@Ref T@Field_5879_5809 Real)) (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| (Array T@Ref T@Field_5879_1189 Real)) (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| (Array T@Ref T@Field_5879_53 Real)) (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| (Array T@Ref T@Field_19166_19171 Real)) (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| (Array T@Ref T@Field_5808_5880 Real)) (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| (Array T@Ref T@Field_11140_53 Real)) (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| (Array T@Ref T@Field_5808_19171 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11629 0)) (((PolymorphicMapType_11629 (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| (Array T@Ref T@Field_11153_11154 Bool)) (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| (Array T@Ref T@Field_14467_1189 Bool)) (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| (Array T@Ref T@Field_11140_53 Bool)) (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| (Array T@Ref T@Field_5808_5880 Bool)) (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| (Array T@Ref T@Field_5808_19171 Bool)) (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| (Array T@Ref T@Field_5879_5809 Bool)) (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| (Array T@Ref T@Field_5879_1189 Bool)) (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| (Array T@Ref T@Field_5879_53 Bool)) (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| (Array T@Ref T@Field_14955_14956 Bool)) (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| (Array T@Ref T@Field_19166_19171 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11080 0)) (((PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| (Array T@Ref T@Field_11140_53 Bool)) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| (Array T@Ref T@Field_11153_11154 T@Ref)) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| (Array T@Ref T@Field_14955_14956 T@FrameType)) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| (Array T@Ref T@Field_14467_1189 Int)) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| (Array T@Ref T@Field_19166_19171 T@PolymorphicMapType_11629)) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| (Array T@Ref T@Field_5808_5880 T@FrameType)) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| (Array T@Ref T@Field_5808_19171 T@PolymorphicMapType_11629)) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| (Array T@Ref T@Field_5879_5809 T@Ref)) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| (Array T@Ref T@Field_5879_53 Bool)) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| (Array T@Ref T@Field_5879_1189 Int)) ) ) ))
(declare-fun $allocated () T@Field_11140_53)
(declare-fun value () T@Field_14467_1189)
(declare-fun left () T@Field_11153_11154)
(declare-fun right_1 () T@Field_11153_11154)
(declare-fun succHeap (T@PolymorphicMapType_11080 T@PolymorphicMapType_11080) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11080 T@PolymorphicMapType_11080) Bool)
(declare-fun state (T@PolymorphicMapType_11080 T@PolymorphicMapType_11101) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11101) Bool)
(declare-fun |tree_size_fix'| (T@PolymorphicMapType_11080 T@Ref Int Int) Int)
(declare-fun dummyFunction_1473 (Int) Bool)
(declare-fun |tree_size_fix#triggerStateless| (T@Ref Int Int) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_11629)
(declare-fun tree_size (T@PolymorphicMapType_11080 T@Ref) Int)
(declare-fun |tree_size#triggerStateless| (T@Ref) Int)
(declare-fun |BTree#trigger_5879| (T@PolymorphicMapType_11080 T@Field_14955_14956) Bool)
(declare-fun BTree (T@Ref) T@Field_14955_14956)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun null () T@Ref)
(declare-fun |tree_size'| (T@PolymorphicMapType_11080 T@Ref) Int)
(declare-fun IsPredicateField_5879_5880 (T@Field_14955_14956) Bool)
(declare-fun |BTree#everUsed_5879| (T@Field_14955_14956) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11080 T@PolymorphicMapType_11080 T@PolymorphicMapType_11101) Bool)
(declare-fun PredicateMaskField_5879 (T@Field_14955_14956) T@Field_19166_19171)
(declare-fun HasDirectPerm_5879_5880 (T@PolymorphicMapType_11101 T@Ref T@Field_14955_14956) Bool)
(declare-fun IsPredicateField_5808_40114 (T@Field_5808_5880) Bool)
(declare-fun PredicateMaskField_5808 (T@Field_5808_5880) T@Field_5808_19171)
(declare-fun HasDirectPerm_5808_5880 (T@PolymorphicMapType_11101 T@Ref T@Field_5808_5880) Bool)
(declare-fun IsWandField_5879_43784 (T@Field_14955_14956) Bool)
(declare-fun WandMaskField_5879 (T@Field_14955_14956) T@Field_19166_19171)
(declare-fun IsWandField_5808_43427 (T@Field_5808_5880) Bool)
(declare-fun WandMaskField_5808 (T@Field_5808_5880) T@Field_5808_19171)
(declare-fun |tree_size#frame| (T@FrameType T@Ref) Int)
(declare-fun FrameFragment_5880 (T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |BTree#sm| (T@Ref) T@Field_19166_19171)
(declare-fun dummyHeap () T@PolymorphicMapType_11080)
(declare-fun ZeroMask () T@PolymorphicMapType_11101)
(declare-fun InsidePredicate_11140_11140 (T@Field_5808_5880 T@FrameType T@Field_5808_5880 T@FrameType) Bool)
(declare-fun InsidePredicate_5879_5879 (T@Field_14955_14956 T@FrameType T@Field_14955_14956 T@FrameType) Bool)
(declare-fun IsPredicateField_5806_1189 (T@Field_14467_1189) Bool)
(declare-fun IsWandField_5806_1189 (T@Field_14467_1189) Bool)
(declare-fun IsPredicateField_5808_5809 (T@Field_11153_11154) Bool)
(declare-fun IsWandField_5808_5809 (T@Field_11153_11154) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5808_50687 (T@Field_5808_19171) Bool)
(declare-fun IsWandField_5808_50703 (T@Field_5808_19171) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5808_53 (T@Field_11140_53) Bool)
(declare-fun IsWandField_5808_53 (T@Field_11140_53) Bool)
(declare-fun IsPredicateField_5879_49884 (T@Field_19166_19171) Bool)
(declare-fun IsWandField_5879_49900 (T@Field_19166_19171) Bool)
(declare-fun IsPredicateField_5879_53 (T@Field_5879_53) Bool)
(declare-fun IsWandField_5879_53 (T@Field_5879_53) Bool)
(declare-fun IsPredicateField_5879_1189 (T@Field_5879_1189) Bool)
(declare-fun IsWandField_5879_1189 (T@Field_5879_1189) Bool)
(declare-fun IsPredicateField_5879_5809 (T@Field_5879_5809) Bool)
(declare-fun IsWandField_5879_5809 (T@Field_5879_5809) Bool)
(declare-fun |tree_size_fix#frame| (T@FrameType T@Ref Int Int) Int)
(declare-fun tree_size_fix (T@PolymorphicMapType_11080 T@Ref Int Int) Int)
(declare-fun HasDirectPerm_5879_39869 (T@PolymorphicMapType_11101 T@Ref T@Field_19166_19171) Bool)
(declare-fun HasDirectPerm_5879_1189 (T@PolymorphicMapType_11101 T@Ref T@Field_5879_1189) Bool)
(declare-fun HasDirectPerm_5879_53 (T@PolymorphicMapType_11101 T@Ref T@Field_5879_53) Bool)
(declare-fun HasDirectPerm_5879_5809 (T@PolymorphicMapType_11101 T@Ref T@Field_5879_5809) Bool)
(declare-fun HasDirectPerm_5808_38728 (T@PolymorphicMapType_11101 T@Ref T@Field_5808_19171) Bool)
(declare-fun HasDirectPerm_5808_1189 (T@PolymorphicMapType_11101 T@Ref T@Field_14467_1189) Bool)
(declare-fun HasDirectPerm_5808_53 (T@PolymorphicMapType_11101 T@Ref T@Field_11140_53) Bool)
(declare-fun HasDirectPerm_5808_5809 (T@PolymorphicMapType_11101 T@Ref T@Field_11153_11154) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11101 T@PolymorphicMapType_11101 T@PolymorphicMapType_11101) Bool)
(declare-fun getPredWandId_5879_5880 (T@Field_14955_14956) Int)
(declare-fun InsidePredicate_11140_5879 (T@Field_5808_5880 T@FrameType T@Field_14955_14956 T@FrameType) Bool)
(declare-fun InsidePredicate_5879_11140 (T@Field_14955_14956 T@FrameType T@Field_5808_5880 T@FrameType) Bool)
(assert (distinct left right_1)
)
(assert (forall ((Heap0 T@PolymorphicMapType_11080) (Heap1 T@PolymorphicMapType_11080) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11080) (Mask T@PolymorphicMapType_11101) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11080) (Heap1@@0 T@PolymorphicMapType_11080) (Heap2 T@PolymorphicMapType_11080) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11080) (tree_1 T@Ref) (i Int) (b_24 Int) ) (! (dummyFunction_1473 (|tree_size_fix#triggerStateless| tree_1 i b_24))
 :qid |stdinbpl.380:15|
 :skolemid |29|
 :pattern ( (|tree_size_fix'| Heap@@0 tree_1 i b_24))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_19166_19171) ) (!  (not (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_14955_14956) ) (!  (not (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5879_53) ) (!  (not (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5879_1189) ) (!  (not (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5879_5809) ) (!  (not (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_5808_19171) ) (!  (not (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5808_5880) ) (!  (not (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_11140_53) ) (!  (not (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_14467_1189) ) (!  (not (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11153_11154) ) (!  (not (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11080) (Mask@@0 T@PolymorphicMapType_11101) (tree_1@@0 T@Ref) ) (!  (=> (and (state Heap@@1 Mask@@0) (< AssumeFunctionsAbove 0)) (= (tree_size Heap@@1 tree_1@@0) (ite (= tree_1@@0 null) 0 (+ (+ 1 (|tree_size'| Heap@@1 (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@1) tree_1@@0 left))) (|tree_size'| Heap@@1 (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@1) tree_1@@0 right_1))))))
 :qid |stdinbpl.211:15|
 :skolemid |24|
 :pattern ( (state Heap@@1 Mask@@0) (tree_size Heap@@1 tree_1@@0))
 :pattern ( (state Heap@@1 Mask@@0) (|tree_size#triggerStateless| tree_1@@0) (|BTree#trigger_5879| Heap@@1 (BTree tree_1@@0)) (|BTree#trigger_5879| Heap@@1 (BTree tree_1@@0)))
)))
(assert (forall ((self T@Ref) ) (! (IsPredicateField_5879_5880 (BTree self))
 :qid |stdinbpl.555:15|
 :skolemid |35|
 :pattern ( (BTree self))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11080) (tree_1@@1 T@Ref) ) (! (dummyFunction_1473 (|tree_size#triggerStateless| tree_1@@1))
 :qid |stdinbpl.205:15|
 :skolemid |23|
 :pattern ( (|tree_size'| Heap@@2 tree_1@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11080) (self@@0 T@Ref) ) (! (|BTree#everUsed_5879| (BTree self@@0))
 :qid |stdinbpl.574:15|
 :skolemid |39|
 :pattern ( (|BTree#trigger_5879| Heap@@3 (BTree self@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11080) (tree_1@@2 T@Ref) ) (!  (and (= (tree_size Heap@@4 tree_1@@2) (|tree_size'| Heap@@4 tree_1@@2)) (dummyFunction_1473 (|tree_size#triggerStateless| tree_1@@2)))
 :qid |stdinbpl.201:15|
 :skolemid |22|
 :pattern ( (tree_size Heap@@4 tree_1@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11080) (ExhaleHeap T@PolymorphicMapType_11080) (Mask@@1 T@PolymorphicMapType_11101) (pm_f_28 T@Field_14955_14956) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_5879_5880 Mask@@1 null pm_f_28) (IsPredicateField_5879_5880 pm_f_28)) (= (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@5) null (PredicateMaskField_5879 pm_f_28)) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap) null (PredicateMaskField_5879 pm_f_28)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (IsPredicateField_5879_5880 pm_f_28) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap) null (PredicateMaskField_5879 pm_f_28)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11080) (ExhaleHeap@@0 T@PolymorphicMapType_11080) (Mask@@2 T@PolymorphicMapType_11101) (pm_f_28@@0 T@Field_5808_5880) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_5808_5880 Mask@@2 null pm_f_28@@0) (IsPredicateField_5808_40114 pm_f_28@@0)) (= (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@6) null (PredicateMaskField_5808 pm_f_28@@0)) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@0) null (PredicateMaskField_5808 pm_f_28@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (IsPredicateField_5808_40114 pm_f_28@@0) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@0) null (PredicateMaskField_5808 pm_f_28@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11080) (ExhaleHeap@@1 T@PolymorphicMapType_11080) (Mask@@3 T@PolymorphicMapType_11101) (pm_f_28@@1 T@Field_14955_14956) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_5879_5880 Mask@@3 null pm_f_28@@1) (IsWandField_5879_43784 pm_f_28@@1)) (= (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@7) null (WandMaskField_5879 pm_f_28@@1)) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@1) null (WandMaskField_5879 pm_f_28@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (IsWandField_5879_43784 pm_f_28@@1) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@1) null (WandMaskField_5879 pm_f_28@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11080) (ExhaleHeap@@2 T@PolymorphicMapType_11080) (Mask@@4 T@PolymorphicMapType_11101) (pm_f_28@@2 T@Field_5808_5880) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_5808_5880 Mask@@4 null pm_f_28@@2) (IsWandField_5808_43427 pm_f_28@@2)) (= (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@8) null (WandMaskField_5808 pm_f_28@@2)) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@2) null (WandMaskField_5808 pm_f_28@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (IsWandField_5808_43427 pm_f_28@@2) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@2) null (WandMaskField_5808 pm_f_28@@2)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11080) (Mask@@5 T@PolymorphicMapType_11101) (tree_1@@3 T@Ref) ) (!  (=> (state Heap@@9 Mask@@5) (= (|tree_size'| Heap@@9 tree_1@@3) (|tree_size#frame| (FrameFragment_5880 (ite (not (= tree_1@@3 null)) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@9) null (BTree tree_1@@3)) EmptyFrame)) tree_1@@3)))
 :qid |stdinbpl.218:15|
 :skolemid |25|
 :pattern ( (state Heap@@9 Mask@@5) (|tree_size'| Heap@@9 tree_1@@3))
 :pattern ( (state Heap@@9 Mask@@5) (|tree_size#triggerStateless| tree_1@@3) (|BTree#trigger_5879| Heap@@9 (BTree tree_1@@3)) (|BTree#trigger_5879| Heap@@9 (BTree tree_1@@3)))
)))
(assert (forall ((self@@1 T@Ref) (self2 T@Ref) ) (!  (=> (= (BTree self@@1) (BTree self2)) (= self@@1 self2))
 :qid |stdinbpl.565:15|
 :skolemid |37|
 :pattern ( (BTree self@@1) (BTree self2))
)))
(assert (forall ((self@@2 T@Ref) (self2@@0 T@Ref) ) (!  (=> (= (|BTree#sm| self@@2) (|BTree#sm| self2@@0)) (= self@@2 self2@@0))
 :qid |stdinbpl.569:15|
 :skolemid |38|
 :pattern ( (|BTree#sm| self@@2) (|BTree#sm| self2@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11080) (ExhaleHeap@@3 T@PolymorphicMapType_11080) (Mask@@6 T@PolymorphicMapType_11101) (pm_f_28@@3 T@Field_14955_14956) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@6) (=> (and (HasDirectPerm_5879_5880 Mask@@6 null pm_f_28@@3) (IsPredicateField_5879_5880 pm_f_28@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_28 T@Ref) (f_27 T@Field_11153_11154) ) (!  (=> (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28 f_27) (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@10) o2_28 f_27) (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28 f_27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28 f_27))
)) (forall ((o2_28@@0 T@Ref) (f_27@@0 T@Field_14467_1189) ) (!  (=> (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28@@0 f_27@@0) (= (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@10) o2_28@@0 f_27@@0) (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@0 f_27@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@0 f_27@@0))
))) (forall ((o2_28@@1 T@Ref) (f_27@@1 T@Field_11140_53) ) (!  (=> (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28@@1 f_27@@1) (= (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@10) o2_28@@1 f_27@@1) (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@1 f_27@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@1 f_27@@1))
))) (forall ((o2_28@@2 T@Ref) (f_27@@2 T@Field_5808_5880) ) (!  (=> (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28@@2 f_27@@2) (= (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@10) o2_28@@2 f_27@@2) (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@2 f_27@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@2 f_27@@2))
))) (forall ((o2_28@@3 T@Ref) (f_27@@3 T@Field_5808_19171) ) (!  (=> (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28@@3 f_27@@3) (= (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@10) o2_28@@3 f_27@@3) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@3 f_27@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@3 f_27@@3))
))) (forall ((o2_28@@4 T@Ref) (f_27@@4 T@Field_5879_5809) ) (!  (=> (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28@@4 f_27@@4) (= (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@10) o2_28@@4 f_27@@4) (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@4 f_27@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@4 f_27@@4))
))) (forall ((o2_28@@5 T@Ref) (f_27@@5 T@Field_5879_1189) ) (!  (=> (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28@@5 f_27@@5) (= (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@10) o2_28@@5 f_27@@5) (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@5 f_27@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@5 f_27@@5))
))) (forall ((o2_28@@6 T@Ref) (f_27@@6 T@Field_5879_53) ) (!  (=> (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28@@6 f_27@@6) (= (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@10) o2_28@@6 f_27@@6) (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@6 f_27@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@6 f_27@@6))
))) (forall ((o2_28@@7 T@Ref) (f_27@@7 T@Field_14955_14956) ) (!  (=> (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28@@7 f_27@@7) (= (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@10) o2_28@@7 f_27@@7) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@7 f_27@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@7 f_27@@7))
))) (forall ((o2_28@@8 T@Ref) (f_27@@8 T@Field_19166_19171) ) (!  (=> (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28@@8 f_27@@8) (= (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) o2_28@@8 f_27@@8) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@8 f_27@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@8 f_27@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@6) (IsPredicateField_5879_5880 pm_f_28@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11080) (ExhaleHeap@@4 T@PolymorphicMapType_11080) (Mask@@7 T@PolymorphicMapType_11101) (pm_f_28@@4 T@Field_5808_5880) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@7) (=> (and (HasDirectPerm_5808_5880 Mask@@7 null pm_f_28@@4) (IsPredicateField_5808_40114 pm_f_28@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_28@@9 T@Ref) (f_27@@9 T@Field_11153_11154) ) (!  (=> (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@9 f_27@@9) (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@11) o2_28@@9 f_27@@9) (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@9 f_27@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@9 f_27@@9))
)) (forall ((o2_28@@10 T@Ref) (f_27@@10 T@Field_14467_1189) ) (!  (=> (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@10 f_27@@10) (= (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@11) o2_28@@10 f_27@@10) (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@10 f_27@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@10 f_27@@10))
))) (forall ((o2_28@@11 T@Ref) (f_27@@11 T@Field_11140_53) ) (!  (=> (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@11 f_27@@11) (= (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@11) o2_28@@11 f_27@@11) (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@11 f_27@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@11 f_27@@11))
))) (forall ((o2_28@@12 T@Ref) (f_27@@12 T@Field_5808_5880) ) (!  (=> (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@12 f_27@@12) (= (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@11) o2_28@@12 f_27@@12) (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@12 f_27@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@12 f_27@@12))
))) (forall ((o2_28@@13 T@Ref) (f_27@@13 T@Field_5808_19171) ) (!  (=> (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@13 f_27@@13) (= (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) o2_28@@13 f_27@@13) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@13 f_27@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@13 f_27@@13))
))) (forall ((o2_28@@14 T@Ref) (f_27@@14 T@Field_5879_5809) ) (!  (=> (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@14 f_27@@14) (= (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@11) o2_28@@14 f_27@@14) (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@14 f_27@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@14 f_27@@14))
))) (forall ((o2_28@@15 T@Ref) (f_27@@15 T@Field_5879_1189) ) (!  (=> (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@15 f_27@@15) (= (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@11) o2_28@@15 f_27@@15) (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@15 f_27@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@15 f_27@@15))
))) (forall ((o2_28@@16 T@Ref) (f_27@@16 T@Field_5879_53) ) (!  (=> (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@16 f_27@@16) (= (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@11) o2_28@@16 f_27@@16) (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@16 f_27@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@16 f_27@@16))
))) (forall ((o2_28@@17 T@Ref) (f_27@@17 T@Field_14955_14956) ) (!  (=> (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@17 f_27@@17) (= (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@11) o2_28@@17 f_27@@17) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@17 f_27@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@17 f_27@@17))
))) (forall ((o2_28@@18 T@Ref) (f_27@@18 T@Field_19166_19171) ) (!  (=> (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@18 f_27@@18) (= (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@11) o2_28@@18 f_27@@18) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@18 f_27@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@18 f_27@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@7) (IsPredicateField_5808_40114 pm_f_28@@4))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11080) (ExhaleHeap@@5 T@PolymorphicMapType_11080) (Mask@@8 T@PolymorphicMapType_11101) (pm_f_28@@5 T@Field_14955_14956) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@8) (=> (and (HasDirectPerm_5879_5880 Mask@@8 null pm_f_28@@5) (IsWandField_5879_43784 pm_f_28@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_28@@19 T@Ref) (f_27@@19 T@Field_11153_11154) ) (!  (=> (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@19 f_27@@19) (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@12) o2_28@@19 f_27@@19) (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@19 f_27@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@19 f_27@@19))
)) (forall ((o2_28@@20 T@Ref) (f_27@@20 T@Field_14467_1189) ) (!  (=> (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@20 f_27@@20) (= (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@12) o2_28@@20 f_27@@20) (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@20 f_27@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@20 f_27@@20))
))) (forall ((o2_28@@21 T@Ref) (f_27@@21 T@Field_11140_53) ) (!  (=> (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@21 f_27@@21) (= (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@12) o2_28@@21 f_27@@21) (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@21 f_27@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@21 f_27@@21))
))) (forall ((o2_28@@22 T@Ref) (f_27@@22 T@Field_5808_5880) ) (!  (=> (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@22 f_27@@22) (= (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@12) o2_28@@22 f_27@@22) (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@22 f_27@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@22 f_27@@22))
))) (forall ((o2_28@@23 T@Ref) (f_27@@23 T@Field_5808_19171) ) (!  (=> (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@23 f_27@@23) (= (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@12) o2_28@@23 f_27@@23) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@23 f_27@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@23 f_27@@23))
))) (forall ((o2_28@@24 T@Ref) (f_27@@24 T@Field_5879_5809) ) (!  (=> (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@24 f_27@@24) (= (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@12) o2_28@@24 f_27@@24) (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@24 f_27@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@24 f_27@@24))
))) (forall ((o2_28@@25 T@Ref) (f_27@@25 T@Field_5879_1189) ) (!  (=> (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@25 f_27@@25) (= (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@12) o2_28@@25 f_27@@25) (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@25 f_27@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@25 f_27@@25))
))) (forall ((o2_28@@26 T@Ref) (f_27@@26 T@Field_5879_53) ) (!  (=> (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@26 f_27@@26) (= (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@12) o2_28@@26 f_27@@26) (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@26 f_27@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@26 f_27@@26))
))) (forall ((o2_28@@27 T@Ref) (f_27@@27 T@Field_14955_14956) ) (!  (=> (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@27 f_27@@27) (= (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@12) o2_28@@27 f_27@@27) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@27 f_27@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@27 f_27@@27))
))) (forall ((o2_28@@28 T@Ref) (f_27@@28 T@Field_19166_19171) ) (!  (=> (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@28 f_27@@28) (= (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) o2_28@@28 f_27@@28) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@28 f_27@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@28 f_27@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@8) (IsWandField_5879_43784 pm_f_28@@5))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11080) (ExhaleHeap@@6 T@PolymorphicMapType_11080) (Mask@@9 T@PolymorphicMapType_11101) (pm_f_28@@6 T@Field_5808_5880) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@9) (=> (and (HasDirectPerm_5808_5880 Mask@@9 null pm_f_28@@6) (IsWandField_5808_43427 pm_f_28@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_28@@29 T@Ref) (f_27@@29 T@Field_11153_11154) ) (!  (=> (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@29 f_27@@29) (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@13) o2_28@@29 f_27@@29) (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@29 f_27@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@29 f_27@@29))
)) (forall ((o2_28@@30 T@Ref) (f_27@@30 T@Field_14467_1189) ) (!  (=> (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@30 f_27@@30) (= (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@13) o2_28@@30 f_27@@30) (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@30 f_27@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@30 f_27@@30))
))) (forall ((o2_28@@31 T@Ref) (f_27@@31 T@Field_11140_53) ) (!  (=> (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@31 f_27@@31) (= (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@13) o2_28@@31 f_27@@31) (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@31 f_27@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@31 f_27@@31))
))) (forall ((o2_28@@32 T@Ref) (f_27@@32 T@Field_5808_5880) ) (!  (=> (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@32 f_27@@32) (= (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@13) o2_28@@32 f_27@@32) (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@32 f_27@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@32 f_27@@32))
))) (forall ((o2_28@@33 T@Ref) (f_27@@33 T@Field_5808_19171) ) (!  (=> (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@33 f_27@@33) (= (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) o2_28@@33 f_27@@33) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@33 f_27@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@33 f_27@@33))
))) (forall ((o2_28@@34 T@Ref) (f_27@@34 T@Field_5879_5809) ) (!  (=> (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@34 f_27@@34) (= (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@13) o2_28@@34 f_27@@34) (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@34 f_27@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@34 f_27@@34))
))) (forall ((o2_28@@35 T@Ref) (f_27@@35 T@Field_5879_1189) ) (!  (=> (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@35 f_27@@35) (= (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@13) o2_28@@35 f_27@@35) (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@35 f_27@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@35 f_27@@35))
))) (forall ((o2_28@@36 T@Ref) (f_27@@36 T@Field_5879_53) ) (!  (=> (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@36 f_27@@36) (= (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@13) o2_28@@36 f_27@@36) (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@36 f_27@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@36 f_27@@36))
))) (forall ((o2_28@@37 T@Ref) (f_27@@37 T@Field_14955_14956) ) (!  (=> (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@37 f_27@@37) (= (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@13) o2_28@@37 f_27@@37) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@37 f_27@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@37 f_27@@37))
))) (forall ((o2_28@@38 T@Ref) (f_27@@38 T@Field_19166_19171) ) (!  (=> (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@38 f_27@@38) (= (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@13) o2_28@@38 f_27@@38) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@38 f_27@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@38 f_27@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@9) (IsWandField_5808_43427 pm_f_28@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11080) (ExhaleHeap@@7 T@PolymorphicMapType_11080) (Mask@@10 T@PolymorphicMapType_11101) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@14) o_41 $allocated) (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@7) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@7) o_41 $allocated))
)))
(assert (forall ((p T@Field_5808_5880) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11140_11140 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11140_11140 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_14955_14956) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_5879_5879 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5879_5879 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_5806_1189 value)))
(assert  (not (IsWandField_5806_1189 value)))
(assert  (not (IsPredicateField_5808_5809 left)))
(assert  (not (IsWandField_5808_5809 left)))
(assert  (not (IsPredicateField_5808_5809 right_1)))
(assert  (not (IsWandField_5808_5809 right_1)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11080) (ExhaleHeap@@8 T@PolymorphicMapType_11080) (Mask@@11 T@PolymorphicMapType_11101) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@15 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11101) (o_2@@9 T@Ref) (f_4@@9 T@Field_5808_19171) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5808_50687 f_4@@9))) (not (IsWandField_5808_50703 f_4@@9))) (<= (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11101) (o_2@@10 T@Ref) (f_4@@10 T@Field_11140_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5808_53 f_4@@10))) (not (IsWandField_5808_53 f_4@@10))) (<= (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_11101) (o_2@@11 T@Ref) (f_4@@11 T@Field_14467_1189) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5806_1189 f_4@@11))) (not (IsWandField_5806_1189 f_4@@11))) (<= (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_11101) (o_2@@12 T@Ref) (f_4@@12 T@Field_11153_11154) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5808_5809 f_4@@12))) (not (IsWandField_5808_5809 f_4@@12))) (<= (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_11101) (o_2@@13 T@Ref) (f_4@@13 T@Field_5808_5880) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5808_40114 f_4@@13))) (not (IsWandField_5808_43427 f_4@@13))) (<= (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_11101) (o_2@@14 T@Ref) (f_4@@14 T@Field_19166_19171) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5879_49884 f_4@@14))) (not (IsWandField_5879_49900 f_4@@14))) (<= (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_11101) (o_2@@15 T@Ref) (f_4@@15 T@Field_5879_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| Mask@@18) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5879_53 f_4@@15))) (not (IsWandField_5879_53 f_4@@15))) (<= (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| Mask@@18) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| Mask@@18) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_11101) (o_2@@16 T@Ref) (f_4@@16 T@Field_5879_1189) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| Mask@@19) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5879_1189 f_4@@16))) (not (IsWandField_5879_1189 f_4@@16))) (<= (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| Mask@@19) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| Mask@@19) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_11101) (o_2@@17 T@Ref) (f_4@@17 T@Field_5879_5809) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| Mask@@20) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5879_5809 f_4@@17))) (not (IsWandField_5879_5809 f_4@@17))) (<= (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| Mask@@20) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| Mask@@20) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_11101) (o_2@@18 T@Ref) (f_4@@18 T@Field_14955_14956) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| Mask@@21) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5879_5880 f_4@@18))) (not (IsWandField_5879_43784 f_4@@18))) (<= (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| Mask@@21) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| Mask@@21) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11080) (Mask@@22 T@PolymorphicMapType_11101) (tree_1@@4 T@Ref) (i@@0 Int) (b_24@@0 Int) ) (!  (=> (state Heap@@16 Mask@@22) (= (|tree_size_fix'| Heap@@16 tree_1@@4 i@@0 b_24@@0) (|tree_size_fix#frame| (FrameFragment_5880 (ite (not (= tree_1@@4 null)) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@16) null (BTree tree_1@@4)) EmptyFrame)) tree_1@@4 i@@0 b_24@@0)))
 :qid |stdinbpl.393:15|
 :skolemid |31|
 :pattern ( (state Heap@@16 Mask@@22) (|tree_size_fix'| Heap@@16 tree_1@@4 i@@0 b_24@@0))
 :pattern ( (state Heap@@16 Mask@@22) (|tree_size_fix#triggerStateless| tree_1@@4 i@@0 b_24@@0) (|BTree#trigger_5879| Heap@@16 (BTree tree_1@@4)) (|BTree#trigger_5879| Heap@@16 (BTree tree_1@@4)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11080) (Mask@@23 T@PolymorphicMapType_11101) (tree_1@@5 T@Ref) (i@@1 Int) (b_24@@1 Int) ) (!  (=> (and (state Heap@@17 Mask@@23) (< AssumeFunctionsAbove 1)) (= (tree_size_fix Heap@@17 tree_1@@5 i@@1 b_24@@1) (ite (= tree_1@@5 null) 0 (+ (+ 1 (|tree_size_fix'| Heap@@17 (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@17) tree_1@@5 left) i@@1 b_24@@1)) (|tree_size_fix'| Heap@@17 (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@17) tree_1@@5 right_1) i@@1 b_24@@1)))))
 :qid |stdinbpl.386:15|
 :skolemid |30|
 :pattern ( (state Heap@@17 Mask@@23) (tree_size_fix Heap@@17 tree_1@@5 i@@1 b_24@@1))
 :pattern ( (state Heap@@17 Mask@@23) (|tree_size_fix#triggerStateless| tree_1@@5 i@@1 b_24@@1) (|BTree#trigger_5879| Heap@@17 (BTree tree_1@@5)) (|BTree#trigger_5879| Heap@@17 (BTree tree_1@@5)))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_11101) (o_2@@19 T@Ref) (f_4@@19 T@Field_19166_19171) ) (! (= (HasDirectPerm_5879_39869 Mask@@24 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| Mask@@24) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5879_39869 Mask@@24 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_11101) (o_2@@20 T@Ref) (f_4@@20 T@Field_5879_1189) ) (! (= (HasDirectPerm_5879_1189 Mask@@25 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| Mask@@25) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5879_1189 Mask@@25 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_11101) (o_2@@21 T@Ref) (f_4@@21 T@Field_5879_53) ) (! (= (HasDirectPerm_5879_53 Mask@@26 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| Mask@@26) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5879_53 Mask@@26 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_11101) (o_2@@22 T@Ref) (f_4@@22 T@Field_14955_14956) ) (! (= (HasDirectPerm_5879_5880 Mask@@27 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| Mask@@27) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5879_5880 Mask@@27 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_11101) (o_2@@23 T@Ref) (f_4@@23 T@Field_5879_5809) ) (! (= (HasDirectPerm_5879_5809 Mask@@28 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| Mask@@28) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5879_5809 Mask@@28 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_11101) (o_2@@24 T@Ref) (f_4@@24 T@Field_5808_19171) ) (! (= (HasDirectPerm_5808_38728 Mask@@29 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| Mask@@29) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5808_38728 Mask@@29 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_11101) (o_2@@25 T@Ref) (f_4@@25 T@Field_14467_1189) ) (! (= (HasDirectPerm_5808_1189 Mask@@30 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| Mask@@30) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5808_1189 Mask@@30 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_11101) (o_2@@26 T@Ref) (f_4@@26 T@Field_11140_53) ) (! (= (HasDirectPerm_5808_53 Mask@@31 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| Mask@@31) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5808_53 Mask@@31 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_11101) (o_2@@27 T@Ref) (f_4@@27 T@Field_5808_5880) ) (! (= (HasDirectPerm_5808_5880 Mask@@32 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| Mask@@32) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5808_5880 Mask@@32 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_11101) (o_2@@28 T@Ref) (f_4@@28 T@Field_11153_11154) ) (! (= (HasDirectPerm_5808_5809 Mask@@33 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| Mask@@33) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5808_5809 Mask@@33 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11080) (ExhaleHeap@@9 T@PolymorphicMapType_11080) (Mask@@34 T@PolymorphicMapType_11101) (o_41@@0 T@Ref) (f_27@@39 T@Field_19166_19171) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@34) (=> (HasDirectPerm_5879_39869 Mask@@34 o_41@@0 f_27@@39) (= (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@18) o_41@@0 f_27@@39) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@9) o_41@@0 f_27@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@34) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@9) o_41@@0 f_27@@39))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11080) (ExhaleHeap@@10 T@PolymorphicMapType_11080) (Mask@@35 T@PolymorphicMapType_11101) (o_41@@1 T@Ref) (f_27@@40 T@Field_5879_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@10 Mask@@35) (=> (HasDirectPerm_5879_1189 Mask@@35 o_41@@1 f_27@@40) (= (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@19) o_41@@1 f_27@@40) (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@10) o_41@@1 f_27@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@10 Mask@@35) (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@10) o_41@@1 f_27@@40))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11080) (ExhaleHeap@@11 T@PolymorphicMapType_11080) (Mask@@36 T@PolymorphicMapType_11101) (o_41@@2 T@Ref) (f_27@@41 T@Field_5879_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@11 Mask@@36) (=> (HasDirectPerm_5879_53 Mask@@36 o_41@@2 f_27@@41) (= (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@20) o_41@@2 f_27@@41) (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@11) o_41@@2 f_27@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@11 Mask@@36) (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@11) o_41@@2 f_27@@41))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_11080) (ExhaleHeap@@12 T@PolymorphicMapType_11080) (Mask@@37 T@PolymorphicMapType_11101) (o_41@@3 T@Ref) (f_27@@42 T@Field_14955_14956) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@12 Mask@@37) (=> (HasDirectPerm_5879_5880 Mask@@37 o_41@@3 f_27@@42) (= (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@21) o_41@@3 f_27@@42) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@12) o_41@@3 f_27@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@12 Mask@@37) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@12) o_41@@3 f_27@@42))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_11080) (ExhaleHeap@@13 T@PolymorphicMapType_11080) (Mask@@38 T@PolymorphicMapType_11101) (o_41@@4 T@Ref) (f_27@@43 T@Field_5879_5809) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@13 Mask@@38) (=> (HasDirectPerm_5879_5809 Mask@@38 o_41@@4 f_27@@43) (= (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@22) o_41@@4 f_27@@43) (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@13) o_41@@4 f_27@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@13 Mask@@38) (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@13) o_41@@4 f_27@@43))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_11080) (ExhaleHeap@@14 T@PolymorphicMapType_11080) (Mask@@39 T@PolymorphicMapType_11101) (o_41@@5 T@Ref) (f_27@@44 T@Field_5808_19171) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@14 Mask@@39) (=> (HasDirectPerm_5808_38728 Mask@@39 o_41@@5 f_27@@44) (= (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@23) o_41@@5 f_27@@44) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@14) o_41@@5 f_27@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@14 Mask@@39) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@14) o_41@@5 f_27@@44))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_11080) (ExhaleHeap@@15 T@PolymorphicMapType_11080) (Mask@@40 T@PolymorphicMapType_11101) (o_41@@6 T@Ref) (f_27@@45 T@Field_14467_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@15 Mask@@40) (=> (HasDirectPerm_5808_1189 Mask@@40 o_41@@6 f_27@@45) (= (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@24) o_41@@6 f_27@@45) (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@15) o_41@@6 f_27@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@15 Mask@@40) (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@15) o_41@@6 f_27@@45))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11080) (ExhaleHeap@@16 T@PolymorphicMapType_11080) (Mask@@41 T@PolymorphicMapType_11101) (o_41@@7 T@Ref) (f_27@@46 T@Field_11140_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@16 Mask@@41) (=> (HasDirectPerm_5808_53 Mask@@41 o_41@@7 f_27@@46) (= (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@25) o_41@@7 f_27@@46) (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@16) o_41@@7 f_27@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@16 Mask@@41) (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@16) o_41@@7 f_27@@46))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11080) (ExhaleHeap@@17 T@PolymorphicMapType_11080) (Mask@@42 T@PolymorphicMapType_11101) (o_41@@8 T@Ref) (f_27@@47 T@Field_5808_5880) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@17 Mask@@42) (=> (HasDirectPerm_5808_5880 Mask@@42 o_41@@8 f_27@@47) (= (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@26) o_41@@8 f_27@@47) (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@17) o_41@@8 f_27@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@17 Mask@@42) (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@17) o_41@@8 f_27@@47))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11080) (ExhaleHeap@@18 T@PolymorphicMapType_11080) (Mask@@43 T@PolymorphicMapType_11101) (o_41@@9 T@Ref) (f_27@@48 T@Field_11153_11154) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@18 Mask@@43) (=> (HasDirectPerm_5808_5809 Mask@@43 o_41@@9 f_27@@48) (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@27) o_41@@9 f_27@@48) (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@18) o_41@@9 f_27@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@18 Mask@@43) (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@18) o_41@@9 f_27@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_5808_19171) ) (! (= (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_11140_53) ) (! (= (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_14467_1189) ) (! (= (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_11153_11154) ) (! (= (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_5808_5880) ) (! (= (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_19166_19171) ) (! (= (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_5879_53) ) (! (= (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_5879_1189) ) (! (= (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_5879_5809) ) (! (= (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_14955_14956) ) (! (= (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11101) (SummandMask1 T@PolymorphicMapType_11101) (SummandMask2 T@PolymorphicMapType_11101) (o_2@@39 T@Ref) (f_4@@39 T@Field_5808_19171) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11101) (SummandMask1@@0 T@PolymorphicMapType_11101) (SummandMask2@@0 T@PolymorphicMapType_11101) (o_2@@40 T@Ref) (f_4@@40 T@Field_11140_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11101) (SummandMask1@@1 T@PolymorphicMapType_11101) (SummandMask2@@1 T@PolymorphicMapType_11101) (o_2@@41 T@Ref) (f_4@@41 T@Field_14467_1189) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11101) (SummandMask1@@2 T@PolymorphicMapType_11101) (SummandMask2@@2 T@PolymorphicMapType_11101) (o_2@@42 T@Ref) (f_4@@42 T@Field_11153_11154) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11101) (SummandMask1@@3 T@PolymorphicMapType_11101) (SummandMask2@@3 T@PolymorphicMapType_11101) (o_2@@43 T@Ref) (f_4@@43 T@Field_5808_5880) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_11101) (SummandMask1@@4 T@PolymorphicMapType_11101) (SummandMask2@@4 T@PolymorphicMapType_11101) (o_2@@44 T@Ref) (f_4@@44 T@Field_19166_19171) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_11101) (SummandMask1@@5 T@PolymorphicMapType_11101) (SummandMask2@@5 T@PolymorphicMapType_11101) (o_2@@45 T@Ref) (f_4@@45 T@Field_5879_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_11101) (SummandMask1@@6 T@PolymorphicMapType_11101) (SummandMask2@@6 T@PolymorphicMapType_11101) (o_2@@46 T@Ref) (f_4@@46 T@Field_5879_1189) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_11101) (SummandMask1@@7 T@PolymorphicMapType_11101) (SummandMask2@@7 T@PolymorphicMapType_11101) (o_2@@47 T@Ref) (f_4@@47 T@Field_5879_5809) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_11101) (SummandMask1@@8 T@PolymorphicMapType_11101) (SummandMask2@@8 T@PolymorphicMapType_11101) (o_2@@48 T@Ref) (f_4@@48 T@Field_14955_14956) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11080) (tree_1@@6 T@Ref) (i@@2 Int) (b_24@@2 Int) ) (!  (and (= (tree_size_fix Heap@@28 tree_1@@6 i@@2 b_24@@2) (|tree_size_fix'| Heap@@28 tree_1@@6 i@@2 b_24@@2)) (dummyFunction_1473 (|tree_size_fix#triggerStateless| tree_1@@6 i@@2 b_24@@2)))
 :qid |stdinbpl.376:15|
 :skolemid |28|
 :pattern ( (tree_size_fix Heap@@28 tree_1@@6 i@@2 b_24@@2))
)))
(assert (forall ((self@@3 T@Ref) ) (! (= (getPredWandId_5879_5880 (BTree self@@3)) 0)
 :qid |stdinbpl.559:15|
 :skolemid |36|
 :pattern ( (BTree self@@3))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11080) (o_22 T@Ref) (f_12 T@Field_19166_19171) (v T@PolymorphicMapType_11629) ) (! (succHeap Heap@@29 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@29) (store (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@29) o_22 f_12 v) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@29) (store (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@29) o_22 f_12 v) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_11080) (o_22@@0 T@Ref) (f_12@@0 T@Field_5879_1189) (v@@0 Int) ) (! (succHeap Heap@@30 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@30) (store (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@30) o_22@@0 f_12@@0 v@@0)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@30) (store (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@30) o_22@@0 f_12@@0 v@@0)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_11080) (o_22@@1 T@Ref) (f_12@@1 T@Field_14955_14956) (v@@1 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@31) (store (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@31) o_22@@1 f_12@@1 v@@1) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@31) (store (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@31) o_22@@1 f_12@@1 v@@1) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_11080) (o_22@@2 T@Ref) (f_12@@2 T@Field_5879_5809) (v@@2 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@32) (store (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@32) o_22@@2 f_12@@2 v@@2) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@32) (store (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@32) o_22@@2 f_12@@2 v@@2) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_11080) (o_22@@3 T@Ref) (f_12@@3 T@Field_5879_53) (v@@3 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@33) (store (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@33) o_22@@3 f_12@@3 v@@3) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@33) (store (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@33) o_22@@3 f_12@@3 v@@3) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_11080) (o_22@@4 T@Ref) (f_12@@4 T@Field_5808_19171) (v@@4 T@PolymorphicMapType_11629) ) (! (succHeap Heap@@34 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@34) (store (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@34) o_22@@4 f_12@@4 v@@4) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@34) (store (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@34) o_22@@4 f_12@@4 v@@4) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_11080) (o_22@@5 T@Ref) (f_12@@5 T@Field_14467_1189) (v@@5 Int) ) (! (succHeap Heap@@35 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@35) (store (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@35) o_22@@5 f_12@@5 v@@5) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@35) (store (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@35) o_22@@5 f_12@@5 v@@5) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_11080) (o_22@@6 T@Ref) (f_12@@6 T@Field_5808_5880) (v@@6 T@FrameType) ) (! (succHeap Heap@@36 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@36) (store (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@36) o_22@@6 f_12@@6 v@@6) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@36) (store (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@36) o_22@@6 f_12@@6 v@@6) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_11080) (o_22@@7 T@Ref) (f_12@@7 T@Field_11153_11154) (v@@7 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@37) (store (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@37) o_22@@7 f_12@@7 v@@7) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@37) (store (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@37) o_22@@7 f_12@@7 v@@7) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_11080) (o_22@@8 T@Ref) (f_12@@8 T@Field_11140_53) (v@@8 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_11080 (store (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@38) o_22@@8 f_12@@8 v@@8) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (store (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@38) o_22@@8 f_12@@8 v@@8) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@38)))
)))
(assert (forall ((self@@4 T@Ref) ) (! (= (PredicateMaskField_5879 (BTree self@@4)) (|BTree#sm| self@@4))
 :qid |stdinbpl.551:15|
 :skolemid |34|
 :pattern ( (PredicateMaskField_5879 (BTree self@@4)))
)))
(assert (forall ((o_22@@9 T@Ref) (f_30 T@Field_11153_11154) (Heap@@39 T@PolymorphicMapType_11080) ) (!  (=> (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@39) o_22@@9 $allocated) (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@39) (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@39) o_22@@9 f_30) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@39) o_22@@9 f_30))
)))
(assert (forall ((p@@2 T@Field_5808_5880) (v_1@@1 T@FrameType) (q T@Field_5808_5880) (w@@1 T@FrameType) (r T@Field_5808_5880) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11140_11140 p@@2 v_1@@1 q w@@1) (InsidePredicate_11140_11140 q w@@1 r u)) (InsidePredicate_11140_11140 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11140_11140 p@@2 v_1@@1 q w@@1) (InsidePredicate_11140_11140 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_5808_5880) (v_1@@2 T@FrameType) (q@@0 T@Field_5808_5880) (w@@2 T@FrameType) (r@@0 T@Field_14955_14956) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_11140_11140 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11140_5879 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_11140_5879 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11140_11140 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11140_5879 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_5808_5880) (v_1@@3 T@FrameType) (q@@1 T@Field_14955_14956) (w@@3 T@FrameType) (r@@1 T@Field_5808_5880) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_11140_5879 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_5879_11140 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_11140_11140 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11140_5879 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_5879_11140 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_5808_5880) (v_1@@4 T@FrameType) (q@@2 T@Field_14955_14956) (w@@4 T@FrameType) (r@@2 T@Field_14955_14956) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_11140_5879 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_5879_5879 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_11140_5879 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11140_5879 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_5879_5879 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_14955_14956) (v_1@@5 T@FrameType) (q@@3 T@Field_5808_5880) (w@@5 T@FrameType) (r@@3 T@Field_5808_5880) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_5879_11140 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11140_11140 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_5879_11140 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5879_11140 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11140_11140 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_14955_14956) (v_1@@6 T@FrameType) (q@@4 T@Field_5808_5880) (w@@6 T@FrameType) (r@@4 T@Field_14955_14956) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_5879_11140 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11140_5879 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_5879_5879 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5879_11140 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11140_5879 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_14955_14956) (v_1@@7 T@FrameType) (q@@5 T@Field_14955_14956) (w@@7 T@FrameType) (r@@5 T@Field_5808_5880) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_5879_5879 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_5879_11140 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_5879_11140 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5879_5879 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_5879_11140 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_14955_14956) (v_1@@8 T@FrameType) (q@@6 T@Field_14955_14956) (w@@8 T@FrameType) (r@@6 T@Field_14955_14956) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_5879_5879 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_5879_5879 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_5879_5879 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5879_5879 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_5879_5879 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@6 () T@PolymorphicMapType_11080)
(declare-fun Heap@5 () T@PolymorphicMapType_11080)
(declare-fun tree_1@@7 () T@Ref)
(declare-fun Mask@1 () T@PolymorphicMapType_11101)
(declare-fun Heap@3 () T@PolymorphicMapType_11080)
(declare-fun newPMask@1 () T@PolymorphicMapType_11629)
(declare-fun Heap@4 () T@PolymorphicMapType_11080)
(declare-fun Heap@2 () T@PolymorphicMapType_11080)
(declare-fun Heap@0 () T@PolymorphicMapType_11080)
(declare-fun newPMask@0 () T@PolymorphicMapType_11629)
(declare-fun Heap@1 () T@PolymorphicMapType_11080)
(declare-fun |tree_size#trigger| (T@FrameType T@Ref) Bool)
(declare-fun Heap@@40 () T@PolymorphicMapType_11080)
(declare-fun UnfoldingMask@6 () T@PolymorphicMapType_11101)
(declare-fun UnfoldingMask@5 () T@PolymorphicMapType_11101)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_11101)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_11101)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_11101)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_11101)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_11101)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_5809 (T@Ref) T@FrameType)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_11101)
(set-info :boogie-vc-id |tree_size#definedness|)
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
 (=> (= (ControlFlow 0 0) 33) (let ((anon23_correct true))
(let ((anon22_correct  (=> (= Heap@6 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@5) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@5) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@5) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@5) (store (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@5) null (|BTree#sm| tree_1@@7) (PolymorphicMapType_11629 (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@5) null (|BTree#sm| tree_1@@7))) (store (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@5) null (|BTree#sm| tree_1@@7))) tree_1@@7 value true) (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@5) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@5) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@5) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@5) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@5) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@5) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@5) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@5) null (|BTree#sm| tree_1@@7))))) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@5) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@5) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@5) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@5) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@5))) (=> (and (state Heap@6 Mask@1) (= (ControlFlow 0 11) 9)) anon23_correct))))
(let ((anon33_Else_correct  (=> (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@3) tree_1@@7 right_1) null) (=> (and (= Heap@5 Heap@3) (= (ControlFlow 0 13) 11)) anon22_correct))))
(let ((anon33_Then_correct  (=> (not (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@3) tree_1@@7 right_1) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_16 T@Ref) (f_21 T@Field_11153_11154) ) (!  (=> (or (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| tree_1@@7))) o_16 f_21) (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@3) tree_1@@7 right_1)))) o_16 f_21)) (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| newPMask@1) o_16 f_21))
 :qid |stdinbpl.355:35|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| newPMask@1) o_16 f_21))
)) (forall ((o_16@@0 T@Ref) (f_21@@0 T@Field_14467_1189) ) (!  (=> (or (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| tree_1@@7))) o_16@@0 f_21@@0) (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@3) tree_1@@7 right_1)))) o_16@@0 f_21@@0)) (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| newPMask@1) o_16@@0 f_21@@0))
 :qid |stdinbpl.355:35|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| newPMask@1) o_16@@0 f_21@@0))
))) (forall ((o_16@@1 T@Ref) (f_21@@1 T@Field_11140_53) ) (!  (=> (or (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| tree_1@@7))) o_16@@1 f_21@@1) (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@3) tree_1@@7 right_1)))) o_16@@1 f_21@@1)) (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| newPMask@1) o_16@@1 f_21@@1))
 :qid |stdinbpl.355:35|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| newPMask@1) o_16@@1 f_21@@1))
))) (forall ((o_16@@2 T@Ref) (f_21@@2 T@Field_5808_5880) ) (!  (=> (or (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| tree_1@@7))) o_16@@2 f_21@@2) (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@3) tree_1@@7 right_1)))) o_16@@2 f_21@@2)) (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| newPMask@1) o_16@@2 f_21@@2))
 :qid |stdinbpl.355:35|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| newPMask@1) o_16@@2 f_21@@2))
))) (forall ((o_16@@3 T@Ref) (f_21@@3 T@Field_5808_19171) ) (!  (=> (or (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| tree_1@@7))) o_16@@3 f_21@@3) (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@3) tree_1@@7 right_1)))) o_16@@3 f_21@@3)) (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| newPMask@1) o_16@@3 f_21@@3))
 :qid |stdinbpl.355:35|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| newPMask@1) o_16@@3 f_21@@3))
))) (forall ((o_16@@4 T@Ref) (f_21@@4 T@Field_5879_5809) ) (!  (=> (or (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| tree_1@@7))) o_16@@4 f_21@@4) (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@3) tree_1@@7 right_1)))) o_16@@4 f_21@@4)) (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| newPMask@1) o_16@@4 f_21@@4))
 :qid |stdinbpl.355:35|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| newPMask@1) o_16@@4 f_21@@4))
))) (forall ((o_16@@5 T@Ref) (f_21@@5 T@Field_5879_1189) ) (!  (=> (or (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| tree_1@@7))) o_16@@5 f_21@@5) (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@3) tree_1@@7 right_1)))) o_16@@5 f_21@@5)) (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| newPMask@1) o_16@@5 f_21@@5))
 :qid |stdinbpl.355:35|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| newPMask@1) o_16@@5 f_21@@5))
))) (forall ((o_16@@6 T@Ref) (f_21@@6 T@Field_5879_53) ) (!  (=> (or (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| tree_1@@7))) o_16@@6 f_21@@6) (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@3) tree_1@@7 right_1)))) o_16@@6 f_21@@6)) (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| newPMask@1) o_16@@6 f_21@@6))
 :qid |stdinbpl.355:35|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| newPMask@1) o_16@@6 f_21@@6))
))) (forall ((o_16@@7 T@Ref) (f_21@@7 T@Field_14955_14956) ) (!  (=> (or (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| tree_1@@7))) o_16@@7 f_21@@7) (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@3) tree_1@@7 right_1)))) o_16@@7 f_21@@7)) (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| newPMask@1) o_16@@7 f_21@@7))
 :qid |stdinbpl.355:35|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| newPMask@1) o_16@@7 f_21@@7))
))) (forall ((o_16@@8 T@Ref) (f_21@@8 T@Field_19166_19171) ) (!  (=> (or (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| tree_1@@7))) o_16@@8 f_21@@8) (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@3) tree_1@@7 right_1)))) o_16@@8 f_21@@8)) (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| newPMask@1) o_16@@8 f_21@@8))
 :qid |stdinbpl.355:35|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| newPMask@1) o_16@@8 f_21@@8))
))) (= Heap@4 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@3) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@3) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@3) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@3) (store (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@3) null (|BTree#sm| tree_1@@7) newPMask@1) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@3) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@3) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@3) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@3) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@3)))) (and (= Heap@5 Heap@4) (= (ControlFlow 0 12) 11))) anon22_correct))))
(let ((anon20_correct  (=> (= Heap@3 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@2) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@2) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@2) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@2) (store (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@2) null (|BTree#sm| tree_1@@7) (PolymorphicMapType_11629 (store (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@2) null (|BTree#sm| tree_1@@7))) tree_1@@7 right_1 true) (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@2) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@2) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@2) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@2) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@2) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@2) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@2) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@2) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@2) null (|BTree#sm| tree_1@@7))))) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@2) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@2) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@2) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@2) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@2))) (and (=> (= (ControlFlow 0 14) 12) anon33_Then_correct) (=> (= (ControlFlow 0 14) 13) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@0) tree_1@@7 left) null) (=> (and (= Heap@2 Heap@0) (= (ControlFlow 0 16) 14)) anon20_correct))))
(let ((anon32_Then_correct  (=> (not (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@0) tree_1@@7 left) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_11153_11154) ) (!  (=> (or (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| tree_1@@7))) o_15 f_20) (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@0) tree_1@@7 left)))) o_15 f_20)) (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| newPMask@0) o_15 f_20))
 :qid |stdinbpl.346:35|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_14467_1189) ) (!  (=> (or (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| tree_1@@7))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@0) tree_1@@7 left)))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.346:35|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_11140_53) ) (!  (=> (or (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| tree_1@@7))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@0) tree_1@@7 left)))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.346:35|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_5808_5880) ) (!  (=> (or (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| tree_1@@7))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@0) tree_1@@7 left)))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.346:35|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_5808_19171) ) (!  (=> (or (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| tree_1@@7))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@0) tree_1@@7 left)))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.346:35|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_5879_5809) ) (!  (=> (or (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| tree_1@@7))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@0) tree_1@@7 left)))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.346:35|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_5879_1189) ) (!  (=> (or (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| tree_1@@7))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@0) tree_1@@7 left)))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.346:35|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_5879_53) ) (!  (=> (or (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| tree_1@@7))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@0) tree_1@@7 left)))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.346:35|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| newPMask@0) o_15@@6 f_20@@6))
))) (forall ((o_15@@7 T@Ref) (f_20@@7 T@Field_14955_14956) ) (!  (=> (or (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| tree_1@@7))) o_15@@7 f_20@@7) (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@0) tree_1@@7 left)))) o_15@@7 f_20@@7)) (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| newPMask@0) o_15@@7 f_20@@7))
 :qid |stdinbpl.346:35|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| newPMask@0) o_15@@7 f_20@@7))
))) (forall ((o_15@@8 T@Ref) (f_20@@8 T@Field_19166_19171) ) (!  (=> (or (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| tree_1@@7))) o_15@@8 f_20@@8) (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@0) tree_1@@7 left)))) o_15@@8 f_20@@8)) (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| newPMask@0) o_15@@8 f_20@@8))
 :qid |stdinbpl.346:35|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| newPMask@0) o_15@@8 f_20@@8))
))) (= Heap@1 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@0) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@0) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@0) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@0) (store (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@0) null (|BTree#sm| tree_1@@7) newPMask@0) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@0) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@0) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@0) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@0) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@0)))) (and (= Heap@2 Heap@1) (= (ControlFlow 0 15) 14))) anon20_correct))))
(let ((anon30_Else_correct  (=> (and (|tree_size#trigger| (FrameFragment_5880 (ite (not (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 right_1) null)) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@40) null (BTree (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 right_1))) EmptyFrame)) (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 right_1)) (= Heap@0 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@40) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@40) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@40) (store (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@40) null (|BTree#sm| tree_1@@7) (PolymorphicMapType_11629 (store (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@40) null (|BTree#sm| tree_1@@7))) tree_1@@7 left true) (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@40) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@40) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@40) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@40) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@40) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@40) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@40) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@40) null (|BTree#sm| tree_1@@7))) (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@40) null (|BTree#sm| tree_1@@7))))) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@40) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@40) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@40) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@40) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@40)))) (and (=> (= (ControlFlow 0 17) 15) anon32_Then_correct) (=> (= (ControlFlow 0 17) 16) anon32_Else_correct)))))
(let ((anon25_Then_correct  (=> (and (= tree_1@@7 null) (= (ControlFlow 0 10) 9)) anon23_correct)))
(let ((anon16_correct true))
(let ((anon31_Else_correct  (=> (and (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 right_1) null) (= (ControlFlow 0 8) 5)) anon16_correct)))
(let ((anon31_Then_correct  (=> (not (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 right_1) null)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| UnfoldingMask@6) null (BTree (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 right_1)))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| UnfoldingMask@6) null (BTree (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 right_1))))) (=> (= (ControlFlow 0 6) 5) anon16_correct))))))
(let ((anon28_Else_correct  (=> (|tree_size#trigger| (FrameFragment_5880 (ite (not (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 left) null)) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@40) null (BTree (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 left))) EmptyFrame)) (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 left)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (HasDirectPerm_5808_5809 UnfoldingMask@6 tree_1@@7 right_1)) (=> (HasDirectPerm_5808_5809 UnfoldingMask@6 tree_1@@7 right_1) (and (and (=> (= (ControlFlow 0 18) 17) anon30_Else_correct) (=> (= (ControlFlow 0 18) 6) anon31_Then_correct)) (=> (= (ControlFlow 0 18) 8) anon31_Else_correct)))))))
(let ((anon11_correct true))
(let ((anon29_Else_correct  (=> (and (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 left) null) (= (ControlFlow 0 4) 1)) anon11_correct)))
(let ((anon29_Then_correct  (=> (not (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 left) null)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| UnfoldingMask@6) null (BTree (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 left)))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| UnfoldingMask@6) null (BTree (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 left))))) (=> (= (ControlFlow 0 2) 1) anon11_correct))))))
(let ((anon8_correct  (=> (and (and (not (= tree_1@@7 null)) (= UnfoldingMask@6 (PolymorphicMapType_11101 (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| UnfoldingMask@5) (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| UnfoldingMask@5) (store (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| UnfoldingMask@5) tree_1@@7 value (+ (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| UnfoldingMask@5) tree_1@@7 value) FullPerm)) (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| UnfoldingMask@5) (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| UnfoldingMask@5) (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| UnfoldingMask@5) (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| UnfoldingMask@5) (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| UnfoldingMask@5) (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| UnfoldingMask@5) (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| UnfoldingMask@5)))) (and (state Heap@@40 UnfoldingMask@6) (state Heap@@40 UnfoldingMask@6))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (HasDirectPerm_5808_5809 UnfoldingMask@6 tree_1@@7 left)) (=> (HasDirectPerm_5808_5809 UnfoldingMask@6 tree_1@@7 left) (and (and (=> (= (ControlFlow 0 20) 18) anon28_Else_correct) (=> (= (ControlFlow 0 20) 2) anon29_Then_correct)) (=> (= (ControlFlow 0 20) 4) anon29_Else_correct)))))))
(let ((anon27_Else_correct  (=> (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 right_1) null) (=> (and (= UnfoldingMask@5 UnfoldingMask@3) (= (ControlFlow 0 23) 20)) anon8_correct))))
(let ((anon27_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 right_1) null)) (= UnfoldingMask@4 (PolymorphicMapType_11101 (store (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| UnfoldingMask@3) null (BTree (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 right_1)) (+ (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| UnfoldingMask@3) null (BTree (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 right_1))) FullPerm)) (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| UnfoldingMask@3) (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| UnfoldingMask@3) (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| UnfoldingMask@3) (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| UnfoldingMask@3) (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| UnfoldingMask@3) (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| UnfoldingMask@3) (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| UnfoldingMask@3) (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| UnfoldingMask@3) (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| UnfoldingMask@3)))) (=> (and (and (InsidePredicate_5879_5879 (BTree tree_1@@7) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@40) null (BTree tree_1@@7)) (BTree (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 right_1)) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@40) null (BTree (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 right_1)))) (state Heap@@40 UnfoldingMask@4)) (and (= UnfoldingMask@5 UnfoldingMask@4) (= (ControlFlow 0 22) 20))) anon8_correct))))
(let ((anon6_correct  (=> (not (= tree_1@@7 null)) (=> (and (= UnfoldingMask@3 (PolymorphicMapType_11101 (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| UnfoldingMask@2) (store (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| UnfoldingMask@2) tree_1@@7 right_1 (+ (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| UnfoldingMask@2) tree_1@@7 right_1) FullPerm)) (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| UnfoldingMask@2) (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| UnfoldingMask@2) (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| UnfoldingMask@2) (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| UnfoldingMask@2) (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| UnfoldingMask@2) (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| UnfoldingMask@2) (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| UnfoldingMask@2) (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| UnfoldingMask@2))) (state Heap@@40 UnfoldingMask@3)) (and (=> (= (ControlFlow 0 24) 22) anon27_Then_correct) (=> (= (ControlFlow 0 24) 23) anon27_Else_correct))))))
(let ((anon26_Else_correct  (=> (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 left) null) (=> (and (= UnfoldingMask@2 UnfoldingMask@0) (= (ControlFlow 0 26) 24)) anon6_correct))))
(let ((anon26_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 left) null)) (= UnfoldingMask@1 (PolymorphicMapType_11101 (store (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| UnfoldingMask@0) null (BTree (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 left)) (+ (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| UnfoldingMask@0) null (BTree (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 left))) FullPerm)) (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| UnfoldingMask@0) (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| UnfoldingMask@0) (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| UnfoldingMask@0) (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| UnfoldingMask@0) (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| UnfoldingMask@0) (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| UnfoldingMask@0) (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| UnfoldingMask@0) (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| UnfoldingMask@0) (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| UnfoldingMask@0)))) (=> (and (and (InsidePredicate_5879_5879 (BTree tree_1@@7) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@40) null (BTree tree_1@@7)) (BTree (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 left)) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@40) null (BTree (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 left)))) (state Heap@@40 UnfoldingMask@1)) (and (= UnfoldingMask@2 UnfoldingMask@1) (= (ControlFlow 0 25) 24))) anon6_correct))))
(let ((anon25_Else_correct  (=> (not (= tree_1@@7 null)) (=> (and (|BTree#trigger_5879| Heap@@40 (BTree tree_1@@7)) (= (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@40) null (BTree tree_1@@7)) (CombineFrames (FrameFragment_5809 (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 left)) (CombineFrames (FrameFragment_5880 (ite (not (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 left) null)) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@40) null (BTree (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 left))) EmptyFrame)) (CombineFrames (FrameFragment_5809 (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 right_1)) (CombineFrames (FrameFragment_5880 (ite (not (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 right_1) null)) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@40) null (BTree (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@40) tree_1@@7 right_1))) EmptyFrame)) (FrameFragment_1189 (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@40) tree_1@@7 value)))))))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| Mask@1) null (BTree tree_1@@7))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| Mask@1) null (BTree tree_1@@7)))) (=> (not (= tree_1@@7 null)) (=> (and (= UnfoldingMask@0 (PolymorphicMapType_11101 (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| Mask@1) (store (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| Mask@1) tree_1@@7 left (+ (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| Mask@1) tree_1@@7 left) FullPerm)) (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| Mask@1) (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| Mask@1) (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| Mask@1) (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| Mask@1) (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| Mask@1) (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| Mask@1) (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| Mask@1) (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| Mask@1))) (state Heap@@40 UnfoldingMask@0)) (and (=> (= (ControlFlow 0 27) 25) anon26_Then_correct) (=> (= (ControlFlow 0 27) 26) anon26_Else_correct))))))))))
(let ((anon2_correct  (=> (state Heap@@40 Mask@1) (and (=> (= (ControlFlow 0 29) 10) anon25_Then_correct) (=> (= (ControlFlow 0 29) 27) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (= tree_1@@7 null) (=> (and (= Mask@1 ZeroMask) (= (ControlFlow 0 31) 29)) anon2_correct))))
(let ((anon24_Then_correct  (=> (not (= tree_1@@7 null)) (=> (and (and (= Mask@0 (PolymorphicMapType_11101 (store (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| ZeroMask) null (BTree tree_1@@7) (+ (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| ZeroMask) null (BTree tree_1@@7)) FullPerm)) (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| ZeroMask) (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| ZeroMask) (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| ZeroMask) (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| ZeroMask) (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| ZeroMask) (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| ZeroMask) (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| ZeroMask) (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| ZeroMask) (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| ZeroMask))) (state Heap@@40 Mask@0)) (and (= Mask@1 Mask@0) (= (ControlFlow 0 30) 29))) anon2_correct))))
(let ((anon0_correct  (=> (and (and (state Heap@@40 ZeroMask) (not AssumePermUpperBound)) (and (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@40) tree_1@@7 $allocated) (= AssumeFunctionsAbove 0))) (and (=> (= (ControlFlow 0 32) 30) anon24_Then_correct) (=> (= (ControlFlow 0 32) 31) anon24_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 33) 32) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))
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
(declare-sort T@Field_11140_53 0)
(declare-sort T@Field_11153_11154 0)
(declare-sort T@Field_14955_14956 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14467_1189 0)
(declare-sort T@Field_19166_19171 0)
(declare-sort T@Field_5808_5880 0)
(declare-sort T@Field_5808_19171 0)
(declare-sort T@Field_5879_5809 0)
(declare-sort T@Field_5879_53 0)
(declare-sort T@Field_5879_1189 0)
(declare-datatypes ((T@PolymorphicMapType_11101 0)) (((PolymorphicMapType_11101 (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| (Array T@Ref T@Field_14955_14956 Real)) (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| (Array T@Ref T@Field_11153_11154 Real)) (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| (Array T@Ref T@Field_14467_1189 Real)) (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| (Array T@Ref T@Field_5879_5809 Real)) (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| (Array T@Ref T@Field_5879_1189 Real)) (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| (Array T@Ref T@Field_5879_53 Real)) (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| (Array T@Ref T@Field_19166_19171 Real)) (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| (Array T@Ref T@Field_5808_5880 Real)) (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| (Array T@Ref T@Field_11140_53 Real)) (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| (Array T@Ref T@Field_5808_19171 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11629 0)) (((PolymorphicMapType_11629 (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| (Array T@Ref T@Field_11153_11154 Bool)) (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| (Array T@Ref T@Field_14467_1189 Bool)) (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| (Array T@Ref T@Field_11140_53 Bool)) (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| (Array T@Ref T@Field_5808_5880 Bool)) (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| (Array T@Ref T@Field_5808_19171 Bool)) (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| (Array T@Ref T@Field_5879_5809 Bool)) (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| (Array T@Ref T@Field_5879_1189 Bool)) (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| (Array T@Ref T@Field_5879_53 Bool)) (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| (Array T@Ref T@Field_14955_14956 Bool)) (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| (Array T@Ref T@Field_19166_19171 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11080 0)) (((PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| (Array T@Ref T@Field_11140_53 Bool)) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| (Array T@Ref T@Field_11153_11154 T@Ref)) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| (Array T@Ref T@Field_14955_14956 T@FrameType)) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| (Array T@Ref T@Field_14467_1189 Int)) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| (Array T@Ref T@Field_19166_19171 T@PolymorphicMapType_11629)) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| (Array T@Ref T@Field_5808_5880 T@FrameType)) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| (Array T@Ref T@Field_5808_19171 T@PolymorphicMapType_11629)) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| (Array T@Ref T@Field_5879_5809 T@Ref)) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| (Array T@Ref T@Field_5879_53 Bool)) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| (Array T@Ref T@Field_5879_1189 Int)) ) ) ))
(declare-fun $allocated () T@Field_11140_53)
(declare-fun value () T@Field_14467_1189)
(declare-fun left () T@Field_11153_11154)
(declare-fun right_1 () T@Field_11153_11154)
(declare-fun succHeap (T@PolymorphicMapType_11080 T@PolymorphicMapType_11080) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11080 T@PolymorphicMapType_11080) Bool)
(declare-fun state (T@PolymorphicMapType_11080 T@PolymorphicMapType_11101) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11101) Bool)
(declare-fun |tree_size_fix'| (T@PolymorphicMapType_11080 T@Ref Int Int) Int)
(declare-fun dummyFunction_1473 (Int) Bool)
(declare-fun |tree_size_fix#triggerStateless| (T@Ref Int Int) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_11629)
(declare-fun tree_size (T@PolymorphicMapType_11080 T@Ref) Int)
(declare-fun |tree_size#triggerStateless| (T@Ref) Int)
(declare-fun |BTree#trigger_5879| (T@PolymorphicMapType_11080 T@Field_14955_14956) Bool)
(declare-fun BTree (T@Ref) T@Field_14955_14956)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun null () T@Ref)
(declare-fun |tree_size'| (T@PolymorphicMapType_11080 T@Ref) Int)
(declare-fun IsPredicateField_5879_5880 (T@Field_14955_14956) Bool)
(declare-fun |BTree#everUsed_5879| (T@Field_14955_14956) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11080 T@PolymorphicMapType_11080 T@PolymorphicMapType_11101) Bool)
(declare-fun PredicateMaskField_5879 (T@Field_14955_14956) T@Field_19166_19171)
(declare-fun HasDirectPerm_5879_5880 (T@PolymorphicMapType_11101 T@Ref T@Field_14955_14956) Bool)
(declare-fun IsPredicateField_5808_40114 (T@Field_5808_5880) Bool)
(declare-fun PredicateMaskField_5808 (T@Field_5808_5880) T@Field_5808_19171)
(declare-fun HasDirectPerm_5808_5880 (T@PolymorphicMapType_11101 T@Ref T@Field_5808_5880) Bool)
(declare-fun IsWandField_5879_43784 (T@Field_14955_14956) Bool)
(declare-fun WandMaskField_5879 (T@Field_14955_14956) T@Field_19166_19171)
(declare-fun IsWandField_5808_43427 (T@Field_5808_5880) Bool)
(declare-fun WandMaskField_5808 (T@Field_5808_5880) T@Field_5808_19171)
(declare-fun |tree_size#frame| (T@FrameType T@Ref) Int)
(declare-fun FrameFragment_5880 (T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |BTree#sm| (T@Ref) T@Field_19166_19171)
(declare-fun dummyHeap () T@PolymorphicMapType_11080)
(declare-fun ZeroMask () T@PolymorphicMapType_11101)
(declare-fun InsidePredicate_11140_11140 (T@Field_5808_5880 T@FrameType T@Field_5808_5880 T@FrameType) Bool)
(declare-fun InsidePredicate_5879_5879 (T@Field_14955_14956 T@FrameType T@Field_14955_14956 T@FrameType) Bool)
(declare-fun IsPredicateField_5806_1189 (T@Field_14467_1189) Bool)
(declare-fun IsWandField_5806_1189 (T@Field_14467_1189) Bool)
(declare-fun IsPredicateField_5808_5809 (T@Field_11153_11154) Bool)
(declare-fun IsWandField_5808_5809 (T@Field_11153_11154) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5808_50687 (T@Field_5808_19171) Bool)
(declare-fun IsWandField_5808_50703 (T@Field_5808_19171) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5808_53 (T@Field_11140_53) Bool)
(declare-fun IsWandField_5808_53 (T@Field_11140_53) Bool)
(declare-fun IsPredicateField_5879_49884 (T@Field_19166_19171) Bool)
(declare-fun IsWandField_5879_49900 (T@Field_19166_19171) Bool)
(declare-fun IsPredicateField_5879_53 (T@Field_5879_53) Bool)
(declare-fun IsWandField_5879_53 (T@Field_5879_53) Bool)
(declare-fun IsPredicateField_5879_1189 (T@Field_5879_1189) Bool)
(declare-fun IsWandField_5879_1189 (T@Field_5879_1189) Bool)
(declare-fun IsPredicateField_5879_5809 (T@Field_5879_5809) Bool)
(declare-fun IsWandField_5879_5809 (T@Field_5879_5809) Bool)
(declare-fun |tree_size_fix#frame| (T@FrameType T@Ref Int Int) Int)
(declare-fun tree_size_fix (T@PolymorphicMapType_11080 T@Ref Int Int) Int)
(declare-fun HasDirectPerm_5879_39869 (T@PolymorphicMapType_11101 T@Ref T@Field_19166_19171) Bool)
(declare-fun HasDirectPerm_5879_1189 (T@PolymorphicMapType_11101 T@Ref T@Field_5879_1189) Bool)
(declare-fun HasDirectPerm_5879_53 (T@PolymorphicMapType_11101 T@Ref T@Field_5879_53) Bool)
(declare-fun HasDirectPerm_5879_5809 (T@PolymorphicMapType_11101 T@Ref T@Field_5879_5809) Bool)
(declare-fun HasDirectPerm_5808_38728 (T@PolymorphicMapType_11101 T@Ref T@Field_5808_19171) Bool)
(declare-fun HasDirectPerm_5808_1189 (T@PolymorphicMapType_11101 T@Ref T@Field_14467_1189) Bool)
(declare-fun HasDirectPerm_5808_53 (T@PolymorphicMapType_11101 T@Ref T@Field_11140_53) Bool)
(declare-fun HasDirectPerm_5808_5809 (T@PolymorphicMapType_11101 T@Ref T@Field_11153_11154) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11101 T@PolymorphicMapType_11101 T@PolymorphicMapType_11101) Bool)
(declare-fun getPredWandId_5879_5880 (T@Field_14955_14956) Int)
(declare-fun InsidePredicate_11140_5879 (T@Field_5808_5880 T@FrameType T@Field_14955_14956 T@FrameType) Bool)
(declare-fun InsidePredicate_5879_11140 (T@Field_14955_14956 T@FrameType T@Field_5808_5880 T@FrameType) Bool)
(assert (distinct left right_1)
)
(assert (forall ((Heap0 T@PolymorphicMapType_11080) (Heap1 T@PolymorphicMapType_11080) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11080) (Mask T@PolymorphicMapType_11101) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11080) (Heap1@@0 T@PolymorphicMapType_11080) (Heap2 T@PolymorphicMapType_11080) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11080) (tree_1 T@Ref) (i Int) (b_24 Int) ) (! (dummyFunction_1473 (|tree_size_fix#triggerStateless| tree_1 i b_24))
 :qid |stdinbpl.380:15|
 :skolemid |29|
 :pattern ( (|tree_size_fix'| Heap@@0 tree_1 i b_24))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_19166_19171) ) (!  (not (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_14955_14956) ) (!  (not (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5879_53) ) (!  (not (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5879_1189) ) (!  (not (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5879_5809) ) (!  (not (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_5808_19171) ) (!  (not (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5808_5880) ) (!  (not (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_11140_53) ) (!  (not (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_14467_1189) ) (!  (not (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11153_11154) ) (!  (not (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11080) (Mask@@0 T@PolymorphicMapType_11101) (tree_1@@0 T@Ref) ) (!  (=> (and (state Heap@@1 Mask@@0) (< AssumeFunctionsAbove 0)) (= (tree_size Heap@@1 tree_1@@0) (ite (= tree_1@@0 null) 0 (+ (+ 1 (|tree_size'| Heap@@1 (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@1) tree_1@@0 left))) (|tree_size'| Heap@@1 (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@1) tree_1@@0 right_1))))))
 :qid |stdinbpl.211:15|
 :skolemid |24|
 :pattern ( (state Heap@@1 Mask@@0) (tree_size Heap@@1 tree_1@@0))
 :pattern ( (state Heap@@1 Mask@@0) (|tree_size#triggerStateless| tree_1@@0) (|BTree#trigger_5879| Heap@@1 (BTree tree_1@@0)) (|BTree#trigger_5879| Heap@@1 (BTree tree_1@@0)))
)))
(assert (forall ((self T@Ref) ) (! (IsPredicateField_5879_5880 (BTree self))
 :qid |stdinbpl.555:15|
 :skolemid |35|
 :pattern ( (BTree self))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11080) (tree_1@@1 T@Ref) ) (! (dummyFunction_1473 (|tree_size#triggerStateless| tree_1@@1))
 :qid |stdinbpl.205:15|
 :skolemid |23|
 :pattern ( (|tree_size'| Heap@@2 tree_1@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11080) (self@@0 T@Ref) ) (! (|BTree#everUsed_5879| (BTree self@@0))
 :qid |stdinbpl.574:15|
 :skolemid |39|
 :pattern ( (|BTree#trigger_5879| Heap@@3 (BTree self@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11080) (tree_1@@2 T@Ref) ) (!  (and (= (tree_size Heap@@4 tree_1@@2) (|tree_size'| Heap@@4 tree_1@@2)) (dummyFunction_1473 (|tree_size#triggerStateless| tree_1@@2)))
 :qid |stdinbpl.201:15|
 :skolemid |22|
 :pattern ( (tree_size Heap@@4 tree_1@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11080) (ExhaleHeap T@PolymorphicMapType_11080) (Mask@@1 T@PolymorphicMapType_11101) (pm_f_28 T@Field_14955_14956) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_5879_5880 Mask@@1 null pm_f_28) (IsPredicateField_5879_5880 pm_f_28)) (= (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@5) null (PredicateMaskField_5879 pm_f_28)) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap) null (PredicateMaskField_5879 pm_f_28)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (IsPredicateField_5879_5880 pm_f_28) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap) null (PredicateMaskField_5879 pm_f_28)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11080) (ExhaleHeap@@0 T@PolymorphicMapType_11080) (Mask@@2 T@PolymorphicMapType_11101) (pm_f_28@@0 T@Field_5808_5880) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_5808_5880 Mask@@2 null pm_f_28@@0) (IsPredicateField_5808_40114 pm_f_28@@0)) (= (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@6) null (PredicateMaskField_5808 pm_f_28@@0)) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@0) null (PredicateMaskField_5808 pm_f_28@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (IsPredicateField_5808_40114 pm_f_28@@0) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@0) null (PredicateMaskField_5808 pm_f_28@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11080) (ExhaleHeap@@1 T@PolymorphicMapType_11080) (Mask@@3 T@PolymorphicMapType_11101) (pm_f_28@@1 T@Field_14955_14956) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_5879_5880 Mask@@3 null pm_f_28@@1) (IsWandField_5879_43784 pm_f_28@@1)) (= (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@7) null (WandMaskField_5879 pm_f_28@@1)) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@1) null (WandMaskField_5879 pm_f_28@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (IsWandField_5879_43784 pm_f_28@@1) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@1) null (WandMaskField_5879 pm_f_28@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11080) (ExhaleHeap@@2 T@PolymorphicMapType_11080) (Mask@@4 T@PolymorphicMapType_11101) (pm_f_28@@2 T@Field_5808_5880) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_5808_5880 Mask@@4 null pm_f_28@@2) (IsWandField_5808_43427 pm_f_28@@2)) (= (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@8) null (WandMaskField_5808 pm_f_28@@2)) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@2) null (WandMaskField_5808 pm_f_28@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (IsWandField_5808_43427 pm_f_28@@2) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@2) null (WandMaskField_5808 pm_f_28@@2)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11080) (Mask@@5 T@PolymorphicMapType_11101) (tree_1@@3 T@Ref) ) (!  (=> (state Heap@@9 Mask@@5) (= (|tree_size'| Heap@@9 tree_1@@3) (|tree_size#frame| (FrameFragment_5880 (ite (not (= tree_1@@3 null)) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@9) null (BTree tree_1@@3)) EmptyFrame)) tree_1@@3)))
 :qid |stdinbpl.218:15|
 :skolemid |25|
 :pattern ( (state Heap@@9 Mask@@5) (|tree_size'| Heap@@9 tree_1@@3))
 :pattern ( (state Heap@@9 Mask@@5) (|tree_size#triggerStateless| tree_1@@3) (|BTree#trigger_5879| Heap@@9 (BTree tree_1@@3)) (|BTree#trigger_5879| Heap@@9 (BTree tree_1@@3)))
)))
(assert (forall ((self@@1 T@Ref) (self2 T@Ref) ) (!  (=> (= (BTree self@@1) (BTree self2)) (= self@@1 self2))
 :qid |stdinbpl.565:15|
 :skolemid |37|
 :pattern ( (BTree self@@1) (BTree self2))
)))
(assert (forall ((self@@2 T@Ref) (self2@@0 T@Ref) ) (!  (=> (= (|BTree#sm| self@@2) (|BTree#sm| self2@@0)) (= self@@2 self2@@0))
 :qid |stdinbpl.569:15|
 :skolemid |38|
 :pattern ( (|BTree#sm| self@@2) (|BTree#sm| self2@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11080) (ExhaleHeap@@3 T@PolymorphicMapType_11080) (Mask@@6 T@PolymorphicMapType_11101) (pm_f_28@@3 T@Field_14955_14956) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@6) (=> (and (HasDirectPerm_5879_5880 Mask@@6 null pm_f_28@@3) (IsPredicateField_5879_5880 pm_f_28@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_28 T@Ref) (f_27 T@Field_11153_11154) ) (!  (=> (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28 f_27) (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@10) o2_28 f_27) (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28 f_27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28 f_27))
)) (forall ((o2_28@@0 T@Ref) (f_27@@0 T@Field_14467_1189) ) (!  (=> (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28@@0 f_27@@0) (= (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@10) o2_28@@0 f_27@@0) (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@0 f_27@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@0 f_27@@0))
))) (forall ((o2_28@@1 T@Ref) (f_27@@1 T@Field_11140_53) ) (!  (=> (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28@@1 f_27@@1) (= (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@10) o2_28@@1 f_27@@1) (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@1 f_27@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@1 f_27@@1))
))) (forall ((o2_28@@2 T@Ref) (f_27@@2 T@Field_5808_5880) ) (!  (=> (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28@@2 f_27@@2) (= (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@10) o2_28@@2 f_27@@2) (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@2 f_27@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@2 f_27@@2))
))) (forall ((o2_28@@3 T@Ref) (f_27@@3 T@Field_5808_19171) ) (!  (=> (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28@@3 f_27@@3) (= (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@10) o2_28@@3 f_27@@3) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@3 f_27@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@3 f_27@@3))
))) (forall ((o2_28@@4 T@Ref) (f_27@@4 T@Field_5879_5809) ) (!  (=> (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28@@4 f_27@@4) (= (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@10) o2_28@@4 f_27@@4) (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@4 f_27@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@4 f_27@@4))
))) (forall ((o2_28@@5 T@Ref) (f_27@@5 T@Field_5879_1189) ) (!  (=> (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28@@5 f_27@@5) (= (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@10) o2_28@@5 f_27@@5) (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@5 f_27@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@5 f_27@@5))
))) (forall ((o2_28@@6 T@Ref) (f_27@@6 T@Field_5879_53) ) (!  (=> (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28@@6 f_27@@6) (= (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@10) o2_28@@6 f_27@@6) (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@6 f_27@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@6 f_27@@6))
))) (forall ((o2_28@@7 T@Ref) (f_27@@7 T@Field_14955_14956) ) (!  (=> (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28@@7 f_27@@7) (= (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@10) o2_28@@7 f_27@@7) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@7 f_27@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@7 f_27@@7))
))) (forall ((o2_28@@8 T@Ref) (f_27@@8 T@Field_19166_19171) ) (!  (=> (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) null (PredicateMaskField_5879 pm_f_28@@3))) o2_28@@8 f_27@@8) (= (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@10) o2_28@@8 f_27@@8) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@8 f_27@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@3) o2_28@@8 f_27@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@6) (IsPredicateField_5879_5880 pm_f_28@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11080) (ExhaleHeap@@4 T@PolymorphicMapType_11080) (Mask@@7 T@PolymorphicMapType_11101) (pm_f_28@@4 T@Field_5808_5880) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@7) (=> (and (HasDirectPerm_5808_5880 Mask@@7 null pm_f_28@@4) (IsPredicateField_5808_40114 pm_f_28@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_28@@9 T@Ref) (f_27@@9 T@Field_11153_11154) ) (!  (=> (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@9 f_27@@9) (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@11) o2_28@@9 f_27@@9) (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@9 f_27@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@9 f_27@@9))
)) (forall ((o2_28@@10 T@Ref) (f_27@@10 T@Field_14467_1189) ) (!  (=> (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@10 f_27@@10) (= (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@11) o2_28@@10 f_27@@10) (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@10 f_27@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@10 f_27@@10))
))) (forall ((o2_28@@11 T@Ref) (f_27@@11 T@Field_11140_53) ) (!  (=> (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@11 f_27@@11) (= (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@11) o2_28@@11 f_27@@11) (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@11 f_27@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@11 f_27@@11))
))) (forall ((o2_28@@12 T@Ref) (f_27@@12 T@Field_5808_5880) ) (!  (=> (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@12 f_27@@12) (= (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@11) o2_28@@12 f_27@@12) (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@12 f_27@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@12 f_27@@12))
))) (forall ((o2_28@@13 T@Ref) (f_27@@13 T@Field_5808_19171) ) (!  (=> (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@13 f_27@@13) (= (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) o2_28@@13 f_27@@13) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@13 f_27@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@13 f_27@@13))
))) (forall ((o2_28@@14 T@Ref) (f_27@@14 T@Field_5879_5809) ) (!  (=> (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@14 f_27@@14) (= (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@11) o2_28@@14 f_27@@14) (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@14 f_27@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@14 f_27@@14))
))) (forall ((o2_28@@15 T@Ref) (f_27@@15 T@Field_5879_1189) ) (!  (=> (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@15 f_27@@15) (= (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@11) o2_28@@15 f_27@@15) (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@15 f_27@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@15 f_27@@15))
))) (forall ((o2_28@@16 T@Ref) (f_27@@16 T@Field_5879_53) ) (!  (=> (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@16 f_27@@16) (= (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@11) o2_28@@16 f_27@@16) (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@16 f_27@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@16 f_27@@16))
))) (forall ((o2_28@@17 T@Ref) (f_27@@17 T@Field_14955_14956) ) (!  (=> (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@17 f_27@@17) (= (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@11) o2_28@@17 f_27@@17) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@17 f_27@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@17 f_27@@17))
))) (forall ((o2_28@@18 T@Ref) (f_27@@18 T@Field_19166_19171) ) (!  (=> (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@11) null (PredicateMaskField_5808 pm_f_28@@4))) o2_28@@18 f_27@@18) (= (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@11) o2_28@@18 f_27@@18) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@18 f_27@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@4) o2_28@@18 f_27@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@7) (IsPredicateField_5808_40114 pm_f_28@@4))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11080) (ExhaleHeap@@5 T@PolymorphicMapType_11080) (Mask@@8 T@PolymorphicMapType_11101) (pm_f_28@@5 T@Field_14955_14956) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@8) (=> (and (HasDirectPerm_5879_5880 Mask@@8 null pm_f_28@@5) (IsWandField_5879_43784 pm_f_28@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_28@@19 T@Ref) (f_27@@19 T@Field_11153_11154) ) (!  (=> (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@19 f_27@@19) (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@12) o2_28@@19 f_27@@19) (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@19 f_27@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@19 f_27@@19))
)) (forall ((o2_28@@20 T@Ref) (f_27@@20 T@Field_14467_1189) ) (!  (=> (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@20 f_27@@20) (= (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@12) o2_28@@20 f_27@@20) (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@20 f_27@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@20 f_27@@20))
))) (forall ((o2_28@@21 T@Ref) (f_27@@21 T@Field_11140_53) ) (!  (=> (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@21 f_27@@21) (= (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@12) o2_28@@21 f_27@@21) (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@21 f_27@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@21 f_27@@21))
))) (forall ((o2_28@@22 T@Ref) (f_27@@22 T@Field_5808_5880) ) (!  (=> (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@22 f_27@@22) (= (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@12) o2_28@@22 f_27@@22) (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@22 f_27@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@22 f_27@@22))
))) (forall ((o2_28@@23 T@Ref) (f_27@@23 T@Field_5808_19171) ) (!  (=> (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@23 f_27@@23) (= (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@12) o2_28@@23 f_27@@23) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@23 f_27@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@23 f_27@@23))
))) (forall ((o2_28@@24 T@Ref) (f_27@@24 T@Field_5879_5809) ) (!  (=> (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@24 f_27@@24) (= (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@12) o2_28@@24 f_27@@24) (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@24 f_27@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@24 f_27@@24))
))) (forall ((o2_28@@25 T@Ref) (f_27@@25 T@Field_5879_1189) ) (!  (=> (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@25 f_27@@25) (= (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@12) o2_28@@25 f_27@@25) (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@25 f_27@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@25 f_27@@25))
))) (forall ((o2_28@@26 T@Ref) (f_27@@26 T@Field_5879_53) ) (!  (=> (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@26 f_27@@26) (= (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@12) o2_28@@26 f_27@@26) (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@26 f_27@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@26 f_27@@26))
))) (forall ((o2_28@@27 T@Ref) (f_27@@27 T@Field_14955_14956) ) (!  (=> (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@27 f_27@@27) (= (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@12) o2_28@@27 f_27@@27) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@27 f_27@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@27 f_27@@27))
))) (forall ((o2_28@@28 T@Ref) (f_27@@28 T@Field_19166_19171) ) (!  (=> (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) null (WandMaskField_5879 pm_f_28@@5))) o2_28@@28 f_27@@28) (= (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@12) o2_28@@28 f_27@@28) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@28 f_27@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@5) o2_28@@28 f_27@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@8) (IsWandField_5879_43784 pm_f_28@@5))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11080) (ExhaleHeap@@6 T@PolymorphicMapType_11080) (Mask@@9 T@PolymorphicMapType_11101) (pm_f_28@@6 T@Field_5808_5880) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@9) (=> (and (HasDirectPerm_5808_5880 Mask@@9 null pm_f_28@@6) (IsWandField_5808_43427 pm_f_28@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_28@@29 T@Ref) (f_27@@29 T@Field_11153_11154) ) (!  (=> (select (|PolymorphicMapType_11629_5808_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@29 f_27@@29) (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@13) o2_28@@29 f_27@@29) (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@29 f_27@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@29 f_27@@29))
)) (forall ((o2_28@@30 T@Ref) (f_27@@30 T@Field_14467_1189) ) (!  (=> (select (|PolymorphicMapType_11629_5806_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@30 f_27@@30) (= (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@13) o2_28@@30 f_27@@30) (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@30 f_27@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@30 f_27@@30))
))) (forall ((o2_28@@31 T@Ref) (f_27@@31 T@Field_11140_53) ) (!  (=> (select (|PolymorphicMapType_11629_5808_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@31 f_27@@31) (= (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@13) o2_28@@31 f_27@@31) (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@31 f_27@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@31 f_27@@31))
))) (forall ((o2_28@@32 T@Ref) (f_27@@32 T@Field_5808_5880) ) (!  (=> (select (|PolymorphicMapType_11629_5808_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@32 f_27@@32) (= (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@13) o2_28@@32 f_27@@32) (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@32 f_27@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@32 f_27@@32))
))) (forall ((o2_28@@33 T@Ref) (f_27@@33 T@Field_5808_19171) ) (!  (=> (select (|PolymorphicMapType_11629_5808_41571#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@33 f_27@@33) (= (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) o2_28@@33 f_27@@33) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@33 f_27@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@33 f_27@@33))
))) (forall ((o2_28@@34 T@Ref) (f_27@@34 T@Field_5879_5809) ) (!  (=> (select (|PolymorphicMapType_11629_14955_5809#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@34 f_27@@34) (= (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@13) o2_28@@34 f_27@@34) (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@34 f_27@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@34 f_27@@34))
))) (forall ((o2_28@@35 T@Ref) (f_27@@35 T@Field_5879_1189) ) (!  (=> (select (|PolymorphicMapType_11629_14955_1189#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@35 f_27@@35) (= (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@13) o2_28@@35 f_27@@35) (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@35 f_27@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@35 f_27@@35))
))) (forall ((o2_28@@36 T@Ref) (f_27@@36 T@Field_5879_53) ) (!  (=> (select (|PolymorphicMapType_11629_14955_53#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@36 f_27@@36) (= (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@13) o2_28@@36 f_27@@36) (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@36 f_27@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@36 f_27@@36))
))) (forall ((o2_28@@37 T@Ref) (f_27@@37 T@Field_14955_14956) ) (!  (=> (select (|PolymorphicMapType_11629_14955_14956#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@37 f_27@@37) (= (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@13) o2_28@@37 f_27@@37) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@37 f_27@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@37 f_27@@37))
))) (forall ((o2_28@@38 T@Ref) (f_27@@38 T@Field_19166_19171) ) (!  (=> (select (|PolymorphicMapType_11629_14955_42619#PolymorphicMapType_11629| (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@13) null (WandMaskField_5808 pm_f_28@@6))) o2_28@@38 f_27@@38) (= (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@13) o2_28@@38 f_27@@38) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@38 f_27@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@6) o2_28@@38 f_27@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@9) (IsWandField_5808_43427 pm_f_28@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11080) (ExhaleHeap@@7 T@PolymorphicMapType_11080) (Mask@@10 T@PolymorphicMapType_11101) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@14) o_41 $allocated) (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@7) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@7) o_41 $allocated))
)))
(assert (forall ((p T@Field_5808_5880) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11140_11140 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11140_11140 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_14955_14956) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_5879_5879 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5879_5879 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_5806_1189 value)))
(assert  (not (IsWandField_5806_1189 value)))
(assert  (not (IsPredicateField_5808_5809 left)))
(assert  (not (IsWandField_5808_5809 left)))
(assert  (not (IsPredicateField_5808_5809 right_1)))
(assert  (not (IsWandField_5808_5809 right_1)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11080) (ExhaleHeap@@8 T@PolymorphicMapType_11080) (Mask@@11 T@PolymorphicMapType_11101) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@15 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11101) (o_2@@9 T@Ref) (f_4@@9 T@Field_5808_19171) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5808_50687 f_4@@9))) (not (IsWandField_5808_50703 f_4@@9))) (<= (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11101) (o_2@@10 T@Ref) (f_4@@10 T@Field_11140_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5808_53 f_4@@10))) (not (IsWandField_5808_53 f_4@@10))) (<= (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_11101) (o_2@@11 T@Ref) (f_4@@11 T@Field_14467_1189) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5806_1189 f_4@@11))) (not (IsWandField_5806_1189 f_4@@11))) (<= (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_11101) (o_2@@12 T@Ref) (f_4@@12 T@Field_11153_11154) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5808_5809 f_4@@12))) (not (IsWandField_5808_5809 f_4@@12))) (<= (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_11101) (o_2@@13 T@Ref) (f_4@@13 T@Field_5808_5880) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5808_40114 f_4@@13))) (not (IsWandField_5808_43427 f_4@@13))) (<= (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_11101) (o_2@@14 T@Ref) (f_4@@14 T@Field_19166_19171) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5879_49884 f_4@@14))) (not (IsWandField_5879_49900 f_4@@14))) (<= (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_11101) (o_2@@15 T@Ref) (f_4@@15 T@Field_5879_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| Mask@@18) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5879_53 f_4@@15))) (not (IsWandField_5879_53 f_4@@15))) (<= (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| Mask@@18) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| Mask@@18) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_11101) (o_2@@16 T@Ref) (f_4@@16 T@Field_5879_1189) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| Mask@@19) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5879_1189 f_4@@16))) (not (IsWandField_5879_1189 f_4@@16))) (<= (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| Mask@@19) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| Mask@@19) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_11101) (o_2@@17 T@Ref) (f_4@@17 T@Field_5879_5809) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| Mask@@20) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5879_5809 f_4@@17))) (not (IsWandField_5879_5809 f_4@@17))) (<= (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| Mask@@20) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| Mask@@20) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_11101) (o_2@@18 T@Ref) (f_4@@18 T@Field_14955_14956) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| Mask@@21) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5879_5880 f_4@@18))) (not (IsWandField_5879_43784 f_4@@18))) (<= (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| Mask@@21) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| Mask@@21) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11080) (Mask@@22 T@PolymorphicMapType_11101) (tree_1@@4 T@Ref) (i@@0 Int) (b_24@@0 Int) ) (!  (=> (state Heap@@16 Mask@@22) (= (|tree_size_fix'| Heap@@16 tree_1@@4 i@@0 b_24@@0) (|tree_size_fix#frame| (FrameFragment_5880 (ite (not (= tree_1@@4 null)) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@16) null (BTree tree_1@@4)) EmptyFrame)) tree_1@@4 i@@0 b_24@@0)))
 :qid |stdinbpl.393:15|
 :skolemid |31|
 :pattern ( (state Heap@@16 Mask@@22) (|tree_size_fix'| Heap@@16 tree_1@@4 i@@0 b_24@@0))
 :pattern ( (state Heap@@16 Mask@@22) (|tree_size_fix#triggerStateless| tree_1@@4 i@@0 b_24@@0) (|BTree#trigger_5879| Heap@@16 (BTree tree_1@@4)) (|BTree#trigger_5879| Heap@@16 (BTree tree_1@@4)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11080) (Mask@@23 T@PolymorphicMapType_11101) (tree_1@@5 T@Ref) (i@@1 Int) (b_24@@1 Int) ) (!  (=> (and (state Heap@@17 Mask@@23) (< AssumeFunctionsAbove 1)) (= (tree_size_fix Heap@@17 tree_1@@5 i@@1 b_24@@1) (ite (= tree_1@@5 null) 0 (+ (+ 1 (|tree_size_fix'| Heap@@17 (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@17) tree_1@@5 left) i@@1 b_24@@1)) (|tree_size_fix'| Heap@@17 (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@17) tree_1@@5 right_1) i@@1 b_24@@1)))))
 :qid |stdinbpl.386:15|
 :skolemid |30|
 :pattern ( (state Heap@@17 Mask@@23) (tree_size_fix Heap@@17 tree_1@@5 i@@1 b_24@@1))
 :pattern ( (state Heap@@17 Mask@@23) (|tree_size_fix#triggerStateless| tree_1@@5 i@@1 b_24@@1) (|BTree#trigger_5879| Heap@@17 (BTree tree_1@@5)) (|BTree#trigger_5879| Heap@@17 (BTree tree_1@@5)))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_11101) (o_2@@19 T@Ref) (f_4@@19 T@Field_19166_19171) ) (! (= (HasDirectPerm_5879_39869 Mask@@24 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| Mask@@24) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5879_39869 Mask@@24 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_11101) (o_2@@20 T@Ref) (f_4@@20 T@Field_5879_1189) ) (! (= (HasDirectPerm_5879_1189 Mask@@25 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| Mask@@25) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5879_1189 Mask@@25 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_11101) (o_2@@21 T@Ref) (f_4@@21 T@Field_5879_53) ) (! (= (HasDirectPerm_5879_53 Mask@@26 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| Mask@@26) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5879_53 Mask@@26 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_11101) (o_2@@22 T@Ref) (f_4@@22 T@Field_14955_14956) ) (! (= (HasDirectPerm_5879_5880 Mask@@27 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| Mask@@27) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5879_5880 Mask@@27 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_11101) (o_2@@23 T@Ref) (f_4@@23 T@Field_5879_5809) ) (! (= (HasDirectPerm_5879_5809 Mask@@28 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| Mask@@28) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5879_5809 Mask@@28 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_11101) (o_2@@24 T@Ref) (f_4@@24 T@Field_5808_19171) ) (! (= (HasDirectPerm_5808_38728 Mask@@29 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| Mask@@29) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5808_38728 Mask@@29 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_11101) (o_2@@25 T@Ref) (f_4@@25 T@Field_14467_1189) ) (! (= (HasDirectPerm_5808_1189 Mask@@30 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| Mask@@30) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5808_1189 Mask@@30 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_11101) (o_2@@26 T@Ref) (f_4@@26 T@Field_11140_53) ) (! (= (HasDirectPerm_5808_53 Mask@@31 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| Mask@@31) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5808_53 Mask@@31 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_11101) (o_2@@27 T@Ref) (f_4@@27 T@Field_5808_5880) ) (! (= (HasDirectPerm_5808_5880 Mask@@32 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| Mask@@32) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5808_5880 Mask@@32 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_11101) (o_2@@28 T@Ref) (f_4@@28 T@Field_11153_11154) ) (! (= (HasDirectPerm_5808_5809 Mask@@33 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| Mask@@33) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5808_5809 Mask@@33 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11080) (ExhaleHeap@@9 T@PolymorphicMapType_11080) (Mask@@34 T@PolymorphicMapType_11101) (o_41@@0 T@Ref) (f_27@@39 T@Field_19166_19171) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@34) (=> (HasDirectPerm_5879_39869 Mask@@34 o_41@@0 f_27@@39) (= (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@18) o_41@@0 f_27@@39) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@9) o_41@@0 f_27@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@34) (select (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| ExhaleHeap@@9) o_41@@0 f_27@@39))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11080) (ExhaleHeap@@10 T@PolymorphicMapType_11080) (Mask@@35 T@PolymorphicMapType_11101) (o_41@@1 T@Ref) (f_27@@40 T@Field_5879_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@10 Mask@@35) (=> (HasDirectPerm_5879_1189 Mask@@35 o_41@@1 f_27@@40) (= (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@19) o_41@@1 f_27@@40) (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@10) o_41@@1 f_27@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@10 Mask@@35) (select (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| ExhaleHeap@@10) o_41@@1 f_27@@40))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11080) (ExhaleHeap@@11 T@PolymorphicMapType_11080) (Mask@@36 T@PolymorphicMapType_11101) (o_41@@2 T@Ref) (f_27@@41 T@Field_5879_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@11 Mask@@36) (=> (HasDirectPerm_5879_53 Mask@@36 o_41@@2 f_27@@41) (= (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@20) o_41@@2 f_27@@41) (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@11) o_41@@2 f_27@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@11 Mask@@36) (select (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| ExhaleHeap@@11) o_41@@2 f_27@@41))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_11080) (ExhaleHeap@@12 T@PolymorphicMapType_11080) (Mask@@37 T@PolymorphicMapType_11101) (o_41@@3 T@Ref) (f_27@@42 T@Field_14955_14956) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@12 Mask@@37) (=> (HasDirectPerm_5879_5880 Mask@@37 o_41@@3 f_27@@42) (= (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@21) o_41@@3 f_27@@42) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@12) o_41@@3 f_27@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@12 Mask@@37) (select (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| ExhaleHeap@@12) o_41@@3 f_27@@42))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_11080) (ExhaleHeap@@13 T@PolymorphicMapType_11080) (Mask@@38 T@PolymorphicMapType_11101) (o_41@@4 T@Ref) (f_27@@43 T@Field_5879_5809) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@13 Mask@@38) (=> (HasDirectPerm_5879_5809 Mask@@38 o_41@@4 f_27@@43) (= (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@22) o_41@@4 f_27@@43) (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@13) o_41@@4 f_27@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@13 Mask@@38) (select (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| ExhaleHeap@@13) o_41@@4 f_27@@43))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_11080) (ExhaleHeap@@14 T@PolymorphicMapType_11080) (Mask@@39 T@PolymorphicMapType_11101) (o_41@@5 T@Ref) (f_27@@44 T@Field_5808_19171) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@14 Mask@@39) (=> (HasDirectPerm_5808_38728 Mask@@39 o_41@@5 f_27@@44) (= (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@23) o_41@@5 f_27@@44) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@14) o_41@@5 f_27@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@14 Mask@@39) (select (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| ExhaleHeap@@14) o_41@@5 f_27@@44))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_11080) (ExhaleHeap@@15 T@PolymorphicMapType_11080) (Mask@@40 T@PolymorphicMapType_11101) (o_41@@6 T@Ref) (f_27@@45 T@Field_14467_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@15 Mask@@40) (=> (HasDirectPerm_5808_1189 Mask@@40 o_41@@6 f_27@@45) (= (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@24) o_41@@6 f_27@@45) (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@15) o_41@@6 f_27@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@15 Mask@@40) (select (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| ExhaleHeap@@15) o_41@@6 f_27@@45))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11080) (ExhaleHeap@@16 T@PolymorphicMapType_11080) (Mask@@41 T@PolymorphicMapType_11101) (o_41@@7 T@Ref) (f_27@@46 T@Field_11140_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@16 Mask@@41) (=> (HasDirectPerm_5808_53 Mask@@41 o_41@@7 f_27@@46) (= (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@25) o_41@@7 f_27@@46) (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@16) o_41@@7 f_27@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@16 Mask@@41) (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| ExhaleHeap@@16) o_41@@7 f_27@@46))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11080) (ExhaleHeap@@17 T@PolymorphicMapType_11080) (Mask@@42 T@PolymorphicMapType_11101) (o_41@@8 T@Ref) (f_27@@47 T@Field_5808_5880) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@17 Mask@@42) (=> (HasDirectPerm_5808_5880 Mask@@42 o_41@@8 f_27@@47) (= (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@26) o_41@@8 f_27@@47) (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@17) o_41@@8 f_27@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@17 Mask@@42) (select (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| ExhaleHeap@@17) o_41@@8 f_27@@47))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11080) (ExhaleHeap@@18 T@PolymorphicMapType_11080) (Mask@@43 T@PolymorphicMapType_11101) (o_41@@9 T@Ref) (f_27@@48 T@Field_11153_11154) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@18 Mask@@43) (=> (HasDirectPerm_5808_5809 Mask@@43 o_41@@9 f_27@@48) (= (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@27) o_41@@9 f_27@@48) (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@18) o_41@@9 f_27@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@18 Mask@@43) (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| ExhaleHeap@@18) o_41@@9 f_27@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_5808_19171) ) (! (= (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_11140_53) ) (! (= (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_14467_1189) ) (! (= (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_11153_11154) ) (! (= (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_5808_5880) ) (! (= (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_19166_19171) ) (! (= (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_5879_53) ) (! (= (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_5879_1189) ) (! (= (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_5879_5809) ) (! (= (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_14955_14956) ) (! (= (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11101) (SummandMask1 T@PolymorphicMapType_11101) (SummandMask2 T@PolymorphicMapType_11101) (o_2@@39 T@Ref) (f_4@@39 T@Field_5808_19171) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11101_5808_48409#PolymorphicMapType_11101| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11101) (SummandMask1@@0 T@PolymorphicMapType_11101) (SummandMask2@@0 T@PolymorphicMapType_11101) (o_2@@40 T@Ref) (f_4@@40 T@Field_11140_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11101_5808_53#PolymorphicMapType_11101| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11101) (SummandMask1@@1 T@PolymorphicMapType_11101) (SummandMask2@@1 T@PolymorphicMapType_11101) (o_2@@41 T@Ref) (f_4@@41 T@Field_14467_1189) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11101_5806_1189#PolymorphicMapType_11101| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11101) (SummandMask1@@2 T@PolymorphicMapType_11101) (SummandMask2@@2 T@PolymorphicMapType_11101) (o_2@@42 T@Ref) (f_4@@42 T@Field_11153_11154) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11101_5808_5809#PolymorphicMapType_11101| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11101) (SummandMask1@@3 T@PolymorphicMapType_11101) (SummandMask2@@3 T@PolymorphicMapType_11101) (o_2@@43 T@Ref) (f_4@@43 T@Field_5808_5880) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11101_5808_5880#PolymorphicMapType_11101| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_11101) (SummandMask1@@4 T@PolymorphicMapType_11101) (SummandMask2@@4 T@PolymorphicMapType_11101) (o_2@@44 T@Ref) (f_4@@44 T@Field_19166_19171) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11101_5879_48010#PolymorphicMapType_11101| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_11101) (SummandMask1@@5 T@PolymorphicMapType_11101) (SummandMask2@@5 T@PolymorphicMapType_11101) (o_2@@45 T@Ref) (f_4@@45 T@Field_5879_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11101_5879_53#PolymorphicMapType_11101| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_11101) (SummandMask1@@6 T@PolymorphicMapType_11101) (SummandMask2@@6 T@PolymorphicMapType_11101) (o_2@@46 T@Ref) (f_4@@46 T@Field_5879_1189) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11101_5879_1189#PolymorphicMapType_11101| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_11101) (SummandMask1@@7 T@PolymorphicMapType_11101) (SummandMask2@@7 T@PolymorphicMapType_11101) (o_2@@47 T@Ref) (f_4@@47 T@Field_5879_5809) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11101_5879_5809#PolymorphicMapType_11101| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_11101) (SummandMask1@@8 T@PolymorphicMapType_11101) (SummandMask2@@8 T@PolymorphicMapType_11101) (o_2@@48 T@Ref) (f_4@@48 T@Field_14955_14956) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11101_5879_5880#PolymorphicMapType_11101| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11080) (tree_1@@6 T@Ref) (i@@2 Int) (b_24@@2 Int) ) (!  (and (= (tree_size_fix Heap@@28 tree_1@@6 i@@2 b_24@@2) (|tree_size_fix'| Heap@@28 tree_1@@6 i@@2 b_24@@2)) (dummyFunction_1473 (|tree_size_fix#triggerStateless| tree_1@@6 i@@2 b_24@@2)))
 :qid |stdinbpl.376:15|
 :skolemid |28|
 :pattern ( (tree_size_fix Heap@@28 tree_1@@6 i@@2 b_24@@2))
)))
(assert (forall ((self@@3 T@Ref) ) (! (= (getPredWandId_5879_5880 (BTree self@@3)) 0)
 :qid |stdinbpl.559:15|
 :skolemid |36|
 :pattern ( (BTree self@@3))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11080) (o_22 T@Ref) (f_12 T@Field_19166_19171) (v T@PolymorphicMapType_11629) ) (! (succHeap Heap@@29 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@29) (store (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@29) o_22 f_12 v) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@29) (store (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@29) o_22 f_12 v) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@29) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_11080) (o_22@@0 T@Ref) (f_12@@0 T@Field_5879_1189) (v@@0 Int) ) (! (succHeap Heap@@30 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@30) (store (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@30) o_22@@0 f_12@@0 v@@0)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@30) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@30) (store (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@30) o_22@@0 f_12@@0 v@@0)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_11080) (o_22@@1 T@Ref) (f_12@@1 T@Field_14955_14956) (v@@1 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@31) (store (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@31) o_22@@1 f_12@@1 v@@1) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@31) (store (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@31) o_22@@1 f_12@@1 v@@1) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@31) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_11080) (o_22@@2 T@Ref) (f_12@@2 T@Field_5879_5809) (v@@2 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@32) (store (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@32) o_22@@2 f_12@@2 v@@2) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@32) (store (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@32) o_22@@2 f_12@@2 v@@2) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@32) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_11080) (o_22@@3 T@Ref) (f_12@@3 T@Field_5879_53) (v@@3 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@33) (store (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@33) o_22@@3 f_12@@3 v@@3) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@33) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@33) (store (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@33) o_22@@3 f_12@@3 v@@3) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_11080) (o_22@@4 T@Ref) (f_12@@4 T@Field_5808_19171) (v@@4 T@PolymorphicMapType_11629) ) (! (succHeap Heap@@34 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@34) (store (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@34) o_22@@4 f_12@@4 v@@4) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@34) (store (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@34) o_22@@4 f_12@@4 v@@4) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@34) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_11080) (o_22@@5 T@Ref) (f_12@@5 T@Field_14467_1189) (v@@5 Int) ) (! (succHeap Heap@@35 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@35) (store (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@35) o_22@@5 f_12@@5 v@@5) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@35) (store (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@35) o_22@@5 f_12@@5 v@@5) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@35) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_11080) (o_22@@6 T@Ref) (f_12@@6 T@Field_5808_5880) (v@@6 T@FrameType) ) (! (succHeap Heap@@36 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@36) (store (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@36) o_22@@6 f_12@@6 v@@6) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@36) (store (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@36) o_22@@6 f_12@@6 v@@6) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@36) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_11080) (o_22@@7 T@Ref) (f_12@@7 T@Field_11153_11154) (v@@7 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@37) (store (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@37) o_22@@7 f_12@@7 v@@7) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@37) (store (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@37) o_22@@7 f_12@@7 v@@7) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@37) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_11080) (o_22@@8 T@Ref) (f_12@@8 T@Field_11140_53) (v@@8 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_11080 (store (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@38) o_22@@8 f_12@@8 v@@8) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11080 (store (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@38) o_22@@8 f_12@@8 v@@8) (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5879_5880#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5806_1189#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5883_19258#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5808_5880#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5808_38770#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5879_5809#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5879_53#PolymorphicMapType_11080| Heap@@38) (|PolymorphicMapType_11080_5879_1189#PolymorphicMapType_11080| Heap@@38)))
)))
(assert (forall ((self@@4 T@Ref) ) (! (= (PredicateMaskField_5879 (BTree self@@4)) (|BTree#sm| self@@4))
 :qid |stdinbpl.551:15|
 :skolemid |34|
 :pattern ( (PredicateMaskField_5879 (BTree self@@4)))
)))
(assert (forall ((o_22@@9 T@Ref) (f_30 T@Field_11153_11154) (Heap@@39 T@PolymorphicMapType_11080) ) (!  (=> (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@39) o_22@@9 $allocated) (select (|PolymorphicMapType_11080_5678_53#PolymorphicMapType_11080| Heap@@39) (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@39) o_22@@9 f_30) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11080_5681_5682#PolymorphicMapType_11080| Heap@@39) o_22@@9 f_30))
)))
(assert (forall ((p@@2 T@Field_5808_5880) (v_1@@1 T@FrameType) (q T@Field_5808_5880) (w@@1 T@FrameType) (r T@Field_5808_5880) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11140_11140 p@@2 v_1@@1 q w@@1) (InsidePredicate_11140_11140 q w@@1 r u)) (InsidePredicate_11140_11140 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11140_11140 p@@2 v_1@@1 q w@@1) (InsidePredicate_11140_11140 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_5808_5880) (v_1@@2 T@FrameType) (q@@0 T@Field_5808_5880) (w@@2 T@FrameType) (r@@0 T@Field_14955_14956) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_11140_11140 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11140_5879 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_11140_5879 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11140_11140 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11140_5879 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_5808_5880) (v_1@@3 T@FrameType) (q@@1 T@Field_14955_14956) (w@@3 T@FrameType) (r@@1 T@Field_5808_5880) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_11140_5879 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_5879_11140 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_11140_11140 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11140_5879 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_5879_11140 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_5808_5880) (v_1@@4 T@FrameType) (q@@2 T@Field_14955_14956) (w@@4 T@FrameType) (r@@2 T@Field_14955_14956) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_11140_5879 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_5879_5879 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_11140_5879 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11140_5879 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_5879_5879 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_14955_14956) (v_1@@5 T@FrameType) (q@@3 T@Field_5808_5880) (w@@5 T@FrameType) (r@@3 T@Field_5808_5880) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_5879_11140 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11140_11140 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_5879_11140 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5879_11140 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11140_11140 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_14955_14956) (v_1@@6 T@FrameType) (q@@4 T@Field_5808_5880) (w@@6 T@FrameType) (r@@4 T@Field_14955_14956) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_5879_11140 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11140_5879 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_5879_5879 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5879_11140 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11140_5879 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_14955_14956) (v_1@@7 T@FrameType) (q@@5 T@Field_14955_14956) (w@@7 T@FrameType) (r@@5 T@Field_5808_5880) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_5879_5879 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_5879_11140 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_5879_11140 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5879_5879 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_5879_11140 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_14955_14956) (v_1@@8 T@FrameType) (q@@6 T@Field_14955_14956) (w@@8 T@FrameType) (r@@6 T@Field_14955_14956) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_5879_5879 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_5879_5879 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_5879_5879 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5879_5879 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_5879_5879 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
