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
(declare-sort T@Field_15680_53 0)
(declare-sort T@Field_15693_15694 0)
(declare-sort T@Field_21894_3463 0)
(declare-sort T@Field_22669_22670 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_23585_23586 0)
(declare-sort T@Field_23598_23603 0)
(declare-sort T@Field_9631_53 0)
(declare-sort T@Field_9631_15694 0)
(declare-sort T@Field_9631_3463 0)
(declare-sort T@Field_22682_22687 0)
(declare-sort T@Field_15680_9632 0)
(declare-sort T@Field_15680_22687 0)
(declare-sort T@Field_23585_53 0)
(declare-sort T@Field_23585_15694 0)
(declare-sort T@Field_23585_3463 0)
(declare-datatypes ((T@PolymorphicMapType_15641 0)) (((PolymorphicMapType_15641 (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| (Array T@Ref T@Field_21894_3463 Real)) (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| (Array T@Ref T@Field_22669_22670 Real)) (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| (Array T@Ref T@Field_23585_23586 Real)) (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| (Array T@Ref T@Field_15680_9632 Real)) (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| (Array T@Ref T@Field_15680_53 Real)) (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| (Array T@Ref T@Field_15693_15694 Real)) (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| (Array T@Ref T@Field_15680_22687 Real)) (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| (Array T@Ref T@Field_9631_3463 Real)) (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| (Array T@Ref T@Field_9631_53 Real)) (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| (Array T@Ref T@Field_9631_15694 Real)) (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| (Array T@Ref T@Field_22682_22687 Real)) (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| (Array T@Ref T@Field_23585_3463 Real)) (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| (Array T@Ref T@Field_23585_53 Real)) (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| (Array T@Ref T@Field_23585_15694 Real)) (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| (Array T@Ref T@Field_23598_23603 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16169 0)) (((PolymorphicMapType_16169 (|PolymorphicMapType_16169_9609_3463#PolymorphicMapType_16169| (Array T@Ref T@Field_21894_3463 Bool)) (|PolymorphicMapType_16169_9609_53#PolymorphicMapType_16169| (Array T@Ref T@Field_15680_53 Bool)) (|PolymorphicMapType_16169_9609_15694#PolymorphicMapType_16169| (Array T@Ref T@Field_15693_15694 Bool)) (|PolymorphicMapType_16169_9609_22670#PolymorphicMapType_16169| (Array T@Ref T@Field_15680_9632 Bool)) (|PolymorphicMapType_16169_9609_50542#PolymorphicMapType_16169| (Array T@Ref T@Field_15680_22687 Bool)) (|PolymorphicMapType_16169_22669_3463#PolymorphicMapType_16169| (Array T@Ref T@Field_9631_3463 Bool)) (|PolymorphicMapType_16169_22669_53#PolymorphicMapType_16169| (Array T@Ref T@Field_9631_53 Bool)) (|PolymorphicMapType_16169_22669_15694#PolymorphicMapType_16169| (Array T@Ref T@Field_9631_15694 Bool)) (|PolymorphicMapType_16169_22669_22670#PolymorphicMapType_16169| (Array T@Ref T@Field_22669_22670 Bool)) (|PolymorphicMapType_16169_22669_51590#PolymorphicMapType_16169| (Array T@Ref T@Field_22682_22687 Bool)) (|PolymorphicMapType_16169_23585_3463#PolymorphicMapType_16169| (Array T@Ref T@Field_23585_3463 Bool)) (|PolymorphicMapType_16169_23585_53#PolymorphicMapType_16169| (Array T@Ref T@Field_23585_53 Bool)) (|PolymorphicMapType_16169_23585_15694#PolymorphicMapType_16169| (Array T@Ref T@Field_23585_15694 Bool)) (|PolymorphicMapType_16169_23585_22670#PolymorphicMapType_16169| (Array T@Ref T@Field_23585_23586 Bool)) (|PolymorphicMapType_16169_23585_52638#PolymorphicMapType_16169| (Array T@Ref T@Field_23598_23603 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15620 0)) (((PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| (Array T@Ref T@Field_15680_53 Bool)) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| (Array T@Ref T@Field_15693_15694 T@Ref)) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| (Array T@Ref T@Field_21894_3463 Int)) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| (Array T@Ref T@Field_22669_22670 T@FrameType)) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| (Array T@Ref T@Field_23585_23586 T@FrameType)) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| (Array T@Ref T@Field_23598_23603 T@PolymorphicMapType_16169)) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| (Array T@Ref T@Field_9631_53 Bool)) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| (Array T@Ref T@Field_9631_15694 T@Ref)) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| (Array T@Ref T@Field_9631_3463 Int)) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| (Array T@Ref T@Field_22682_22687 T@PolymorphicMapType_16169)) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| (Array T@Ref T@Field_15680_9632 T@FrameType)) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| (Array T@Ref T@Field_15680_22687 T@PolymorphicMapType_16169)) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| (Array T@Ref T@Field_23585_53 Bool)) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| (Array T@Ref T@Field_23585_15694 T@Ref)) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| (Array T@Ref T@Field_23585_3463 Int)) ) ) ))
(declare-fun $allocated () T@Field_15680_53)
(declare-fun f_7 () T@Field_21894_3463)
(declare-fun succHeap (T@PolymorphicMapType_15620 T@PolymorphicMapType_15620) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_15620 T@PolymorphicMapType_15620) Bool)
(declare-fun state (T@PolymorphicMapType_15620 T@PolymorphicMapType_15641) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_15641) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_16169)
(declare-fun Q (T@Ref Real) T@Field_23585_23586)
(declare-fun IsPredicateField_9657_9658 (T@Field_23585_23586) Bool)
(declare-fun |Q#trigger_9657| (T@PolymorphicMapType_15620 T@Field_23585_23586) Bool)
(declare-fun |Q#everUsed_9657| (T@Field_23585_23586) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun P (T@Ref) T@Field_22669_22670)
(declare-fun IsPredicateField_9631_9632 (T@Field_22669_22670) Bool)
(declare-fun |funky'| (T@PolymorphicMapType_15620 T@Ref) Bool)
(declare-fun dummyFunction_3620 (Bool) Bool)
(declare-fun |funky#triggerStateless| (T@Ref) Bool)
(declare-fun |P#trigger_9631| (T@PolymorphicMapType_15620 T@Field_22669_22670) Bool)
(declare-fun |P#everUsed_9631| (T@Field_22669_22670) Bool)
(declare-fun |Set#Union_9846| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_9843| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_9843| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_9843| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_15620 T@PolymorphicMapType_15620 T@PolymorphicMapType_15641) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9657 (T@Field_23585_23586) T@Field_23598_23603)
(declare-fun HasDirectPerm_23585_9632 (T@PolymorphicMapType_15641 T@Ref T@Field_23585_23586) Bool)
(declare-fun IsPredicateField_15680_49070 (T@Field_15680_9632) Bool)
(declare-fun PredicateMaskField_15680 (T@Field_15680_9632) T@Field_15680_22687)
(declare-fun HasDirectPerm_15680_9632 (T@PolymorphicMapType_15641 T@Ref T@Field_15680_9632) Bool)
(declare-fun PredicateMaskField_9631 (T@Field_22669_22670) T@Field_22682_22687)
(declare-fun HasDirectPerm_9631_9632 (T@PolymorphicMapType_15641 T@Ref T@Field_22669_22670) Bool)
(declare-fun IsWandField_23585_54441 (T@Field_23585_23586) Bool)
(declare-fun WandMaskField_23585 (T@Field_23585_23586) T@Field_23598_23603)
(declare-fun IsWandField_15680_54084 (T@Field_15680_9632) Bool)
(declare-fun WandMaskField_15680 (T@Field_15680_9632) T@Field_15680_22687)
(declare-fun IsWandField_9631_53727 (T@Field_22669_22670) Bool)
(declare-fun WandMaskField_9631 (T@Field_22669_22670) T@Field_22682_22687)
(declare-fun |Q#sm| (T@Ref Real) T@Field_23598_23603)
(declare-fun |P#sm| (T@Ref) T@Field_22682_22687)
(declare-fun dummyHeap () T@PolymorphicMapType_15620)
(declare-fun ZeroMask () T@PolymorphicMapType_15641)
(declare-fun InsidePredicate_23585_23585 (T@Field_23585_23586 T@FrameType T@Field_23585_23586 T@FrameType) Bool)
(declare-fun InsidePredicate_22669_22669 (T@Field_22669_22670 T@FrameType T@Field_22669_22670 T@FrameType) Bool)
(declare-fun InsidePredicate_15680_15680 (T@Field_15680_9632 T@FrameType T@Field_15680_9632 T@FrameType) Bool)
(declare-fun IsPredicateField_9609_3463 (T@Field_21894_3463) Bool)
(declare-fun IsWandField_9609_3463 (T@Field_21894_3463) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9657_64759 (T@Field_23598_23603) Bool)
(declare-fun IsWandField_9657_64775 (T@Field_23598_23603) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9657_15694 (T@Field_23585_15694) Bool)
(declare-fun IsWandField_9657_15694 (T@Field_23585_15694) Bool)
(declare-fun IsPredicateField_9657_53 (T@Field_23585_53) Bool)
(declare-fun IsWandField_9657_53 (T@Field_23585_53) Bool)
(declare-fun IsPredicateField_9657_3463 (T@Field_23585_3463) Bool)
(declare-fun IsWandField_9657_3463 (T@Field_23585_3463) Bool)
(declare-fun IsPredicateField_9631_63928 (T@Field_22682_22687) Bool)
(declare-fun IsWandField_9631_63944 (T@Field_22682_22687) Bool)
(declare-fun IsPredicateField_9631_15694 (T@Field_9631_15694) Bool)
(declare-fun IsWandField_9631_15694 (T@Field_9631_15694) Bool)
(declare-fun IsPredicateField_9631_53 (T@Field_9631_53) Bool)
(declare-fun IsWandField_9631_53 (T@Field_9631_53) Bool)
(declare-fun IsPredicateField_9631_3463 (T@Field_9631_3463) Bool)
(declare-fun IsWandField_9631_3463 (T@Field_9631_3463) Bool)
(declare-fun IsPredicateField_9609_63097 (T@Field_15680_22687) Bool)
(declare-fun IsWandField_9609_63113 (T@Field_15680_22687) Bool)
(declare-fun IsPredicateField_9609_15694 (T@Field_15693_15694) Bool)
(declare-fun IsWandField_9609_15694 (T@Field_15693_15694) Bool)
(declare-fun IsPredicateField_9609_53 (T@Field_15680_53) Bool)
(declare-fun IsWandField_9609_53 (T@Field_15680_53) Bool)
(declare-fun |funky#frame| (T@FrameType T@Ref) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun FrameFragment_3463 (Int) T@FrameType)
(declare-fun HasDirectPerm_23585_48500 (T@PolymorphicMapType_15641 T@Ref T@Field_23598_23603) Bool)
(declare-fun HasDirectPerm_23585_3463 (T@PolymorphicMapType_15641 T@Ref T@Field_23585_3463) Bool)
(declare-fun HasDirectPerm_23585_15694 (T@PolymorphicMapType_15641 T@Ref T@Field_23585_15694) Bool)
(declare-fun HasDirectPerm_23585_53 (T@PolymorphicMapType_15641 T@Ref T@Field_23585_53) Bool)
(declare-fun HasDirectPerm_15680_47339 (T@PolymorphicMapType_15641 T@Ref T@Field_15680_22687) Bool)
(declare-fun HasDirectPerm_15680_3463 (T@PolymorphicMapType_15641 T@Ref T@Field_21894_3463) Bool)
(declare-fun HasDirectPerm_15680_15694 (T@PolymorphicMapType_15641 T@Ref T@Field_15693_15694) Bool)
(declare-fun HasDirectPerm_15680_53 (T@PolymorphicMapType_15641 T@Ref T@Field_15680_53) Bool)
(declare-fun HasDirectPerm_9631_46203 (T@PolymorphicMapType_15641 T@Ref T@Field_22682_22687) Bool)
(declare-fun HasDirectPerm_9631_3463 (T@PolymorphicMapType_15641 T@Ref T@Field_9631_3463) Bool)
(declare-fun HasDirectPerm_9631_15694 (T@PolymorphicMapType_15641 T@Ref T@Field_9631_15694) Bool)
(declare-fun HasDirectPerm_9631_53 (T@PolymorphicMapType_15641 T@Ref T@Field_9631_53) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_15641 T@PolymorphicMapType_15641 T@PolymorphicMapType_15641) Bool)
(declare-fun |Set#Difference_9843| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_9843| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun funky (T@PolymorphicMapType_15620 T@Ref) Bool)
(declare-fun getPredWandId_9657_9658 (T@Field_23585_23586) Int)
(declare-fun getPredWandId_9631_9632 (T@Field_22669_22670) Int)
(declare-fun |Set#Empty_9843| () (Array T@Ref Bool))
(declare-fun InsidePredicate_23585_22669 (T@Field_23585_23586 T@FrameType T@Field_22669_22670 T@FrameType) Bool)
(declare-fun InsidePredicate_23585_15680 (T@Field_23585_23586 T@FrameType T@Field_15680_9632 T@FrameType) Bool)
(declare-fun InsidePredicate_22669_23585 (T@Field_22669_22670 T@FrameType T@Field_23585_23586 T@FrameType) Bool)
(declare-fun InsidePredicate_22669_15680 (T@Field_22669_22670 T@FrameType T@Field_15680_9632 T@FrameType) Bool)
(declare-fun InsidePredicate_15680_23585 (T@Field_15680_9632 T@FrameType T@Field_23585_23586 T@FrameType) Bool)
(declare-fun InsidePredicate_15680_22669 (T@Field_15680_9632 T@FrameType T@Field_22669_22670 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_15620) (Heap1 T@PolymorphicMapType_15620) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_15620) (Mask T@PolymorphicMapType_15641) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_15620) (Heap1@@0 T@PolymorphicMapType_15620) (Heap2 T@PolymorphicMapType_15620) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_23598_23603) ) (!  (not (select (|PolymorphicMapType_16169_23585_52638#PolymorphicMapType_16169| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16169_23585_52638#PolymorphicMapType_16169| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_23585_23586) ) (!  (not (select (|PolymorphicMapType_16169_23585_22670#PolymorphicMapType_16169| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16169_23585_22670#PolymorphicMapType_16169| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_23585_15694) ) (!  (not (select (|PolymorphicMapType_16169_23585_15694#PolymorphicMapType_16169| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16169_23585_15694#PolymorphicMapType_16169| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_23585_53) ) (!  (not (select (|PolymorphicMapType_16169_23585_53#PolymorphicMapType_16169| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16169_23585_53#PolymorphicMapType_16169| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_23585_3463) ) (!  (not (select (|PolymorphicMapType_16169_23585_3463#PolymorphicMapType_16169| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16169_23585_3463#PolymorphicMapType_16169| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_22682_22687) ) (!  (not (select (|PolymorphicMapType_16169_22669_51590#PolymorphicMapType_16169| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16169_22669_51590#PolymorphicMapType_16169| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_22669_22670) ) (!  (not (select (|PolymorphicMapType_16169_22669_22670#PolymorphicMapType_16169| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16169_22669_22670#PolymorphicMapType_16169| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_9631_15694) ) (!  (not (select (|PolymorphicMapType_16169_22669_15694#PolymorphicMapType_16169| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16169_22669_15694#PolymorphicMapType_16169| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_9631_53) ) (!  (not (select (|PolymorphicMapType_16169_22669_53#PolymorphicMapType_16169| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16169_22669_53#PolymorphicMapType_16169| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_9631_3463) ) (!  (not (select (|PolymorphicMapType_16169_22669_3463#PolymorphicMapType_16169| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16169_22669_3463#PolymorphicMapType_16169| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_15680_22687) ) (!  (not (select (|PolymorphicMapType_16169_9609_50542#PolymorphicMapType_16169| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16169_9609_50542#PolymorphicMapType_16169| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_15680_9632) ) (!  (not (select (|PolymorphicMapType_16169_9609_22670#PolymorphicMapType_16169| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16169_9609_22670#PolymorphicMapType_16169| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_15693_15694) ) (!  (not (select (|PolymorphicMapType_16169_9609_15694#PolymorphicMapType_16169| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16169_9609_15694#PolymorphicMapType_16169| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_15680_53) ) (!  (not (select (|PolymorphicMapType_16169_9609_53#PolymorphicMapType_16169| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16169_9609_53#PolymorphicMapType_16169| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_21894_3463) ) (!  (not (select (|PolymorphicMapType_16169_9609_3463#PolymorphicMapType_16169| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16169_9609_3463#PolymorphicMapType_16169| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((x T@Ref) (p_1 Real) ) (! (IsPredicateField_9657_9658 (Q x p_1))
 :qid |stdinbpl.551:15|
 :skolemid |92|
 :pattern ( (Q x p_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_15620) (x@@0 T@Ref) (p_1@@0 Real) ) (! (|Q#everUsed_9657| (Q x@@0 p_1@@0))
 :qid |stdinbpl.570:15|
 :skolemid |96|
 :pattern ( (|Q#trigger_9657| Heap@@0 (Q x@@0 p_1@@0)))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.321:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((x@@1 T@Ref) ) (! (IsPredicateField_9631_9632 (P x@@1))
 :qid |stdinbpl.496:15|
 :skolemid |86|
 :pattern ( (P x@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_15620) (x@@2 T@Ref) ) (! (dummyFunction_3620 (|funky#triggerStateless| x@@2))
 :qid |stdinbpl.444:15|
 :skolemid |83|
 :pattern ( (|funky'| Heap@@1 x@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_15620) (x@@3 T@Ref) ) (! (|P#everUsed_9631| (P x@@3))
 :qid |stdinbpl.515:15|
 :skolemid |90|
 :pattern ( (|P#trigger_9631| Heap@@2 (P x@@3)))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_9846| (|Set#Union_9846| a@@0 b@@0) b@@0) (|Set#Union_9846| a@@0 b@@0))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Set#Union_9846| (|Set#Union_9846| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_9843| (|Set#Intersection_9843| a@@1 b@@1) b@@1) (|Set#Intersection_9843| a@@1 b@@1))
 :qid |stdinbpl.277:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_9843| (|Set#Intersection_9843| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_9843| r) o) (= r o))
 :qid |stdinbpl.242:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_9843| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_9843| (|Set#Union_9846| a@@2 b@@2)) (|Set#Card_9843| (|Set#Intersection_9843| a@@2 b@@2))) (+ (|Set#Card_9843| a@@2) (|Set#Card_9843| b@@2)))
 :qid |stdinbpl.281:18|
 :skolemid |42|
 :pattern ( (|Set#Card_9843| (|Set#Union_9846| a@@2 b@@2)))
 :pattern ( (|Set#Card_9843| (|Set#Intersection_9843| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.324:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_15620) (ExhaleHeap T@PolymorphicMapType_15620) (Mask@@0 T@PolymorphicMapType_15641) (pm_f_28 T@Field_23585_23586) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_23585_9632 Mask@@0 null pm_f_28) (IsPredicateField_9657_9658 pm_f_28)) (= (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@3) null (PredicateMaskField_9657 pm_f_28)) (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| ExhaleHeap) null (PredicateMaskField_9657 pm_f_28)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_9657_9658 pm_f_28) (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| ExhaleHeap) null (PredicateMaskField_9657 pm_f_28)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_15620) (ExhaleHeap@@0 T@PolymorphicMapType_15620) (Mask@@1 T@PolymorphicMapType_15641) (pm_f_28@@0 T@Field_15680_9632) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_15680_9632 Mask@@1 null pm_f_28@@0) (IsPredicateField_15680_49070 pm_f_28@@0)) (= (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@4) null (PredicateMaskField_15680 pm_f_28@@0)) (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| ExhaleHeap@@0) null (PredicateMaskField_15680 pm_f_28@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_15680_49070 pm_f_28@@0) (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| ExhaleHeap@@0) null (PredicateMaskField_15680 pm_f_28@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_15620) (ExhaleHeap@@1 T@PolymorphicMapType_15620) (Mask@@2 T@PolymorphicMapType_15641) (pm_f_28@@1 T@Field_22669_22670) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_9631_9632 Mask@@2 null pm_f_28@@1) (IsPredicateField_9631_9632 pm_f_28@@1)) (= (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@5) null (PredicateMaskField_9631 pm_f_28@@1)) (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| ExhaleHeap@@1) null (PredicateMaskField_9631 pm_f_28@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsPredicateField_9631_9632 pm_f_28@@1) (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| ExhaleHeap@@1) null (PredicateMaskField_9631 pm_f_28@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_15620) (ExhaleHeap@@2 T@PolymorphicMapType_15620) (Mask@@3 T@PolymorphicMapType_15641) (pm_f_28@@2 T@Field_23585_23586) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_23585_9632 Mask@@3 null pm_f_28@@2) (IsWandField_23585_54441 pm_f_28@@2)) (= (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@6) null (WandMaskField_23585 pm_f_28@@2)) (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| ExhaleHeap@@2) null (WandMaskField_23585 pm_f_28@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_23585_54441 pm_f_28@@2) (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| ExhaleHeap@@2) null (WandMaskField_23585 pm_f_28@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_15620) (ExhaleHeap@@3 T@PolymorphicMapType_15620) (Mask@@4 T@PolymorphicMapType_15641) (pm_f_28@@3 T@Field_15680_9632) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_15680_9632 Mask@@4 null pm_f_28@@3) (IsWandField_15680_54084 pm_f_28@@3)) (= (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@7) null (WandMaskField_15680 pm_f_28@@3)) (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| ExhaleHeap@@3) null (WandMaskField_15680 pm_f_28@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsWandField_15680_54084 pm_f_28@@3) (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| ExhaleHeap@@3) null (WandMaskField_15680 pm_f_28@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_15620) (ExhaleHeap@@4 T@PolymorphicMapType_15620) (Mask@@5 T@PolymorphicMapType_15641) (pm_f_28@@4 T@Field_22669_22670) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_9631_9632 Mask@@5 null pm_f_28@@4) (IsWandField_9631_53727 pm_f_28@@4)) (= (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@8) null (WandMaskField_9631 pm_f_28@@4)) (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| ExhaleHeap@@4) null (WandMaskField_9631 pm_f_28@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsWandField_9631_53727 pm_f_28@@4) (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| ExhaleHeap@@4) null (WandMaskField_9631 pm_f_28@@4)))
)))
(assert (forall ((x@@4 T@Ref) (p_1@@1 Real) (x2 T@Ref) (p2_1 Real) ) (!  (=> (= (Q x@@4 p_1@@1) (Q x2 p2_1)) (and (= x@@4 x2) (= p_1@@1 p2_1)))
 :qid |stdinbpl.561:15|
 :skolemid |94|
 :pattern ( (Q x@@4 p_1@@1) (Q x2 p2_1))
)))
(assert (forall ((x@@5 T@Ref) (p_1@@2 Real) (x2@@0 T@Ref) (p2_1@@0 Real) ) (!  (=> (= (|Q#sm| x@@5 p_1@@2) (|Q#sm| x2@@0 p2_1@@0)) (and (= x@@5 x2@@0) (= p_1@@2 p2_1@@0)))
 :qid |stdinbpl.565:15|
 :skolemid |95|
 :pattern ( (|Q#sm| x@@5 p_1@@2) (|Q#sm| x2@@0 p2_1@@0))
)))
(assert (forall ((x@@6 T@Ref) (x2@@1 T@Ref) ) (!  (=> (= (P x@@6) (P x2@@1)) (= x@@6 x2@@1))
 :qid |stdinbpl.506:15|
 :skolemid |88|
 :pattern ( (P x@@6) (P x2@@1))
)))
(assert (forall ((x@@7 T@Ref) (x2@@2 T@Ref) ) (!  (=> (= (|P#sm| x@@7) (|P#sm| x2@@2)) (= x@@7 x2@@2))
 :qid |stdinbpl.510:15|
 :skolemid |89|
 :pattern ( (|P#sm| x@@7) (|P#sm| x2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_15620) (ExhaleHeap@@5 T@PolymorphicMapType_15620) (Mask@@6 T@PolymorphicMapType_15641) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@9) o_41 $allocated) (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| ExhaleHeap@@5) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| ExhaleHeap@@5) o_41 $allocated))
)))
(assert (forall ((p T@Field_23585_23586) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_23585_23585 p v_1 p w))
 :qid |stdinbpl.219:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_23585_23585 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_22669_22670) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_22669_22669 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.219:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22669_22669 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_15680_9632) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_15680_15680 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.219:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15680_15680 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_9609_3463 f_7)))
(assert  (not (IsWandField_9609_3463 f_7)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_15620) (ExhaleHeap@@6 T@PolymorphicMapType_15620) (Mask@@7 T@PolymorphicMapType_15641) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@10 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_15641) (o_2@@14 T@Ref) (f_4@@14 T@Field_23598_23603) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_9657_64759 f_4@@14))) (not (IsWandField_9657_64775 f_4@@14))) (<= (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_15641) (o_2@@15 T@Ref) (f_4@@15 T@Field_23585_15694) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_9657_15694 f_4@@15))) (not (IsWandField_9657_15694 f_4@@15))) (<= (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_15641) (o_2@@16 T@Ref) (f_4@@16 T@Field_23585_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_9657_53 f_4@@16))) (not (IsWandField_9657_53 f_4@@16))) (<= (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_15641) (o_2@@17 T@Ref) (f_4@@17 T@Field_23585_23586) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_9657_9658 f_4@@17))) (not (IsWandField_23585_54441 f_4@@17))) (<= (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_15641) (o_2@@18 T@Ref) (f_4@@18 T@Field_23585_3463) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_9657_3463 f_4@@18))) (not (IsWandField_9657_3463 f_4@@18))) (<= (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_15641) (o_2@@19 T@Ref) (f_4@@19 T@Field_22682_22687) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_9631_63928 f_4@@19))) (not (IsWandField_9631_63944 f_4@@19))) (<= (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_15641) (o_2@@20 T@Ref) (f_4@@20 T@Field_9631_15694) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_9631_15694 f_4@@20))) (not (IsWandField_9631_15694 f_4@@20))) (<= (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_15641) (o_2@@21 T@Ref) (f_4@@21 T@Field_9631_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_9631_53 f_4@@21))) (not (IsWandField_9631_53 f_4@@21))) (<= (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_15641) (o_2@@22 T@Ref) (f_4@@22 T@Field_22669_22670) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_9631_9632 f_4@@22))) (not (IsWandField_9631_53727 f_4@@22))) (<= (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_15641) (o_2@@23 T@Ref) (f_4@@23 T@Field_9631_3463) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_9631_3463 f_4@@23))) (not (IsWandField_9631_3463 f_4@@23))) (<= (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_15641) (o_2@@24 T@Ref) (f_4@@24 T@Field_15680_22687) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_9609_63097 f_4@@24))) (not (IsWandField_9609_63113 f_4@@24))) (<= (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_15641) (o_2@@25 T@Ref) (f_4@@25 T@Field_15693_15694) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_9609_15694 f_4@@25))) (not (IsWandField_9609_15694 f_4@@25))) (<= (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_15641) (o_2@@26 T@Ref) (f_4@@26 T@Field_15680_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_9609_53 f_4@@26))) (not (IsWandField_9609_53 f_4@@26))) (<= (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_15641) (o_2@@27 T@Ref) (f_4@@27 T@Field_15680_9632) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_15680_49070 f_4@@27))) (not (IsWandField_15680_54084 f_4@@27))) (<= (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_15641) (o_2@@28 T@Ref) (f_4@@28 T@Field_21894_3463) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_9609_3463 f_4@@28))) (not (IsWandField_9609_3463 f_4@@28))) (<= (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_15620) (Mask@@23 T@PolymorphicMapType_15641) (x@@8 T@Ref) ) (!  (=> (state Heap@@11 Mask@@23) (= (|funky'| Heap@@11 x@@8) (|funky#frame| (ConditionalFrame (/ (to_real (- 0 1)) (to_real 2)) (FrameFragment_3463 (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@11) x@@8 f_7))) x@@8)))
 :qid |stdinbpl.451:15|
 :skolemid |84|
 :pattern ( (state Heap@@11 Mask@@23) (|funky'| Heap@@11 x@@8))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_15641) (o_2@@29 T@Ref) (f_4@@29 T@Field_23598_23603) ) (! (= (HasDirectPerm_23585_48500 Mask@@24 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| Mask@@24) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23585_48500 Mask@@24 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_15641) (o_2@@30 T@Ref) (f_4@@30 T@Field_23585_3463) ) (! (= (HasDirectPerm_23585_3463 Mask@@25 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| Mask@@25) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23585_3463 Mask@@25 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_15641) (o_2@@31 T@Ref) (f_4@@31 T@Field_23585_15694) ) (! (= (HasDirectPerm_23585_15694 Mask@@26 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| Mask@@26) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23585_15694 Mask@@26 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_15641) (o_2@@32 T@Ref) (f_4@@32 T@Field_23585_53) ) (! (= (HasDirectPerm_23585_53 Mask@@27 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| Mask@@27) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23585_53 Mask@@27 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_15641) (o_2@@33 T@Ref) (f_4@@33 T@Field_23585_23586) ) (! (= (HasDirectPerm_23585_9632 Mask@@28 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| Mask@@28) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23585_9632 Mask@@28 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_15641) (o_2@@34 T@Ref) (f_4@@34 T@Field_15680_22687) ) (! (= (HasDirectPerm_15680_47339 Mask@@29 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| Mask@@29) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15680_47339 Mask@@29 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_15641) (o_2@@35 T@Ref) (f_4@@35 T@Field_21894_3463) ) (! (= (HasDirectPerm_15680_3463 Mask@@30 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| Mask@@30) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15680_3463 Mask@@30 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_15641) (o_2@@36 T@Ref) (f_4@@36 T@Field_15693_15694) ) (! (= (HasDirectPerm_15680_15694 Mask@@31 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| Mask@@31) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15680_15694 Mask@@31 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_15641) (o_2@@37 T@Ref) (f_4@@37 T@Field_15680_53) ) (! (= (HasDirectPerm_15680_53 Mask@@32 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| Mask@@32) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15680_53 Mask@@32 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_15641) (o_2@@38 T@Ref) (f_4@@38 T@Field_15680_9632) ) (! (= (HasDirectPerm_15680_9632 Mask@@33 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| Mask@@33) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15680_9632 Mask@@33 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_15641) (o_2@@39 T@Ref) (f_4@@39 T@Field_22682_22687) ) (! (= (HasDirectPerm_9631_46203 Mask@@34 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| Mask@@34) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9631_46203 Mask@@34 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_15641) (o_2@@40 T@Ref) (f_4@@40 T@Field_9631_3463) ) (! (= (HasDirectPerm_9631_3463 Mask@@35 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| Mask@@35) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9631_3463 Mask@@35 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_15641) (o_2@@41 T@Ref) (f_4@@41 T@Field_9631_15694) ) (! (= (HasDirectPerm_9631_15694 Mask@@36 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| Mask@@36) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9631_15694 Mask@@36 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_15641) (o_2@@42 T@Ref) (f_4@@42 T@Field_9631_53) ) (! (= (HasDirectPerm_9631_53 Mask@@37 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| Mask@@37) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9631_53 Mask@@37 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_15641) (o_2@@43 T@Ref) (f_4@@43 T@Field_22669_22670) ) (! (= (HasDirectPerm_9631_9632 Mask@@38 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| Mask@@38) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9631_9632 Mask@@38 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.207:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_15620) (ExhaleHeap@@7 T@PolymorphicMapType_15620) (Mask@@39 T@PolymorphicMapType_15641) (o_41@@0 T@Ref) (f_27 T@Field_23598_23603) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@39) (=> (HasDirectPerm_23585_48500 Mask@@39 o_41@@0 f_27) (= (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@12) o_41@@0 f_27) (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| ExhaleHeap@@7) o_41@@0 f_27))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@39) (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| ExhaleHeap@@7) o_41@@0 f_27))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_15620) (ExhaleHeap@@8 T@PolymorphicMapType_15620) (Mask@@40 T@PolymorphicMapType_15641) (o_41@@1 T@Ref) (f_27@@0 T@Field_23585_3463) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@40) (=> (HasDirectPerm_23585_3463 Mask@@40 o_41@@1 f_27@@0) (= (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@13) o_41@@1 f_27@@0) (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| ExhaleHeap@@8) o_41@@1 f_27@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@40) (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| ExhaleHeap@@8) o_41@@1 f_27@@0))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_15620) (ExhaleHeap@@9 T@PolymorphicMapType_15620) (Mask@@41 T@PolymorphicMapType_15641) (o_41@@2 T@Ref) (f_27@@1 T@Field_23585_15694) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@41) (=> (HasDirectPerm_23585_15694 Mask@@41 o_41@@2 f_27@@1) (= (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@14) o_41@@2 f_27@@1) (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| ExhaleHeap@@9) o_41@@2 f_27@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@41) (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| ExhaleHeap@@9) o_41@@2 f_27@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_15620) (ExhaleHeap@@10 T@PolymorphicMapType_15620) (Mask@@42 T@PolymorphicMapType_15641) (o_41@@3 T@Ref) (f_27@@2 T@Field_23585_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@42) (=> (HasDirectPerm_23585_53 Mask@@42 o_41@@3 f_27@@2) (= (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@15) o_41@@3 f_27@@2) (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| ExhaleHeap@@10) o_41@@3 f_27@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@42) (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| ExhaleHeap@@10) o_41@@3 f_27@@2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_15620) (ExhaleHeap@@11 T@PolymorphicMapType_15620) (Mask@@43 T@PolymorphicMapType_15641) (o_41@@4 T@Ref) (f_27@@3 T@Field_23585_23586) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@43) (=> (HasDirectPerm_23585_9632 Mask@@43 o_41@@4 f_27@@3) (= (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@16) o_41@@4 f_27@@3) (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| ExhaleHeap@@11) o_41@@4 f_27@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@43) (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| ExhaleHeap@@11) o_41@@4 f_27@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_15620) (ExhaleHeap@@12 T@PolymorphicMapType_15620) (Mask@@44 T@PolymorphicMapType_15641) (o_41@@5 T@Ref) (f_27@@4 T@Field_15680_22687) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@44) (=> (HasDirectPerm_15680_47339 Mask@@44 o_41@@5 f_27@@4) (= (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@17) o_41@@5 f_27@@4) (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| ExhaleHeap@@12) o_41@@5 f_27@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@44) (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| ExhaleHeap@@12) o_41@@5 f_27@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_15620) (ExhaleHeap@@13 T@PolymorphicMapType_15620) (Mask@@45 T@PolymorphicMapType_15641) (o_41@@6 T@Ref) (f_27@@5 T@Field_21894_3463) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@45) (=> (HasDirectPerm_15680_3463 Mask@@45 o_41@@6 f_27@@5) (= (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@18) o_41@@6 f_27@@5) (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| ExhaleHeap@@13) o_41@@6 f_27@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@45) (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| ExhaleHeap@@13) o_41@@6 f_27@@5))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_15620) (ExhaleHeap@@14 T@PolymorphicMapType_15620) (Mask@@46 T@PolymorphicMapType_15641) (o_41@@7 T@Ref) (f_27@@6 T@Field_15693_15694) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@46) (=> (HasDirectPerm_15680_15694 Mask@@46 o_41@@7 f_27@@6) (= (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@19) o_41@@7 f_27@@6) (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| ExhaleHeap@@14) o_41@@7 f_27@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@46) (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| ExhaleHeap@@14) o_41@@7 f_27@@6))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_15620) (ExhaleHeap@@15 T@PolymorphicMapType_15620) (Mask@@47 T@PolymorphicMapType_15641) (o_41@@8 T@Ref) (f_27@@7 T@Field_15680_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@47) (=> (HasDirectPerm_15680_53 Mask@@47 o_41@@8 f_27@@7) (= (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@20) o_41@@8 f_27@@7) (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| ExhaleHeap@@15) o_41@@8 f_27@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@47) (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| ExhaleHeap@@15) o_41@@8 f_27@@7))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_15620) (ExhaleHeap@@16 T@PolymorphicMapType_15620) (Mask@@48 T@PolymorphicMapType_15641) (o_41@@9 T@Ref) (f_27@@8 T@Field_15680_9632) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@48) (=> (HasDirectPerm_15680_9632 Mask@@48 o_41@@9 f_27@@8) (= (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@21) o_41@@9 f_27@@8) (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| ExhaleHeap@@16) o_41@@9 f_27@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@48) (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| ExhaleHeap@@16) o_41@@9 f_27@@8))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_15620) (ExhaleHeap@@17 T@PolymorphicMapType_15620) (Mask@@49 T@PolymorphicMapType_15641) (o_41@@10 T@Ref) (f_27@@9 T@Field_22682_22687) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@49) (=> (HasDirectPerm_9631_46203 Mask@@49 o_41@@10 f_27@@9) (= (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@22) o_41@@10 f_27@@9) (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| ExhaleHeap@@17) o_41@@10 f_27@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@49) (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| ExhaleHeap@@17) o_41@@10 f_27@@9))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_15620) (ExhaleHeap@@18 T@PolymorphicMapType_15620) (Mask@@50 T@PolymorphicMapType_15641) (o_41@@11 T@Ref) (f_27@@10 T@Field_9631_3463) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@50) (=> (HasDirectPerm_9631_3463 Mask@@50 o_41@@11 f_27@@10) (= (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@23) o_41@@11 f_27@@10) (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| ExhaleHeap@@18) o_41@@11 f_27@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@50) (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| ExhaleHeap@@18) o_41@@11 f_27@@10))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_15620) (ExhaleHeap@@19 T@PolymorphicMapType_15620) (Mask@@51 T@PolymorphicMapType_15641) (o_41@@12 T@Ref) (f_27@@11 T@Field_9631_15694) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@51) (=> (HasDirectPerm_9631_15694 Mask@@51 o_41@@12 f_27@@11) (= (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@24) o_41@@12 f_27@@11) (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| ExhaleHeap@@19) o_41@@12 f_27@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@51) (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| ExhaleHeap@@19) o_41@@12 f_27@@11))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_15620) (ExhaleHeap@@20 T@PolymorphicMapType_15620) (Mask@@52 T@PolymorphicMapType_15641) (o_41@@13 T@Ref) (f_27@@12 T@Field_9631_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@52) (=> (HasDirectPerm_9631_53 Mask@@52 o_41@@13 f_27@@12) (= (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@25) o_41@@13 f_27@@12) (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| ExhaleHeap@@20) o_41@@13 f_27@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@52) (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| ExhaleHeap@@20) o_41@@13 f_27@@12))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_15620) (ExhaleHeap@@21 T@PolymorphicMapType_15620) (Mask@@53 T@PolymorphicMapType_15641) (o_41@@14 T@Ref) (f_27@@13 T@Field_22669_22670) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@53) (=> (HasDirectPerm_9631_9632 Mask@@53 o_41@@14 f_27@@13) (= (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@26) o_41@@14 f_27@@13) (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@@21) o_41@@14 f_27@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@53) (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@@21) o_41@@14 f_27@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_23598_23603) ) (! (= (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_23585_15694) ) (! (= (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_23585_53) ) (! (= (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_23585_23586) ) (! (= (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_23585_3463) ) (! (= (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_22682_22687) ) (! (= (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_9631_15694) ) (! (= (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_9631_53) ) (! (= (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_22669_22670) ) (! (= (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_9631_3463) ) (! (= (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_15680_22687) ) (! (= (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_15693_15694) ) (! (= (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_15680_53) ) (! (= (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_15680_9632) ) (! (= (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_21894_3463) ) (! (= (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_15641) (SummandMask1 T@PolymorphicMapType_15641) (SummandMask2 T@PolymorphicMapType_15641) (o_2@@59 T@Ref) (f_4@@59 T@Field_23598_23603) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_15641) (SummandMask1@@0 T@PolymorphicMapType_15641) (SummandMask2@@0 T@PolymorphicMapType_15641) (o_2@@60 T@Ref) (f_4@@60 T@Field_23585_15694) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_15641) (SummandMask1@@1 T@PolymorphicMapType_15641) (SummandMask2@@1 T@PolymorphicMapType_15641) (o_2@@61 T@Ref) (f_4@@61 T@Field_23585_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_15641) (SummandMask1@@2 T@PolymorphicMapType_15641) (SummandMask2@@2 T@PolymorphicMapType_15641) (o_2@@62 T@Ref) (f_4@@62 T@Field_23585_23586) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_15641) (SummandMask1@@3 T@PolymorphicMapType_15641) (SummandMask2@@3 T@PolymorphicMapType_15641) (o_2@@63 T@Ref) (f_4@@63 T@Field_23585_3463) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_15641) (SummandMask1@@4 T@PolymorphicMapType_15641) (SummandMask2@@4 T@PolymorphicMapType_15641) (o_2@@64 T@Ref) (f_4@@64 T@Field_22682_22687) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_15641) (SummandMask1@@5 T@PolymorphicMapType_15641) (SummandMask2@@5 T@PolymorphicMapType_15641) (o_2@@65 T@Ref) (f_4@@65 T@Field_9631_15694) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_15641) (SummandMask1@@6 T@PolymorphicMapType_15641) (SummandMask2@@6 T@PolymorphicMapType_15641) (o_2@@66 T@Ref) (f_4@@66 T@Field_9631_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_15641) (SummandMask1@@7 T@PolymorphicMapType_15641) (SummandMask2@@7 T@PolymorphicMapType_15641) (o_2@@67 T@Ref) (f_4@@67 T@Field_22669_22670) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_15641) (SummandMask1@@8 T@PolymorphicMapType_15641) (SummandMask2@@8 T@PolymorphicMapType_15641) (o_2@@68 T@Ref) (f_4@@68 T@Field_9631_3463) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_15641) (SummandMask1@@9 T@PolymorphicMapType_15641) (SummandMask2@@9 T@PolymorphicMapType_15641) (o_2@@69 T@Ref) (f_4@@69 T@Field_15680_22687) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_15641) (SummandMask1@@10 T@PolymorphicMapType_15641) (SummandMask2@@10 T@PolymorphicMapType_15641) (o_2@@70 T@Ref) (f_4@@70 T@Field_15693_15694) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_15641) (SummandMask1@@11 T@PolymorphicMapType_15641) (SummandMask2@@11 T@PolymorphicMapType_15641) (o_2@@71 T@Ref) (f_4@@71 T@Field_15680_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_15641) (SummandMask1@@12 T@PolymorphicMapType_15641) (SummandMask2@@12 T@PolymorphicMapType_15641) (o_2@@72 T@Ref) (f_4@@72 T@Field_15680_9632) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_15641) (SummandMask1@@13 T@PolymorphicMapType_15641) (SummandMask2@@13 T@PolymorphicMapType_15641) (o_2@@73 T@Ref) (f_4@@73 T@Field_21894_3463) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_15620) (ExhaleHeap@@22 T@PolymorphicMapType_15620) (Mask@@54 T@PolymorphicMapType_15641) (pm_f_28@@5 T@Field_23585_23586) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@54) (=> (and (HasDirectPerm_23585_9632 Mask@@54 null pm_f_28@@5) (IsPredicateField_9657_9658 pm_f_28@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28 T@Ref) (f_27@@14 T@Field_21894_3463) ) (!  (=> (select (|PolymorphicMapType_16169_9609_3463#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@27) null (PredicateMaskField_9657 pm_f_28@@5))) o2_28 f_27@@14) (= (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@27) o2_28 f_27@@14) (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28 f_27@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28 f_27@@14))
)) (forall ((o2_28@@0 T@Ref) (f_27@@15 T@Field_15680_53) ) (!  (=> (select (|PolymorphicMapType_16169_9609_53#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@27) null (PredicateMaskField_9657 pm_f_28@@5))) o2_28@@0 f_27@@15) (= (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@27) o2_28@@0 f_27@@15) (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@0 f_27@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@0 f_27@@15))
))) (forall ((o2_28@@1 T@Ref) (f_27@@16 T@Field_15693_15694) ) (!  (=> (select (|PolymorphicMapType_16169_9609_15694#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@27) null (PredicateMaskField_9657 pm_f_28@@5))) o2_28@@1 f_27@@16) (= (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@27) o2_28@@1 f_27@@16) (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@1 f_27@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@1 f_27@@16))
))) (forall ((o2_28@@2 T@Ref) (f_27@@17 T@Field_15680_9632) ) (!  (=> (select (|PolymorphicMapType_16169_9609_22670#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@27) null (PredicateMaskField_9657 pm_f_28@@5))) o2_28@@2 f_27@@17) (= (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@27) o2_28@@2 f_27@@17) (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@2 f_27@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@2 f_27@@17))
))) (forall ((o2_28@@3 T@Ref) (f_27@@18 T@Field_15680_22687) ) (!  (=> (select (|PolymorphicMapType_16169_9609_50542#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@27) null (PredicateMaskField_9657 pm_f_28@@5))) o2_28@@3 f_27@@18) (= (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@27) o2_28@@3 f_27@@18) (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@3 f_27@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@3 f_27@@18))
))) (forall ((o2_28@@4 T@Ref) (f_27@@19 T@Field_9631_3463) ) (!  (=> (select (|PolymorphicMapType_16169_22669_3463#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@27) null (PredicateMaskField_9657 pm_f_28@@5))) o2_28@@4 f_27@@19) (= (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@27) o2_28@@4 f_27@@19) (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@4 f_27@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@4 f_27@@19))
))) (forall ((o2_28@@5 T@Ref) (f_27@@20 T@Field_9631_53) ) (!  (=> (select (|PolymorphicMapType_16169_22669_53#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@27) null (PredicateMaskField_9657 pm_f_28@@5))) o2_28@@5 f_27@@20) (= (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@27) o2_28@@5 f_27@@20) (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@5 f_27@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@5 f_27@@20))
))) (forall ((o2_28@@6 T@Ref) (f_27@@21 T@Field_9631_15694) ) (!  (=> (select (|PolymorphicMapType_16169_22669_15694#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@27) null (PredicateMaskField_9657 pm_f_28@@5))) o2_28@@6 f_27@@21) (= (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@27) o2_28@@6 f_27@@21) (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@6 f_27@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@6 f_27@@21))
))) (forall ((o2_28@@7 T@Ref) (f_27@@22 T@Field_22669_22670) ) (!  (=> (select (|PolymorphicMapType_16169_22669_22670#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@27) null (PredicateMaskField_9657 pm_f_28@@5))) o2_28@@7 f_27@@22) (= (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@27) o2_28@@7 f_27@@22) (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@7 f_27@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@7 f_27@@22))
))) (forall ((o2_28@@8 T@Ref) (f_27@@23 T@Field_22682_22687) ) (!  (=> (select (|PolymorphicMapType_16169_22669_51590#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@27) null (PredicateMaskField_9657 pm_f_28@@5))) o2_28@@8 f_27@@23) (= (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@27) o2_28@@8 f_27@@23) (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@8 f_27@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@8 f_27@@23))
))) (forall ((o2_28@@9 T@Ref) (f_27@@24 T@Field_23585_3463) ) (!  (=> (select (|PolymorphicMapType_16169_23585_3463#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@27) null (PredicateMaskField_9657 pm_f_28@@5))) o2_28@@9 f_27@@24) (= (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@27) o2_28@@9 f_27@@24) (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@9 f_27@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@9 f_27@@24))
))) (forall ((o2_28@@10 T@Ref) (f_27@@25 T@Field_23585_53) ) (!  (=> (select (|PolymorphicMapType_16169_23585_53#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@27) null (PredicateMaskField_9657 pm_f_28@@5))) o2_28@@10 f_27@@25) (= (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@27) o2_28@@10 f_27@@25) (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@10 f_27@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@10 f_27@@25))
))) (forall ((o2_28@@11 T@Ref) (f_27@@26 T@Field_23585_15694) ) (!  (=> (select (|PolymorphicMapType_16169_23585_15694#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@27) null (PredicateMaskField_9657 pm_f_28@@5))) o2_28@@11 f_27@@26) (= (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@27) o2_28@@11 f_27@@26) (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@11 f_27@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@11 f_27@@26))
))) (forall ((o2_28@@12 T@Ref) (f_27@@27 T@Field_23585_23586) ) (!  (=> (select (|PolymorphicMapType_16169_23585_22670#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@27) null (PredicateMaskField_9657 pm_f_28@@5))) o2_28@@12 f_27@@27) (= (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@27) o2_28@@12 f_27@@27) (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@12 f_27@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@12 f_27@@27))
))) (forall ((o2_28@@13 T@Ref) (f_27@@28 T@Field_23598_23603) ) (!  (=> (select (|PolymorphicMapType_16169_23585_52638#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@27) null (PredicateMaskField_9657 pm_f_28@@5))) o2_28@@13 f_27@@28) (= (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@27) o2_28@@13 f_27@@28) (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@13 f_27@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| ExhaleHeap@@22) o2_28@@13 f_27@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@54) (IsPredicateField_9657_9658 pm_f_28@@5))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_15620) (ExhaleHeap@@23 T@PolymorphicMapType_15620) (Mask@@55 T@PolymorphicMapType_15641) (pm_f_28@@6 T@Field_15680_9632) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@55) (=> (and (HasDirectPerm_15680_9632 Mask@@55 null pm_f_28@@6) (IsPredicateField_15680_49070 pm_f_28@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@14 T@Ref) (f_27@@29 T@Field_21894_3463) ) (!  (=> (select (|PolymorphicMapType_16169_9609_3463#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@28) null (PredicateMaskField_15680 pm_f_28@@6))) o2_28@@14 f_27@@29) (= (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@28) o2_28@@14 f_27@@29) (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@14 f_27@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@14 f_27@@29))
)) (forall ((o2_28@@15 T@Ref) (f_27@@30 T@Field_15680_53) ) (!  (=> (select (|PolymorphicMapType_16169_9609_53#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@28) null (PredicateMaskField_15680 pm_f_28@@6))) o2_28@@15 f_27@@30) (= (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@28) o2_28@@15 f_27@@30) (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@15 f_27@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@15 f_27@@30))
))) (forall ((o2_28@@16 T@Ref) (f_27@@31 T@Field_15693_15694) ) (!  (=> (select (|PolymorphicMapType_16169_9609_15694#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@28) null (PredicateMaskField_15680 pm_f_28@@6))) o2_28@@16 f_27@@31) (= (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@28) o2_28@@16 f_27@@31) (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@16 f_27@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@16 f_27@@31))
))) (forall ((o2_28@@17 T@Ref) (f_27@@32 T@Field_15680_9632) ) (!  (=> (select (|PolymorphicMapType_16169_9609_22670#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@28) null (PredicateMaskField_15680 pm_f_28@@6))) o2_28@@17 f_27@@32) (= (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@28) o2_28@@17 f_27@@32) (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@17 f_27@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@17 f_27@@32))
))) (forall ((o2_28@@18 T@Ref) (f_27@@33 T@Field_15680_22687) ) (!  (=> (select (|PolymorphicMapType_16169_9609_50542#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@28) null (PredicateMaskField_15680 pm_f_28@@6))) o2_28@@18 f_27@@33) (= (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@28) o2_28@@18 f_27@@33) (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@18 f_27@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@18 f_27@@33))
))) (forall ((o2_28@@19 T@Ref) (f_27@@34 T@Field_9631_3463) ) (!  (=> (select (|PolymorphicMapType_16169_22669_3463#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@28) null (PredicateMaskField_15680 pm_f_28@@6))) o2_28@@19 f_27@@34) (= (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@28) o2_28@@19 f_27@@34) (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@19 f_27@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@19 f_27@@34))
))) (forall ((o2_28@@20 T@Ref) (f_27@@35 T@Field_9631_53) ) (!  (=> (select (|PolymorphicMapType_16169_22669_53#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@28) null (PredicateMaskField_15680 pm_f_28@@6))) o2_28@@20 f_27@@35) (= (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@28) o2_28@@20 f_27@@35) (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@20 f_27@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@20 f_27@@35))
))) (forall ((o2_28@@21 T@Ref) (f_27@@36 T@Field_9631_15694) ) (!  (=> (select (|PolymorphicMapType_16169_22669_15694#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@28) null (PredicateMaskField_15680 pm_f_28@@6))) o2_28@@21 f_27@@36) (= (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@28) o2_28@@21 f_27@@36) (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@21 f_27@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@21 f_27@@36))
))) (forall ((o2_28@@22 T@Ref) (f_27@@37 T@Field_22669_22670) ) (!  (=> (select (|PolymorphicMapType_16169_22669_22670#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@28) null (PredicateMaskField_15680 pm_f_28@@6))) o2_28@@22 f_27@@37) (= (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@28) o2_28@@22 f_27@@37) (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@22 f_27@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@22 f_27@@37))
))) (forall ((o2_28@@23 T@Ref) (f_27@@38 T@Field_22682_22687) ) (!  (=> (select (|PolymorphicMapType_16169_22669_51590#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@28) null (PredicateMaskField_15680 pm_f_28@@6))) o2_28@@23 f_27@@38) (= (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@28) o2_28@@23 f_27@@38) (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@23 f_27@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@23 f_27@@38))
))) (forall ((o2_28@@24 T@Ref) (f_27@@39 T@Field_23585_3463) ) (!  (=> (select (|PolymorphicMapType_16169_23585_3463#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@28) null (PredicateMaskField_15680 pm_f_28@@6))) o2_28@@24 f_27@@39) (= (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@28) o2_28@@24 f_27@@39) (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@24 f_27@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@24 f_27@@39))
))) (forall ((o2_28@@25 T@Ref) (f_27@@40 T@Field_23585_53) ) (!  (=> (select (|PolymorphicMapType_16169_23585_53#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@28) null (PredicateMaskField_15680 pm_f_28@@6))) o2_28@@25 f_27@@40) (= (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@28) o2_28@@25 f_27@@40) (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@25 f_27@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@25 f_27@@40))
))) (forall ((o2_28@@26 T@Ref) (f_27@@41 T@Field_23585_15694) ) (!  (=> (select (|PolymorphicMapType_16169_23585_15694#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@28) null (PredicateMaskField_15680 pm_f_28@@6))) o2_28@@26 f_27@@41) (= (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@28) o2_28@@26 f_27@@41) (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@26 f_27@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@26 f_27@@41))
))) (forall ((o2_28@@27 T@Ref) (f_27@@42 T@Field_23585_23586) ) (!  (=> (select (|PolymorphicMapType_16169_23585_22670#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@28) null (PredicateMaskField_15680 pm_f_28@@6))) o2_28@@27 f_27@@42) (= (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@28) o2_28@@27 f_27@@42) (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@27 f_27@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@27 f_27@@42))
))) (forall ((o2_28@@28 T@Ref) (f_27@@43 T@Field_23598_23603) ) (!  (=> (select (|PolymorphicMapType_16169_23585_52638#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@28) null (PredicateMaskField_15680 pm_f_28@@6))) o2_28@@28 f_27@@43) (= (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@28) o2_28@@28 f_27@@43) (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@28 f_27@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| ExhaleHeap@@23) o2_28@@28 f_27@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@55) (IsPredicateField_15680_49070 pm_f_28@@6))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_15620) (ExhaleHeap@@24 T@PolymorphicMapType_15620) (Mask@@56 T@PolymorphicMapType_15641) (pm_f_28@@7 T@Field_22669_22670) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@56) (=> (and (HasDirectPerm_9631_9632 Mask@@56 null pm_f_28@@7) (IsPredicateField_9631_9632 pm_f_28@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@29 T@Ref) (f_27@@44 T@Field_21894_3463) ) (!  (=> (select (|PolymorphicMapType_16169_9609_3463#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@29) null (PredicateMaskField_9631 pm_f_28@@7))) o2_28@@29 f_27@@44) (= (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@29) o2_28@@29 f_27@@44) (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@29 f_27@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@29 f_27@@44))
)) (forall ((o2_28@@30 T@Ref) (f_27@@45 T@Field_15680_53) ) (!  (=> (select (|PolymorphicMapType_16169_9609_53#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@29) null (PredicateMaskField_9631 pm_f_28@@7))) o2_28@@30 f_27@@45) (= (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@29) o2_28@@30 f_27@@45) (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@30 f_27@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@30 f_27@@45))
))) (forall ((o2_28@@31 T@Ref) (f_27@@46 T@Field_15693_15694) ) (!  (=> (select (|PolymorphicMapType_16169_9609_15694#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@29) null (PredicateMaskField_9631 pm_f_28@@7))) o2_28@@31 f_27@@46) (= (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@29) o2_28@@31 f_27@@46) (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@31 f_27@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@31 f_27@@46))
))) (forall ((o2_28@@32 T@Ref) (f_27@@47 T@Field_15680_9632) ) (!  (=> (select (|PolymorphicMapType_16169_9609_22670#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@29) null (PredicateMaskField_9631 pm_f_28@@7))) o2_28@@32 f_27@@47) (= (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@29) o2_28@@32 f_27@@47) (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@32 f_27@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@32 f_27@@47))
))) (forall ((o2_28@@33 T@Ref) (f_27@@48 T@Field_15680_22687) ) (!  (=> (select (|PolymorphicMapType_16169_9609_50542#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@29) null (PredicateMaskField_9631 pm_f_28@@7))) o2_28@@33 f_27@@48) (= (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@29) o2_28@@33 f_27@@48) (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@33 f_27@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@33 f_27@@48))
))) (forall ((o2_28@@34 T@Ref) (f_27@@49 T@Field_9631_3463) ) (!  (=> (select (|PolymorphicMapType_16169_22669_3463#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@29) null (PredicateMaskField_9631 pm_f_28@@7))) o2_28@@34 f_27@@49) (= (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@29) o2_28@@34 f_27@@49) (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@34 f_27@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@34 f_27@@49))
))) (forall ((o2_28@@35 T@Ref) (f_27@@50 T@Field_9631_53) ) (!  (=> (select (|PolymorphicMapType_16169_22669_53#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@29) null (PredicateMaskField_9631 pm_f_28@@7))) o2_28@@35 f_27@@50) (= (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@29) o2_28@@35 f_27@@50) (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@35 f_27@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@35 f_27@@50))
))) (forall ((o2_28@@36 T@Ref) (f_27@@51 T@Field_9631_15694) ) (!  (=> (select (|PolymorphicMapType_16169_22669_15694#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@29) null (PredicateMaskField_9631 pm_f_28@@7))) o2_28@@36 f_27@@51) (= (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@29) o2_28@@36 f_27@@51) (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@36 f_27@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@36 f_27@@51))
))) (forall ((o2_28@@37 T@Ref) (f_27@@52 T@Field_22669_22670) ) (!  (=> (select (|PolymorphicMapType_16169_22669_22670#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@29) null (PredicateMaskField_9631 pm_f_28@@7))) o2_28@@37 f_27@@52) (= (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@29) o2_28@@37 f_27@@52) (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@37 f_27@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@37 f_27@@52))
))) (forall ((o2_28@@38 T@Ref) (f_27@@53 T@Field_22682_22687) ) (!  (=> (select (|PolymorphicMapType_16169_22669_51590#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@29) null (PredicateMaskField_9631 pm_f_28@@7))) o2_28@@38 f_27@@53) (= (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@29) o2_28@@38 f_27@@53) (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@38 f_27@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@38 f_27@@53))
))) (forall ((o2_28@@39 T@Ref) (f_27@@54 T@Field_23585_3463) ) (!  (=> (select (|PolymorphicMapType_16169_23585_3463#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@29) null (PredicateMaskField_9631 pm_f_28@@7))) o2_28@@39 f_27@@54) (= (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@29) o2_28@@39 f_27@@54) (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@39 f_27@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@39 f_27@@54))
))) (forall ((o2_28@@40 T@Ref) (f_27@@55 T@Field_23585_53) ) (!  (=> (select (|PolymorphicMapType_16169_23585_53#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@29) null (PredicateMaskField_9631 pm_f_28@@7))) o2_28@@40 f_27@@55) (= (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@29) o2_28@@40 f_27@@55) (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@40 f_27@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@40 f_27@@55))
))) (forall ((o2_28@@41 T@Ref) (f_27@@56 T@Field_23585_15694) ) (!  (=> (select (|PolymorphicMapType_16169_23585_15694#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@29) null (PredicateMaskField_9631 pm_f_28@@7))) o2_28@@41 f_27@@56) (= (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@29) o2_28@@41 f_27@@56) (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@41 f_27@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@41 f_27@@56))
))) (forall ((o2_28@@42 T@Ref) (f_27@@57 T@Field_23585_23586) ) (!  (=> (select (|PolymorphicMapType_16169_23585_22670#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@29) null (PredicateMaskField_9631 pm_f_28@@7))) o2_28@@42 f_27@@57) (= (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@29) o2_28@@42 f_27@@57) (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@42 f_27@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@42 f_27@@57))
))) (forall ((o2_28@@43 T@Ref) (f_27@@58 T@Field_23598_23603) ) (!  (=> (select (|PolymorphicMapType_16169_23585_52638#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@29) null (PredicateMaskField_9631 pm_f_28@@7))) o2_28@@43 f_27@@58) (= (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@29) o2_28@@43 f_27@@58) (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@43 f_27@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| ExhaleHeap@@24) o2_28@@43 f_27@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@56) (IsPredicateField_9631_9632 pm_f_28@@7))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_15620) (ExhaleHeap@@25 T@PolymorphicMapType_15620) (Mask@@57 T@PolymorphicMapType_15641) (pm_f_28@@8 T@Field_23585_23586) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@57) (=> (and (HasDirectPerm_23585_9632 Mask@@57 null pm_f_28@@8) (IsWandField_23585_54441 pm_f_28@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@44 T@Ref) (f_27@@59 T@Field_21894_3463) ) (!  (=> (select (|PolymorphicMapType_16169_9609_3463#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@30) null (WandMaskField_23585 pm_f_28@@8))) o2_28@@44 f_27@@59) (= (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@30) o2_28@@44 f_27@@59) (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@44 f_27@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@44 f_27@@59))
)) (forall ((o2_28@@45 T@Ref) (f_27@@60 T@Field_15680_53) ) (!  (=> (select (|PolymorphicMapType_16169_9609_53#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@30) null (WandMaskField_23585 pm_f_28@@8))) o2_28@@45 f_27@@60) (= (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@30) o2_28@@45 f_27@@60) (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@45 f_27@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@45 f_27@@60))
))) (forall ((o2_28@@46 T@Ref) (f_27@@61 T@Field_15693_15694) ) (!  (=> (select (|PolymorphicMapType_16169_9609_15694#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@30) null (WandMaskField_23585 pm_f_28@@8))) o2_28@@46 f_27@@61) (= (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@30) o2_28@@46 f_27@@61) (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@46 f_27@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@46 f_27@@61))
))) (forall ((o2_28@@47 T@Ref) (f_27@@62 T@Field_15680_9632) ) (!  (=> (select (|PolymorphicMapType_16169_9609_22670#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@30) null (WandMaskField_23585 pm_f_28@@8))) o2_28@@47 f_27@@62) (= (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@30) o2_28@@47 f_27@@62) (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@47 f_27@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@47 f_27@@62))
))) (forall ((o2_28@@48 T@Ref) (f_27@@63 T@Field_15680_22687) ) (!  (=> (select (|PolymorphicMapType_16169_9609_50542#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@30) null (WandMaskField_23585 pm_f_28@@8))) o2_28@@48 f_27@@63) (= (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@30) o2_28@@48 f_27@@63) (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@48 f_27@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@48 f_27@@63))
))) (forall ((o2_28@@49 T@Ref) (f_27@@64 T@Field_9631_3463) ) (!  (=> (select (|PolymorphicMapType_16169_22669_3463#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@30) null (WandMaskField_23585 pm_f_28@@8))) o2_28@@49 f_27@@64) (= (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@30) o2_28@@49 f_27@@64) (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@49 f_27@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@49 f_27@@64))
))) (forall ((o2_28@@50 T@Ref) (f_27@@65 T@Field_9631_53) ) (!  (=> (select (|PolymorphicMapType_16169_22669_53#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@30) null (WandMaskField_23585 pm_f_28@@8))) o2_28@@50 f_27@@65) (= (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@30) o2_28@@50 f_27@@65) (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@50 f_27@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@50 f_27@@65))
))) (forall ((o2_28@@51 T@Ref) (f_27@@66 T@Field_9631_15694) ) (!  (=> (select (|PolymorphicMapType_16169_22669_15694#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@30) null (WandMaskField_23585 pm_f_28@@8))) o2_28@@51 f_27@@66) (= (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@30) o2_28@@51 f_27@@66) (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@51 f_27@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@51 f_27@@66))
))) (forall ((o2_28@@52 T@Ref) (f_27@@67 T@Field_22669_22670) ) (!  (=> (select (|PolymorphicMapType_16169_22669_22670#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@30) null (WandMaskField_23585 pm_f_28@@8))) o2_28@@52 f_27@@67) (= (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@30) o2_28@@52 f_27@@67) (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@52 f_27@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@52 f_27@@67))
))) (forall ((o2_28@@53 T@Ref) (f_27@@68 T@Field_22682_22687) ) (!  (=> (select (|PolymorphicMapType_16169_22669_51590#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@30) null (WandMaskField_23585 pm_f_28@@8))) o2_28@@53 f_27@@68) (= (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@30) o2_28@@53 f_27@@68) (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@53 f_27@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@53 f_27@@68))
))) (forall ((o2_28@@54 T@Ref) (f_27@@69 T@Field_23585_3463) ) (!  (=> (select (|PolymorphicMapType_16169_23585_3463#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@30) null (WandMaskField_23585 pm_f_28@@8))) o2_28@@54 f_27@@69) (= (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@30) o2_28@@54 f_27@@69) (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@54 f_27@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@54 f_27@@69))
))) (forall ((o2_28@@55 T@Ref) (f_27@@70 T@Field_23585_53) ) (!  (=> (select (|PolymorphicMapType_16169_23585_53#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@30) null (WandMaskField_23585 pm_f_28@@8))) o2_28@@55 f_27@@70) (= (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@30) o2_28@@55 f_27@@70) (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@55 f_27@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@55 f_27@@70))
))) (forall ((o2_28@@56 T@Ref) (f_27@@71 T@Field_23585_15694) ) (!  (=> (select (|PolymorphicMapType_16169_23585_15694#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@30) null (WandMaskField_23585 pm_f_28@@8))) o2_28@@56 f_27@@71) (= (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@30) o2_28@@56 f_27@@71) (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@56 f_27@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@56 f_27@@71))
))) (forall ((o2_28@@57 T@Ref) (f_27@@72 T@Field_23585_23586) ) (!  (=> (select (|PolymorphicMapType_16169_23585_22670#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@30) null (WandMaskField_23585 pm_f_28@@8))) o2_28@@57 f_27@@72) (= (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@30) o2_28@@57 f_27@@72) (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@57 f_27@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@57 f_27@@72))
))) (forall ((o2_28@@58 T@Ref) (f_27@@73 T@Field_23598_23603) ) (!  (=> (select (|PolymorphicMapType_16169_23585_52638#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@30) null (WandMaskField_23585 pm_f_28@@8))) o2_28@@58 f_27@@73) (= (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@30) o2_28@@58 f_27@@73) (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@58 f_27@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| ExhaleHeap@@25) o2_28@@58 f_27@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@57) (IsWandField_23585_54441 pm_f_28@@8))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_15620) (ExhaleHeap@@26 T@PolymorphicMapType_15620) (Mask@@58 T@PolymorphicMapType_15641) (pm_f_28@@9 T@Field_15680_9632) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@58) (=> (and (HasDirectPerm_15680_9632 Mask@@58 null pm_f_28@@9) (IsWandField_15680_54084 pm_f_28@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@59 T@Ref) (f_27@@74 T@Field_21894_3463) ) (!  (=> (select (|PolymorphicMapType_16169_9609_3463#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@31) null (WandMaskField_15680 pm_f_28@@9))) o2_28@@59 f_27@@74) (= (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@31) o2_28@@59 f_27@@74) (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@59 f_27@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@59 f_27@@74))
)) (forall ((o2_28@@60 T@Ref) (f_27@@75 T@Field_15680_53) ) (!  (=> (select (|PolymorphicMapType_16169_9609_53#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@31) null (WandMaskField_15680 pm_f_28@@9))) o2_28@@60 f_27@@75) (= (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@31) o2_28@@60 f_27@@75) (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@60 f_27@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@60 f_27@@75))
))) (forall ((o2_28@@61 T@Ref) (f_27@@76 T@Field_15693_15694) ) (!  (=> (select (|PolymorphicMapType_16169_9609_15694#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@31) null (WandMaskField_15680 pm_f_28@@9))) o2_28@@61 f_27@@76) (= (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@31) o2_28@@61 f_27@@76) (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@61 f_27@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@61 f_27@@76))
))) (forall ((o2_28@@62 T@Ref) (f_27@@77 T@Field_15680_9632) ) (!  (=> (select (|PolymorphicMapType_16169_9609_22670#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@31) null (WandMaskField_15680 pm_f_28@@9))) o2_28@@62 f_27@@77) (= (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@31) o2_28@@62 f_27@@77) (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@62 f_27@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@62 f_27@@77))
))) (forall ((o2_28@@63 T@Ref) (f_27@@78 T@Field_15680_22687) ) (!  (=> (select (|PolymorphicMapType_16169_9609_50542#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@31) null (WandMaskField_15680 pm_f_28@@9))) o2_28@@63 f_27@@78) (= (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@31) o2_28@@63 f_27@@78) (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@63 f_27@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@63 f_27@@78))
))) (forall ((o2_28@@64 T@Ref) (f_27@@79 T@Field_9631_3463) ) (!  (=> (select (|PolymorphicMapType_16169_22669_3463#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@31) null (WandMaskField_15680 pm_f_28@@9))) o2_28@@64 f_27@@79) (= (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@31) o2_28@@64 f_27@@79) (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@64 f_27@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@64 f_27@@79))
))) (forall ((o2_28@@65 T@Ref) (f_27@@80 T@Field_9631_53) ) (!  (=> (select (|PolymorphicMapType_16169_22669_53#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@31) null (WandMaskField_15680 pm_f_28@@9))) o2_28@@65 f_27@@80) (= (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@31) o2_28@@65 f_27@@80) (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@65 f_27@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@65 f_27@@80))
))) (forall ((o2_28@@66 T@Ref) (f_27@@81 T@Field_9631_15694) ) (!  (=> (select (|PolymorphicMapType_16169_22669_15694#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@31) null (WandMaskField_15680 pm_f_28@@9))) o2_28@@66 f_27@@81) (= (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@31) o2_28@@66 f_27@@81) (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@66 f_27@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@66 f_27@@81))
))) (forall ((o2_28@@67 T@Ref) (f_27@@82 T@Field_22669_22670) ) (!  (=> (select (|PolymorphicMapType_16169_22669_22670#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@31) null (WandMaskField_15680 pm_f_28@@9))) o2_28@@67 f_27@@82) (= (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@31) o2_28@@67 f_27@@82) (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@67 f_27@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@67 f_27@@82))
))) (forall ((o2_28@@68 T@Ref) (f_27@@83 T@Field_22682_22687) ) (!  (=> (select (|PolymorphicMapType_16169_22669_51590#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@31) null (WandMaskField_15680 pm_f_28@@9))) o2_28@@68 f_27@@83) (= (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@31) o2_28@@68 f_27@@83) (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@68 f_27@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@68 f_27@@83))
))) (forall ((o2_28@@69 T@Ref) (f_27@@84 T@Field_23585_3463) ) (!  (=> (select (|PolymorphicMapType_16169_23585_3463#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@31) null (WandMaskField_15680 pm_f_28@@9))) o2_28@@69 f_27@@84) (= (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@31) o2_28@@69 f_27@@84) (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@69 f_27@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@69 f_27@@84))
))) (forall ((o2_28@@70 T@Ref) (f_27@@85 T@Field_23585_53) ) (!  (=> (select (|PolymorphicMapType_16169_23585_53#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@31) null (WandMaskField_15680 pm_f_28@@9))) o2_28@@70 f_27@@85) (= (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@31) o2_28@@70 f_27@@85) (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@70 f_27@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@70 f_27@@85))
))) (forall ((o2_28@@71 T@Ref) (f_27@@86 T@Field_23585_15694) ) (!  (=> (select (|PolymorphicMapType_16169_23585_15694#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@31) null (WandMaskField_15680 pm_f_28@@9))) o2_28@@71 f_27@@86) (= (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@31) o2_28@@71 f_27@@86) (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@71 f_27@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@71 f_27@@86))
))) (forall ((o2_28@@72 T@Ref) (f_27@@87 T@Field_23585_23586) ) (!  (=> (select (|PolymorphicMapType_16169_23585_22670#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@31) null (WandMaskField_15680 pm_f_28@@9))) o2_28@@72 f_27@@87) (= (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@31) o2_28@@72 f_27@@87) (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@72 f_27@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@72 f_27@@87))
))) (forall ((o2_28@@73 T@Ref) (f_27@@88 T@Field_23598_23603) ) (!  (=> (select (|PolymorphicMapType_16169_23585_52638#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@31) null (WandMaskField_15680 pm_f_28@@9))) o2_28@@73 f_27@@88) (= (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@31) o2_28@@73 f_27@@88) (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@73 f_27@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| ExhaleHeap@@26) o2_28@@73 f_27@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@58) (IsWandField_15680_54084 pm_f_28@@9))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_15620) (ExhaleHeap@@27 T@PolymorphicMapType_15620) (Mask@@59 T@PolymorphicMapType_15641) (pm_f_28@@10 T@Field_22669_22670) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@59) (=> (and (HasDirectPerm_9631_9632 Mask@@59 null pm_f_28@@10) (IsWandField_9631_53727 pm_f_28@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@74 T@Ref) (f_27@@89 T@Field_21894_3463) ) (!  (=> (select (|PolymorphicMapType_16169_9609_3463#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@32) null (WandMaskField_9631 pm_f_28@@10))) o2_28@@74 f_27@@89) (= (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@32) o2_28@@74 f_27@@89) (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@74 f_27@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@74 f_27@@89))
)) (forall ((o2_28@@75 T@Ref) (f_27@@90 T@Field_15680_53) ) (!  (=> (select (|PolymorphicMapType_16169_9609_53#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@32) null (WandMaskField_9631 pm_f_28@@10))) o2_28@@75 f_27@@90) (= (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@32) o2_28@@75 f_27@@90) (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@75 f_27@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@75 f_27@@90))
))) (forall ((o2_28@@76 T@Ref) (f_27@@91 T@Field_15693_15694) ) (!  (=> (select (|PolymorphicMapType_16169_9609_15694#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@32) null (WandMaskField_9631 pm_f_28@@10))) o2_28@@76 f_27@@91) (= (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@32) o2_28@@76 f_27@@91) (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@76 f_27@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@76 f_27@@91))
))) (forall ((o2_28@@77 T@Ref) (f_27@@92 T@Field_15680_9632) ) (!  (=> (select (|PolymorphicMapType_16169_9609_22670#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@32) null (WandMaskField_9631 pm_f_28@@10))) o2_28@@77 f_27@@92) (= (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@32) o2_28@@77 f_27@@92) (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@77 f_27@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@77 f_27@@92))
))) (forall ((o2_28@@78 T@Ref) (f_27@@93 T@Field_15680_22687) ) (!  (=> (select (|PolymorphicMapType_16169_9609_50542#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@32) null (WandMaskField_9631 pm_f_28@@10))) o2_28@@78 f_27@@93) (= (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@32) o2_28@@78 f_27@@93) (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@78 f_27@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@78 f_27@@93))
))) (forall ((o2_28@@79 T@Ref) (f_27@@94 T@Field_9631_3463) ) (!  (=> (select (|PolymorphicMapType_16169_22669_3463#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@32) null (WandMaskField_9631 pm_f_28@@10))) o2_28@@79 f_27@@94) (= (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@32) o2_28@@79 f_27@@94) (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@79 f_27@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@79 f_27@@94))
))) (forall ((o2_28@@80 T@Ref) (f_27@@95 T@Field_9631_53) ) (!  (=> (select (|PolymorphicMapType_16169_22669_53#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@32) null (WandMaskField_9631 pm_f_28@@10))) o2_28@@80 f_27@@95) (= (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@32) o2_28@@80 f_27@@95) (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@80 f_27@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@80 f_27@@95))
))) (forall ((o2_28@@81 T@Ref) (f_27@@96 T@Field_9631_15694) ) (!  (=> (select (|PolymorphicMapType_16169_22669_15694#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@32) null (WandMaskField_9631 pm_f_28@@10))) o2_28@@81 f_27@@96) (= (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@32) o2_28@@81 f_27@@96) (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@81 f_27@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@81 f_27@@96))
))) (forall ((o2_28@@82 T@Ref) (f_27@@97 T@Field_22669_22670) ) (!  (=> (select (|PolymorphicMapType_16169_22669_22670#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@32) null (WandMaskField_9631 pm_f_28@@10))) o2_28@@82 f_27@@97) (= (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@32) o2_28@@82 f_27@@97) (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@82 f_27@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@82 f_27@@97))
))) (forall ((o2_28@@83 T@Ref) (f_27@@98 T@Field_22682_22687) ) (!  (=> (select (|PolymorphicMapType_16169_22669_51590#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@32) null (WandMaskField_9631 pm_f_28@@10))) o2_28@@83 f_27@@98) (= (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@32) o2_28@@83 f_27@@98) (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@83 f_27@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@83 f_27@@98))
))) (forall ((o2_28@@84 T@Ref) (f_27@@99 T@Field_23585_3463) ) (!  (=> (select (|PolymorphicMapType_16169_23585_3463#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@32) null (WandMaskField_9631 pm_f_28@@10))) o2_28@@84 f_27@@99) (= (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@32) o2_28@@84 f_27@@99) (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@84 f_27@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@84 f_27@@99))
))) (forall ((o2_28@@85 T@Ref) (f_27@@100 T@Field_23585_53) ) (!  (=> (select (|PolymorphicMapType_16169_23585_53#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@32) null (WandMaskField_9631 pm_f_28@@10))) o2_28@@85 f_27@@100) (= (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@32) o2_28@@85 f_27@@100) (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@85 f_27@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@85 f_27@@100))
))) (forall ((o2_28@@86 T@Ref) (f_27@@101 T@Field_23585_15694) ) (!  (=> (select (|PolymorphicMapType_16169_23585_15694#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@32) null (WandMaskField_9631 pm_f_28@@10))) o2_28@@86 f_27@@101) (= (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@32) o2_28@@86 f_27@@101) (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@86 f_27@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@86 f_27@@101))
))) (forall ((o2_28@@87 T@Ref) (f_27@@102 T@Field_23585_23586) ) (!  (=> (select (|PolymorphicMapType_16169_23585_22670#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@32) null (WandMaskField_9631 pm_f_28@@10))) o2_28@@87 f_27@@102) (= (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@32) o2_28@@87 f_27@@102) (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@87 f_27@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@87 f_27@@102))
))) (forall ((o2_28@@88 T@Ref) (f_27@@103 T@Field_23598_23603) ) (!  (=> (select (|PolymorphicMapType_16169_23585_52638#PolymorphicMapType_16169| (select (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@32) null (WandMaskField_9631 pm_f_28@@10))) o2_28@@88 f_27@@103) (= (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@32) o2_28@@88 f_27@@103) (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@88 f_27@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| ExhaleHeap@@27) o2_28@@88 f_27@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@59) (IsWandField_9631_53727 pm_f_28@@10))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_9843| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.270:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_9843| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_9843| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_9843| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_9843| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.285:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_9843| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_9843| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x@@9 T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_9843| a@@6 x@@9) y))
 :qid |stdinbpl.250:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_9843| a@@6 x@@9) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_9846| a@@7 b@@5) y@@0))
 :qid |stdinbpl.260:18|
 :skolemid |35|
 :pattern ( (|Set#Union_9846| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_9846| a@@8 b@@6) y@@1))
 :qid |stdinbpl.262:18|
 :skolemid |36|
 :pattern ( (|Set#Union_9846| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@10 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_9843| a@@9 x@@10) o@@2)  (or (= o@@2 x@@10) (select a@@9 o@@2)))
 :qid |stdinbpl.246:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_9843| a@@9 x@@10) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_9843| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.287:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_9843| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_9843| (|Set#Difference_9843| a@@11 b@@8)) (|Set#Card_9843| (|Set#Difference_9843| b@@8 a@@11))) (|Set#Card_9843| (|Set#Intersection_9843| a@@11 b@@8))) (|Set#Card_9843| (|Set#Union_9846| a@@11 b@@8))) (= (|Set#Card_9843| (|Set#Difference_9843| a@@11 b@@8)) (- (|Set#Card_9843| a@@11) (|Set#Card_9843| (|Set#Intersection_9843| a@@11 b@@8)))))
 :qid |stdinbpl.289:18|
 :skolemid |45|
 :pattern ( (|Set#Card_9843| (|Set#Difference_9843| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_9843| s))
 :qid |stdinbpl.232:18|
 :skolemid |22|
 :pattern ( (|Set#Card_9843| s))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_15620) (x@@11 T@Ref) ) (!  (and (= (funky Heap@@33 x@@11) (|funky'| Heap@@33 x@@11)) (dummyFunction_3620 (|funky#triggerStateless| x@@11)))
 :qid |stdinbpl.440:15|
 :skolemid |82|
 :pattern ( (funky Heap@@33 x@@11))
)))
(assert (forall ((x@@12 T@Ref) (p_1@@3 Real) ) (! (= (getPredWandId_9657_9658 (Q x@@12 p_1@@3)) 1)
 :qid |stdinbpl.555:15|
 :skolemid |93|
 :pattern ( (Q x@@12 p_1@@3))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@13 T@Ref) ) (! (select (|Set#UnionOne_9843| a@@12 x@@13) x@@13)
 :qid |stdinbpl.248:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_9843| a@@12 x@@13))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@14 T@Ref) ) (!  (=> (select a@@13 x@@14) (= (|Set#Card_9843| (|Set#UnionOne_9843| a@@13 x@@14)) (|Set#Card_9843| a@@13)))
 :qid |stdinbpl.252:18|
 :skolemid |32|
 :pattern ( (|Set#Card_9843| (|Set#UnionOne_9843| a@@13 x@@14)))
)))
(assert (forall ((x@@15 T@Ref) ) (! (= (getPredWandId_9631_9632 (P x@@15)) 0)
 :qid |stdinbpl.500:15|
 :skolemid |87|
 :pattern ( (P x@@15))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_9843| (|Set#Singleton_9843| r@@0)) 1)
 :qid |stdinbpl.243:18|
 :skolemid |28|
 :pattern ( (|Set#Card_9843| (|Set#Singleton_9843| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_9843| r@@1) r@@1)
 :qid |stdinbpl.241:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_9843| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_9846| a@@14 (|Set#Union_9846| a@@14 b@@9)) (|Set#Union_9846| a@@14 b@@9))
 :qid |stdinbpl.275:18|
 :skolemid |39|
 :pattern ( (|Set#Union_9846| a@@14 (|Set#Union_9846| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_9843| a@@15 (|Set#Intersection_9843| a@@15 b@@10)) (|Set#Intersection_9843| a@@15 b@@10))
 :qid |stdinbpl.279:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_9843| a@@15 (|Set#Intersection_9843| a@@15 b@@10)))
)))
(assert (forall ((x@@16 T@Ref) (p_1@@4 Real) ) (! (= (PredicateMaskField_9657 (Q x@@16 p_1@@4)) (|Q#sm| x@@16 p_1@@4))
 :qid |stdinbpl.547:15|
 :skolemid |91|
 :pattern ( (PredicateMaskField_9657 (Q x@@16 p_1@@4)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_9843| o@@3))
 :qid |stdinbpl.235:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_9843| o@@3))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_15620) (o_22 T@Ref) (f_12 T@Field_23598_23603) (v T@PolymorphicMapType_16169) ) (! (succHeap Heap@@34 (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@34) (store (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@34) o_22 f_12 v) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@34) (store (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@34) o_22 f_12 v) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@34) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_15620) (o_22@@0 T@Ref) (f_12@@0 T@Field_23585_23586) (v@@0 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@35) (store (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@35) o_22@@0 f_12@@0 v@@0) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@35) (store (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@35) o_22@@0 f_12@@0 v@@0) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@35) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_15620) (o_22@@1 T@Ref) (f_12@@1 T@Field_23585_3463) (v@@1 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@36) (store (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@36) o_22@@1 f_12@@1 v@@1)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@36) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@36) (store (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@36) o_22@@1 f_12@@1 v@@1)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_15620) (o_22@@2 T@Ref) (f_12@@2 T@Field_23585_15694) (v@@2 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@37) (store (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@37) o_22@@2 f_12@@2 v@@2) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@37) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@37) (store (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@37) o_22@@2 f_12@@2 v@@2) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_15620) (o_22@@3 T@Ref) (f_12@@3 T@Field_23585_53) (v@@3 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@38) (store (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@38) o_22@@3 f_12@@3 v@@3) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@38) (store (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@38) o_22@@3 f_12@@3 v@@3) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@38) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_15620) (o_22@@4 T@Ref) (f_12@@4 T@Field_22682_22687) (v@@4 T@PolymorphicMapType_16169) ) (! (succHeap Heap@@39 (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@39) (store (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@39) o_22@@4 f_12@@4 v@@4) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@39) (store (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@39) o_22@@4 f_12@@4 v@@4) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@39) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_15620) (o_22@@5 T@Ref) (f_12@@5 T@Field_22669_22670) (v@@5 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@40) (store (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@40) o_22@@5 f_12@@5 v@@5) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@40) (store (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@40) o_22@@5 f_12@@5 v@@5) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@40) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_15620) (o_22@@6 T@Ref) (f_12@@6 T@Field_9631_3463) (v@@6 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@41) (store (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@41) o_22@@6 f_12@@6 v@@6) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@41) (store (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@41) o_22@@6 f_12@@6 v@@6) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@41) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_15620) (o_22@@7 T@Ref) (f_12@@7 T@Field_9631_15694) (v@@7 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@42) (store (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@42) o_22@@7 f_12@@7 v@@7) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@42) (store (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@42) o_22@@7 f_12@@7 v@@7) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@42) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_15620) (o_22@@8 T@Ref) (f_12@@8 T@Field_9631_53) (v@@8 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@43) (store (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@43) o_22@@8 f_12@@8 v@@8) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@43) (store (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@43) o_22@@8 f_12@@8 v@@8) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@43) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_15620) (o_22@@9 T@Ref) (f_12@@9 T@Field_15680_22687) (v@@9 T@PolymorphicMapType_16169) ) (! (succHeap Heap@@44 (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@44) (store (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@44) o_22@@9 f_12@@9 v@@9) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@44) (store (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@44) o_22@@9 f_12@@9 v@@9) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@44) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_15620) (o_22@@10 T@Ref) (f_12@@10 T@Field_15680_9632) (v@@10 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@45) (store (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@45) o_22@@10 f_12@@10 v@@10) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@45) (store (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@45) o_22@@10 f_12@@10 v@@10) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@45) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_15620) (o_22@@11 T@Ref) (f_12@@11 T@Field_21894_3463) (v@@11 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@46) (store (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@46) o_22@@11 f_12@@11 v@@11) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@46) (store (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@46) o_22@@11 f_12@@11 v@@11) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@46) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_15620) (o_22@@12 T@Ref) (f_12@@12 T@Field_15693_15694) (v@@12 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@47) (store (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@47) o_22@@12 f_12@@12 v@@12) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15620 (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@47) (store (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@47) o_22@@12 f_12@@12 v@@12) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@47) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_15620) (o_22@@13 T@Ref) (f_12@@13 T@Field_15680_53) (v@@13 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_15620 (store (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@48) o_22@@13 f_12@@13 v@@13) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15620 (store (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@48) o_22@@13 f_12@@13 v@@13) (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_9609_3463#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_9657_9658#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_9662_29340#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_9631_53#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_9631_15694#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_9631_3463#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_9631_46245#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_15680_9632#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_15680_47381#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_23585_53#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_23585_15694#PolymorphicMapType_15620| Heap@@48) (|PolymorphicMapType_15620_23585_3463#PolymorphicMapType_15620| Heap@@48)))
)))
(assert (forall ((x@@17 T@Ref) ) (! (= (PredicateMaskField_9631 (P x@@17)) (|P#sm| x@@17))
 :qid |stdinbpl.492:15|
 :skolemid |85|
 :pattern ( (PredicateMaskField_9631 (P x@@17)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.319:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.320:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_9843| s@@0) 0) (= s@@0 |Set#Empty_9843|)) (=> (not (= (|Set#Card_9843| s@@0) 0)) (exists ((x@@18 T@Ref) ) (! (select s@@0 x@@18)
 :qid |stdinbpl.238:33|
 :skolemid |24|
))))
 :qid |stdinbpl.236:18|
 :skolemid |25|
 :pattern ( (|Set#Card_9843| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@19 T@Ref) ) (!  (=> (not (select a@@18 x@@19)) (= (|Set#Card_9843| (|Set#UnionOne_9843| a@@18 x@@19)) (+ (|Set#Card_9843| a@@18) 1)))
 :qid |stdinbpl.254:18|
 :skolemid |33|
 :pattern ( (|Set#Card_9843| (|Set#UnionOne_9843| a@@18 x@@19)))
)))
(assert (forall ((o_22@@14 T@Ref) (f_30 T@Field_15693_15694) (Heap@@49 T@PolymorphicMapType_15620) ) (!  (=> (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@49) o_22@@14 $allocated) (select (|PolymorphicMapType_15620_9274_53#PolymorphicMapType_15620| Heap@@49) (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@49) o_22@@14 f_30) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_15620_9277_9278#PolymorphicMapType_15620| Heap@@49) o_22@@14 f_30))
)))
(assert (forall ((p@@3 T@Field_23585_23586) (v_1@@2 T@FrameType) (q T@Field_23585_23586) (w@@2 T@FrameType) (r@@2 T@Field_23585_23586) (u T@FrameType) ) (!  (=> (and (InsidePredicate_23585_23585 p@@3 v_1@@2 q w@@2) (InsidePredicate_23585_23585 q w@@2 r@@2 u)) (InsidePredicate_23585_23585 p@@3 v_1@@2 r@@2 u))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23585_23585 p@@3 v_1@@2 q w@@2) (InsidePredicate_23585_23585 q w@@2 r@@2 u))
)))
(assert (forall ((p@@4 T@Field_23585_23586) (v_1@@3 T@FrameType) (q@@0 T@Field_23585_23586) (w@@3 T@FrameType) (r@@3 T@Field_22669_22670) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_23585_23585 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_23585_22669 q@@0 w@@3 r@@3 u@@0)) (InsidePredicate_23585_22669 p@@4 v_1@@3 r@@3 u@@0))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23585_23585 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_23585_22669 q@@0 w@@3 r@@3 u@@0))
)))
(assert (forall ((p@@5 T@Field_23585_23586) (v_1@@4 T@FrameType) (q@@1 T@Field_23585_23586) (w@@4 T@FrameType) (r@@4 T@Field_15680_9632) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_23585_23585 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_23585_15680 q@@1 w@@4 r@@4 u@@1)) (InsidePredicate_23585_15680 p@@5 v_1@@4 r@@4 u@@1))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23585_23585 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_23585_15680 q@@1 w@@4 r@@4 u@@1))
)))
(assert (forall ((p@@6 T@Field_23585_23586) (v_1@@5 T@FrameType) (q@@2 T@Field_22669_22670) (w@@5 T@FrameType) (r@@5 T@Field_23585_23586) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_23585_22669 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_22669_23585 q@@2 w@@5 r@@5 u@@2)) (InsidePredicate_23585_23585 p@@6 v_1@@5 r@@5 u@@2))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23585_22669 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_22669_23585 q@@2 w@@5 r@@5 u@@2))
)))
(assert (forall ((p@@7 T@Field_23585_23586) (v_1@@6 T@FrameType) (q@@3 T@Field_22669_22670) (w@@6 T@FrameType) (r@@6 T@Field_22669_22670) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_23585_22669 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_22669_22669 q@@3 w@@6 r@@6 u@@3)) (InsidePredicate_23585_22669 p@@7 v_1@@6 r@@6 u@@3))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23585_22669 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_22669_22669 q@@3 w@@6 r@@6 u@@3))
)))
(assert (forall ((p@@8 T@Field_23585_23586) (v_1@@7 T@FrameType) (q@@4 T@Field_22669_22670) (w@@7 T@FrameType) (r@@7 T@Field_15680_9632) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_23585_22669 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_22669_15680 q@@4 w@@7 r@@7 u@@4)) (InsidePredicate_23585_15680 p@@8 v_1@@7 r@@7 u@@4))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23585_22669 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_22669_15680 q@@4 w@@7 r@@7 u@@4))
)))
(assert (forall ((p@@9 T@Field_23585_23586) (v_1@@8 T@FrameType) (q@@5 T@Field_15680_9632) (w@@8 T@FrameType) (r@@8 T@Field_23585_23586) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_23585_15680 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_15680_23585 q@@5 w@@8 r@@8 u@@5)) (InsidePredicate_23585_23585 p@@9 v_1@@8 r@@8 u@@5))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23585_15680 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_15680_23585 q@@5 w@@8 r@@8 u@@5))
)))
(assert (forall ((p@@10 T@Field_23585_23586) (v_1@@9 T@FrameType) (q@@6 T@Field_15680_9632) (w@@9 T@FrameType) (r@@9 T@Field_22669_22670) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_23585_15680 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_15680_22669 q@@6 w@@9 r@@9 u@@6)) (InsidePredicate_23585_22669 p@@10 v_1@@9 r@@9 u@@6))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23585_15680 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_15680_22669 q@@6 w@@9 r@@9 u@@6))
)))
(assert (forall ((p@@11 T@Field_23585_23586) (v_1@@10 T@FrameType) (q@@7 T@Field_15680_9632) (w@@10 T@FrameType) (r@@10 T@Field_15680_9632) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_23585_15680 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_15680_15680 q@@7 w@@10 r@@10 u@@7)) (InsidePredicate_23585_15680 p@@11 v_1@@10 r@@10 u@@7))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23585_15680 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_15680_15680 q@@7 w@@10 r@@10 u@@7))
)))
(assert (forall ((p@@12 T@Field_22669_22670) (v_1@@11 T@FrameType) (q@@8 T@Field_23585_23586) (w@@11 T@FrameType) (r@@11 T@Field_23585_23586) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_22669_23585 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_23585_23585 q@@8 w@@11 r@@11 u@@8)) (InsidePredicate_22669_23585 p@@12 v_1@@11 r@@11 u@@8))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22669_23585 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_23585_23585 q@@8 w@@11 r@@11 u@@8))
)))
(assert (forall ((p@@13 T@Field_22669_22670) (v_1@@12 T@FrameType) (q@@9 T@Field_23585_23586) (w@@12 T@FrameType) (r@@12 T@Field_22669_22670) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_22669_23585 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_23585_22669 q@@9 w@@12 r@@12 u@@9)) (InsidePredicate_22669_22669 p@@13 v_1@@12 r@@12 u@@9))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22669_23585 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_23585_22669 q@@9 w@@12 r@@12 u@@9))
)))
(assert (forall ((p@@14 T@Field_22669_22670) (v_1@@13 T@FrameType) (q@@10 T@Field_23585_23586) (w@@13 T@FrameType) (r@@13 T@Field_15680_9632) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_22669_23585 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_23585_15680 q@@10 w@@13 r@@13 u@@10)) (InsidePredicate_22669_15680 p@@14 v_1@@13 r@@13 u@@10))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22669_23585 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_23585_15680 q@@10 w@@13 r@@13 u@@10))
)))
(assert (forall ((p@@15 T@Field_22669_22670) (v_1@@14 T@FrameType) (q@@11 T@Field_22669_22670) (w@@14 T@FrameType) (r@@14 T@Field_23585_23586) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_22669_22669 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_22669_23585 q@@11 w@@14 r@@14 u@@11)) (InsidePredicate_22669_23585 p@@15 v_1@@14 r@@14 u@@11))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22669_22669 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_22669_23585 q@@11 w@@14 r@@14 u@@11))
)))
(assert (forall ((p@@16 T@Field_22669_22670) (v_1@@15 T@FrameType) (q@@12 T@Field_22669_22670) (w@@15 T@FrameType) (r@@15 T@Field_22669_22670) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_22669_22669 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_22669_22669 q@@12 w@@15 r@@15 u@@12)) (InsidePredicate_22669_22669 p@@16 v_1@@15 r@@15 u@@12))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22669_22669 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_22669_22669 q@@12 w@@15 r@@15 u@@12))
)))
(assert (forall ((p@@17 T@Field_22669_22670) (v_1@@16 T@FrameType) (q@@13 T@Field_22669_22670) (w@@16 T@FrameType) (r@@16 T@Field_15680_9632) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_22669_22669 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_22669_15680 q@@13 w@@16 r@@16 u@@13)) (InsidePredicate_22669_15680 p@@17 v_1@@16 r@@16 u@@13))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22669_22669 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_22669_15680 q@@13 w@@16 r@@16 u@@13))
)))
(assert (forall ((p@@18 T@Field_22669_22670) (v_1@@17 T@FrameType) (q@@14 T@Field_15680_9632) (w@@17 T@FrameType) (r@@17 T@Field_23585_23586) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_22669_15680 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_15680_23585 q@@14 w@@17 r@@17 u@@14)) (InsidePredicate_22669_23585 p@@18 v_1@@17 r@@17 u@@14))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22669_15680 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_15680_23585 q@@14 w@@17 r@@17 u@@14))
)))
(assert (forall ((p@@19 T@Field_22669_22670) (v_1@@18 T@FrameType) (q@@15 T@Field_15680_9632) (w@@18 T@FrameType) (r@@18 T@Field_22669_22670) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_22669_15680 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_15680_22669 q@@15 w@@18 r@@18 u@@15)) (InsidePredicate_22669_22669 p@@19 v_1@@18 r@@18 u@@15))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22669_15680 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_15680_22669 q@@15 w@@18 r@@18 u@@15))
)))
(assert (forall ((p@@20 T@Field_22669_22670) (v_1@@19 T@FrameType) (q@@16 T@Field_15680_9632) (w@@19 T@FrameType) (r@@19 T@Field_15680_9632) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_22669_15680 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_15680_15680 q@@16 w@@19 r@@19 u@@16)) (InsidePredicate_22669_15680 p@@20 v_1@@19 r@@19 u@@16))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22669_15680 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_15680_15680 q@@16 w@@19 r@@19 u@@16))
)))
(assert (forall ((p@@21 T@Field_15680_9632) (v_1@@20 T@FrameType) (q@@17 T@Field_23585_23586) (w@@20 T@FrameType) (r@@20 T@Field_23585_23586) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_15680_23585 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_23585_23585 q@@17 w@@20 r@@20 u@@17)) (InsidePredicate_15680_23585 p@@21 v_1@@20 r@@20 u@@17))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15680_23585 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_23585_23585 q@@17 w@@20 r@@20 u@@17))
)))
(assert (forall ((p@@22 T@Field_15680_9632) (v_1@@21 T@FrameType) (q@@18 T@Field_23585_23586) (w@@21 T@FrameType) (r@@21 T@Field_22669_22670) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_15680_23585 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_23585_22669 q@@18 w@@21 r@@21 u@@18)) (InsidePredicate_15680_22669 p@@22 v_1@@21 r@@21 u@@18))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15680_23585 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_23585_22669 q@@18 w@@21 r@@21 u@@18))
)))
(assert (forall ((p@@23 T@Field_15680_9632) (v_1@@22 T@FrameType) (q@@19 T@Field_23585_23586) (w@@22 T@FrameType) (r@@22 T@Field_15680_9632) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_15680_23585 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_23585_15680 q@@19 w@@22 r@@22 u@@19)) (InsidePredicate_15680_15680 p@@23 v_1@@22 r@@22 u@@19))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15680_23585 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_23585_15680 q@@19 w@@22 r@@22 u@@19))
)))
(assert (forall ((p@@24 T@Field_15680_9632) (v_1@@23 T@FrameType) (q@@20 T@Field_22669_22670) (w@@23 T@FrameType) (r@@23 T@Field_23585_23586) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_15680_22669 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_22669_23585 q@@20 w@@23 r@@23 u@@20)) (InsidePredicate_15680_23585 p@@24 v_1@@23 r@@23 u@@20))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15680_22669 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_22669_23585 q@@20 w@@23 r@@23 u@@20))
)))
(assert (forall ((p@@25 T@Field_15680_9632) (v_1@@24 T@FrameType) (q@@21 T@Field_22669_22670) (w@@24 T@FrameType) (r@@24 T@Field_22669_22670) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_15680_22669 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_22669_22669 q@@21 w@@24 r@@24 u@@21)) (InsidePredicate_15680_22669 p@@25 v_1@@24 r@@24 u@@21))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15680_22669 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_22669_22669 q@@21 w@@24 r@@24 u@@21))
)))
(assert (forall ((p@@26 T@Field_15680_9632) (v_1@@25 T@FrameType) (q@@22 T@Field_22669_22670) (w@@25 T@FrameType) (r@@25 T@Field_15680_9632) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_15680_22669 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_22669_15680 q@@22 w@@25 r@@25 u@@22)) (InsidePredicate_15680_15680 p@@26 v_1@@25 r@@25 u@@22))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15680_22669 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_22669_15680 q@@22 w@@25 r@@25 u@@22))
)))
(assert (forall ((p@@27 T@Field_15680_9632) (v_1@@26 T@FrameType) (q@@23 T@Field_15680_9632) (w@@26 T@FrameType) (r@@26 T@Field_23585_23586) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_15680_15680 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_15680_23585 q@@23 w@@26 r@@26 u@@23)) (InsidePredicate_15680_23585 p@@27 v_1@@26 r@@26 u@@23))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15680_15680 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_15680_23585 q@@23 w@@26 r@@26 u@@23))
)))
(assert (forall ((p@@28 T@Field_15680_9632) (v_1@@27 T@FrameType) (q@@24 T@Field_15680_9632) (w@@27 T@FrameType) (r@@27 T@Field_22669_22670) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_15680_15680 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_15680_22669 q@@24 w@@27 r@@27 u@@24)) (InsidePredicate_15680_22669 p@@28 v_1@@27 r@@27 u@@24))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15680_15680 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_15680_22669 q@@24 w@@27 r@@27 u@@24))
)))
(assert (forall ((p@@29 T@Field_15680_9632) (v_1@@28 T@FrameType) (q@@25 T@Field_15680_9632) (w@@28 T@FrameType) (r@@28 T@Field_15680_9632) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_15680_15680 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_15680_15680 q@@25 w@@28 r@@28 u@@25)) (InsidePredicate_15680_15680 p@@29 v_1@@28 r@@28 u@@25))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15680_15680 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_15680_15680 q@@25 w@@28 r@@28 u@@25))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.325:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_9846| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.258:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_9846| a@@20 b@@13) o@@4))
)))
; Invalid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered3 (T@Ref) Bool)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun p_1@@5 () Real)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_15620)
(declare-fun QPMask@0 () T@PolymorphicMapType_15641)
(declare-fun invRecv3 (T@Ref) T@Ref)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun neverTriggered4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) T@Ref)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_15641)
(declare-fun getPredWandId_9609_3463 (T@Field_21894_3463) Int)
(declare-fun getPredWandId_9609_9632 (T@Field_15680_9632) Int)
(declare-fun getPredWandId_9609_53 (T@Field_15680_53) Int)
(declare-fun getPredWandId_9609_15694 (T@Field_15693_15694) Int)
(declare-fun getPredWandId_9609_77484 (T@Field_15680_22687) Int)
(declare-fun getPredWandId_9631_3463 (T@Field_9631_3463) Int)
(declare-fun getPredWandId_9631_53 (T@Field_9631_53) Int)
(declare-fun getPredWandId_9631_15694 (T@Field_9631_15694) Int)
(declare-fun getPredWandId_9631_78293 (T@Field_22682_22687) Int)
(declare-fun getPredWandId_9657_3463 (T@Field_23585_3463) Int)
(declare-fun getPredWandId_9657_53 (T@Field_23585_53) Int)
(declare-fun getPredWandId_9657_15694 (T@Field_23585_15694) Int)
(declare-fun getPredWandId_9657_79102 (T@Field_23598_23603) Int)
(declare-fun invRecv5 (T@Ref) T@Ref)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun neverTriggered5 (T@Ref) Bool)
(declare-fun Heap@@50 () T@PolymorphicMapType_15620)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun neverTriggered2 (T@Ref) Bool)
(set-info :boogie-vc-id test21)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon8_Else_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (forall ((x_3 T@Ref) (x_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3 x_3_1)) (select xs x_3)) (select xs x_3_1)) (< NoPerm p_1@@5)) (< NoPerm p_1@@5)) (not (= x_3 x_3_1)))
 :qid |stdinbpl.1077:21|
 :skolemid |112|
 :pattern ( (neverTriggered3 x_3) (neverTriggered3 x_3_1))
))) (=> (forall ((x_3@@0 T@Ref) (x_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3@@0 x_3_1@@0)) (select xs x_3@@0)) (select xs x_3_1@@0)) (< NoPerm p_1@@5)) (< NoPerm p_1@@5)) (not (= x_3@@0 x_3_1@@0)))
 :qid |stdinbpl.1077:21|
 :skolemid |112|
 :pattern ( (neverTriggered3 x_3@@0) (neverTriggered3 x_3_1@@0))
)) (=> (forall ((x_3@@1 T@Ref) ) (!  (=> (and (select xs x_3@@1) (< NoPerm p_1@@5)) (and (= (invRecv3 x_3@@1) x_3@@1) (qpRange3 x_3@@1)))
 :qid |stdinbpl.1083:26|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@0) null (P x_3@@1)))
 :pattern ( (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| QPMask@0) null (P x_3@@1)))
 :pattern ( (select xs x_3@@1))
)) (=> (and (forall ((x_4_1_1 T@Ref) ) (!  (=> (and (and (select xs (invRecv3 x_4_1_1)) (< NoPerm p_1@@5)) (qpRange3 x_4_1_1)) (= (invRecv3 x_4_1_1) x_4_1_1))
 :qid |stdinbpl.1087:26|
 :skolemid |114|
 :pattern ( (invRecv3 x_4_1_1))
)) (= (ControlFlow 0 12) (- 0 11))) (forall ((x_3@@2 T@Ref) ) (!  (=> (select xs x_3@@2) (>= p_1@@5 NoPerm))
 :qid |stdinbpl.1093:19|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@0) null (P x_3@@2)))
 :pattern ( (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| QPMask@0) null (P x_3@@2)))
 :pattern ( (select xs x_3@@2))
))))))))
(let ((anon8_Then_correct true))
(let ((anon9_Else_correct true))
(let ((anon9_Then_correct  (=> (state ExhaleHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 6)) (forall ((x_6 T@Ref) (x_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_6 x_6_1)) (select xs x_6)) (select xs x_6_1)) (< NoPerm p_1@@5)) (< NoPerm p_1@@5)) (not (= x_6 x_6_1)))
 :qid |stdinbpl.1131:21|
 :skolemid |119|
 :pattern ( (neverTriggered4 x_6) (neverTriggered4 x_6_1))
))) (=> (forall ((x_6@@0 T@Ref) (x_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_6@@0 x_6_1@@0)) (select xs x_6@@0)) (select xs x_6_1@@0)) (< NoPerm p_1@@5)) (< NoPerm p_1@@5)) (not (= x_6@@0 x_6_1@@0)))
 :qid |stdinbpl.1131:21|
 :skolemid |119|
 :pattern ( (neverTriggered4 x_6@@0) (neverTriggered4 x_6_1@@0))
)) (=> (and (forall ((x_6@@1 T@Ref) ) (!  (=> (and (select xs x_6@@1) (< NoPerm p_1@@5)) (and (= (invRecv4 x_6@@1) x_6@@1) (qpRange4 x_6@@1)))
 :qid |stdinbpl.1137:26|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@0) null (P x_6@@1)))
 :pattern ( (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ZeroMask) null (P x_6@@1)))
 :pattern ( (select xs x_6@@1))
)) (forall ((x_7_1_1 T@Ref) ) (!  (=> (and (and (select xs (invRecv4 x_7_1_1)) (< NoPerm p_1@@5)) (qpRange4 x_7_1_1)) (= (invRecv4 x_7_1_1) x_7_1_1))
 :qid |stdinbpl.1141:26|
 :skolemid |121|
 :pattern ( (invRecv4 x_7_1_1))
))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (forall ((x_6@@2 T@Ref) ) (!  (=> (select xs x_6@@2) (>= p_1@@5 NoPerm))
 :qid |stdinbpl.1147:19|
 :skolemid |122|
 :pattern ( (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@0) null (P x_6@@2)))
 :pattern ( (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ZeroMask) null (P x_6@@2)))
 :pattern ( (select xs x_6@@2))
))) (=> (forall ((x_6@@3 T@Ref) ) (!  (=> (select xs x_6@@3) (>= p_1@@5 NoPerm))
 :qid |stdinbpl.1147:19|
 :skolemid |122|
 :pattern ( (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@0) null (P x_6@@3)))
 :pattern ( (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ZeroMask) null (P x_6@@3)))
 :pattern ( (select xs x_6@@3))
)) (=> (forall ((x_7_1_1@@0 T@Ref) ) (!  (=> (and (and (select xs (invRecv4 x_7_1_1@@0)) (< NoPerm p_1@@5)) (qpRange4 x_7_1_1@@0)) (and (=> (< NoPerm p_1@@5) (= (invRecv4 x_7_1_1@@0) x_7_1_1@@0)) (= (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| QPMask@1) null (P x_7_1_1@@0)) (+ (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ZeroMask) null (P x_7_1_1@@0)) p_1@@5))))
 :qid |stdinbpl.1153:26|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| QPMask@1) null (P x_7_1_1@@0)))
)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4 T@Ref) (f_5 T@Field_21894_3463) ) (!  (=> (or (or (not (= o_4 null)) (not (IsPredicateField_9609_3463 f_5))) (not (= (getPredWandId_9609_3463 f_5) 0))) (= (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| ZeroMask) o_4 f_5) (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| QPMask@1) o_4 f_5)))
 :qid |stdinbpl.1159:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| ZeroMask) o_4 f_5))
 :pattern ( (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| QPMask@1) o_4 f_5))
)) (forall ((o_4@@0 T@Ref) (f_5@@0 T@Field_15680_9632) ) (!  (=> (or (or (not (= o_4@@0 null)) (not (IsPredicateField_15680_49070 f_5@@0))) (not (= (getPredWandId_9609_9632 f_5@@0) 0))) (= (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| ZeroMask) o_4@@0 f_5@@0) (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| QPMask@1) o_4@@0 f_5@@0)))
 :qid |stdinbpl.1159:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| ZeroMask) o_4@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| QPMask@1) o_4@@0 f_5@@0))
))) (forall ((o_4@@1 T@Ref) (f_5@@1 T@Field_15680_53) ) (!  (=> (or (or (not (= o_4@@1 null)) (not (IsPredicateField_9609_53 f_5@@1))) (not (= (getPredWandId_9609_53 f_5@@1) 0))) (= (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| ZeroMask) o_4@@1 f_5@@1) (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| QPMask@1) o_4@@1 f_5@@1)))
 :qid |stdinbpl.1159:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| ZeroMask) o_4@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| QPMask@1) o_4@@1 f_5@@1))
))) (forall ((o_4@@2 T@Ref) (f_5@@2 T@Field_15693_15694) ) (!  (=> (or (or (not (= o_4@@2 null)) (not (IsPredicateField_9609_15694 f_5@@2))) (not (= (getPredWandId_9609_15694 f_5@@2) 0))) (= (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| ZeroMask) o_4@@2 f_5@@2) (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| QPMask@1) o_4@@2 f_5@@2)))
 :qid |stdinbpl.1159:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| ZeroMask) o_4@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| QPMask@1) o_4@@2 f_5@@2))
))) (forall ((o_4@@3 T@Ref) (f_5@@3 T@Field_15680_22687) ) (!  (=> (or (or (not (= o_4@@3 null)) (not (IsPredicateField_9609_63097 f_5@@3))) (not (= (getPredWandId_9609_77484 f_5@@3) 0))) (= (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| ZeroMask) o_4@@3 f_5@@3) (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| QPMask@1) o_4@@3 f_5@@3)))
 :qid |stdinbpl.1159:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| ZeroMask) o_4@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| QPMask@1) o_4@@3 f_5@@3))
))) (forall ((o_4@@4 T@Ref) (f_5@@4 T@Field_9631_3463) ) (!  (=> (or (or (not (= o_4@@4 null)) (not (IsPredicateField_9631_3463 f_5@@4))) (not (= (getPredWandId_9631_3463 f_5@@4) 0))) (= (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| ZeroMask) o_4@@4 f_5@@4) (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| QPMask@1) o_4@@4 f_5@@4)))
 :qid |stdinbpl.1159:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| ZeroMask) o_4@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| QPMask@1) o_4@@4 f_5@@4))
))) (forall ((o_4@@5 T@Ref) (f_5@@5 T@Field_22669_22670) ) (!  (=> (or (or (not (= o_4@@5 null)) (not (IsPredicateField_9631_9632 f_5@@5))) (not (= (getPredWandId_9631_9632 f_5@@5) 0))) (= (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ZeroMask) o_4@@5 f_5@@5) (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| QPMask@1) o_4@@5 f_5@@5)))
 :qid |stdinbpl.1159:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ZeroMask) o_4@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| QPMask@1) o_4@@5 f_5@@5))
))) (forall ((o_4@@6 T@Ref) (f_5@@6 T@Field_9631_53) ) (!  (=> (or (or (not (= o_4@@6 null)) (not (IsPredicateField_9631_53 f_5@@6))) (not (= (getPredWandId_9631_53 f_5@@6) 0))) (= (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| ZeroMask) o_4@@6 f_5@@6) (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| QPMask@1) o_4@@6 f_5@@6)))
 :qid |stdinbpl.1159:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| ZeroMask) o_4@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| QPMask@1) o_4@@6 f_5@@6))
))) (forall ((o_4@@7 T@Ref) (f_5@@7 T@Field_9631_15694) ) (!  (=> (or (or (not (= o_4@@7 null)) (not (IsPredicateField_9631_15694 f_5@@7))) (not (= (getPredWandId_9631_15694 f_5@@7) 0))) (= (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| ZeroMask) o_4@@7 f_5@@7) (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| QPMask@1) o_4@@7 f_5@@7)))
 :qid |stdinbpl.1159:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| ZeroMask) o_4@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| QPMask@1) o_4@@7 f_5@@7))
))) (forall ((o_4@@8 T@Ref) (f_5@@8 T@Field_22682_22687) ) (!  (=> (or (or (not (= o_4@@8 null)) (not (IsPredicateField_9631_63928 f_5@@8))) (not (= (getPredWandId_9631_78293 f_5@@8) 0))) (= (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| ZeroMask) o_4@@8 f_5@@8) (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| QPMask@1) o_4@@8 f_5@@8)))
 :qid |stdinbpl.1159:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| ZeroMask) o_4@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| QPMask@1) o_4@@8 f_5@@8))
))) (forall ((o_4@@9 T@Ref) (f_5@@9 T@Field_23585_3463) ) (!  (=> (or (or (not (= o_4@@9 null)) (not (IsPredicateField_9657_3463 f_5@@9))) (not (= (getPredWandId_9657_3463 f_5@@9) 0))) (= (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| ZeroMask) o_4@@9 f_5@@9) (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| QPMask@1) o_4@@9 f_5@@9)))
 :qid |stdinbpl.1159:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| ZeroMask) o_4@@9 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| QPMask@1) o_4@@9 f_5@@9))
))) (forall ((o_4@@10 T@Ref) (f_5@@10 T@Field_23585_23586) ) (!  (=> (or (or (not (= o_4@@10 null)) (not (IsPredicateField_9657_9658 f_5@@10))) (not (= (getPredWandId_9657_9658 f_5@@10) 0))) (= (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| ZeroMask) o_4@@10 f_5@@10) (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| QPMask@1) o_4@@10 f_5@@10)))
 :qid |stdinbpl.1159:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| ZeroMask) o_4@@10 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| QPMask@1) o_4@@10 f_5@@10))
))) (forall ((o_4@@11 T@Ref) (f_5@@11 T@Field_23585_53) ) (!  (=> (or (or (not (= o_4@@11 null)) (not (IsPredicateField_9657_53 f_5@@11))) (not (= (getPredWandId_9657_53 f_5@@11) 0))) (= (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| ZeroMask) o_4@@11 f_5@@11) (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| QPMask@1) o_4@@11 f_5@@11)))
 :qid |stdinbpl.1159:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| ZeroMask) o_4@@11 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| QPMask@1) o_4@@11 f_5@@11))
))) (forall ((o_4@@12 T@Ref) (f_5@@12 T@Field_23585_15694) ) (!  (=> (or (or (not (= o_4@@12 null)) (not (IsPredicateField_9657_15694 f_5@@12))) (not (= (getPredWandId_9657_15694 f_5@@12) 0))) (= (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| ZeroMask) o_4@@12 f_5@@12) (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| QPMask@1) o_4@@12 f_5@@12)))
 :qid |stdinbpl.1159:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| ZeroMask) o_4@@12 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| QPMask@1) o_4@@12 f_5@@12))
))) (forall ((o_4@@13 T@Ref) (f_5@@13 T@Field_23598_23603) ) (!  (=> (or (or (not (= o_4@@13 null)) (not (IsPredicateField_9657_64759 f_5@@13))) (not (= (getPredWandId_9657_79102 f_5@@13) 0))) (= (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| ZeroMask) o_4@@13 f_5@@13) (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| QPMask@1) o_4@@13 f_5@@13)))
 :qid |stdinbpl.1159:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| ZeroMask) o_4@@13 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| QPMask@1) o_4@@13 f_5@@13))
))) (and (and (forall ((x_7_1_1@@1 T@Ref) ) (!  (=> (not (and (and (select xs (invRecv4 x_7_1_1@@1)) (< NoPerm p_1@@5)) (qpRange4 x_7_1_1@@1))) (= (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| QPMask@1) null (P x_7_1_1@@1)) (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ZeroMask) null (P x_7_1_1@@1))))
 :qid |stdinbpl.1163:26|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| QPMask@1) null (P x_7_1_1@@1)))
)) (state ExhaleHeap@0 QPMask@1)) (and (state ExhaleHeap@0 QPMask@1) (state ExhaleHeap@0 QPMask@1)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall ((x_10_1_1 T@Ref) ) (!  (=> (and (select xs (invRecv5 x_10_1_1)) (qpRange5 x_10_1_1)) (>= p_1@@5 NoPerm))
 :qid |stdinbpl.1179:21|
 :skolemid |126|
 :pattern ( (invRecv5 x_10_1_1))
))) (=> (forall ((x_10_1_1@@0 T@Ref) ) (!  (=> (and (select xs (invRecv5 x_10_1_1@@0)) (qpRange5 x_10_1_1@@0)) (>= p_1@@5 NoPerm))
 :qid |stdinbpl.1179:21|
 :skolemid |126|
 :pattern ( (invRecv5 x_10_1_1@@0))
)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((x_9_2 T@Ref) (x_9_3 T@Ref) ) (!  (=> (and (and (and (and (not (= x_9_2 x_9_3)) (select xs x_9_2)) (select xs x_9_3)) (< NoPerm p_1@@5)) (< NoPerm p_1@@5)) (not (= x_9_2 x_9_3)))
 :qid |stdinbpl.1186:21|
 :skolemid |127|
 :pattern ( (neverTriggered5 x_9_2) (neverTriggered5 x_9_3))
))) (=> (forall ((x_9_2@@0 T@Ref) (x_9_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_9_2@@0 x_9_3@@0)) (select xs x_9_2@@0)) (select xs x_9_3@@0)) (< NoPerm p_1@@5)) (< NoPerm p_1@@5)) (not (= x_9_2@@0 x_9_3@@0)))
 :qid |stdinbpl.1186:21|
 :skolemid |127|
 :pattern ( (neverTriggered5 x_9_2@@0) (neverTriggered5 x_9_3@@0))
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((x_9_2@@1 T@Ref) ) (!  (=> (select xs x_9_2@@1) (>= (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| QPMask@1) null (P x_9_2@@1)) p_1@@5))
 :qid |stdinbpl.1193:21|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| ExhaleHeap@0) null (P x_9_2@@1)))
 :pattern ( (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| QPMask@1) null (P x_9_2@@1)))
 :pattern ( (select xs x_9_2@@1))
)))))))))))))))))
(let ((anon0_correct  (=> (state Heap@@50 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 14) (- 0 17)) (forall ((x_1_1_1 T@Ref) ) (!  (=> (and (select xs (invRecv2 x_1_1_1)) (qpRange2 x_1_1_1)) (>= p_1@@5 NoPerm))
 :qid |stdinbpl.1016:21|
 :skolemid |104|
 :pattern ( (invRecv2 x_1_1_1))
))) (=> (forall ((x_1_1_1@@0 T@Ref) ) (!  (=> (and (select xs (invRecv2 x_1_1_1@@0)) (qpRange2 x_1_1_1@@0)) (>= p_1@@5 NoPerm))
 :qid |stdinbpl.1016:21|
 :skolemid |104|
 :pattern ( (invRecv2 x_1_1_1@@0))
)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (forall ((x@@20 T@Ref) (x_9 T@Ref) ) (!  (=> (and (and (and (and (not (= x@@20 x_9)) (select xs x@@20)) (select xs x_9)) (< NoPerm p_1@@5)) (< NoPerm p_1@@5)) (not (= x@@20 x_9)))
 :qid |stdinbpl.1023:21|
 :skolemid |105|
 :pattern ( (neverTriggered2 x@@20) (neverTriggered2 x_9))
))) (=> (forall ((x@@21 T@Ref) (x_9@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x@@21 x_9@@0)) (select xs x@@21)) (select xs x_9@@0)) (< NoPerm p_1@@5)) (< NoPerm p_1@@5)) (not (= x@@21 x_9@@0)))
 :qid |stdinbpl.1023:21|
 :skolemid |105|
 :pattern ( (neverTriggered2 x@@21) (neverTriggered2 x_9@@0))
)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (forall ((x@@22 T@Ref) ) (!  (=> (select xs x@@22) (>= (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ZeroMask) null (P x@@22)) p_1@@5))
 :qid |stdinbpl.1030:21|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@50) null (P x@@22)))
 :pattern ( (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ZeroMask) null (P x@@22)))
 :pattern ( (select xs x@@22))
))) (=> (forall ((x@@23 T@Ref) ) (!  (=> (select xs x@@23) (>= (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ZeroMask) null (P x@@23)) p_1@@5))
 :qid |stdinbpl.1030:21|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@50) null (P x@@23)))
 :pattern ( (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ZeroMask) null (P x@@23)))
 :pattern ( (select xs x@@23))
)) (=> (and (and (forall ((x@@24 T@Ref) ) (!  (=> (and (select xs x@@24) (< NoPerm p_1@@5)) (and (= (invRecv2 x@@24) x@@24) (qpRange2 x@@24)))
 :qid |stdinbpl.1036:26|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_15620_9631_9632#PolymorphicMapType_15620| Heap@@50) null (P x@@24)))
 :pattern ( (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ZeroMask) null (P x@@24)))
 :pattern ( (select xs x@@24))
)) (forall ((x_1_1_1@@1 T@Ref) ) (!  (=> (and (and (select xs (invRecv2 x_1_1_1@@1)) (< NoPerm p_1@@5)) (qpRange2 x_1_1_1@@1)) (= (invRecv2 x_1_1_1@@1) x_1_1_1@@1))
 :qid |stdinbpl.1040:26|
 :skolemid |108|
 :pattern ( (invRecv2 x_1_1_1@@1))
))) (and (forall ((x_1_1_1@@2 T@Ref) ) (!  (=> (and (and (select xs (invRecv2 x_1_1_1@@2)) (< NoPerm p_1@@5)) (qpRange2 x_1_1_1@@2)) (and (= (invRecv2 x_1_1_1@@2) x_1_1_1@@2) (= (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| QPMask@0) null (P x_1_1_1@@2)) (- (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ZeroMask) null (P x_1_1_1@@2)) p_1@@5))))
 :qid |stdinbpl.1046:26|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| QPMask@0) null (P x_1_1_1@@2)))
)) (forall ((x_1_1_1@@3 T@Ref) ) (!  (=> (not (and (and (select xs (invRecv2 x_1_1_1@@3)) (< NoPerm p_1@@5)) (qpRange2 x_1_1_1@@3))) (= (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| QPMask@0) null (P x_1_1_1@@3)) (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ZeroMask) null (P x_1_1_1@@3))))
 :qid |stdinbpl.1050:26|
 :skolemid |110|
 :pattern ( (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| QPMask@0) null (P x_1_1_1@@3)))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@14 T@Ref) (f_5@@14 T@Field_21894_3463) ) (!  (=> (or (or (not (= o_4@@14 null)) (not (IsPredicateField_9609_3463 f_5@@14))) (not (= (getPredWandId_9609_3463 f_5@@14) 0))) (= (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| ZeroMask) o_4@@14 f_5@@14) (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| QPMask@0) o_4@@14 f_5@@14)))
 :qid |stdinbpl.1056:33|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| ZeroMask) o_4@@14 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_15641_9609_3463#PolymorphicMapType_15641| QPMask@0) o_4@@14 f_5@@14))
)) (forall ((o_4@@15 T@Ref) (f_5@@15 T@Field_15680_9632) ) (!  (=> (or (or (not (= o_4@@15 null)) (not (IsPredicateField_15680_49070 f_5@@15))) (not (= (getPredWandId_9609_9632 f_5@@15) 0))) (= (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| ZeroMask) o_4@@15 f_5@@15) (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| QPMask@0) o_4@@15 f_5@@15)))
 :qid |stdinbpl.1056:33|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| ZeroMask) o_4@@15 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_15641_9609_9632#PolymorphicMapType_15641| QPMask@0) o_4@@15 f_5@@15))
))) (forall ((o_4@@16 T@Ref) (f_5@@16 T@Field_15680_53) ) (!  (=> (or (or (not (= o_4@@16 null)) (not (IsPredicateField_9609_53 f_5@@16))) (not (= (getPredWandId_9609_53 f_5@@16) 0))) (= (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| ZeroMask) o_4@@16 f_5@@16) (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| QPMask@0) o_4@@16 f_5@@16)))
 :qid |stdinbpl.1056:33|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| ZeroMask) o_4@@16 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_15641_9609_53#PolymorphicMapType_15641| QPMask@0) o_4@@16 f_5@@16))
))) (forall ((o_4@@17 T@Ref) (f_5@@17 T@Field_15693_15694) ) (!  (=> (or (or (not (= o_4@@17 null)) (not (IsPredicateField_9609_15694 f_5@@17))) (not (= (getPredWandId_9609_15694 f_5@@17) 0))) (= (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| ZeroMask) o_4@@17 f_5@@17) (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| QPMask@0) o_4@@17 f_5@@17)))
 :qid |stdinbpl.1056:33|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| ZeroMask) o_4@@17 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_15641_9609_15694#PolymorphicMapType_15641| QPMask@0) o_4@@17 f_5@@17))
))) (forall ((o_4@@18 T@Ref) (f_5@@18 T@Field_15680_22687) ) (!  (=> (or (or (not (= o_4@@18 null)) (not (IsPredicateField_9609_63097 f_5@@18))) (not (= (getPredWandId_9609_77484 f_5@@18) 0))) (= (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| ZeroMask) o_4@@18 f_5@@18) (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| QPMask@0) o_4@@18 f_5@@18)))
 :qid |stdinbpl.1056:33|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| ZeroMask) o_4@@18 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_15641_9609_60482#PolymorphicMapType_15641| QPMask@0) o_4@@18 f_5@@18))
))) (forall ((o_4@@19 T@Ref) (f_5@@19 T@Field_9631_3463) ) (!  (=> (or (or (not (= o_4@@19 null)) (not (IsPredicateField_9631_3463 f_5@@19))) (not (= (getPredWandId_9631_3463 f_5@@19) 0))) (= (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| ZeroMask) o_4@@19 f_5@@19) (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| QPMask@0) o_4@@19 f_5@@19)))
 :qid |stdinbpl.1056:33|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| ZeroMask) o_4@@19 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_15641_9631_3463#PolymorphicMapType_15641| QPMask@0) o_4@@19 f_5@@19))
))) (forall ((o_4@@20 T@Ref) (f_5@@20 T@Field_22669_22670) ) (!  (=> (or (or (not (= o_4@@20 null)) (not (IsPredicateField_9631_9632 f_5@@20))) (not (= (getPredWandId_9631_9632 f_5@@20) 0))) (= (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ZeroMask) o_4@@20 f_5@@20) (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| QPMask@0) o_4@@20 f_5@@20)))
 :qid |stdinbpl.1056:33|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| ZeroMask) o_4@@20 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_15641_9631_9632#PolymorphicMapType_15641| QPMask@0) o_4@@20 f_5@@20))
))) (forall ((o_4@@21 T@Ref) (f_5@@21 T@Field_9631_53) ) (!  (=> (or (or (not (= o_4@@21 null)) (not (IsPredicateField_9631_53 f_5@@21))) (not (= (getPredWandId_9631_53 f_5@@21) 0))) (= (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| ZeroMask) o_4@@21 f_5@@21) (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| QPMask@0) o_4@@21 f_5@@21)))
 :qid |stdinbpl.1056:33|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| ZeroMask) o_4@@21 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_15641_9631_53#PolymorphicMapType_15641| QPMask@0) o_4@@21 f_5@@21))
))) (forall ((o_4@@22 T@Ref) (f_5@@22 T@Field_9631_15694) ) (!  (=> (or (or (not (= o_4@@22 null)) (not (IsPredicateField_9631_15694 f_5@@22))) (not (= (getPredWandId_9631_15694 f_5@@22) 0))) (= (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| ZeroMask) o_4@@22 f_5@@22) (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| QPMask@0) o_4@@22 f_5@@22)))
 :qid |stdinbpl.1056:33|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| ZeroMask) o_4@@22 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_15641_9631_15694#PolymorphicMapType_15641| QPMask@0) o_4@@22 f_5@@22))
))) (forall ((o_4@@23 T@Ref) (f_5@@23 T@Field_22682_22687) ) (!  (=> (or (or (not (= o_4@@23 null)) (not (IsPredicateField_9631_63928 f_5@@23))) (not (= (getPredWandId_9631_78293 f_5@@23) 0))) (= (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| ZeroMask) o_4@@23 f_5@@23) (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| QPMask@0) o_4@@23 f_5@@23)))
 :qid |stdinbpl.1056:33|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| ZeroMask) o_4@@23 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_15641_9631_60893#PolymorphicMapType_15641| QPMask@0) o_4@@23 f_5@@23))
))) (forall ((o_4@@24 T@Ref) (f_5@@24 T@Field_23585_3463) ) (!  (=> (or (or (not (= o_4@@24 null)) (not (IsPredicateField_9657_3463 f_5@@24))) (not (= (getPredWandId_9657_3463 f_5@@24) 0))) (= (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| ZeroMask) o_4@@24 f_5@@24) (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| QPMask@0) o_4@@24 f_5@@24)))
 :qid |stdinbpl.1056:33|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| ZeroMask) o_4@@24 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_15641_9657_3463#PolymorphicMapType_15641| QPMask@0) o_4@@24 f_5@@24))
))) (forall ((o_4@@25 T@Ref) (f_5@@25 T@Field_23585_23586) ) (!  (=> (or (or (not (= o_4@@25 null)) (not (IsPredicateField_9657_9658 f_5@@25))) (not (= (getPredWandId_9657_9658 f_5@@25) 0))) (= (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| ZeroMask) o_4@@25 f_5@@25) (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| QPMask@0) o_4@@25 f_5@@25)))
 :qid |stdinbpl.1056:33|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| ZeroMask) o_4@@25 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_15641_9657_9658#PolymorphicMapType_15641| QPMask@0) o_4@@25 f_5@@25))
))) (forall ((o_4@@26 T@Ref) (f_5@@26 T@Field_23585_53) ) (!  (=> (or (or (not (= o_4@@26 null)) (not (IsPredicateField_9657_53 f_5@@26))) (not (= (getPredWandId_9657_53 f_5@@26) 0))) (= (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| ZeroMask) o_4@@26 f_5@@26) (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| QPMask@0) o_4@@26 f_5@@26)))
 :qid |stdinbpl.1056:33|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| ZeroMask) o_4@@26 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_15641_9657_53#PolymorphicMapType_15641| QPMask@0) o_4@@26 f_5@@26))
))) (forall ((o_4@@27 T@Ref) (f_5@@27 T@Field_23585_15694) ) (!  (=> (or (or (not (= o_4@@27 null)) (not (IsPredicateField_9657_15694 f_5@@27))) (not (= (getPredWandId_9657_15694 f_5@@27) 0))) (= (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| ZeroMask) o_4@@27 f_5@@27) (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| QPMask@0) o_4@@27 f_5@@27)))
 :qid |stdinbpl.1056:33|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| ZeroMask) o_4@@27 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_15641_9657_15694#PolymorphicMapType_15641| QPMask@0) o_4@@27 f_5@@27))
))) (forall ((o_4@@28 T@Ref) (f_5@@28 T@Field_23598_23603) ) (!  (=> (or (or (not (= o_4@@28 null)) (not (IsPredicateField_9657_64759 f_5@@28))) (not (= (getPredWandId_9657_79102 f_5@@28) 0))) (= (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| ZeroMask) o_4@@28 f_5@@28) (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| QPMask@0) o_4@@28 f_5@@28)))
 :qid |stdinbpl.1056:33|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| ZeroMask) o_4@@28 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_15641_9657_61304#PolymorphicMapType_15641| QPMask@0) o_4@@28 f_5@@28))
))) (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@0 QPMask@0)) (and (and (and (=> (= (ControlFlow 0 14) 2) anon9_Then_correct) (=> (= (ControlFlow 0 14) 8) anon9_Else_correct)) (=> (= (ControlFlow 0 14) 10) anon8_Then_correct)) (=> (= (ControlFlow 0 14) 12) anon8_Else_correct))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18) 14) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 14) (- 17))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 14) (- 15))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 5))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 12) (- 11))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
