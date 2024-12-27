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
(declare-sort T@Field_3834_53 0)
(declare-sort T@Field_3847_3848 0)
(declare-sort T@Field_3834_9679 0)
(declare-sort T@Field_3834_9546 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3795 0)) (((PolymorphicMapType_3795 (|PolymorphicMapType_3795_3834_53#PolymorphicMapType_3795| (Array T@Ref T@Field_3834_53 Real)) (|PolymorphicMapType_3795_3834_3848#PolymorphicMapType_3795| (Array T@Ref T@Field_3847_3848 Real)) (|PolymorphicMapType_3795_3834_9546#PolymorphicMapType_3795| (Array T@Ref T@Field_3834_9546 Real)) (|PolymorphicMapType_3795_3834_13240#PolymorphicMapType_3795| (Array T@Ref T@Field_3834_9679 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4323 0)) (((PolymorphicMapType_4323 (|PolymorphicMapType_4323_3834_53#PolymorphicMapType_4323| (Array T@Ref T@Field_3834_53 Bool)) (|PolymorphicMapType_4323_3834_3848#PolymorphicMapType_4323| (Array T@Ref T@Field_3847_3848 Bool)) (|PolymorphicMapType_4323_3834_9546#PolymorphicMapType_4323| (Array T@Ref T@Field_3834_9546 Bool)) (|PolymorphicMapType_4323_3834_10659#PolymorphicMapType_4323| (Array T@Ref T@Field_3834_9679 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3774 0)) (((PolymorphicMapType_3774 (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| (Array T@Ref T@Field_3834_53 Bool)) (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| (Array T@Ref T@Field_3847_3848 T@Ref)) (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| (Array T@Ref T@Field_3834_9679 T@PolymorphicMapType_4323)) (|PolymorphicMapType_3774_3834_9546#PolymorphicMapType_3774| (Array T@Ref T@Field_3834_9546 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3774 T@PolymorphicMapType_3774) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3774 T@PolymorphicMapType_3774) Bool)
(declare-fun state (T@PolymorphicMapType_3774 T@PolymorphicMapType_3795) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3795) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4323)
(declare-sort T@TreeDomainType_1814 0)
(declare-fun Node_1_3 (Int T@TreeDomainType_1814 T@TreeDomainType_1814) T@TreeDomainType_1814)
(declare-fun Tree_tag_1814 (T@TreeDomainType_1814) Int)
(declare-fun Leaf_1814 () T@TreeDomainType_1814)
(declare-sort T@ListDomainType_1743 0)
(declare-fun List_tag_1743 (T@ListDomainType_1743) Int)
(declare-fun Nil_1743 () T@ListDomainType_1743)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3774 T@PolymorphicMapType_3774 T@PolymorphicMapType_3795) Bool)
(declare-fun IsPredicateField_3834_9637 (T@Field_3834_9546) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3834 (T@Field_3834_9546) T@Field_3834_9679)
(declare-fun HasDirectPerm_3834_9610 (T@PolymorphicMapType_3795 T@Ref T@Field_3834_9546) Bool)
(declare-fun IsWandField_3834_11186 (T@Field_3834_9546) Bool)
(declare-fun WandMaskField_3834 (T@Field_3834_9546) T@Field_3834_9679)
(declare-fun dummyHeap () T@PolymorphicMapType_3774)
(declare-fun ZeroMask () T@PolymorphicMapType_3795)
(declare-fun $allocated () T@Field_3834_53)
(declare-fun InsidePredicate_3834_3834 (T@Field_3834_9546 T@FrameType T@Field_3834_9546 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3834_14149 (T@Field_3834_9679) Bool)
(declare-fun IsWandField_3834_14165 (T@Field_3834_9679) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3834_3848 (T@Field_3847_3848) Bool)
(declare-fun IsWandField_3834_3848 (T@Field_3847_3848) Bool)
(declare-fun IsPredicateField_3834_53 (T@Field_3834_53) Bool)
(declare-fun IsWandField_3834_53 (T@Field_3834_53) Bool)
(declare-fun HasDirectPerm_3834_14520 (T@PolymorphicMapType_3795 T@Ref T@Field_3834_9679) Bool)
(declare-fun HasDirectPerm_3834_3848 (T@PolymorphicMapType_3795 T@Ref T@Field_3847_3848) Bool)
(declare-fun HasDirectPerm_3834_53 (T@PolymorphicMapType_3795 T@Ref T@Field_3834_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3795 T@PolymorphicMapType_3795 T@PolymorphicMapType_3795) Bool)
(declare-fun Cons_3 (Int T@ListDomainType_1743) T@ListDomainType_1743)
(declare-fun get_Tree_value_1854 (T@TreeDomainType_1814) Int)
(declare-fun get_Tree_left_1927 (T@TreeDomainType_1814) T@TreeDomainType_1814)
(declare-fun get_Tree_right_1931 (T@TreeDomainType_1814) T@TreeDomainType_1814)
(declare-fun get_List_value_1747 (T@ListDomainType_1743) Int)
(declare-fun get_List_tail_1779 (T@ListDomainType_1743) T@ListDomainType_1743)
(assert (forall ((Heap0 T@PolymorphicMapType_3774) (Heap1 T@PolymorphicMapType_3774) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3774) (Mask T@PolymorphicMapType_3795) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3774) (Heap1@@0 T@PolymorphicMapType_3774) (Heap2 T@PolymorphicMapType_3774) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3834_9679) ) (!  (not (select (|PolymorphicMapType_4323_3834_10659#PolymorphicMapType_4323| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4323_3834_10659#PolymorphicMapType_4323| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3834_9546) ) (!  (not (select (|PolymorphicMapType_4323_3834_9546#PolymorphicMapType_4323| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4323_3834_9546#PolymorphicMapType_4323| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3847_3848) ) (!  (not (select (|PolymorphicMapType_4323_3834_3848#PolymorphicMapType_4323| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4323_3834_3848#PolymorphicMapType_4323| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3834_53) ) (!  (not (select (|PolymorphicMapType_4323_3834_53#PolymorphicMapType_4323| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4323_3834_53#PolymorphicMapType_4323| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((value_1 Int) (left_1 T@TreeDomainType_1814) (right T@TreeDomainType_1814) ) (! (= (Tree_tag_1814 (Node_1_3 value_1 left_1 right)) 1)
 :qid |stdinbpl.278:19|
 :skolemid |31|
 :pattern ( (Node_1_3 value_1 left_1 right))
)))
(assert (= (Tree_tag_1814 Leaf_1814) 0))
(assert (= (List_tag_1743 Nil_1743) 1))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3774) (ExhaleHeap T@PolymorphicMapType_3774) (Mask@@0 T@PolymorphicMapType_3795) (pm_f T@Field_3834_9546) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3834_9610 Mask@@0 null pm_f) (IsPredicateField_3834_9637 pm_f)) (= (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@0) null (PredicateMaskField_3834 pm_f)) (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| ExhaleHeap) null (PredicateMaskField_3834 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3834_9637 pm_f) (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| ExhaleHeap) null (PredicateMaskField_3834 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3774) (ExhaleHeap@@0 T@PolymorphicMapType_3774) (Mask@@1 T@PolymorphicMapType_3795) (pm_f@@0 T@Field_3834_9546) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3834_9610 Mask@@1 null pm_f@@0) (IsWandField_3834_11186 pm_f@@0)) (= (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@1) null (WandMaskField_3834 pm_f@@0)) (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| ExhaleHeap@@0) null (WandMaskField_3834 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_3834_11186 pm_f@@0) (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| ExhaleHeap@@0) null (WandMaskField_3834 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3774) (ExhaleHeap@@1 T@PolymorphicMapType_3774) (Mask@@2 T@PolymorphicMapType_3795) (pm_f@@1 T@Field_3834_9546) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3834_9610 Mask@@2 null pm_f@@1) (IsPredicateField_3834_9637 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3834_53) ) (!  (=> (select (|PolymorphicMapType_4323_3834_53#PolymorphicMapType_4323| (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@2) null (PredicateMaskField_3834 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| Heap@@2) o2 f_2) (select (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3847_3848) ) (!  (=> (select (|PolymorphicMapType_4323_3834_3848#PolymorphicMapType_4323| (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@2) null (PredicateMaskField_3834 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| Heap@@2) o2@@0 f_2@@0) (select (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_3834_9546) ) (!  (=> (select (|PolymorphicMapType_4323_3834_9546#PolymorphicMapType_4323| (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@2) null (PredicateMaskField_3834 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3774_3834_9546#PolymorphicMapType_3774| Heap@@2) o2@@1 f_2@@1) (select (|PolymorphicMapType_3774_3834_9546#PolymorphicMapType_3774| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3774_3834_9546#PolymorphicMapType_3774| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3834_9679) ) (!  (=> (select (|PolymorphicMapType_4323_3834_10659#PolymorphicMapType_4323| (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@2) null (PredicateMaskField_3834 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@2) o2@@2 f_2@@2) (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3834_9637 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3774) (ExhaleHeap@@2 T@PolymorphicMapType_3774) (Mask@@3 T@PolymorphicMapType_3795) (pm_f@@2 T@Field_3834_9546) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3834_9610 Mask@@3 null pm_f@@2) (IsWandField_3834_11186 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3834_53) ) (!  (=> (select (|PolymorphicMapType_4323_3834_53#PolymorphicMapType_4323| (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@3) null (WandMaskField_3834 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| Heap@@3) o2@@3 f_2@@3) (select (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3847_3848) ) (!  (=> (select (|PolymorphicMapType_4323_3834_3848#PolymorphicMapType_4323| (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@3) null (WandMaskField_3834 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| Heap@@3) o2@@4 f_2@@4) (select (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3834_9546) ) (!  (=> (select (|PolymorphicMapType_4323_3834_9546#PolymorphicMapType_4323| (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@3) null (WandMaskField_3834 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3774_3834_9546#PolymorphicMapType_3774| Heap@@3) o2@@5 f_2@@5) (select (|PolymorphicMapType_3774_3834_9546#PolymorphicMapType_3774| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3774_3834_9546#PolymorphicMapType_3774| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_3834_9679) ) (!  (=> (select (|PolymorphicMapType_4323_3834_10659#PolymorphicMapType_4323| (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@3) null (WandMaskField_3834 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@3) o2@@6 f_2@@6) (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3834_11186 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3774) (ExhaleHeap@@3 T@PolymorphicMapType_3774) (Mask@@4 T@PolymorphicMapType_3795) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| Heap@@4) o_1 $allocated) (select (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_3834_9546) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3834_3834 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3834_3834 p v_1 p w))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3774) (ExhaleHeap@@4 T@PolymorphicMapType_3774) (Mask@@5 T@PolymorphicMapType_3795) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3795) (o_2@@3 T@Ref) (f_4@@3 T@Field_3834_9679) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3795_3834_13240#PolymorphicMapType_3795| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3834_14149 f_4@@3))) (not (IsWandField_3834_14165 f_4@@3))) (<= (select (|PolymorphicMapType_3795_3834_13240#PolymorphicMapType_3795| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3795_3834_13240#PolymorphicMapType_3795| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3795) (o_2@@4 T@Ref) (f_4@@4 T@Field_3834_9546) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3795_3834_9546#PolymorphicMapType_3795| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3834_9637 f_4@@4))) (not (IsWandField_3834_11186 f_4@@4))) (<= (select (|PolymorphicMapType_3795_3834_9546#PolymorphicMapType_3795| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3795_3834_9546#PolymorphicMapType_3795| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3795) (o_2@@5 T@Ref) (f_4@@5 T@Field_3847_3848) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3795_3834_3848#PolymorphicMapType_3795| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3834_3848 f_4@@5))) (not (IsWandField_3834_3848 f_4@@5))) (<= (select (|PolymorphicMapType_3795_3834_3848#PolymorphicMapType_3795| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3795_3834_3848#PolymorphicMapType_3795| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3795) (o_2@@6 T@Ref) (f_4@@6 T@Field_3834_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3795_3834_53#PolymorphicMapType_3795| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3834_53 f_4@@6))) (not (IsWandField_3834_53 f_4@@6))) (<= (select (|PolymorphicMapType_3795_3834_53#PolymorphicMapType_3795| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3795_3834_53#PolymorphicMapType_3795| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3795) (o_2@@7 T@Ref) (f_4@@7 T@Field_3834_9679) ) (! (= (HasDirectPerm_3834_14520 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3795_3834_13240#PolymorphicMapType_3795| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3834_14520 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3795) (o_2@@8 T@Ref) (f_4@@8 T@Field_3834_9546) ) (! (= (HasDirectPerm_3834_9610 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3795_3834_9546#PolymorphicMapType_3795| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3834_9610 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3795) (o_2@@9 T@Ref) (f_4@@9 T@Field_3847_3848) ) (! (= (HasDirectPerm_3834_3848 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3795_3834_3848#PolymorphicMapType_3795| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3834_3848 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3795) (o_2@@10 T@Ref) (f_4@@10 T@Field_3834_53) ) (! (= (HasDirectPerm_3834_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3795_3834_53#PolymorphicMapType_3795| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3834_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3774) (ExhaleHeap@@5 T@PolymorphicMapType_3774) (Mask@@14 T@PolymorphicMapType_3795) (o_1@@0 T@Ref) (f_2@@7 T@Field_3834_9679) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_3834_14520 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@6) o_1@@0 f_2@@7) (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3774) (ExhaleHeap@@6 T@PolymorphicMapType_3774) (Mask@@15 T@PolymorphicMapType_3795) (o_1@@1 T@Ref) (f_2@@8 T@Field_3834_9546) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_3834_9610 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_3774_3834_9546#PolymorphicMapType_3774| Heap@@7) o_1@@1 f_2@@8) (select (|PolymorphicMapType_3774_3834_9546#PolymorphicMapType_3774| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_3774_3834_9546#PolymorphicMapType_3774| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3774) (ExhaleHeap@@7 T@PolymorphicMapType_3774) (Mask@@16 T@PolymorphicMapType_3795) (o_1@@2 T@Ref) (f_2@@9 T@Field_3847_3848) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_3834_3848 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| Heap@@8) o_1@@2 f_2@@9) (select (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3774) (ExhaleHeap@@8 T@PolymorphicMapType_3774) (Mask@@17 T@PolymorphicMapType_3795) (o_1@@3 T@Ref) (f_2@@10 T@Field_3834_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_3834_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| Heap@@9) o_1@@3 f_2@@10) (select (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3834_9679) ) (! (= (select (|PolymorphicMapType_3795_3834_13240#PolymorphicMapType_3795| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3795_3834_13240#PolymorphicMapType_3795| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3834_9546) ) (! (= (select (|PolymorphicMapType_3795_3834_9546#PolymorphicMapType_3795| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3795_3834_9546#PolymorphicMapType_3795| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3847_3848) ) (! (= (select (|PolymorphicMapType_3795_3834_3848#PolymorphicMapType_3795| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3795_3834_3848#PolymorphicMapType_3795| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3834_53) ) (! (= (select (|PolymorphicMapType_3795_3834_53#PolymorphicMapType_3795| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3795_3834_53#PolymorphicMapType_3795| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3795) (SummandMask1 T@PolymorphicMapType_3795) (SummandMask2 T@PolymorphicMapType_3795) (o_2@@15 T@Ref) (f_4@@15 T@Field_3834_9679) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3795_3834_13240#PolymorphicMapType_3795| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3795_3834_13240#PolymorphicMapType_3795| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3795_3834_13240#PolymorphicMapType_3795| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3795_3834_13240#PolymorphicMapType_3795| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3795_3834_13240#PolymorphicMapType_3795| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3795_3834_13240#PolymorphicMapType_3795| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3795) (SummandMask1@@0 T@PolymorphicMapType_3795) (SummandMask2@@0 T@PolymorphicMapType_3795) (o_2@@16 T@Ref) (f_4@@16 T@Field_3834_9546) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3795_3834_9546#PolymorphicMapType_3795| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3795_3834_9546#PolymorphicMapType_3795| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3795_3834_9546#PolymorphicMapType_3795| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3795_3834_9546#PolymorphicMapType_3795| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3795_3834_9546#PolymorphicMapType_3795| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3795_3834_9546#PolymorphicMapType_3795| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3795) (SummandMask1@@1 T@PolymorphicMapType_3795) (SummandMask2@@1 T@PolymorphicMapType_3795) (o_2@@17 T@Ref) (f_4@@17 T@Field_3847_3848) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3795_3834_3848#PolymorphicMapType_3795| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3795_3834_3848#PolymorphicMapType_3795| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3795_3834_3848#PolymorphicMapType_3795| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3795_3834_3848#PolymorphicMapType_3795| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3795_3834_3848#PolymorphicMapType_3795| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3795_3834_3848#PolymorphicMapType_3795| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3795) (SummandMask1@@2 T@PolymorphicMapType_3795) (SummandMask2@@2 T@PolymorphicMapType_3795) (o_2@@18 T@Ref) (f_4@@18 T@Field_3834_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3795_3834_53#PolymorphicMapType_3795| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3795_3834_53#PolymorphicMapType_3795| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3795_3834_53#PolymorphicMapType_3795| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3795_3834_53#PolymorphicMapType_3795| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3795_3834_53#PolymorphicMapType_3795| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3795_3834_53#PolymorphicMapType_3795| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((value_1@@0 Int) (tail_1 T@ListDomainType_1743) ) (! (= (List_tag_1743 (Cons_3 value_1@@0 tail_1)) 0)
 :qid |stdinbpl.217:19|
 :skolemid |25|
 :pattern ( (Cons_3 value_1@@0 tail_1))
)))
(assert (forall ((value_1@@1 Int) (left_1@@0 T@TreeDomainType_1814) (right@@0 T@TreeDomainType_1814) ) (! (= value_1@@1 (get_Tree_value_1854 (Node_1_3 value_1@@1 left_1@@0 right@@0)))
 :qid |stdinbpl.254:19|
 :skolemid |27|
 :pattern ( (Node_1_3 value_1@@1 left_1@@0 right@@0))
)))
(assert (forall ((value_1@@2 Int) (left_1@@1 T@TreeDomainType_1814) (right@@1 T@TreeDomainType_1814) ) (! (= left_1@@1 (get_Tree_left_1927 (Node_1_3 value_1@@2 left_1@@1 right@@1)))
 :qid |stdinbpl.260:19|
 :skolemid |28|
 :pattern ( (Node_1_3 value_1@@2 left_1@@1 right@@1))
)))
(assert (forall ((value_1@@3 Int) (left_1@@2 T@TreeDomainType_1814) (right@@2 T@TreeDomainType_1814) ) (! (= right@@2 (get_Tree_right_1931 (Node_1_3 value_1@@3 left_1@@2 right@@2)))
 :qid |stdinbpl.266:19|
 :skolemid |29|
 :pattern ( (Node_1_3 value_1@@3 left_1@@2 right@@2))
)))
(assert (forall ((value_1@@4 Int) (tail_1@@0 T@ListDomainType_1743) ) (! (= value_1@@4 (get_List_value_1747 (Cons_3 value_1@@4 tail_1@@0)))
 :qid |stdinbpl.199:19|
 :skolemid |22|
 :pattern ( (Cons_3 value_1@@4 tail_1@@0))
)))
(assert (forall ((value_1@@5 Int) (tail_1@@1 T@ListDomainType_1743) ) (! (= tail_1@@1 (get_List_tail_1779 (Cons_3 value_1@@5 tail_1@@1)))
 :qid |stdinbpl.205:19|
 :skolemid |23|
 :pattern ( (Cons_3 value_1@@5 tail_1@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3774) (o T@Ref) (f_3 T@Field_3834_9546) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_3774 (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| Heap@@10) (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| Heap@@10) (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@10) (store (|PolymorphicMapType_3774_3834_9546#PolymorphicMapType_3774| Heap@@10) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3774 (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| Heap@@10) (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| Heap@@10) (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@10) (store (|PolymorphicMapType_3774_3834_9546#PolymorphicMapType_3774| Heap@@10) o f_3 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3774) (o@@0 T@Ref) (f_3@@0 T@Field_3834_9679) (v@@0 T@PolymorphicMapType_4323) ) (! (succHeap Heap@@11 (PolymorphicMapType_3774 (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| Heap@@11) (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| Heap@@11) (store (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@11) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3774_3834_9546#PolymorphicMapType_3774| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3774 (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| Heap@@11) (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| Heap@@11) (store (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@11) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3774_3834_9546#PolymorphicMapType_3774| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3774) (o@@1 T@Ref) (f_3@@1 T@Field_3847_3848) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_3774 (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| Heap@@12) (store (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| Heap@@12) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@12) (|PolymorphicMapType_3774_3834_9546#PolymorphicMapType_3774| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3774 (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| Heap@@12) (store (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| Heap@@12) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@12) (|PolymorphicMapType_3774_3834_9546#PolymorphicMapType_3774| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3774) (o@@2 T@Ref) (f_3@@2 T@Field_3834_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_3774 (store (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| Heap@@13) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| Heap@@13) (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@13) (|PolymorphicMapType_3774_3834_9546#PolymorphicMapType_3774| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3774 (store (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| Heap@@13) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| Heap@@13) (|PolymorphicMapType_3774_3834_9723#PolymorphicMapType_3774| Heap@@13) (|PolymorphicMapType_3774_3834_9546#PolymorphicMapType_3774| Heap@@13)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_3847_3848) (Heap@@14 T@PolymorphicMapType_3774) ) (!  (=> (select (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| Heap@@14) o@@3 $allocated) (select (|PolymorphicMapType_3774_2057_53#PolymorphicMapType_3774| Heap@@14) (select (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| Heap@@14) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3774_2060_2061#PolymorphicMapType_3774| Heap@@14) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_3834_9546) (v_1@@0 T@FrameType) (q T@Field_3834_9546) (w@@0 T@FrameType) (r T@Field_3834_9546) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3834_3834 p@@1 v_1@@0 q w@@0) (InsidePredicate_3834_3834 q w@@0 r u)) (InsidePredicate_3834_3834 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3834_3834 p@@1 v_1@@0 q w@@0) (InsidePredicate_3834_3834 q w@@0 r u))
)))
(assert (forall ((t_2 T@ListDomainType_1743) ) (!  (or (= t_2 Nil_1743) (= t_2 (Cons_3 (get_List_value_1747 t_2) (get_List_tail_1779 t_2))))
 :qid |stdinbpl.223:19|
 :skolemid |26|
 :pattern ( (List_tag_1743 t_2))
 :pattern ( (get_List_value_1747 t_2))
 :pattern ( (get_List_tail_1779 t_2))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((t_2@@0 T@TreeDomainType_1814) ) (!  (or (= t_2@@0 Leaf_1814) (= t_2@@0 (Node_1_3 (get_Tree_value_1854 t_2@@0) (get_Tree_left_1927 t_2@@0) (get_Tree_right_1931 t_2@@0))))
 :qid |stdinbpl.284:19|
 :skolemid |32|
 :pattern ( (Tree_tag_1814 t_2@@0))
 :pattern ( (get_Tree_value_1854 t_2@@0))
 :pattern ( (get_Tree_left_1927 t_2@@0))
 :pattern ( (get_Tree_right_1931 t_2@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@15 () T@PolymorphicMapType_3774)
(set-info :boogie-vc-id destructors_2)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (=> (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= (get_List_value_1747 (Cons_3 1 Nil_1743)) 1)) (=> (= (get_List_value_1747 (Cons_3 1 Nil_1743)) 1) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= (get_List_tail_1779 (Cons_3 1 Nil_1743)) Nil_1743)) (=> (= (get_List_tail_1779 (Cons_3 1 Nil_1743)) Nil_1743) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (get_Tree_value_1854 (Node_1_3 42 (Node_1_3 42 Leaf_1814 (Node_1_3 42 (Node_1_3 42 Leaf_1814 Leaf_1814) Leaf_1814)) Leaf_1814)) 42)) (=> (= (get_Tree_value_1854 (Node_1_3 42 (Node_1_3 42 Leaf_1814 (Node_1_3 42 (Node_1_3 42 Leaf_1814 Leaf_1814) Leaf_1814)) Leaf_1814)) 42) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (get_Tree_value_1854 (get_Tree_left_1927 (get_Tree_right_1931 (get_Tree_left_1927 (Node_1_3 42 (Node_1_3 42 Leaf_1814 (Node_1_3 42 (Node_1_3 42 Leaf_1814 Leaf_1814) Leaf_1814)) Leaf_1814))))) 42)) (=> (= (get_Tree_value_1854 (get_Tree_left_1927 (get_Tree_right_1931 (get_Tree_left_1927 (Node_1_3 42 (Node_1_3 42 Leaf_1814 (Node_1_3 42 (Node_1_3 42 Leaf_1814 Leaf_1814) Leaf_1814)) Leaf_1814))))) 42) (=> (and (state Heap@@15 ZeroMask) (= (ControlFlow 0 2) (- 0 1))) (= (get_Tree_value_1854 (get_Tree_left_1927 (get_Tree_right_1931 (get_Tree_left_1927 (Node_1_3 42 (Node_1_3 42 Leaf_1814 (Node_1_3 42 (Node_1_3 42 Leaf_1814 Leaf_1814) Leaf_1814)) Leaf_1814))))) 42))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid