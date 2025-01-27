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
(declare-sort T@Field_3745_53 0)
(declare-sort T@Field_3758_3759 0)
(declare-sort T@Field_1923_10664 0)
(declare-sort T@Field_1923_10531 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3706 0)) (((PolymorphicMapType_3706 (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| (Array T@Ref T@Field_3758_3759 Real)) (|PolymorphicMapType_3706_1923_53#PolymorphicMapType_3706| (Array T@Ref T@Field_3745_53 Real)) (|PolymorphicMapType_3706_1923_10531#PolymorphicMapType_3706| (Array T@Ref T@Field_1923_10531 Real)) (|PolymorphicMapType_3706_1923_14210#PolymorphicMapType_3706| (Array T@Ref T@Field_1923_10664 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4234 0)) (((PolymorphicMapType_4234 (|PolymorphicMapType_4234_3745_53#PolymorphicMapType_4234| (Array T@Ref T@Field_3745_53 Bool)) (|PolymorphicMapType_4234_3745_3759#PolymorphicMapType_4234| (Array T@Ref T@Field_3758_3759 Bool)) (|PolymorphicMapType_4234_3745_10531#PolymorphicMapType_4234| (Array T@Ref T@Field_1923_10531 Bool)) (|PolymorphicMapType_4234_3745_11644#PolymorphicMapType_4234| (Array T@Ref T@Field_1923_10664 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3685 0)) (((PolymorphicMapType_3685 (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| (Array T@Ref T@Field_3745_53 Bool)) (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| (Array T@Ref T@Field_3758_3759 T@Ref)) (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| (Array T@Ref T@Field_1923_10664 T@PolymorphicMapType_4234)) (|PolymorphicMapType_3685_3745_10531#PolymorphicMapType_3685| (Array T@Ref T@Field_1923_10531 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_3745_53)
(declare-fun f1_2 () T@Field_3758_3759)
(declare-fun f2_2 () T@Field_3758_3759)
(declare-fun succHeap (T@PolymorphicMapType_3685 T@PolymorphicMapType_3685) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3685 T@PolymorphicMapType_3685) Bool)
(declare-fun state (T@PolymorphicMapType_3685 T@PolymorphicMapType_3706) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3706) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4234)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3685 T@PolymorphicMapType_3685 T@PolymorphicMapType_3706) Bool)
(declare-fun IsPredicateField_1923_10622 (T@Field_1923_10531) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_1923 (T@Field_1923_10531) T@Field_1923_10664)
(declare-fun HasDirectPerm_1923_10595 (T@PolymorphicMapType_3706 T@Ref T@Field_1923_10531) Bool)
(declare-fun IsWandField_1923_12171 (T@Field_1923_10531) Bool)
(declare-fun WandMaskField_1923 (T@Field_1923_10531) T@Field_1923_10664)
(declare-fun dummyHeap () T@PolymorphicMapType_3685)
(declare-fun ZeroMask () T@PolymorphicMapType_3706)
(declare-fun InsidePredicate_3745_3745 (T@Field_1923_10531 T@FrameType T@Field_1923_10531 T@FrameType) Bool)
(declare-fun IsPredicateField_1920_1921 (T@Field_3758_3759) Bool)
(declare-fun IsWandField_1920_1921 (T@Field_3758_3759) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_1923_15105 (T@Field_1923_10664) Bool)
(declare-fun IsWandField_1923_15121 (T@Field_1923_10664) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_1923_53 (T@Field_3745_53) Bool)
(declare-fun IsWandField_1923_53 (T@Field_3745_53) Bool)
(declare-fun HasDirectPerm_1923_15476 (T@PolymorphicMapType_3706 T@Ref T@Field_1923_10664) Bool)
(declare-fun HasDirectPerm_1923_53 (T@PolymorphicMapType_3706 T@Ref T@Field_3745_53) Bool)
(declare-fun HasDirectPerm_1923_1924 (T@PolymorphicMapType_3706 T@Ref T@Field_3758_3759) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3706 T@PolymorphicMapType_3706 T@PolymorphicMapType_3706) Bool)
(assert (distinct f1_2 f2_2)
)
(assert (forall ((Heap0 T@PolymorphicMapType_3685) (Heap1 T@PolymorphicMapType_3685) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3685) (Mask T@PolymorphicMapType_3706) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3685) (Heap1@@0 T@PolymorphicMapType_3685) (Heap2 T@PolymorphicMapType_3685) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_1923_10664) ) (!  (not (select (|PolymorphicMapType_4234_3745_11644#PolymorphicMapType_4234| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4234_3745_11644#PolymorphicMapType_4234| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_1923_10531) ) (!  (not (select (|PolymorphicMapType_4234_3745_10531#PolymorphicMapType_4234| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4234_3745_10531#PolymorphicMapType_4234| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3758_3759) ) (!  (not (select (|PolymorphicMapType_4234_3745_3759#PolymorphicMapType_4234| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4234_3745_3759#PolymorphicMapType_4234| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3745_53) ) (!  (not (select (|PolymorphicMapType_4234_3745_53#PolymorphicMapType_4234| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4234_3745_53#PolymorphicMapType_4234| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3685) (ExhaleHeap T@PolymorphicMapType_3685) (Mask@@0 T@PolymorphicMapType_3706) (pm_f_5 T@Field_1923_10531) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_1923_10595 Mask@@0 null pm_f_5) (IsPredicateField_1923_10622 pm_f_5)) (= (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@0) null (PredicateMaskField_1923 pm_f_5)) (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| ExhaleHeap) null (PredicateMaskField_1923 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_1923_10622 pm_f_5) (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| ExhaleHeap) null (PredicateMaskField_1923 pm_f_5)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3685) (ExhaleHeap@@0 T@PolymorphicMapType_3685) (Mask@@1 T@PolymorphicMapType_3706) (pm_f_5@@0 T@Field_1923_10531) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_1923_10595 Mask@@1 null pm_f_5@@0) (IsWandField_1923_12171 pm_f_5@@0)) (= (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@1) null (WandMaskField_1923 pm_f_5@@0)) (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| ExhaleHeap@@0) null (WandMaskField_1923 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_1923_12171 pm_f_5@@0) (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| ExhaleHeap@@0) null (WandMaskField_1923 pm_f_5@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3685) (ExhaleHeap@@1 T@PolymorphicMapType_3685) (Mask@@2 T@PolymorphicMapType_3706) (pm_f_5@@1 T@Field_1923_10531) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_1923_10595 Mask@@2 null pm_f_5@@1) (IsPredicateField_1923_10622 pm_f_5@@1)) (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_3745_53) ) (!  (=> (select (|PolymorphicMapType_4234_3745_53#PolymorphicMapType_4234| (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@2) null (PredicateMaskField_1923 pm_f_5@@1))) o2_5 f_23) (= (select (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| Heap@@2) o2_5 f_23) (select (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| ExhaleHeap@@1) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| ExhaleHeap@@1) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_3758_3759) ) (!  (=> (select (|PolymorphicMapType_4234_3745_3759#PolymorphicMapType_4234| (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@2) null (PredicateMaskField_1923 pm_f_5@@1))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| Heap@@2) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| ExhaleHeap@@1) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| ExhaleHeap@@1) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_1923_10531) ) (!  (=> (select (|PolymorphicMapType_4234_3745_10531#PolymorphicMapType_4234| (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@2) null (PredicateMaskField_1923 pm_f_5@@1))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_3685_3745_10531#PolymorphicMapType_3685| Heap@@2) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_3685_3745_10531#PolymorphicMapType_3685| ExhaleHeap@@1) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3685_3745_10531#PolymorphicMapType_3685| ExhaleHeap@@1) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_1923_10664) ) (!  (=> (select (|PolymorphicMapType_4234_3745_11644#PolymorphicMapType_4234| (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@2) null (PredicateMaskField_1923 pm_f_5@@1))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@2) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| ExhaleHeap@@1) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| ExhaleHeap@@1) o2_5@@2 f_23@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_1923_10622 pm_f_5@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3685) (ExhaleHeap@@2 T@PolymorphicMapType_3685) (Mask@@3 T@PolymorphicMapType_3706) (pm_f_5@@2 T@Field_1923_10531) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_1923_10595 Mask@@3 null pm_f_5@@2) (IsWandField_1923_12171 pm_f_5@@2)) (and (and (and (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_3745_53) ) (!  (=> (select (|PolymorphicMapType_4234_3745_53#PolymorphicMapType_4234| (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@3) null (WandMaskField_1923 pm_f_5@@2))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| Heap@@3) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| ExhaleHeap@@2) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| ExhaleHeap@@2) o2_5@@3 f_23@@3))
)) (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_3758_3759) ) (!  (=> (select (|PolymorphicMapType_4234_3745_3759#PolymorphicMapType_4234| (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@3) null (WandMaskField_1923 pm_f_5@@2))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| Heap@@3) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| ExhaleHeap@@2) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| ExhaleHeap@@2) o2_5@@4 f_23@@4))
))) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_1923_10531) ) (!  (=> (select (|PolymorphicMapType_4234_3745_10531#PolymorphicMapType_4234| (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@3) null (WandMaskField_1923 pm_f_5@@2))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_3685_3745_10531#PolymorphicMapType_3685| Heap@@3) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_3685_3745_10531#PolymorphicMapType_3685| ExhaleHeap@@2) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3685_3745_10531#PolymorphicMapType_3685| ExhaleHeap@@2) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_1923_10664) ) (!  (=> (select (|PolymorphicMapType_4234_3745_11644#PolymorphicMapType_4234| (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@3) null (WandMaskField_1923 pm_f_5@@2))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@3) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| ExhaleHeap@@2) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| ExhaleHeap@@2) o2_5@@6 f_23@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_1923_12171 pm_f_5@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3685) (ExhaleHeap@@3 T@PolymorphicMapType_3685) (Mask@@4 T@PolymorphicMapType_3706) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| Heap@@4) o_15 $allocated) (select (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| ExhaleHeap@@3) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| ExhaleHeap@@3) o_15 $allocated))
)))
(assert (forall ((p T@Field_1923_10531) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3745_3745 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3745_3745 p v_1 p w))
)))
(assert  (not (IsPredicateField_1920_1921 f1_2)))
(assert  (not (IsWandField_1920_1921 f1_2)))
(assert  (not (IsPredicateField_1920_1921 f2_2)))
(assert  (not (IsWandField_1920_1921 f2_2)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3685) (ExhaleHeap@@4 T@PolymorphicMapType_3685) (Mask@@5 T@PolymorphicMapType_3706) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3706) (o_2@@3 T@Ref) (f_4@@3 T@Field_1923_10664) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3706_1923_14210#PolymorphicMapType_3706| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_1923_15105 f_4@@3))) (not (IsWandField_1923_15121 f_4@@3))) (<= (select (|PolymorphicMapType_3706_1923_14210#PolymorphicMapType_3706| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3706_1923_14210#PolymorphicMapType_3706| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3706) (o_2@@4 T@Ref) (f_4@@4 T@Field_1923_10531) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3706_1923_10531#PolymorphicMapType_3706| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_1923_10622 f_4@@4))) (not (IsWandField_1923_12171 f_4@@4))) (<= (select (|PolymorphicMapType_3706_1923_10531#PolymorphicMapType_3706| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3706_1923_10531#PolymorphicMapType_3706| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3706) (o_2@@5 T@Ref) (f_4@@5 T@Field_3745_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3706_1923_53#PolymorphicMapType_3706| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_1923_53 f_4@@5))) (not (IsWandField_1923_53 f_4@@5))) (<= (select (|PolymorphicMapType_3706_1923_53#PolymorphicMapType_3706| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3706_1923_53#PolymorphicMapType_3706| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3706) (o_2@@6 T@Ref) (f_4@@6 T@Field_3758_3759) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_1920_1921 f_4@@6))) (not (IsWandField_1920_1921 f_4@@6))) (<= (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3706) (o_2@@7 T@Ref) (f_4@@7 T@Field_1923_10664) ) (! (= (HasDirectPerm_1923_15476 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3706_1923_14210#PolymorphicMapType_3706| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1923_15476 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3706) (o_2@@8 T@Ref) (f_4@@8 T@Field_1923_10531) ) (! (= (HasDirectPerm_1923_10595 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3706_1923_10531#PolymorphicMapType_3706| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1923_10595 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3706) (o_2@@9 T@Ref) (f_4@@9 T@Field_3745_53) ) (! (= (HasDirectPerm_1923_53 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3706_1923_53#PolymorphicMapType_3706| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1923_53 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3706) (o_2@@10 T@Ref) (f_4@@10 T@Field_3758_3759) ) (! (= (HasDirectPerm_1923_1924 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1923_1924 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3685) (ExhaleHeap@@5 T@PolymorphicMapType_3685) (Mask@@14 T@PolymorphicMapType_3706) (o_15@@0 T@Ref) (f_23@@7 T@Field_1923_10664) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_1923_15476 Mask@@14 o_15@@0 f_23@@7) (= (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@6) o_15@@0 f_23@@7) (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| ExhaleHeap@@5) o_15@@0 f_23@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| ExhaleHeap@@5) o_15@@0 f_23@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3685) (ExhaleHeap@@6 T@PolymorphicMapType_3685) (Mask@@15 T@PolymorphicMapType_3706) (o_15@@1 T@Ref) (f_23@@8 T@Field_1923_10531) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_1923_10595 Mask@@15 o_15@@1 f_23@@8) (= (select (|PolymorphicMapType_3685_3745_10531#PolymorphicMapType_3685| Heap@@7) o_15@@1 f_23@@8) (select (|PolymorphicMapType_3685_3745_10531#PolymorphicMapType_3685| ExhaleHeap@@6) o_15@@1 f_23@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_3685_3745_10531#PolymorphicMapType_3685| ExhaleHeap@@6) o_15@@1 f_23@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3685) (ExhaleHeap@@7 T@PolymorphicMapType_3685) (Mask@@16 T@PolymorphicMapType_3706) (o_15@@2 T@Ref) (f_23@@9 T@Field_3745_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_1923_53 Mask@@16 o_15@@2 f_23@@9) (= (select (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| Heap@@8) o_15@@2 f_23@@9) (select (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| ExhaleHeap@@7) o_15@@2 f_23@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| ExhaleHeap@@7) o_15@@2 f_23@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3685) (ExhaleHeap@@8 T@PolymorphicMapType_3685) (Mask@@17 T@PolymorphicMapType_3706) (o_15@@3 T@Ref) (f_23@@10 T@Field_3758_3759) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_1923_1924 Mask@@17 o_15@@3 f_23@@10) (= (select (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| Heap@@9) o_15@@3 f_23@@10) (select (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| ExhaleHeap@@8) o_15@@3 f_23@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| ExhaleHeap@@8) o_15@@3 f_23@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_1923_10664) ) (! (= (select (|PolymorphicMapType_3706_1923_14210#PolymorphicMapType_3706| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3706_1923_14210#PolymorphicMapType_3706| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_1923_10531) ) (! (= (select (|PolymorphicMapType_3706_1923_10531#PolymorphicMapType_3706| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3706_1923_10531#PolymorphicMapType_3706| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3745_53) ) (! (= (select (|PolymorphicMapType_3706_1923_53#PolymorphicMapType_3706| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3706_1923_53#PolymorphicMapType_3706| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3758_3759) ) (! (= (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3706) (SummandMask1 T@PolymorphicMapType_3706) (SummandMask2 T@PolymorphicMapType_3706) (o_2@@15 T@Ref) (f_4@@15 T@Field_1923_10664) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3706_1923_14210#PolymorphicMapType_3706| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3706_1923_14210#PolymorphicMapType_3706| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3706_1923_14210#PolymorphicMapType_3706| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3706_1923_14210#PolymorphicMapType_3706| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3706_1923_14210#PolymorphicMapType_3706| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3706_1923_14210#PolymorphicMapType_3706| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3706) (SummandMask1@@0 T@PolymorphicMapType_3706) (SummandMask2@@0 T@PolymorphicMapType_3706) (o_2@@16 T@Ref) (f_4@@16 T@Field_1923_10531) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3706_1923_10531#PolymorphicMapType_3706| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3706_1923_10531#PolymorphicMapType_3706| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3706_1923_10531#PolymorphicMapType_3706| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3706_1923_10531#PolymorphicMapType_3706| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3706_1923_10531#PolymorphicMapType_3706| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3706_1923_10531#PolymorphicMapType_3706| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3706) (SummandMask1@@1 T@PolymorphicMapType_3706) (SummandMask2@@1 T@PolymorphicMapType_3706) (o_2@@17 T@Ref) (f_4@@17 T@Field_3745_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3706_1923_53#PolymorphicMapType_3706| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3706_1923_53#PolymorphicMapType_3706| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3706_1923_53#PolymorphicMapType_3706| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3706_1923_53#PolymorphicMapType_3706| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3706_1923_53#PolymorphicMapType_3706| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3706_1923_53#PolymorphicMapType_3706| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3706) (SummandMask1@@2 T@PolymorphicMapType_3706) (SummandMask2@@2 T@PolymorphicMapType_3706) (o_2@@18 T@Ref) (f_4@@18 T@Field_3758_3759) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3685) (o_14 T@Ref) (f_24 T@Field_1923_10531) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_3685 (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| Heap@@10) (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| Heap@@10) (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@10) (store (|PolymorphicMapType_3685_3745_10531#PolymorphicMapType_3685| Heap@@10) o_14 f_24 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3685 (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| Heap@@10) (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| Heap@@10) (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@10) (store (|PolymorphicMapType_3685_3745_10531#PolymorphicMapType_3685| Heap@@10) o_14 f_24 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3685) (o_14@@0 T@Ref) (f_24@@0 T@Field_1923_10664) (v@@0 T@PolymorphicMapType_4234) ) (! (succHeap Heap@@11 (PolymorphicMapType_3685 (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| Heap@@11) (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| Heap@@11) (store (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@11) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_3685_3745_10531#PolymorphicMapType_3685| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3685 (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| Heap@@11) (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| Heap@@11) (store (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@11) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_3685_3745_10531#PolymorphicMapType_3685| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3685) (o_14@@1 T@Ref) (f_24@@1 T@Field_3758_3759) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_3685 (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| Heap@@12) (store (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| Heap@@12) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@12) (|PolymorphicMapType_3685_3745_10531#PolymorphicMapType_3685| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3685 (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| Heap@@12) (store (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| Heap@@12) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@12) (|PolymorphicMapType_3685_3745_10531#PolymorphicMapType_3685| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3685) (o_14@@2 T@Ref) (f_24@@2 T@Field_3745_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_3685 (store (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| Heap@@13) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| Heap@@13) (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@13) (|PolymorphicMapType_3685_3745_10531#PolymorphicMapType_3685| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3685 (store (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| Heap@@13) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| Heap@@13) (|PolymorphicMapType_3685_1923_10708#PolymorphicMapType_3685| Heap@@13) (|PolymorphicMapType_3685_3745_10531#PolymorphicMapType_3685| Heap@@13)))
)))
(assert (forall ((o_14@@3 T@Ref) (f_22 T@Field_3758_3759) (Heap@@14 T@PolymorphicMapType_3685) ) (!  (=> (select (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| Heap@@14) o_14@@3 $allocated) (select (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| Heap@@14) (select (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| Heap@@14) o_14@@3 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| Heap@@14) o_14@@3 f_22))
)))
(assert (forall ((p@@1 T@Field_1923_10531) (v_1@@0 T@FrameType) (q T@Field_1923_10531) (w@@0 T@FrameType) (r T@Field_1923_10531) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3745_3745 p@@1 v_1@@0 q w@@0) (InsidePredicate_3745_3745 q w@@0 r u)) (InsidePredicate_3745_3745 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3745_3745 p@@1 v_1@@0 q w@@0) (InsidePredicate_3745_3745 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PostMask@0 () T@PolymorphicMapType_3706)
(declare-fun r_12 () T@Ref)
(declare-fun perm@1 () Real)
(declare-fun a_2 () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_3685)
(declare-fun Mask@1 () T@PolymorphicMapType_3706)
(declare-fun Mask@0 () T@PolymorphicMapType_3706)
(declare-fun perm@0 () Real)
(declare-fun Heap@@15 () T@PolymorphicMapType_3685)
(set-info :boogie-vc-id test1_1)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon6_correct true))
(let ((anon14_Else_correct  (=> (and (not (HasDirectPerm_1923_1924 PostMask@0 r_12 f2_2)) (= (ControlFlow 0 13) 10)) anon6_correct)))
(let ((anon14_Then_correct  (=> (HasDirectPerm_1923_1924 PostMask@0 r_12 f2_2) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_1923_1924 PostMask@0 r_12 f2_2)) (=> (HasDirectPerm_1923_1924 PostMask@0 r_12 f2_2) (=> (= (ControlFlow 0 11) 10) anon6_correct))))))
(let ((anon13_Else_correct true))
(let ((anon12_Else_correct  (=> (= perm@1 (- FullPerm (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| ZeroMask) a_2 f1_2))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (and (and (=> (> perm@1 NoPerm) (not (= a_2 null))) (= PostMask@0 (PolymorphicMapType_3706 (store (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| ZeroMask) a_2 f2_2 (+ (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| ZeroMask) a_2 f2_2) perm@1)) (|PolymorphicMapType_3706_1923_53#PolymorphicMapType_3706| ZeroMask) (|PolymorphicMapType_3706_1923_10531#PolymorphicMapType_3706| ZeroMask) (|PolymorphicMapType_3706_1923_14210#PolymorphicMapType_3706| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (and (=> (= (ControlFlow 0 14) 9) anon13_Else_correct) (=> (= (ControlFlow 0 14) 11) anon14_Then_correct)) (=> (= (ControlFlow 0 14) 13) anon14_Else_correct))))))))
(let ((anon12_Then_correct true))
(let ((anon11_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 16) 8) anon12_Then_correct) (=> (= (ControlFlow 0 16) 14) anon12_Else_correct)))))
(let ((anon10_correct  (=> (and (= Mask@1 (PolymorphicMapType_3706 (store (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| Mask@0) a_2 f2_2 (- (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| Mask@0) a_2 f2_2) perm@0)) (|PolymorphicMapType_3706_1923_53#PolymorphicMapType_3706| Mask@0) (|PolymorphicMapType_3706_1923_10531#PolymorphicMapType_3706| Mask@0) (|PolymorphicMapType_3706_1923_14210#PolymorphicMapType_3706| Mask@0))) (= (ControlFlow 0 2) (- 0 1))) (forall ((r_2 T@Ref) ) (!  (=> (HasDirectPerm_1923_1924 Mask@1 r_2 f2_2) false)
 :qid |stdinbpl.275:15|
 :skolemid |23|
 :pattern ( (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| Mask@1) r_2 f2_2))
 :pattern ( (select (|PolymorphicMapType_3685_1795_1796#PolymorphicMapType_3685| Heap@@15) r_2 f2_2))
)))))
(let ((anon15_Else_correct  (=> (and (= perm@0 NoPerm) (= (ControlFlow 0 5) 2)) anon10_correct)))
(let ((anon15_Then_correct  (=> (not (= perm@0 NoPerm)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= perm@0 (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| Mask@0) a_2 f2_2))) (=> (<= perm@0 (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| Mask@0) a_2 f2_2)) (=> (= (ControlFlow 0 3) 2) anon10_correct))))))
(let ((anon11_Else_correct  (=> (= perm@0 (- FullPerm (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| Mask@0) a_2 f1_2))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (and (=> (= (ControlFlow 0 6) 3) anon15_Then_correct) (=> (= (ControlFlow 0 6) 5) anon15_Else_correct)))))))
(let ((anon0_correct  (=> (state Heap@@15 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_3685_1792_53#PolymorphicMapType_3685| Heap@@15) a_2 $allocated)) (=> (and (and (not (= a_2 null)) (= Mask@0 (PolymorphicMapType_3706 (store (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| ZeroMask) a_2 f2_2 (+ (select (|PolymorphicMapType_3706_1923_1924#PolymorphicMapType_3706| ZeroMask) a_2 f2_2) FullPerm)) (|PolymorphicMapType_3706_1923_53#PolymorphicMapType_3706| ZeroMask) (|PolymorphicMapType_3706_1923_10531#PolymorphicMapType_3706| ZeroMask) (|PolymorphicMapType_3706_1923_14210#PolymorphicMapType_3706| ZeroMask)))) (and (state Heap@@15 Mask@0) (state Heap@@15 Mask@0))) (and (=> (= (ControlFlow 0 17) 16) anon11_Then_correct) (=> (= (ControlFlow 0 17) 6) anon11_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18) 17) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
