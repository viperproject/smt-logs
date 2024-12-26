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
(declare-sort T@Field_4059_53 0)
(declare-sort T@Field_4072_4073 0)
(declare-sort T@Field_4059_10973 0)
(declare-sort T@Field_4059_10840 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4020 0)) (((PolymorphicMapType_4020 (|PolymorphicMapType_4020_4059_53#PolymorphicMapType_4020| (Array T@Ref T@Field_4059_53 Real)) (|PolymorphicMapType_4020_4059_4073#PolymorphicMapType_4020| (Array T@Ref T@Field_4072_4073 Real)) (|PolymorphicMapType_4020_4059_10840#PolymorphicMapType_4020| (Array T@Ref T@Field_4059_10840 Real)) (|PolymorphicMapType_4020_4059_14534#PolymorphicMapType_4020| (Array T@Ref T@Field_4059_10973 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4548 0)) (((PolymorphicMapType_4548 (|PolymorphicMapType_4548_4059_53#PolymorphicMapType_4548| (Array T@Ref T@Field_4059_53 Bool)) (|PolymorphicMapType_4548_4059_4073#PolymorphicMapType_4548| (Array T@Ref T@Field_4072_4073 Bool)) (|PolymorphicMapType_4548_4059_10840#PolymorphicMapType_4548| (Array T@Ref T@Field_4059_10840 Bool)) (|PolymorphicMapType_4548_4059_11953#PolymorphicMapType_4548| (Array T@Ref T@Field_4059_10973 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3999 0)) (((PolymorphicMapType_3999 (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| (Array T@Ref T@Field_4059_53 Bool)) (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| (Array T@Ref T@Field_4072_4073 T@Ref)) (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| (Array T@Ref T@Field_4059_10973 T@PolymorphicMapType_4548)) (|PolymorphicMapType_3999_4059_10840#PolymorphicMapType_3999| (Array T@Ref T@Field_4059_10840 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3999 T@PolymorphicMapType_3999) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3999 T@PolymorphicMapType_3999) Bool)
(declare-fun state (T@PolymorphicMapType_3999 T@PolymorphicMapType_4020) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4020) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4548)
(declare-fun |id'| (T@PolymorphicMapType_3999 Int) Int)
(declare-fun dummyFunction_1355 (Int) Bool)
(declare-fun |id#triggerStateless| (Int) Int)
(declare-fun id (T@PolymorphicMapType_3999 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3999 T@PolymorphicMapType_3999 T@PolymorphicMapType_4020) Bool)
(declare-fun IsPredicateField_4059_10931 (T@Field_4059_10840) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4059 (T@Field_4059_10840) T@Field_4059_10973)
(declare-fun HasDirectPerm_4059_10904 (T@PolymorphicMapType_4020 T@Ref T@Field_4059_10840) Bool)
(declare-fun IsWandField_4059_12480 (T@Field_4059_10840) Bool)
(declare-fun WandMaskField_4059 (T@Field_4059_10840) T@Field_4059_10973)
(declare-fun dummyHeap () T@PolymorphicMapType_3999)
(declare-fun ZeroMask () T@PolymorphicMapType_4020)
(declare-fun $allocated () T@Field_4059_53)
(declare-fun InsidePredicate_4059_4059 (T@Field_4059_10840 T@FrameType T@Field_4059_10840 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4059_15443 (T@Field_4059_10973) Bool)
(declare-fun IsWandField_4059_15459 (T@Field_4059_10973) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4059_4073 (T@Field_4072_4073) Bool)
(declare-fun IsWandField_4059_4073 (T@Field_4072_4073) Bool)
(declare-fun IsPredicateField_4059_53 (T@Field_4059_53) Bool)
(declare-fun IsWandField_4059_53 (T@Field_4059_53) Bool)
(declare-fun HasDirectPerm_4059_15814 (T@PolymorphicMapType_4020 T@Ref T@Field_4059_10973) Bool)
(declare-fun HasDirectPerm_4059_4073 (T@PolymorphicMapType_4020 T@Ref T@Field_4072_4073) Bool)
(declare-fun HasDirectPerm_4059_53 (T@PolymorphicMapType_4020 T@Ref T@Field_4059_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4020 T@PolymorphicMapType_4020 T@PolymorphicMapType_4020) Bool)
(declare-fun |id#frame| (T@FrameType Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(assert (forall ((Heap0 T@PolymorphicMapType_3999) (Heap1 T@PolymorphicMapType_3999) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3999) (Mask T@PolymorphicMapType_4020) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3999) (Heap1@@0 T@PolymorphicMapType_3999) (Heap2 T@PolymorphicMapType_3999) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4059_10973) ) (!  (not (select (|PolymorphicMapType_4548_4059_11953#PolymorphicMapType_4548| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4548_4059_11953#PolymorphicMapType_4548| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4059_10840) ) (!  (not (select (|PolymorphicMapType_4548_4059_10840#PolymorphicMapType_4548| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4548_4059_10840#PolymorphicMapType_4548| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4072_4073) ) (!  (not (select (|PolymorphicMapType_4548_4059_4073#PolymorphicMapType_4548| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4548_4059_4073#PolymorphicMapType_4548| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4059_53) ) (!  (not (select (|PolymorphicMapType_4548_4059_53#PolymorphicMapType_4548| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4548_4059_53#PolymorphicMapType_4548| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3999) (i Int) ) (! (dummyFunction_1355 (|id#triggerStateless| i))
 :qid |stdinbpl.190:15|
 :skolemid |23|
 :pattern ( (|id'| Heap@@0 i))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3999) (i@@0 Int) ) (!  (and (= (id Heap@@1 i@@0) (|id'| Heap@@1 i@@0)) (dummyFunction_1355 (|id#triggerStateless| i@@0)))
 :qid |stdinbpl.186:15|
 :skolemid |22|
 :pattern ( (id Heap@@1 i@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3999) (ExhaleHeap T@PolymorphicMapType_3999) (Mask@@0 T@PolymorphicMapType_4020) (pm_f_1 T@Field_4059_10840) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4059_10904 Mask@@0 null pm_f_1) (IsPredicateField_4059_10931 pm_f_1)) (= (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@2) null (PredicateMaskField_4059 pm_f_1)) (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| ExhaleHeap) null (PredicateMaskField_4059 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_4059_10931 pm_f_1) (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| ExhaleHeap) null (PredicateMaskField_4059 pm_f_1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3999) (ExhaleHeap@@0 T@PolymorphicMapType_3999) (Mask@@1 T@PolymorphicMapType_4020) (pm_f_1@@0 T@Field_4059_10840) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4059_10904 Mask@@1 null pm_f_1@@0) (IsWandField_4059_12480 pm_f_1@@0)) (= (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@3) null (WandMaskField_4059 pm_f_1@@0)) (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| ExhaleHeap@@0) null (WandMaskField_4059 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_4059_12480 pm_f_1@@0) (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| ExhaleHeap@@0) null (WandMaskField_4059 pm_f_1@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3999) (ExhaleHeap@@1 T@PolymorphicMapType_3999) (Mask@@2 T@PolymorphicMapType_4020) (pm_f_1@@1 T@Field_4059_10840) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4059_10904 Mask@@2 null pm_f_1@@1) (IsPredicateField_4059_10931 pm_f_1@@1)) (and (and (and (forall ((o2_1 T@Ref) (f_8 T@Field_4059_53) ) (!  (=> (select (|PolymorphicMapType_4548_4059_53#PolymorphicMapType_4548| (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@4) null (PredicateMaskField_4059 pm_f_1@@1))) o2_1 f_8) (= (select (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| Heap@@4) o2_1 f_8) (select (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| ExhaleHeap@@1) o2_1 f_8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| ExhaleHeap@@1) o2_1 f_8))
)) (forall ((o2_1@@0 T@Ref) (f_8@@0 T@Field_4072_4073) ) (!  (=> (select (|PolymorphicMapType_4548_4059_4073#PolymorphicMapType_4548| (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@4) null (PredicateMaskField_4059 pm_f_1@@1))) o2_1@@0 f_8@@0) (= (select (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| Heap@@4) o2_1@@0 f_8@@0) (select (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| ExhaleHeap@@1) o2_1@@0 f_8@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| ExhaleHeap@@1) o2_1@@0 f_8@@0))
))) (forall ((o2_1@@1 T@Ref) (f_8@@1 T@Field_4059_10840) ) (!  (=> (select (|PolymorphicMapType_4548_4059_10840#PolymorphicMapType_4548| (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@4) null (PredicateMaskField_4059 pm_f_1@@1))) o2_1@@1 f_8@@1) (= (select (|PolymorphicMapType_3999_4059_10840#PolymorphicMapType_3999| Heap@@4) o2_1@@1 f_8@@1) (select (|PolymorphicMapType_3999_4059_10840#PolymorphicMapType_3999| ExhaleHeap@@1) o2_1@@1 f_8@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3999_4059_10840#PolymorphicMapType_3999| ExhaleHeap@@1) o2_1@@1 f_8@@1))
))) (forall ((o2_1@@2 T@Ref) (f_8@@2 T@Field_4059_10973) ) (!  (=> (select (|PolymorphicMapType_4548_4059_11953#PolymorphicMapType_4548| (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@4) null (PredicateMaskField_4059 pm_f_1@@1))) o2_1@@2 f_8@@2) (= (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@4) o2_1@@2 f_8@@2) (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| ExhaleHeap@@1) o2_1@@2 f_8@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| ExhaleHeap@@1) o2_1@@2 f_8@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4059_10931 pm_f_1@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3999) (ExhaleHeap@@2 T@PolymorphicMapType_3999) (Mask@@3 T@PolymorphicMapType_4020) (pm_f_1@@2 T@Field_4059_10840) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4059_10904 Mask@@3 null pm_f_1@@2) (IsWandField_4059_12480 pm_f_1@@2)) (and (and (and (forall ((o2_1@@3 T@Ref) (f_8@@3 T@Field_4059_53) ) (!  (=> (select (|PolymorphicMapType_4548_4059_53#PolymorphicMapType_4548| (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@5) null (WandMaskField_4059 pm_f_1@@2))) o2_1@@3 f_8@@3) (= (select (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| Heap@@5) o2_1@@3 f_8@@3) (select (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| ExhaleHeap@@2) o2_1@@3 f_8@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| ExhaleHeap@@2) o2_1@@3 f_8@@3))
)) (forall ((o2_1@@4 T@Ref) (f_8@@4 T@Field_4072_4073) ) (!  (=> (select (|PolymorphicMapType_4548_4059_4073#PolymorphicMapType_4548| (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@5) null (WandMaskField_4059 pm_f_1@@2))) o2_1@@4 f_8@@4) (= (select (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| Heap@@5) o2_1@@4 f_8@@4) (select (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| ExhaleHeap@@2) o2_1@@4 f_8@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| ExhaleHeap@@2) o2_1@@4 f_8@@4))
))) (forall ((o2_1@@5 T@Ref) (f_8@@5 T@Field_4059_10840) ) (!  (=> (select (|PolymorphicMapType_4548_4059_10840#PolymorphicMapType_4548| (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@5) null (WandMaskField_4059 pm_f_1@@2))) o2_1@@5 f_8@@5) (= (select (|PolymorphicMapType_3999_4059_10840#PolymorphicMapType_3999| Heap@@5) o2_1@@5 f_8@@5) (select (|PolymorphicMapType_3999_4059_10840#PolymorphicMapType_3999| ExhaleHeap@@2) o2_1@@5 f_8@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3999_4059_10840#PolymorphicMapType_3999| ExhaleHeap@@2) o2_1@@5 f_8@@5))
))) (forall ((o2_1@@6 T@Ref) (f_8@@6 T@Field_4059_10973) ) (!  (=> (select (|PolymorphicMapType_4548_4059_11953#PolymorphicMapType_4548| (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@5) null (WandMaskField_4059 pm_f_1@@2))) o2_1@@6 f_8@@6) (= (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@5) o2_1@@6 f_8@@6) (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| ExhaleHeap@@2) o2_1@@6 f_8@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| ExhaleHeap@@2) o2_1@@6 f_8@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_4059_12480 pm_f_1@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3999) (ExhaleHeap@@3 T@PolymorphicMapType_3999) (Mask@@4 T@PolymorphicMapType_4020) (o_3 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| Heap@@6) o_3 $allocated) (select (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| ExhaleHeap@@3) o_3 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| ExhaleHeap@@3) o_3 $allocated))
)))
(assert (forall ((p T@Field_4059_10840) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4059_4059 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4059_4059 p v_1 p w))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3999) (ExhaleHeap@@4 T@PolymorphicMapType_3999) (Mask@@5 T@PolymorphicMapType_4020) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@7 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_4020) (o_2@@3 T@Ref) (f_4@@3 T@Field_4059_10973) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_4020_4059_14534#PolymorphicMapType_4020| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4059_15443 f_4@@3))) (not (IsWandField_4059_15459 f_4@@3))) (<= (select (|PolymorphicMapType_4020_4059_14534#PolymorphicMapType_4020| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_4020_4059_14534#PolymorphicMapType_4020| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_4020) (o_2@@4 T@Ref) (f_4@@4 T@Field_4059_10840) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_4020_4059_10840#PolymorphicMapType_4020| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4059_10931 f_4@@4))) (not (IsWandField_4059_12480 f_4@@4))) (<= (select (|PolymorphicMapType_4020_4059_10840#PolymorphicMapType_4020| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_4020_4059_10840#PolymorphicMapType_4020| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4020) (o_2@@5 T@Ref) (f_4@@5 T@Field_4072_4073) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4020_4059_4073#PolymorphicMapType_4020| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4059_4073 f_4@@5))) (not (IsWandField_4059_4073 f_4@@5))) (<= (select (|PolymorphicMapType_4020_4059_4073#PolymorphicMapType_4020| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4020_4059_4073#PolymorphicMapType_4020| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4020) (o_2@@6 T@Ref) (f_4@@6 T@Field_4059_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_4020_4059_53#PolymorphicMapType_4020| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4059_53 f_4@@6))) (not (IsWandField_4059_53 f_4@@6))) (<= (select (|PolymorphicMapType_4020_4059_53#PolymorphicMapType_4020| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_4020_4059_53#PolymorphicMapType_4020| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4020) (o_2@@7 T@Ref) (f_4@@7 T@Field_4059_10973) ) (! (= (HasDirectPerm_4059_15814 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_4020_4059_14534#PolymorphicMapType_4020| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4059_15814 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4020) (o_2@@8 T@Ref) (f_4@@8 T@Field_4059_10840) ) (! (= (HasDirectPerm_4059_10904 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_4020_4059_10840#PolymorphicMapType_4020| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4059_10904 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4020) (o_2@@9 T@Ref) (f_4@@9 T@Field_4072_4073) ) (! (= (HasDirectPerm_4059_4073 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4020_4059_4073#PolymorphicMapType_4020| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4059_4073 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4020) (o_2@@10 T@Ref) (f_4@@10 T@Field_4059_53) ) (! (= (HasDirectPerm_4059_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4020_4059_53#PolymorphicMapType_4020| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4059_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3999) (ExhaleHeap@@5 T@PolymorphicMapType_3999) (Mask@@14 T@PolymorphicMapType_4020) (o_3@@0 T@Ref) (f_8@@7 T@Field_4059_10973) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_4059_15814 Mask@@14 o_3@@0 f_8@@7) (= (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@8) o_3@@0 f_8@@7) (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| ExhaleHeap@@5) o_3@@0 f_8@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| ExhaleHeap@@5) o_3@@0 f_8@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3999) (ExhaleHeap@@6 T@PolymorphicMapType_3999) (Mask@@15 T@PolymorphicMapType_4020) (o_3@@1 T@Ref) (f_8@@8 T@Field_4059_10840) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_4059_10904 Mask@@15 o_3@@1 f_8@@8) (= (select (|PolymorphicMapType_3999_4059_10840#PolymorphicMapType_3999| Heap@@9) o_3@@1 f_8@@8) (select (|PolymorphicMapType_3999_4059_10840#PolymorphicMapType_3999| ExhaleHeap@@6) o_3@@1 f_8@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_3999_4059_10840#PolymorphicMapType_3999| ExhaleHeap@@6) o_3@@1 f_8@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3999) (ExhaleHeap@@7 T@PolymorphicMapType_3999) (Mask@@16 T@PolymorphicMapType_4020) (o_3@@2 T@Ref) (f_8@@9 T@Field_4072_4073) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_4059_4073 Mask@@16 o_3@@2 f_8@@9) (= (select (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| Heap@@10) o_3@@2 f_8@@9) (select (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| ExhaleHeap@@7) o_3@@2 f_8@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| ExhaleHeap@@7) o_3@@2 f_8@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3999) (ExhaleHeap@@8 T@PolymorphicMapType_3999) (Mask@@17 T@PolymorphicMapType_4020) (o_3@@3 T@Ref) (f_8@@10 T@Field_4059_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_4059_53 Mask@@17 o_3@@3 f_8@@10) (= (select (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| Heap@@11) o_3@@3 f_8@@10) (select (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| ExhaleHeap@@8) o_3@@3 f_8@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| ExhaleHeap@@8) o_3@@3 f_8@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_4059_10973) ) (! (= (select (|PolymorphicMapType_4020_4059_14534#PolymorphicMapType_4020| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4020_4059_14534#PolymorphicMapType_4020| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_4059_10840) ) (! (= (select (|PolymorphicMapType_4020_4059_10840#PolymorphicMapType_4020| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4020_4059_10840#PolymorphicMapType_4020| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_4072_4073) ) (! (= (select (|PolymorphicMapType_4020_4059_4073#PolymorphicMapType_4020| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4020_4059_4073#PolymorphicMapType_4020| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4059_53) ) (! (= (select (|PolymorphicMapType_4020_4059_53#PolymorphicMapType_4020| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4020_4059_53#PolymorphicMapType_4020| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4020) (SummandMask1 T@PolymorphicMapType_4020) (SummandMask2 T@PolymorphicMapType_4020) (o_2@@15 T@Ref) (f_4@@15 T@Field_4059_10973) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4020_4059_14534#PolymorphicMapType_4020| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_4020_4059_14534#PolymorphicMapType_4020| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_4020_4059_14534#PolymorphicMapType_4020| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4020_4059_14534#PolymorphicMapType_4020| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4020_4059_14534#PolymorphicMapType_4020| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4020_4059_14534#PolymorphicMapType_4020| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4020) (SummandMask1@@0 T@PolymorphicMapType_4020) (SummandMask2@@0 T@PolymorphicMapType_4020) (o_2@@16 T@Ref) (f_4@@16 T@Field_4059_10840) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4020_4059_10840#PolymorphicMapType_4020| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_4020_4059_10840#PolymorphicMapType_4020| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_4020_4059_10840#PolymorphicMapType_4020| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4020_4059_10840#PolymorphicMapType_4020| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4020_4059_10840#PolymorphicMapType_4020| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4020_4059_10840#PolymorphicMapType_4020| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4020) (SummandMask1@@1 T@PolymorphicMapType_4020) (SummandMask2@@1 T@PolymorphicMapType_4020) (o_2@@17 T@Ref) (f_4@@17 T@Field_4072_4073) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4020_4059_4073#PolymorphicMapType_4020| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_4020_4059_4073#PolymorphicMapType_4020| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_4020_4059_4073#PolymorphicMapType_4020| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4020_4059_4073#PolymorphicMapType_4020| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4020_4059_4073#PolymorphicMapType_4020| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4020_4059_4073#PolymorphicMapType_4020| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4020) (SummandMask1@@2 T@PolymorphicMapType_4020) (SummandMask2@@2 T@PolymorphicMapType_4020) (o_2@@18 T@Ref) (f_4@@18 T@Field_4059_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4020_4059_53#PolymorphicMapType_4020| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_4020_4059_53#PolymorphicMapType_4020| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_4020_4059_53#PolymorphicMapType_4020| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4020_4059_53#PolymorphicMapType_4020| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4020_4059_53#PolymorphicMapType_4020| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4020_4059_53#PolymorphicMapType_4020| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3999) (Mask@@18 T@PolymorphicMapType_4020) (i@@1 Int) ) (!  (=> (state Heap@@12 Mask@@18) (= (|id'| Heap@@12 i@@1) (|id#frame| EmptyFrame i@@1)))
 :qid |stdinbpl.203:15|
 :skolemid |25|
 :pattern ( (state Heap@@12 Mask@@18) (|id'| Heap@@12 i@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3999) (o_1 T@Ref) (f_9 T@Field_4059_10840) (v T@FrameType) ) (! (succHeap Heap@@13 (PolymorphicMapType_3999 (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| Heap@@13) (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| Heap@@13) (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@13) (store (|PolymorphicMapType_3999_4059_10840#PolymorphicMapType_3999| Heap@@13) o_1 f_9 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3999 (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| Heap@@13) (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| Heap@@13) (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@13) (store (|PolymorphicMapType_3999_4059_10840#PolymorphicMapType_3999| Heap@@13) o_1 f_9 v)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3999) (o_1@@0 T@Ref) (f_9@@0 T@Field_4059_10973) (v@@0 T@PolymorphicMapType_4548) ) (! (succHeap Heap@@14 (PolymorphicMapType_3999 (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| Heap@@14) (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| Heap@@14) (store (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@14) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_3999_4059_10840#PolymorphicMapType_3999| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3999 (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| Heap@@14) (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| Heap@@14) (store (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@14) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_3999_4059_10840#PolymorphicMapType_3999| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3999) (o_1@@1 T@Ref) (f_9@@1 T@Field_4072_4073) (v@@1 T@Ref) ) (! (succHeap Heap@@15 (PolymorphicMapType_3999 (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| Heap@@15) (store (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| Heap@@15) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@15) (|PolymorphicMapType_3999_4059_10840#PolymorphicMapType_3999| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3999 (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| Heap@@15) (store (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| Heap@@15) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@15) (|PolymorphicMapType_3999_4059_10840#PolymorphicMapType_3999| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3999) (o_1@@2 T@Ref) (f_9@@2 T@Field_4059_53) (v@@2 Bool) ) (! (succHeap Heap@@16 (PolymorphicMapType_3999 (store (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| Heap@@16) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| Heap@@16) (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@16) (|PolymorphicMapType_3999_4059_10840#PolymorphicMapType_3999| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3999 (store (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| Heap@@16) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| Heap@@16) (|PolymorphicMapType_3999_4059_11017#PolymorphicMapType_3999| Heap@@16) (|PolymorphicMapType_3999_4059_10840#PolymorphicMapType_3999| Heap@@16)))
)))
(assert (forall ((o_1@@3 T@Ref) (f_2 T@Field_4072_4073) (Heap@@17 T@PolymorphicMapType_3999) ) (!  (=> (select (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| Heap@@17) o_1@@3 $allocated) (select (|PolymorphicMapType_3999_2109_53#PolymorphicMapType_3999| Heap@@17) (select (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| Heap@@17) o_1@@3 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3999_2112_2113#PolymorphicMapType_3999| Heap@@17) o_1@@3 f_2))
)))
(assert (forall ((p@@1 T@Field_4059_10840) (v_1@@0 T@FrameType) (q T@Field_4059_10840) (w@@0 T@FrameType) (r T@Field_4059_10840) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4059_4059 p@@1 v_1@@0 q w@@0) (InsidePredicate_4059_4059 q w@@0 r u)) (InsidePredicate_4059_4059 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4059_4059 p@@1 v_1@@0 q w@@0) (InsidePredicate_4059_4059 q w@@0 r u))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3999) (Mask@@19 T@PolymorphicMapType_4020) (i@@2 Int) ) (!  (=> (and (state Heap@@18 Mask@@19) (< AssumeFunctionsAbove 0)) (= (id Heap@@18 i@@2) i@@2))
 :qid |stdinbpl.196:15|
 :skolemid |24|
 :pattern ( (state Heap@@18 Mask@@19) (id Heap@@18 i@@2))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_3999)
(declare-fun i@@3 () Int)
(declare-fun y_18 () Int)
(declare-fun Heap@@19 () T@PolymorphicMapType_3999)
(declare-fun y_8_1 () Int)
(declare-fun y_6_2 () Int)
(set-info :boogie-vc-id test02)
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
 (=> (= (ControlFlow 0 0) 23) (let ((anon30_Else_correct true))
(let ((anon30_Then_correct true))
(let ((anon29_Else_correct true))
(let ((anon25_Else_correct  (=> (forall ((y_3_2 Int) ) (!  (and (= (id PostHeap@0 y_3_2) y_3_2) (= (id PostHeap@0 y_3_2) i@@3))
 :qid |stdinbpl.376:20|
 :skolemid |28|
 :pattern ( (|id#frame| EmptyFrame y_3_2))
)) (=> (and (state PostHeap@0 ZeroMask) (state PostHeap@0 ZeroMask)) (and (and (=> (= (ControlFlow 0 19) 16) anon29_Else_correct) (=> (= (ControlFlow 0 19) 17) anon30_Then_correct)) (=> (= (ControlFlow 0 19) 18) anon30_Else_correct))))))
(let ((anon28_Then_correct true))
(let ((anon11_correct true))
(let ((anon27_Then_correct  (=> (= (id PostHeap@0 y_18) y_18) (and (=> (= (ControlFlow 0 15) 14) anon28_Then_correct) (=> (= (ControlFlow 0 15) 12) anon11_correct)))))
(let ((anon27_Else_correct  (=> (and (not (= (id PostHeap@0 y_18) y_18)) (= (ControlFlow 0 13) 12)) anon11_correct)))
(let ((anon26_Then_correct true))
(let ((anon24_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (state PostHeap@0 ZeroMask)) (and (and (and (=> (= (ControlFlow 0 20) 19) anon25_Else_correct) (=> (= (ControlFlow 0 20) 11) anon26_Then_correct)) (=> (= (ControlFlow 0 20) 15) anon27_Then_correct)) (=> (= (ControlFlow 0 20) 13) anon27_Else_correct)))))
(let ((anon32_Else_correct true))
(let ((anon32_Then_correct  (and (=> (= (ControlFlow 0 7) (- 0 8)) (= (id Heap@@19 y_8_1) y_8_1)) (=> (= (id Heap@@19 y_8_1) y_8_1) (=> (= (ControlFlow 0 7) (- 0 6)) (= y_8_1 i@@3))))))
(let ((anon31_Else_correct  (=> (forall ((y_7_1 Int) ) (!  (and (= (id Heap@@19 y_7_1) y_7_1) (= (id Heap@@19 y_7_1) i@@3))
 :qid |stdinbpl.410:20|
 :skolemid |30|
 :pattern ( (|id#frame| EmptyFrame y_7_1))
)) (and (=> (= (ControlFlow 0 10) 7) anon32_Then_correct) (=> (= (ControlFlow 0 10) 9) anon32_Else_correct)))))
(let ((anon31_Then_correct  (and (=> (= (ControlFlow 0 4) (- 0 5)) (= (id Heap@@19 y_6_2) y_6_2)) (=> (= (id Heap@@19 y_6_2) y_6_2) (=> (= (ControlFlow 0 4) (- 0 3)) (= (id Heap@@19 y_6_2) i@@3))))))
(let ((anon22_Else_correct  (=> (and (forall ((y_1 Int) ) (! (= (id Heap@@19 y_1) i@@3)
 :qid |stdinbpl.344:20|
 :skolemid |27|
 :pattern ( (|id#frame| EmptyFrame y_1))
)) (state Heap@@19 ZeroMask)) (and (and (=> (= (ControlFlow 0 21) 20) anon24_Then_correct) (=> (= (ControlFlow 0 21) 4) anon31_Then_correct)) (=> (= (ControlFlow 0 21) 10) anon31_Else_correct)))))
(let ((anon23_Else_correct true))
(let ((anon23_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@19 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (state Heap@@19 ZeroMask))) (and (and (=> (= (ControlFlow 0 22) 21) anon22_Else_correct) (=> (= (ControlFlow 0 22) 1) anon23_Then_correct)) (=> (= (ControlFlow 0 22) 2) anon23_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 23) 22) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid