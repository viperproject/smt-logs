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
(declare-sort T@Field_6792_53 0)
(declare-sort T@Field_6805_6806 0)
(declare-sort T@Field_4302_18575 0)
(declare-sort T@Field_4302_18442 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6753 0)) (((PolymorphicMapType_6753 (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| (Array T@Ref T@Field_6792_53 Real)) (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| (Array T@Ref T@Field_6805_6806 Real)) (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| (Array T@Ref T@Field_4302_18442 Real)) (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| (Array T@Ref T@Field_4302_18575 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7281 0)) (((PolymorphicMapType_7281 (|PolymorphicMapType_7281_6792_53#PolymorphicMapType_7281| (Array T@Ref T@Field_6792_53 Bool)) (|PolymorphicMapType_7281_6792_6806#PolymorphicMapType_7281| (Array T@Ref T@Field_6805_6806 Bool)) (|PolymorphicMapType_7281_6792_18442#PolymorphicMapType_7281| (Array T@Ref T@Field_4302_18442 Bool)) (|PolymorphicMapType_7281_6792_19555#PolymorphicMapType_7281| (Array T@Ref T@Field_4302_18575 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6732 0)) (((PolymorphicMapType_6732 (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| (Array T@Ref T@Field_6792_53 Bool)) (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| (Array T@Ref T@Field_6805_6806 T@Ref)) (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| (Array T@Ref T@Field_4302_18575 T@PolymorphicMapType_7281)) (|PolymorphicMapType_6732_6792_18442#PolymorphicMapType_6732| (Array T@Ref T@Field_4302_18442 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6792_53)
(declare-fun val () T@Field_6792_53)
(declare-fun succHeap (T@PolymorphicMapType_6732 T@PolymorphicMapType_6732) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6732 T@PolymorphicMapType_6732) Bool)
(declare-fun state (T@PolymorphicMapType_6732 T@PolymorphicMapType_6753) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6753) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7281)
(declare-sort T@ArrayDomainType_10250 0)
(declare-fun |Property'| (T@PolymorphicMapType_6732 T@ArrayDomainType_10250 T@ArrayDomainType_10250) Bool)
(declare-fun dummyFunction_2033 (Bool) Bool)
(declare-fun |Property#triggerStateless| (T@ArrayDomainType_10250 T@ArrayDomainType_10250) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6732 T@PolymorphicMapType_6732 T@PolymorphicMapType_6753) Bool)
(declare-fun IsPredicateField_4302_18533 (T@Field_4302_18442) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4302 (T@Field_4302_18442) T@Field_4302_18575)
(declare-fun HasDirectPerm_4302_18506 (T@PolymorphicMapType_6753 T@Ref T@Field_4302_18442) Bool)
(declare-fun IsWandField_4302_20082 (T@Field_4302_18442) Bool)
(declare-fun WandMaskField_4302 (T@Field_4302_18442) T@Field_4302_18575)
(declare-fun dummyHeap () T@PolymorphicMapType_6732)
(declare-fun ZeroMask () T@PolymorphicMapType_6753)
(declare-fun InsidePredicate_6792_6792 (T@Field_4302_18442 T@FrameType T@Field_4302_18442 T@FrameType) Bool)
(declare-fun IsPredicateField_4302_1399 (T@Field_6792_53) Bool)
(declare-fun IsWandField_4302_1399 (T@Field_6792_53) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4302_23019 (T@Field_4302_18575) Bool)
(declare-fun IsWandField_4302_23035 (T@Field_4302_18575) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4302_6806 (T@Field_6805_6806) Bool)
(declare-fun IsWandField_4302_6806 (T@Field_6805_6806) Bool)
(declare-fun HasDirectPerm_4302_23390 (T@PolymorphicMapType_6753 T@Ref T@Field_4302_18575) Bool)
(declare-fun HasDirectPerm_4302_6806 (T@PolymorphicMapType_6753 T@Ref T@Field_6805_6806) Bool)
(declare-fun HasDirectPerm_4302_1399 (T@PolymorphicMapType_6753 T@Ref T@Field_6792_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |Property#condqp1| (T@PolymorphicMapType_6732 T@ArrayDomainType_10250 T@ArrayDomainType_10250) Int)
(declare-fun |sk_Property#condqp1| (Int Int) Int)
(declare-fun loc_4328 (T@ArrayDomainType_10250 Int) T@Ref)
(declare-fun |Property#condqp2| (T@PolymorphicMapType_6732 T@ArrayDomainType_10250 T@ArrayDomainType_10250) Int)
(declare-fun |sk_Property#condqp2| (Int Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_6753 T@PolymorphicMapType_6753 T@PolymorphicMapType_6753) Bool)
(declare-fun Property (T@PolymorphicMapType_6732 T@ArrayDomainType_10250 T@ArrayDomainType_10250) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Property#frame| (T@FrameType T@ArrayDomainType_10250 T@ArrayDomainType_10250) Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1665 (Int) T@FrameType)
(assert (distinct $allocated val)
)
(assert (forall ((Heap0 T@PolymorphicMapType_6732) (Heap1 T@PolymorphicMapType_6732) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6732) (Mask T@PolymorphicMapType_6753) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6732) (Heap1@@0 T@PolymorphicMapType_6732) (Heap2 T@PolymorphicMapType_6732) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4302_18575) ) (!  (not (select (|PolymorphicMapType_7281_6792_19555#PolymorphicMapType_7281| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7281_6792_19555#PolymorphicMapType_7281| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4302_18442) ) (!  (not (select (|PolymorphicMapType_7281_6792_18442#PolymorphicMapType_7281| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7281_6792_18442#PolymorphicMapType_7281| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6805_6806) ) (!  (not (select (|PolymorphicMapType_7281_6792_6806#PolymorphicMapType_7281| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7281_6792_6806#PolymorphicMapType_7281| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6792_53) ) (!  (not (select (|PolymorphicMapType_7281_6792_53#PolymorphicMapType_7281| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7281_6792_53#PolymorphicMapType_7281| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6732) (a_2 T@ArrayDomainType_10250) (b_24 T@ArrayDomainType_10250) ) (! (dummyFunction_2033 (|Property#triggerStateless| a_2 b_24))
 :qid |stdinbpl.244:15|
 :skolemid |24|
 :pattern ( (|Property'| Heap@@0 a_2 b_24))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6732) (ExhaleHeap T@PolymorphicMapType_6732) (Mask@@0 T@PolymorphicMapType_6753) (pm_f_1 T@Field_4302_18442) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4302_18506 Mask@@0 null pm_f_1) (IsPredicateField_4302_18533 pm_f_1)) (= (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@1) null (PredicateMaskField_4302 pm_f_1)) (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| ExhaleHeap) null (PredicateMaskField_4302 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_4302_18533 pm_f_1) (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| ExhaleHeap) null (PredicateMaskField_4302 pm_f_1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6732) (ExhaleHeap@@0 T@PolymorphicMapType_6732) (Mask@@1 T@PolymorphicMapType_6753) (pm_f_1@@0 T@Field_4302_18442) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4302_18506 Mask@@1 null pm_f_1@@0) (IsWandField_4302_20082 pm_f_1@@0)) (= (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@2) null (WandMaskField_4302 pm_f_1@@0)) (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| ExhaleHeap@@0) null (WandMaskField_4302 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_4302_20082 pm_f_1@@0) (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| ExhaleHeap@@0) null (WandMaskField_4302 pm_f_1@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6732) (ExhaleHeap@@1 T@PolymorphicMapType_6732) (Mask@@2 T@PolymorphicMapType_6753) (pm_f_1@@1 T@Field_4302_18442) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4302_18506 Mask@@2 null pm_f_1@@1) (IsPredicateField_4302_18533 pm_f_1@@1)) (and (and (and (forall ((o2_1 T@Ref) (f_8 T@Field_6792_53) ) (!  (=> (select (|PolymorphicMapType_7281_6792_53#PolymorphicMapType_7281| (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@3) null (PredicateMaskField_4302 pm_f_1@@1))) o2_1 f_8) (= (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@3) o2_1 f_8) (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| ExhaleHeap@@1) o2_1 f_8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| ExhaleHeap@@1) o2_1 f_8))
)) (forall ((o2_1@@0 T@Ref) (f_8@@0 T@Field_6805_6806) ) (!  (=> (select (|PolymorphicMapType_7281_6792_6806#PolymorphicMapType_7281| (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@3) null (PredicateMaskField_4302 pm_f_1@@1))) o2_1@@0 f_8@@0) (= (select (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| Heap@@3) o2_1@@0 f_8@@0) (select (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| ExhaleHeap@@1) o2_1@@0 f_8@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| ExhaleHeap@@1) o2_1@@0 f_8@@0))
))) (forall ((o2_1@@1 T@Ref) (f_8@@1 T@Field_4302_18442) ) (!  (=> (select (|PolymorphicMapType_7281_6792_18442#PolymorphicMapType_7281| (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@3) null (PredicateMaskField_4302 pm_f_1@@1))) o2_1@@1 f_8@@1) (= (select (|PolymorphicMapType_6732_6792_18442#PolymorphicMapType_6732| Heap@@3) o2_1@@1 f_8@@1) (select (|PolymorphicMapType_6732_6792_18442#PolymorphicMapType_6732| ExhaleHeap@@1) o2_1@@1 f_8@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6732_6792_18442#PolymorphicMapType_6732| ExhaleHeap@@1) o2_1@@1 f_8@@1))
))) (forall ((o2_1@@2 T@Ref) (f_8@@2 T@Field_4302_18575) ) (!  (=> (select (|PolymorphicMapType_7281_6792_19555#PolymorphicMapType_7281| (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@3) null (PredicateMaskField_4302 pm_f_1@@1))) o2_1@@2 f_8@@2) (= (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@3) o2_1@@2 f_8@@2) (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| ExhaleHeap@@1) o2_1@@2 f_8@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| ExhaleHeap@@1) o2_1@@2 f_8@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4302_18533 pm_f_1@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6732) (ExhaleHeap@@2 T@PolymorphicMapType_6732) (Mask@@3 T@PolymorphicMapType_6753) (pm_f_1@@2 T@Field_4302_18442) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4302_18506 Mask@@3 null pm_f_1@@2) (IsWandField_4302_20082 pm_f_1@@2)) (and (and (and (forall ((o2_1@@3 T@Ref) (f_8@@3 T@Field_6792_53) ) (!  (=> (select (|PolymorphicMapType_7281_6792_53#PolymorphicMapType_7281| (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@4) null (WandMaskField_4302 pm_f_1@@2))) o2_1@@3 f_8@@3) (= (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@4) o2_1@@3 f_8@@3) (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| ExhaleHeap@@2) o2_1@@3 f_8@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| ExhaleHeap@@2) o2_1@@3 f_8@@3))
)) (forall ((o2_1@@4 T@Ref) (f_8@@4 T@Field_6805_6806) ) (!  (=> (select (|PolymorphicMapType_7281_6792_6806#PolymorphicMapType_7281| (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@4) null (WandMaskField_4302 pm_f_1@@2))) o2_1@@4 f_8@@4) (= (select (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| Heap@@4) o2_1@@4 f_8@@4) (select (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| ExhaleHeap@@2) o2_1@@4 f_8@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| ExhaleHeap@@2) o2_1@@4 f_8@@4))
))) (forall ((o2_1@@5 T@Ref) (f_8@@5 T@Field_4302_18442) ) (!  (=> (select (|PolymorphicMapType_7281_6792_18442#PolymorphicMapType_7281| (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@4) null (WandMaskField_4302 pm_f_1@@2))) o2_1@@5 f_8@@5) (= (select (|PolymorphicMapType_6732_6792_18442#PolymorphicMapType_6732| Heap@@4) o2_1@@5 f_8@@5) (select (|PolymorphicMapType_6732_6792_18442#PolymorphicMapType_6732| ExhaleHeap@@2) o2_1@@5 f_8@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6732_6792_18442#PolymorphicMapType_6732| ExhaleHeap@@2) o2_1@@5 f_8@@5))
))) (forall ((o2_1@@6 T@Ref) (f_8@@6 T@Field_4302_18575) ) (!  (=> (select (|PolymorphicMapType_7281_6792_19555#PolymorphicMapType_7281| (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@4) null (WandMaskField_4302 pm_f_1@@2))) o2_1@@6 f_8@@6) (= (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@4) o2_1@@6 f_8@@6) (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| ExhaleHeap@@2) o2_1@@6 f_8@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| ExhaleHeap@@2) o2_1@@6 f_8@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_4302_20082 pm_f_1@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6732) (ExhaleHeap@@3 T@PolymorphicMapType_6732) (Mask@@4 T@PolymorphicMapType_6753) (o_3 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@5) o_3 $allocated) (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| ExhaleHeap@@3) o_3 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| ExhaleHeap@@3) o_3 $allocated))
)))
(assert (forall ((p T@Field_4302_18442) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6792_6792 p v_1 p w))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6792_6792 p v_1 p w))
)))
(assert  (not (IsPredicateField_4302_1399 val)))
(assert  (not (IsWandField_4302_1399 val)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6732) (ExhaleHeap@@4 T@PolymorphicMapType_6732) (Mask@@5 T@PolymorphicMapType_6753) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@6 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6753) (o_2@@3 T@Ref) (f_4@@3 T@Field_4302_18575) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4302_23019 f_4@@3))) (not (IsWandField_4302_23035 f_4@@3))) (<= (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6753) (o_2@@4 T@Ref) (f_4@@4 T@Field_4302_18442) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4302_18533 f_4@@4))) (not (IsWandField_4302_20082 f_4@@4))) (<= (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6753) (o_2@@5 T@Ref) (f_4@@5 T@Field_6805_6806) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4302_6806 f_4@@5))) (not (IsWandField_4302_6806 f_4@@5))) (<= (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6753) (o_2@@6 T@Ref) (f_4@@6 T@Field_6792_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4302_1399 f_4@@6))) (not (IsWandField_4302_1399 f_4@@6))) (<= (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6753) (o_2@@7 T@Ref) (f_4@@7 T@Field_4302_18575) ) (! (= (HasDirectPerm_4302_23390 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4302_23390 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6753) (o_2@@8 T@Ref) (f_4@@8 T@Field_4302_18442) ) (! (= (HasDirectPerm_4302_18506 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4302_18506 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6753) (o_2@@9 T@Ref) (f_4@@9 T@Field_6805_6806) ) (! (= (HasDirectPerm_4302_6806 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4302_6806 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6753) (o_2@@10 T@Ref) (f_4@@10 T@Field_6792_53) ) (! (= (HasDirectPerm_4302_1399 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4302_1399 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.192:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6732) (ExhaleHeap@@5 T@PolymorphicMapType_6732) (Mask@@14 T@PolymorphicMapType_6753) (o_3@@0 T@Ref) (f_8@@7 T@Field_4302_18575) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_4302_23390 Mask@@14 o_3@@0 f_8@@7) (= (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@7) o_3@@0 f_8@@7) (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| ExhaleHeap@@5) o_3@@0 f_8@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| ExhaleHeap@@5) o_3@@0 f_8@@7))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6732) (ExhaleHeap@@6 T@PolymorphicMapType_6732) (Mask@@15 T@PolymorphicMapType_6753) (o_3@@1 T@Ref) (f_8@@8 T@Field_4302_18442) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_4302_18506 Mask@@15 o_3@@1 f_8@@8) (= (select (|PolymorphicMapType_6732_6792_18442#PolymorphicMapType_6732| Heap@@8) o_3@@1 f_8@@8) (select (|PolymorphicMapType_6732_6792_18442#PolymorphicMapType_6732| ExhaleHeap@@6) o_3@@1 f_8@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_6732_6792_18442#PolymorphicMapType_6732| ExhaleHeap@@6) o_3@@1 f_8@@8))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6732) (ExhaleHeap@@7 T@PolymorphicMapType_6732) (Mask@@16 T@PolymorphicMapType_6753) (o_3@@2 T@Ref) (f_8@@9 T@Field_6805_6806) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_4302_6806 Mask@@16 o_3@@2 f_8@@9) (= (select (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| Heap@@9) o_3@@2 f_8@@9) (select (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| ExhaleHeap@@7) o_3@@2 f_8@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| ExhaleHeap@@7) o_3@@2 f_8@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6732) (ExhaleHeap@@8 T@PolymorphicMapType_6732) (Mask@@17 T@PolymorphicMapType_6753) (o_3@@3 T@Ref) (f_8@@10 T@Field_6792_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_4302_1399 Mask@@17 o_3@@3 f_8@@10) (= (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@10) o_3@@3 f_8@@10) (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| ExhaleHeap@@8) o_3@@3 f_8@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| ExhaleHeap@@8) o_3@@3 f_8@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_4302_18575) ) (! (= (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_4302_18442) ) (! (= (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6805_6806) ) (! (= (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6792_53) ) (! (= (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_6732) (Heap1Heap T@PolymorphicMapType_6732) (a_2@@0 T@ArrayDomainType_10250) (b_24@@0 T@ArrayDomainType_10250) ) (!  (=> (and (=  (and (<= 0 (|sk_Property#condqp1| (|Property#condqp1| Heap2Heap a_2@@0 b_24@@0) (|Property#condqp1| Heap1Heap a_2@@0 b_24@@0))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (<= 0 (|sk_Property#condqp1| (|Property#condqp1| Heap2Heap a_2@@0 b_24@@0) (|Property#condqp1| Heap1Heap a_2@@0 b_24@@0))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (<= 0 (|sk_Property#condqp1| (|Property#condqp1| Heap2Heap a_2@@0 b_24@@0) (|Property#condqp1| Heap1Heap a_2@@0 b_24@@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap2Heap) (loc_4328 a_2@@0 (|sk_Property#condqp1| (|Property#condqp1| Heap2Heap a_2@@0 b_24@@0) (|Property#condqp1| Heap1Heap a_2@@0 b_24@@0))) val) (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap1Heap) (loc_4328 a_2@@0 (|sk_Property#condqp1| (|Property#condqp1| Heap2Heap a_2@@0 b_24@@0) (|Property#condqp1| Heap1Heap a_2@@0 b_24@@0))) val)))) (= (|Property#condqp1| Heap2Heap a_2@@0 b_24@@0) (|Property#condqp1| Heap1Heap a_2@@0 b_24@@0)))
 :qid |stdinbpl.270:15|
 :skolemid |28|
 :pattern ( (|Property#condqp1| Heap2Heap a_2@@0 b_24@@0) (|Property#condqp1| Heap1Heap a_2@@0 b_24@@0) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_6732) (Heap1Heap@@0 T@PolymorphicMapType_6732) (a_2@@1 T@ArrayDomainType_10250) (b_24@@1 T@ArrayDomainType_10250) ) (!  (=> (and (=  (and (<= 0 (|sk_Property#condqp2| (|Property#condqp2| Heap2Heap@@0 a_2@@1 b_24@@1) (|Property#condqp2| Heap1Heap@@0 a_2@@1 b_24@@1))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (<= 0 (|sk_Property#condqp2| (|Property#condqp2| Heap2Heap@@0 a_2@@1 b_24@@1) (|Property#condqp2| Heap1Heap@@0 a_2@@1 b_24@@1))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (<= 0 (|sk_Property#condqp2| (|Property#condqp2| Heap2Heap@@0 a_2@@1 b_24@@1) (|Property#condqp2| Heap1Heap@@0 a_2@@1 b_24@@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap2Heap@@0) (loc_4328 b_24@@1 (|sk_Property#condqp2| (|Property#condqp2| Heap2Heap@@0 a_2@@1 b_24@@1) (|Property#condqp2| Heap1Heap@@0 a_2@@1 b_24@@1))) val) (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap1Heap@@0) (loc_4328 b_24@@1 (|sk_Property#condqp2| (|Property#condqp2| Heap2Heap@@0 a_2@@1 b_24@@1) (|Property#condqp2| Heap1Heap@@0 a_2@@1 b_24@@1))) val)))) (= (|Property#condqp2| Heap2Heap@@0 a_2@@1 b_24@@1) (|Property#condqp2| Heap1Heap@@0 a_2@@1 b_24@@1)))
 :qid |stdinbpl.280:15|
 :skolemid |29|
 :pattern ( (|Property#condqp2| Heap2Heap@@0 a_2@@1 b_24@@1) (|Property#condqp2| Heap1Heap@@0 a_2@@1 b_24@@1) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6753) (SummandMask1 T@PolymorphicMapType_6753) (SummandMask2 T@PolymorphicMapType_6753) (o_2@@15 T@Ref) (f_4@@15 T@Field_4302_18575) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6753) (SummandMask1@@0 T@PolymorphicMapType_6753) (SummandMask2@@0 T@PolymorphicMapType_6753) (o_2@@16 T@Ref) (f_4@@16 T@Field_4302_18442) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6753) (SummandMask1@@1 T@PolymorphicMapType_6753) (SummandMask2@@1 T@PolymorphicMapType_6753) (o_2@@17 T@Ref) (f_4@@17 T@Field_6805_6806) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6753) (SummandMask1@@2 T@PolymorphicMapType_6753) (SummandMask2@@2 T@PolymorphicMapType_6753) (o_2@@18 T@Ref) (f_4@@18 T@Field_6792_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6732) (Mask@@18 T@PolymorphicMapType_6753) (a_2@@2 T@ArrayDomainType_10250) (b_24@@2 T@ArrayDomainType_10250) ) (!  (=> (and (state Heap@@11 Mask@@18) (< AssumeFunctionsAbove 0)) (= (Property Heap@@11 a_2@@2 b_24@@2) (forall ((i Int) ) (!  (=> (<= 0 i) (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@11) (loc_4328 b_24@@2 i) val))
 :qid |stdinbpl.252:90|
 :skolemid |25|
 :pattern ( (loc_4328 b_24@@2 i))
))))
 :qid |stdinbpl.250:15|
 :skolemid |26|
 :pattern ( (state Heap@@11 Mask@@18) (Property Heap@@11 a_2@@2 b_24@@2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6732) (o_1 T@Ref) (f_9 T@Field_4302_18442) (v T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_6732 (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@12) (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| Heap@@12) (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@12) (store (|PolymorphicMapType_6732_6792_18442#PolymorphicMapType_6732| Heap@@12) o_1 f_9 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6732 (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@12) (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| Heap@@12) (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@12) (store (|PolymorphicMapType_6732_6792_18442#PolymorphicMapType_6732| Heap@@12) o_1 f_9 v)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6732) (o_1@@0 T@Ref) (f_9@@0 T@Field_4302_18575) (v@@0 T@PolymorphicMapType_7281) ) (! (succHeap Heap@@13 (PolymorphicMapType_6732 (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@13) (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| Heap@@13) (store (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@13) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_6732_6792_18442#PolymorphicMapType_6732| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6732 (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@13) (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| Heap@@13) (store (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@13) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_6732_6792_18442#PolymorphicMapType_6732| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6732) (o_1@@1 T@Ref) (f_9@@1 T@Field_6805_6806) (v@@1 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_6732 (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@14) (store (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| Heap@@14) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@14) (|PolymorphicMapType_6732_6792_18442#PolymorphicMapType_6732| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6732 (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@14) (store (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| Heap@@14) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@14) (|PolymorphicMapType_6732_6792_18442#PolymorphicMapType_6732| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6732) (o_1@@2 T@Ref) (f_9@@2 T@Field_6792_53) (v@@2 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_6732 (store (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@15) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| Heap@@15) (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@15) (|PolymorphicMapType_6732_6792_18442#PolymorphicMapType_6732| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6732 (store (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@15) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| Heap@@15) (|PolymorphicMapType_6732_4302_18619#PolymorphicMapType_6732| Heap@@15) (|PolymorphicMapType_6732_6792_18442#PolymorphicMapType_6732| Heap@@15)))
)))
(assert (forall ((a_2@@3 T@ArrayDomainType_10250) (i@@0 Int) (j_9 Int) ) (!  (=> (and (>= i@@0 0) (and (>= j_9 0) (not (= i@@0 j_9)))) (not (= (loc_4328 a_2@@3 i@@0) (loc_4328 a_2@@3 j_9))))
 :qid |stdinbpl.220:19|
 :skolemid |22|
 :pattern ( (loc_4328 a_2@@3 i@@0) (loc_4328 a_2@@3 j_9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6732) (Mask@@19 T@PolymorphicMapType_6753) (a_2@@4 T@ArrayDomainType_10250) (b_24@@3 T@ArrayDomainType_10250) ) (!  (=> (state Heap@@16 Mask@@19) (= (|Property'| Heap@@16 a_2@@4 b_24@@3) (|Property#frame| (CombineFrames (FrameFragment_1665 (|Property#condqp1| Heap@@16 a_2@@4 b_24@@3)) (FrameFragment_1665 (|Property#condqp2| Heap@@16 a_2@@4 b_24@@3))) a_2@@4 b_24@@3)))
 :qid |stdinbpl.260:15|
 :skolemid |27|
 :pattern ( (state Heap@@16 Mask@@19) (|Property'| Heap@@16 a_2@@4 b_24@@3))
)))
(assert (forall ((o_1@@3 T@Ref) (f_2 T@Field_6805_6806) (Heap@@17 T@PolymorphicMapType_6732) ) (!  (=> (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@17) o_1@@3 $allocated) (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@17) (select (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| Heap@@17) o_1@@3 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6732_4163_4164#PolymorphicMapType_6732| Heap@@17) o_1@@3 f_2))
)))
(assert (forall ((p@@1 T@Field_4302_18442) (v_1@@0 T@FrameType) (q T@Field_4302_18442) (w@@0 T@FrameType) (r T@Field_4302_18442) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6792_6792 p@@1 v_1@@0 q w@@0) (InsidePredicate_6792_6792 q w@@0 r u)) (InsidePredicate_6792_6792 p@@1 v_1@@0 r u))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6792_6792 p@@1 v_1@@0 q w@@0) (InsidePredicate_6792_6792 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6732) (a_2@@5 T@ArrayDomainType_10250) (b_24@@4 T@ArrayDomainType_10250) ) (!  (and (= (Property Heap@@18 a_2@@5 b_24@@4) (|Property'| Heap@@18 a_2@@5 b_24@@4)) (dummyFunction_2033 (|Property#triggerStateless| a_2@@5 b_24@@4)))
 :qid |stdinbpl.240:15|
 :skolemid |23|
 :pattern ( (Property Heap@@18 a_2@@5 b_24@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_8 () Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_6753)
(declare-fun b_24@@5 () T@ArrayDomainType_10250)
(declare-fun tmp2@0 () Bool)
(declare-fun Heap@@19 () T@PolymorphicMapType_6732)
(declare-fun tmp1@0 () Bool)
(declare-fun a_2@@6 () T@ArrayDomainType_10250)
(declare-fun neverTriggered5 (Int) Bool)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun neverTriggered6 (Int) Bool)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_6753)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(set-info :boogie-vc-id Test)
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
 (=> (= (ControlFlow 0 0) 24) (let ((anon9_correct true))
(let ((anon15_Else_correct  (=> (and (< i_8 0) (= (ControlFlow 0 15) 12)) anon9_correct)))
(let ((anon15_Then_correct  (=> (<= 0 i_8) (and (=> (= (ControlFlow 0 13) (- 0 14)) (HasDirectPerm_4302_1399 QPMask@1 (loc_4328 b_24@@5 i_8) val)) (=> (HasDirectPerm_4302_1399 QPMask@1 (loc_4328 b_24@@5 i_8) val) (=> (= (ControlFlow 0 13) 12) anon9_correct))))))
(let ((anon14_Else_correct  (=> (= tmp2@0 (forall ((i_3 Int) ) (!  (=> (<= 0 i_3) (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@19) (loc_4328 b_24@@5 i_3) val))
 :qid |stdinbpl.640:21|
 :skolemid |69|
 :pattern ( (loc_4328 b_24@@5 i_3))
))) (=> (and (state Heap@@19 QPMask@1) (= (ControlFlow 0 11) (- 0 10))) (= tmp1@0 tmp2@0)))))
(let ((anon13_Else_correct  (=> (and (= tmp1@0 (Property Heap@@19 a_2@@6 b_24@@5)) (state Heap@@19 QPMask@1)) (and (and (=> (= (ControlFlow 0 16) 11) anon14_Else_correct) (=> (= (ControlFlow 0 16) 13) anon15_Then_correct)) (=> (= (ControlFlow 0 16) 15) anon15_Else_correct)))))
(let ((anon13_Then_correct  (and (=> (= (ControlFlow 0 4) (- 0 9)) (forall ((i$0_2 Int) ) (!  (=> (and (<= 0 i$0_2) (dummyFunction_2033 (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@19) (loc_4328 a_2@@6 i$0_2) val))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.558:21|
 :skolemid |59|
 :pattern ( (loc_4328 a_2@@6 i$0_2))
 :pattern ( (loc_4328 a_2@@6 i$0_2))
))) (=> (forall ((i$0_2@@0 Int) ) (!  (=> (and (<= 0 i$0_2@@0) (dummyFunction_2033 (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@19) (loc_4328 a_2@@6 i$0_2@@0) val))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.558:21|
 :skolemid |59|
 :pattern ( (loc_4328 a_2@@6 i$0_2@@0))
 :pattern ( (loc_4328 a_2@@6 i$0_2@@0))
)) (and (=> (= (ControlFlow 0 4) (- 0 8)) (forall ((i$0_2@@1 Int) (i$0_2_1 Int) ) (!  (=> (and (and (and (and (not (= i$0_2@@1 i$0_2_1)) (<= 0 i$0_2@@1)) (<= 0 i$0_2_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (loc_4328 a_2@@6 i$0_2@@1) (loc_4328 a_2@@6 i$0_2_1))))
 :qid |stdinbpl.565:21|
 :skolemid |60|
 :pattern ( (neverTriggered5 i$0_2@@1) (neverTriggered5 i$0_2_1))
))) (=> (forall ((i$0_2@@2 Int) (i$0_2_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i$0_2@@2 i$0_2_1@@0)) (<= 0 i$0_2@@2)) (<= 0 i$0_2_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (loc_4328 a_2@@6 i$0_2@@2) (loc_4328 a_2@@6 i$0_2_1@@0))))
 :qid |stdinbpl.565:21|
 :skolemid |60|
 :pattern ( (neverTriggered5 i$0_2@@2) (neverTriggered5 i$0_2_1@@0))
)) (and (=> (= (ControlFlow 0 4) (- 0 7)) (forall ((i$0_2@@3 Int) ) (!  (=> (<= 0 i$0_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| QPMask@1) (loc_4328 a_2@@6 i$0_2@@3) val) NoPerm)))
 :qid |stdinbpl.572:21|
 :skolemid |61|
 :pattern ( (loc_4328 a_2@@6 i$0_2@@3))
 :pattern ( (loc_4328 a_2@@6 i$0_2@@3))
))) (=> (forall ((i$0_2@@4 Int) ) (!  (=> (<= 0 i$0_2@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| QPMask@1) (loc_4328 a_2@@6 i$0_2@@4) val) NoPerm)))
 :qid |stdinbpl.572:21|
 :skolemid |61|
 :pattern ( (loc_4328 a_2@@6 i$0_2@@4))
 :pattern ( (loc_4328 a_2@@6 i$0_2@@4))
)) (=> (and (forall ((i$0_2@@5 Int) ) (!  (=> (and (<= 0 i$0_2@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange5 (loc_4328 a_2@@6 i$0_2@@5)) (= (invRecv5 (loc_4328 a_2@@6 i$0_2@@5)) i$0_2@@5)))
 :qid |stdinbpl.578:26|
 :skolemid |62|
 :pattern ( (loc_4328 a_2@@6 i$0_2@@5))
 :pattern ( (loc_4328 a_2@@6 i$0_2@@5))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (<= 0 (invRecv5 o_4)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange5 o_4))) (= (loc_4328 a_2@@6 (invRecv5 o_4)) o_4))
 :qid |stdinbpl.582:26|
 :skolemid |63|
 :pattern ( (invRecv5 o_4))
))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (forall ((i$1 Int) ) (!  (=> (and (<= 0 i$1) (dummyFunction_2033 (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@19) (loc_4328 b_24@@5 i$1) val))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.590:21|
 :skolemid |64|
 :pattern ( (loc_4328 b_24@@5 i$1))
 :pattern ( (loc_4328 b_24@@5 i$1))
))) (=> (forall ((i$1@@0 Int) ) (!  (=> (and (<= 0 i$1@@0) (dummyFunction_2033 (select (|PolymorphicMapType_6732_4160_53#PolymorphicMapType_6732| Heap@@19) (loc_4328 b_24@@5 i$1@@0) val))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.590:21|
 :skolemid |64|
 :pattern ( (loc_4328 b_24@@5 i$1@@0))
 :pattern ( (loc_4328 b_24@@5 i$1@@0))
)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall ((i$1@@1 Int) (i$1_1 Int) ) (!  (=> (and (and (and (and (not (= i$1@@1 i$1_1)) (<= 0 i$1@@1)) (<= 0 i$1_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (loc_4328 b_24@@5 i$1@@1) (loc_4328 b_24@@5 i$1_1))))
 :qid |stdinbpl.597:21|
 :skolemid |65|
 :pattern ( (neverTriggered6 i$1@@1) (neverTriggered6 i$1_1))
))) (=> (forall ((i$1@@2 Int) (i$1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i$1@@2 i$1_1@@0)) (<= 0 i$1@@2)) (<= 0 i$1_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (loc_4328 b_24@@5 i$1@@2) (loc_4328 b_24@@5 i$1_1@@0))))
 :qid |stdinbpl.597:21|
 :skolemid |65|
 :pattern ( (neverTriggered6 i$1@@2) (neverTriggered6 i$1_1@@0))
)) (=> (= (ControlFlow 0 4) (- 0 3)) (forall ((i$1@@3 Int) ) (!  (=> (<= 0 i$1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| QPMask@1) (loc_4328 b_24@@5 i$1@@3) val) NoPerm)))
 :qid |stdinbpl.604:21|
 :skolemid |66|
 :pattern ( (loc_4328 b_24@@5 i$1@@3))
 :pattern ( (loc_4328 b_24@@5 i$1@@3))
))))))))))))))))
(let ((anon12_Else_correct  (and (=> (= (ControlFlow 0 17) (- 0 19)) (forall ((i$0_1 Int) (i$0_1_1 Int) ) (!  (=> (and (and (and (and (not (= i$0_1 i$0_1_1)) (<= 0 i$0_1)) (<= 0 i$0_1_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (loc_4328 b_24@@5 i$0_1) (loc_4328 b_24@@5 i$0_1_1))))
 :qid |stdinbpl.506:15|
 :skolemid |52|
))) (=> (forall ((i$0_1@@0 Int) (i$0_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i$0_1@@0 i$0_1_1@@0)) (<= 0 i$0_1@@0)) (<= 0 i$0_1_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (loc_4328 b_24@@5 i$0_1@@0) (loc_4328 b_24@@5 i$0_1_1@@0))))
 :qid |stdinbpl.506:15|
 :skolemid |52|
)) (=> (and (forall ((i$0_1@@1 Int) ) (!  (=> (and (<= 0 i$0_1@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange4 (loc_4328 b_24@@5 i$0_1@@1)) (= (invRecv4 (loc_4328 b_24@@5 i$0_1@@1)) i$0_1@@1)))
 :qid |stdinbpl.512:22|
 :skolemid |53|
 :pattern ( (loc_4328 b_24@@5 i$0_1@@1))
 :pattern ( (loc_4328 b_24@@5 i$0_1@@1))
)) (forall ((o_4@@0 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv4 o_4@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange4 o_4@@0)) (= (loc_4328 b_24@@5 (invRecv4 o_4@@0)) o_4@@0))
 :qid |stdinbpl.516:22|
 :skolemid |54|
 :pattern ( (invRecv4 o_4@@0))
))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (forall ((i$0_1@@2 Int) ) (!  (=> (<= 0 i$0_1@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.522:15|
 :skolemid |55|
 :pattern ( (loc_4328 b_24@@5 i$0_1@@2))
 :pattern ( (loc_4328 b_24@@5 i$0_1@@2))
))) (=> (forall ((i$0_1@@3 Int) ) (!  (=> (<= 0 i$0_1@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.522:15|
 :skolemid |55|
 :pattern ( (loc_4328 b_24@@5 i$0_1@@3))
 :pattern ( (loc_4328 b_24@@5 i$0_1@@3))
)) (=> (and (forall ((i$0_1@@4 Int) ) (!  (=> (and (<= 0 i$0_1@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (loc_4328 b_24@@5 i$0_1@@4) null)))
 :qid |stdinbpl.528:22|
 :skolemid |56|
 :pattern ( (loc_4328 b_24@@5 i$0_1@@4))
 :pattern ( (loc_4328 b_24@@5 i$0_1@@4))
)) (forall ((o_4@@1 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv4 o_4@@1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange4 o_4@@1)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (loc_4328 b_24@@5 (invRecv4 o_4@@1)) o_4@@1)) (= (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| QPMask@1) o_4@@1 val) (+ (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| QPMask@0) o_4@@1 val) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 0 (invRecv4 o_4@@1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange4 o_4@@1))) (= (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| QPMask@1) o_4@@1 val) (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| QPMask@0) o_4@@1 val))))
 :qid |stdinbpl.534:22|
 :skolemid |57|
 :pattern ( (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| QPMask@1) o_4@@1 val))
))) (=> (and (and (and (and (and (forall ((o_4@@2 T@Ref) (f_5 T@Field_6792_53) ) (!  (=> (not (= f_5 val)) (= (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| QPMask@0) o_4@@2 f_5) (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| QPMask@1) o_4@@2 f_5)))
 :qid |stdinbpl.538:29|
 :skolemid |58|
 :pattern ( (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| QPMask@0) o_4@@2 f_5))
 :pattern ( (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| QPMask@1) o_4@@2 f_5))
)) (forall ((o_4@@3 T@Ref) (f_5@@0 T@Field_6805_6806) ) (!  (=> true (= (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| QPMask@0) o_4@@3 f_5@@0) (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| QPMask@1) o_4@@3 f_5@@0)))
 :qid |stdinbpl.538:29|
 :skolemid |58|
 :pattern ( (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| QPMask@0) o_4@@3 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| QPMask@1) o_4@@3 f_5@@0))
))) (forall ((o_4@@4 T@Ref) (f_5@@1 T@Field_4302_18442) ) (!  (=> true (= (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| QPMask@0) o_4@@4 f_5@@1) (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| QPMask@1) o_4@@4 f_5@@1)))
 :qid |stdinbpl.538:29|
 :skolemid |58|
 :pattern ( (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| QPMask@0) o_4@@4 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| QPMask@1) o_4@@4 f_5@@1))
))) (forall ((o_4@@5 T@Ref) (f_5@@2 T@Field_4302_18575) ) (!  (=> true (= (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| QPMask@0) o_4@@5 f_5@@2) (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| QPMask@1) o_4@@5 f_5@@2)))
 :qid |stdinbpl.538:29|
 :skolemid |58|
 :pattern ( (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| QPMask@0) o_4@@5 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| QPMask@1) o_4@@5 f_5@@2))
))) (state Heap@@19 QPMask@1)) (and (state Heap@@19 QPMask@1) (state Heap@@19 QPMask@1))) (and (=> (= (ControlFlow 0 17) 4) anon13_Then_correct) (=> (= (ControlFlow 0 17) 16) anon13_Else_correct)))))))))))
(let ((anon12_Then_correct true))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 20) (- 0 22)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (<= 0 i_1)) (<= 0 i_1_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (loc_4328 a_2@@6 i_1) (loc_4328 a_2@@6 i_1_1))))
 :qid |stdinbpl.455:15|
 :skolemid |45|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (<= 0 i_1@@0)) (<= 0 i_1_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (loc_4328 a_2@@6 i_1@@0) (loc_4328 a_2@@6 i_1_1@@0))))
 :qid |stdinbpl.455:15|
 :skolemid |45|
)) (=> (and (forall ((i_1@@1 Int) ) (!  (=> (and (<= 0 i_1@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange3 (loc_4328 a_2@@6 i_1@@1)) (= (invRecv3 (loc_4328 a_2@@6 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.461:22|
 :skolemid |46|
 :pattern ( (loc_4328 a_2@@6 i_1@@1))
 :pattern ( (loc_4328 a_2@@6 i_1@@1))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv3 o_4@@6)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange3 o_4@@6)) (= (loc_4328 a_2@@6 (invRecv3 o_4@@6)) o_4@@6))
 :qid |stdinbpl.465:22|
 :skolemid |47|
 :pattern ( (invRecv3 o_4@@6))
))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (forall ((i_1@@2 Int) ) (!  (=> (<= 0 i_1@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.471:15|
 :skolemid |48|
 :pattern ( (loc_4328 a_2@@6 i_1@@2))
 :pattern ( (loc_4328 a_2@@6 i_1@@2))
))) (=> (forall ((i_1@@3 Int) ) (!  (=> (<= 0 i_1@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.471:15|
 :skolemid |48|
 :pattern ( (loc_4328 a_2@@6 i_1@@3))
 :pattern ( (loc_4328 a_2@@6 i_1@@3))
)) (=> (and (forall ((i_1@@4 Int) ) (!  (=> (and (<= 0 i_1@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (loc_4328 a_2@@6 i_1@@4) null)))
 :qid |stdinbpl.477:22|
 :skolemid |49|
 :pattern ( (loc_4328 a_2@@6 i_1@@4))
 :pattern ( (loc_4328 a_2@@6 i_1@@4))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv3 o_4@@7)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange3 o_4@@7)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (loc_4328 a_2@@6 (invRecv3 o_4@@7)) o_4@@7)) (= (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| QPMask@0) o_4@@7 val) (+ (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| ZeroMask) o_4@@7 val) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 0 (invRecv3 o_4@@7)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange3 o_4@@7))) (= (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| QPMask@0) o_4@@7 val) (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| ZeroMask) o_4@@7 val))))
 :qid |stdinbpl.483:22|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| QPMask@0) o_4@@7 val))
))) (=> (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@3 T@Field_6792_53) ) (!  (=> (not (= f_5@@3 val)) (= (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| ZeroMask) o_4@@8 f_5@@3) (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| QPMask@0) o_4@@8 f_5@@3)))
 :qid |stdinbpl.487:29|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| ZeroMask) o_4@@8 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_6753_4302_1399#PolymorphicMapType_6753| QPMask@0) o_4@@8 f_5@@3))
)) (forall ((o_4@@9 T@Ref) (f_5@@4 T@Field_6805_6806) ) (!  (=> true (= (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| ZeroMask) o_4@@9 f_5@@4) (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| QPMask@0) o_4@@9 f_5@@4)))
 :qid |stdinbpl.487:29|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| ZeroMask) o_4@@9 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_6753_4302_6806#PolymorphicMapType_6753| QPMask@0) o_4@@9 f_5@@4))
))) (forall ((o_4@@10 T@Ref) (f_5@@5 T@Field_4302_18442) ) (!  (=> true (= (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| ZeroMask) o_4@@10 f_5@@5) (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| QPMask@0) o_4@@10 f_5@@5)))
 :qid |stdinbpl.487:29|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| ZeroMask) o_4@@10 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_6753_4302_18442#PolymorphicMapType_6753| QPMask@0) o_4@@10 f_5@@5))
))) (forall ((o_4@@11 T@Ref) (f_5@@6 T@Field_4302_18575) ) (!  (=> true (= (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| ZeroMask) o_4@@11 f_5@@6) (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| QPMask@0) o_4@@11 f_5@@6)))
 :qid |stdinbpl.487:29|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| ZeroMask) o_4@@11 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_6753_4302_22124#PolymorphicMapType_6753| QPMask@0) o_4@@11 f_5@@6))
))) (state Heap@@19 QPMask@0)) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (=> (= (ControlFlow 0 20) 2) anon12_Then_correct) (=> (= (ControlFlow 0 20) 17) anon12_Else_correct)))))))))))
(let ((anon11_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 23) 1) anon11_Then_correct) (=> (= (ControlFlow 0 23) 20) anon11_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 24) 23) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
