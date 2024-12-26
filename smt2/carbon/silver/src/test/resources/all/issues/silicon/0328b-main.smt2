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
(declare-sort T@Field_3932_53 0)
(declare-sort T@Field_3945_3946 0)
(declare-sort T@Field_3932_10560 0)
(declare-sort T@Field_3932_10427 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3893 0)) (((PolymorphicMapType_3893 (|PolymorphicMapType_3893_3932_53#PolymorphicMapType_3893| (Array T@Ref T@Field_3932_53 Real)) (|PolymorphicMapType_3893_3932_3946#PolymorphicMapType_3893| (Array T@Ref T@Field_3945_3946 Real)) (|PolymorphicMapType_3893_3932_10427#PolymorphicMapType_3893| (Array T@Ref T@Field_3932_10427 Real)) (|PolymorphicMapType_3893_3932_14121#PolymorphicMapType_3893| (Array T@Ref T@Field_3932_10560 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4421 0)) (((PolymorphicMapType_4421 (|PolymorphicMapType_4421_3932_53#PolymorphicMapType_4421| (Array T@Ref T@Field_3932_53 Bool)) (|PolymorphicMapType_4421_3932_3946#PolymorphicMapType_4421| (Array T@Ref T@Field_3945_3946 Bool)) (|PolymorphicMapType_4421_3932_10427#PolymorphicMapType_4421| (Array T@Ref T@Field_3932_10427 Bool)) (|PolymorphicMapType_4421_3932_11540#PolymorphicMapType_4421| (Array T@Ref T@Field_3932_10560 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3872 0)) (((PolymorphicMapType_3872 (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| (Array T@Ref T@Field_3932_53 Bool)) (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| (Array T@Ref T@Field_3945_3946 T@Ref)) (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| (Array T@Ref T@Field_3932_10560 T@PolymorphicMapType_4421)) (|PolymorphicMapType_3872_3932_10427#PolymorphicMapType_3872| (Array T@Ref T@Field_3932_10427 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3872 T@PolymorphicMapType_3872) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3872 T@PolymorphicMapType_3872) Bool)
(declare-fun state (T@PolymorphicMapType_3872 T@PolymorphicMapType_3893) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3893) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4421)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3872 T@PolymorphicMapType_3872 T@PolymorphicMapType_3893) Bool)
(declare-fun IsPredicateField_3932_10518 (T@Field_3932_10427) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3932 (T@Field_3932_10427) T@Field_3932_10560)
(declare-fun HasDirectPerm_3932_10491 (T@PolymorphicMapType_3893 T@Ref T@Field_3932_10427) Bool)
(declare-fun IsWandField_3932_12067 (T@Field_3932_10427) Bool)
(declare-fun WandMaskField_3932 (T@Field_3932_10427) T@Field_3932_10560)
(declare-fun dummyHeap () T@PolymorphicMapType_3872)
(declare-fun ZeroMask () T@PolymorphicMapType_3893)
(declare-fun $allocated () T@Field_3932_53)
(declare-fun InsidePredicate_3932_3932 (T@Field_3932_10427 T@FrameType T@Field_3932_10427 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3932_15030 (T@Field_3932_10560) Bool)
(declare-fun IsWandField_3932_15046 (T@Field_3932_10560) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3932_3946 (T@Field_3945_3946) Bool)
(declare-fun IsWandField_3932_3946 (T@Field_3945_3946) Bool)
(declare-fun IsPredicateField_3932_53 (T@Field_3932_53) Bool)
(declare-fun IsWandField_3932_53 (T@Field_3932_53) Bool)
(declare-fun HasDirectPerm_3932_15401 (T@PolymorphicMapType_3893 T@Ref T@Field_3932_10560) Bool)
(declare-fun HasDirectPerm_3932_3946 (T@PolymorphicMapType_3893 T@Ref T@Field_3945_3946) Bool)
(declare-fun HasDirectPerm_3932_53 (T@PolymorphicMapType_3893 T@Ref T@Field_3932_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3893 T@PolymorphicMapType_3893 T@PolymorphicMapType_3893) Bool)
(declare-sort T@Vector9DDomainType 0)
(declare-fun Vector9D_ctor (Int Int Int Int Int Int Int Int Int) T@Vector9DDomainType)
(declare-fun Vector9D_ctor_syn (Int Int Int Int Int Int Int Int Int) T@Vector9DDomainType)
(declare-fun Vector9D_f1 (T@Vector9DDomainType) Int)
(declare-fun Vector9D_f2 (T@Vector9DDomainType) Int)
(declare-fun Vector9D_f3 (T@Vector9DDomainType) Int)
(declare-fun Vector9D_f4 (T@Vector9DDomainType) Int)
(declare-fun Vector9D_f5 (T@Vector9DDomainType) Int)
(declare-fun Vector9D_f6 (T@Vector9DDomainType) Int)
(declare-fun Vector9D_f7 (T@Vector9DDomainType) Int)
(declare-fun Vector9D_f8 (T@Vector9DDomainType) Int)
(declare-fun Vector9D_f9 (T@Vector9DDomainType) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_3872) (Heap1 T@PolymorphicMapType_3872) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3872) (Mask T@PolymorphicMapType_3893) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3872) (Heap1@@0 T@PolymorphicMapType_3872) (Heap2 T@PolymorphicMapType_3872) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3932_10560) ) (!  (not (select (|PolymorphicMapType_4421_3932_11540#PolymorphicMapType_4421| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4421_3932_11540#PolymorphicMapType_4421| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3932_10427) ) (!  (not (select (|PolymorphicMapType_4421_3932_10427#PolymorphicMapType_4421| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4421_3932_10427#PolymorphicMapType_4421| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3945_3946) ) (!  (not (select (|PolymorphicMapType_4421_3932_3946#PolymorphicMapType_4421| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4421_3932_3946#PolymorphicMapType_4421| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3932_53) ) (!  (not (select (|PolymorphicMapType_4421_3932_53#PolymorphicMapType_4421| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4421_3932_53#PolymorphicMapType_4421| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3872) (ExhaleHeap T@PolymorphicMapType_3872) (Mask@@0 T@PolymorphicMapType_3893) (pm_f T@Field_3932_10427) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3932_10491 Mask@@0 null pm_f) (IsPredicateField_3932_10518 pm_f)) (= (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@0) null (PredicateMaskField_3932 pm_f)) (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| ExhaleHeap) null (PredicateMaskField_3932 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3932_10518 pm_f) (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| ExhaleHeap) null (PredicateMaskField_3932 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3872) (ExhaleHeap@@0 T@PolymorphicMapType_3872) (Mask@@1 T@PolymorphicMapType_3893) (pm_f@@0 T@Field_3932_10427) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3932_10491 Mask@@1 null pm_f@@0) (IsWandField_3932_12067 pm_f@@0)) (= (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@1) null (WandMaskField_3932 pm_f@@0)) (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| ExhaleHeap@@0) null (WandMaskField_3932 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_3932_12067 pm_f@@0) (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| ExhaleHeap@@0) null (WandMaskField_3932 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3872) (ExhaleHeap@@1 T@PolymorphicMapType_3872) (Mask@@2 T@PolymorphicMapType_3893) (pm_f@@1 T@Field_3932_10427) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3932_10491 Mask@@2 null pm_f@@1) (IsPredicateField_3932_10518 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3932_53) ) (!  (=> (select (|PolymorphicMapType_4421_3932_53#PolymorphicMapType_4421| (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@2) null (PredicateMaskField_3932 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| Heap@@2) o2 f_2) (select (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3945_3946) ) (!  (=> (select (|PolymorphicMapType_4421_3932_3946#PolymorphicMapType_4421| (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@2) null (PredicateMaskField_3932 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| Heap@@2) o2@@0 f_2@@0) (select (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_3932_10427) ) (!  (=> (select (|PolymorphicMapType_4421_3932_10427#PolymorphicMapType_4421| (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@2) null (PredicateMaskField_3932 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3872_3932_10427#PolymorphicMapType_3872| Heap@@2) o2@@1 f_2@@1) (select (|PolymorphicMapType_3872_3932_10427#PolymorphicMapType_3872| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3872_3932_10427#PolymorphicMapType_3872| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3932_10560) ) (!  (=> (select (|PolymorphicMapType_4421_3932_11540#PolymorphicMapType_4421| (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@2) null (PredicateMaskField_3932 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@2) o2@@2 f_2@@2) (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3932_10518 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3872) (ExhaleHeap@@2 T@PolymorphicMapType_3872) (Mask@@3 T@PolymorphicMapType_3893) (pm_f@@2 T@Field_3932_10427) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3932_10491 Mask@@3 null pm_f@@2) (IsWandField_3932_12067 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3932_53) ) (!  (=> (select (|PolymorphicMapType_4421_3932_53#PolymorphicMapType_4421| (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@3) null (WandMaskField_3932 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| Heap@@3) o2@@3 f_2@@3) (select (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3945_3946) ) (!  (=> (select (|PolymorphicMapType_4421_3932_3946#PolymorphicMapType_4421| (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@3) null (WandMaskField_3932 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| Heap@@3) o2@@4 f_2@@4) (select (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3932_10427) ) (!  (=> (select (|PolymorphicMapType_4421_3932_10427#PolymorphicMapType_4421| (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@3) null (WandMaskField_3932 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3872_3932_10427#PolymorphicMapType_3872| Heap@@3) o2@@5 f_2@@5) (select (|PolymorphicMapType_3872_3932_10427#PolymorphicMapType_3872| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3872_3932_10427#PolymorphicMapType_3872| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_3932_10560) ) (!  (=> (select (|PolymorphicMapType_4421_3932_11540#PolymorphicMapType_4421| (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@3) null (WandMaskField_3932 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@3) o2@@6 f_2@@6) (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3932_12067 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3872) (ExhaleHeap@@3 T@PolymorphicMapType_3872) (Mask@@4 T@PolymorphicMapType_3893) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| Heap@@4) o_1 $allocated) (select (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_3932_10427) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3932_3932 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3932_3932 p v_1 p w))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3872) (ExhaleHeap@@4 T@PolymorphicMapType_3872) (Mask@@5 T@PolymorphicMapType_3893) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3893) (o_2@@3 T@Ref) (f_4@@3 T@Field_3932_10560) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3893_3932_14121#PolymorphicMapType_3893| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3932_15030 f_4@@3))) (not (IsWandField_3932_15046 f_4@@3))) (<= (select (|PolymorphicMapType_3893_3932_14121#PolymorphicMapType_3893| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3893_3932_14121#PolymorphicMapType_3893| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3893) (o_2@@4 T@Ref) (f_4@@4 T@Field_3932_10427) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3893_3932_10427#PolymorphicMapType_3893| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3932_10518 f_4@@4))) (not (IsWandField_3932_12067 f_4@@4))) (<= (select (|PolymorphicMapType_3893_3932_10427#PolymorphicMapType_3893| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3893_3932_10427#PolymorphicMapType_3893| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3893) (o_2@@5 T@Ref) (f_4@@5 T@Field_3945_3946) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3893_3932_3946#PolymorphicMapType_3893| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3932_3946 f_4@@5))) (not (IsWandField_3932_3946 f_4@@5))) (<= (select (|PolymorphicMapType_3893_3932_3946#PolymorphicMapType_3893| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3893_3932_3946#PolymorphicMapType_3893| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3893) (o_2@@6 T@Ref) (f_4@@6 T@Field_3932_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3893_3932_53#PolymorphicMapType_3893| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3932_53 f_4@@6))) (not (IsWandField_3932_53 f_4@@6))) (<= (select (|PolymorphicMapType_3893_3932_53#PolymorphicMapType_3893| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3893_3932_53#PolymorphicMapType_3893| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3893) (o_2@@7 T@Ref) (f_4@@7 T@Field_3932_10560) ) (! (= (HasDirectPerm_3932_15401 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3893_3932_14121#PolymorphicMapType_3893| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3932_15401 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3893) (o_2@@8 T@Ref) (f_4@@8 T@Field_3932_10427) ) (! (= (HasDirectPerm_3932_10491 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3893_3932_10427#PolymorphicMapType_3893| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3932_10491 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3893) (o_2@@9 T@Ref) (f_4@@9 T@Field_3945_3946) ) (! (= (HasDirectPerm_3932_3946 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3893_3932_3946#PolymorphicMapType_3893| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3932_3946 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3893) (o_2@@10 T@Ref) (f_4@@10 T@Field_3932_53) ) (! (= (HasDirectPerm_3932_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3893_3932_53#PolymorphicMapType_3893| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3932_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3872) (ExhaleHeap@@5 T@PolymorphicMapType_3872) (Mask@@14 T@PolymorphicMapType_3893) (o_1@@0 T@Ref) (f_2@@7 T@Field_3932_10560) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_3932_15401 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@6) o_1@@0 f_2@@7) (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3872) (ExhaleHeap@@6 T@PolymorphicMapType_3872) (Mask@@15 T@PolymorphicMapType_3893) (o_1@@1 T@Ref) (f_2@@8 T@Field_3932_10427) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_3932_10491 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_3872_3932_10427#PolymorphicMapType_3872| Heap@@7) o_1@@1 f_2@@8) (select (|PolymorphicMapType_3872_3932_10427#PolymorphicMapType_3872| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_3872_3932_10427#PolymorphicMapType_3872| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3872) (ExhaleHeap@@7 T@PolymorphicMapType_3872) (Mask@@16 T@PolymorphicMapType_3893) (o_1@@2 T@Ref) (f_2@@9 T@Field_3945_3946) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_3932_3946 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| Heap@@8) o_1@@2 f_2@@9) (select (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3872) (ExhaleHeap@@8 T@PolymorphicMapType_3872) (Mask@@17 T@PolymorphicMapType_3893) (o_1@@3 T@Ref) (f_2@@10 T@Field_3932_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_3932_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| Heap@@9) o_1@@3 f_2@@10) (select (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3932_10560) ) (! (= (select (|PolymorphicMapType_3893_3932_14121#PolymorphicMapType_3893| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3893_3932_14121#PolymorphicMapType_3893| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3932_10427) ) (! (= (select (|PolymorphicMapType_3893_3932_10427#PolymorphicMapType_3893| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3893_3932_10427#PolymorphicMapType_3893| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3945_3946) ) (! (= (select (|PolymorphicMapType_3893_3932_3946#PolymorphicMapType_3893| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3893_3932_3946#PolymorphicMapType_3893| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3932_53) ) (! (= (select (|PolymorphicMapType_3893_3932_53#PolymorphicMapType_3893| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3893_3932_53#PolymorphicMapType_3893| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3893) (SummandMask1 T@PolymorphicMapType_3893) (SummandMask2 T@PolymorphicMapType_3893) (o_2@@15 T@Ref) (f_4@@15 T@Field_3932_10560) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3893_3932_14121#PolymorphicMapType_3893| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3893_3932_14121#PolymorphicMapType_3893| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3893_3932_14121#PolymorphicMapType_3893| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3893_3932_14121#PolymorphicMapType_3893| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3893_3932_14121#PolymorphicMapType_3893| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3893_3932_14121#PolymorphicMapType_3893| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3893) (SummandMask1@@0 T@PolymorphicMapType_3893) (SummandMask2@@0 T@PolymorphicMapType_3893) (o_2@@16 T@Ref) (f_4@@16 T@Field_3932_10427) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3893_3932_10427#PolymorphicMapType_3893| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3893_3932_10427#PolymorphicMapType_3893| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3893_3932_10427#PolymorphicMapType_3893| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3893_3932_10427#PolymorphicMapType_3893| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3893_3932_10427#PolymorphicMapType_3893| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3893_3932_10427#PolymorphicMapType_3893| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3893) (SummandMask1@@1 T@PolymorphicMapType_3893) (SummandMask2@@1 T@PolymorphicMapType_3893) (o_2@@17 T@Ref) (f_4@@17 T@Field_3945_3946) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3893_3932_3946#PolymorphicMapType_3893| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3893_3932_3946#PolymorphicMapType_3893| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3893_3932_3946#PolymorphicMapType_3893| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3893_3932_3946#PolymorphicMapType_3893| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3893_3932_3946#PolymorphicMapType_3893| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3893_3932_3946#PolymorphicMapType_3893| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3893) (SummandMask1@@2 T@PolymorphicMapType_3893) (SummandMask2@@2 T@PolymorphicMapType_3893) (o_2@@18 T@Ref) (f_4@@18 T@Field_3932_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3893_3932_53#PolymorphicMapType_3893| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3893_3932_53#PolymorphicMapType_3893| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3893_3932_53#PolymorphicMapType_3893| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3893_3932_53#PolymorphicMapType_3893| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3893_3932_53#PolymorphicMapType_3893| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3893_3932_53#PolymorphicMapType_3893| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((f1 Int) (f2 Int) (f3_3 Int) (f4_2 Int) (f5_2 Int) (f6_2 Int) (f7_2 Int) (f8_2 Int) (f9_1 Int) ) (! (= (Vector9D_ctor f1 f2 f3_3 f4_2 f5_2 f6_2 f7_2 f8_2 f9_1) (Vector9D_ctor_syn f1 f2 f3_3 f4_2 f5_2 f6_2 f7_2 f8_2 f9_1))
 :qid |stdinbpl.217:15|
 :skolemid |22|
 :pattern ( (Vector9D_ctor f1 f2 f3_3 f4_2 f5_2 f6_2 f7_2 f8_2 f9_1))
)))
(assert (forall ((f1@@0 Int) (f2@@0 Int) (f3_3@@0 Int) (f4_2@@0 Int) (f5_2@@0 Int) (f6_2@@0 Int) (f7_2@@0 Int) (f8_2@@0 Int) (f9_1@@0 Int) ) (!  (and (= (Vector9D_f1 (Vector9D_ctor_syn f1@@0 f2@@0 f3_3@@0 f4_2@@0 f5_2@@0 f6_2@@0 f7_2@@0 f8_2@@0 f9_1@@0)) f1@@0) (and (= (Vector9D_f2 (Vector9D_ctor_syn f1@@0 f2@@0 f3_3@@0 f4_2@@0 f5_2@@0 f6_2@@0 f7_2@@0 f8_2@@0 f9_1@@0)) f2@@0) (and (= (Vector9D_f3 (Vector9D_ctor_syn f1@@0 f2@@0 f3_3@@0 f4_2@@0 f5_2@@0 f6_2@@0 f7_2@@0 f8_2@@0 f9_1@@0)) f3_3@@0) (and (= (Vector9D_f4 (Vector9D_ctor_syn f1@@0 f2@@0 f3_3@@0 f4_2@@0 f5_2@@0 f6_2@@0 f7_2@@0 f8_2@@0 f9_1@@0)) f4_2@@0) (and (= (Vector9D_f5 (Vector9D_ctor_syn f1@@0 f2@@0 f3_3@@0 f4_2@@0 f5_2@@0 f6_2@@0 f7_2@@0 f8_2@@0 f9_1@@0)) f5_2@@0) (and (= (Vector9D_f6 (Vector9D_ctor_syn f1@@0 f2@@0 f3_3@@0 f4_2@@0 f5_2@@0 f6_2@@0 f7_2@@0 f8_2@@0 f9_1@@0)) f6_2@@0) (and (= (Vector9D_f7 (Vector9D_ctor_syn f1@@0 f2@@0 f3_3@@0 f4_2@@0 f5_2@@0 f6_2@@0 f7_2@@0 f8_2@@0 f9_1@@0)) f7_2@@0) (and (= (Vector9D_f8 (Vector9D_ctor_syn f1@@0 f2@@0 f3_3@@0 f4_2@@0 f5_2@@0 f6_2@@0 f7_2@@0 f8_2@@0 f9_1@@0)) f8_2@@0) (= (Vector9D_f9 (Vector9D_ctor_syn f1@@0 f2@@0 f3_3@@0 f4_2@@0 f5_2@@0 f6_2@@0 f7_2@@0 f8_2@@0 f9_1@@0)) f9_1@@0)))))))))
 :qid |stdinbpl.223:15|
 :skolemid |23|
 :pattern ( (Vector9D_ctor f1@@0 f2@@0 f3_3@@0 f4_2@@0 f5_2@@0 f6_2@@0 f7_2@@0 f8_2@@0 f9_1@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3872) (o T@Ref) (f_3 T@Field_3932_10427) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_3872 (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| Heap@@10) (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| Heap@@10) (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@10) (store (|PolymorphicMapType_3872_3932_10427#PolymorphicMapType_3872| Heap@@10) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3872 (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| Heap@@10) (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| Heap@@10) (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@10) (store (|PolymorphicMapType_3872_3932_10427#PolymorphicMapType_3872| Heap@@10) o f_3 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3872) (o@@0 T@Ref) (f_3@@0 T@Field_3932_10560) (v@@0 T@PolymorphicMapType_4421) ) (! (succHeap Heap@@11 (PolymorphicMapType_3872 (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| Heap@@11) (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| Heap@@11) (store (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@11) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3872_3932_10427#PolymorphicMapType_3872| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3872 (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| Heap@@11) (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| Heap@@11) (store (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@11) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3872_3932_10427#PolymorphicMapType_3872| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3872) (o@@1 T@Ref) (f_3@@1 T@Field_3945_3946) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_3872 (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| Heap@@12) (store (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| Heap@@12) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@12) (|PolymorphicMapType_3872_3932_10427#PolymorphicMapType_3872| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3872 (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| Heap@@12) (store (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| Heap@@12) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@12) (|PolymorphicMapType_3872_3932_10427#PolymorphicMapType_3872| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3872) (o@@2 T@Ref) (f_3@@2 T@Field_3932_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_3872 (store (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| Heap@@13) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| Heap@@13) (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@13) (|PolymorphicMapType_3872_3932_10427#PolymorphicMapType_3872| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3872 (store (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| Heap@@13) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| Heap@@13) (|PolymorphicMapType_3872_3932_10604#PolymorphicMapType_3872| Heap@@13) (|PolymorphicMapType_3872_3932_10427#PolymorphicMapType_3872| Heap@@13)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_3945_3946) (Heap@@14 T@PolymorphicMapType_3872) ) (!  (=> (select (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| Heap@@14) o@@3 $allocated) (select (|PolymorphicMapType_3872_2246_53#PolymorphicMapType_3872| Heap@@14) (select (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| Heap@@14) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3872_2249_2250#PolymorphicMapType_3872| Heap@@14) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_3932_10427) (v_1@@0 T@FrameType) (q T@Field_3932_10427) (w@@0 T@FrameType) (r T@Field_3932_10427) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3932_3932 p@@1 v_1@@0 q w@@0) (InsidePredicate_3932_3932 q w@@0 r u)) (InsidePredicate_3932_3932 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3932_3932 p@@1 v_1@@0 q w@@0) (InsidePredicate_3932_3932 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@15 () T@PolymorphicMapType_3872)
(declare-fun v1@0 () T@Vector9DDomainType)
(declare-fun v1@1 () T@Vector9DDomainType)
(declare-fun v1@2 () T@Vector9DDomainType)
(declare-fun v1@3 () T@Vector9DDomainType)
(declare-fun v1@4 () T@Vector9DDomainType)
(declare-fun v1@5 () T@Vector9DDomainType)
(declare-fun v1@6 () T@Vector9DDomainType)
(set-info :boogie-vc-id main)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon0_correct  (=> (and (and (and (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (= v1@0 (Vector9D_ctor 1 2 3 4 5 6 7 8 9)) (state Heap@@15 ZeroMask))) (and (and (= v1@1 (Vector9D_ctor (Vector9D_f1 v1@0) (Vector9D_f2 v1@0) (Vector9D_f3 v1@0) (Vector9D_f4 v1@0) (Vector9D_f5 v1@0) (Vector9D_f6 v1@0) (Vector9D_f7 v1@0) (Vector9D_f8 v1@0) (Vector9D_f9 v1@0))) (state Heap@@15 ZeroMask)) (and (= v1@2 (Vector9D_ctor (Vector9D_f1 v1@1) (Vector9D_f2 v1@1) (Vector9D_f3 v1@1) (Vector9D_f4 v1@1) (Vector9D_f5 v1@1) (Vector9D_f6 v1@1) (Vector9D_f7 v1@1) (Vector9D_f8 v1@1) (Vector9D_f9 v1@1))) (state Heap@@15 ZeroMask)))) (and (and (and (= v1@3 (Vector9D_ctor (Vector9D_f1 v1@2) (Vector9D_f2 v1@2) (Vector9D_f3 v1@2) (Vector9D_f4 v1@2) (Vector9D_f5 v1@2) (Vector9D_f6 v1@2) (Vector9D_f7 v1@2) (Vector9D_f8 v1@2) (Vector9D_f9 v1@2))) (state Heap@@15 ZeroMask)) (and (= v1@4 (Vector9D_ctor (Vector9D_f1 v1@3) (Vector9D_f2 v1@3) (Vector9D_f3 v1@3) (Vector9D_f4 v1@3) (Vector9D_f5 v1@3) (Vector9D_f6 v1@3) (Vector9D_f7 v1@3) (Vector9D_f8 v1@3) (Vector9D_f9 v1@3))) (state Heap@@15 ZeroMask))) (and (and (= v1@5 (Vector9D_ctor (Vector9D_f1 v1@4) (Vector9D_f2 v1@4) (Vector9D_f3 v1@4) (Vector9D_f4 v1@4) (Vector9D_f5 v1@4) (Vector9D_f6 v1@4) (Vector9D_f7 v1@4) (Vector9D_f8 v1@4) (Vector9D_f9 v1@4))) (state Heap@@15 ZeroMask)) (and (= v1@6 (Vector9D_ctor (Vector9D_f1 v1@5) (Vector9D_f2 v1@5) (Vector9D_f3 v1@5) (Vector9D_f4 v1@5) (Vector9D_f5 v1@5) (Vector9D_f6 v1@5) (Vector9D_f7 v1@5) (Vector9D_f8 v1@5) (Vector9D_f9 v1@5))) (state Heap@@15 ZeroMask))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (= (Vector9D_f1 v1@6) 1)) (=> (= (Vector9D_f1 v1@6) 1) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 9)) (= (Vector9D_f2 v1@6) 2)) (=> (= (Vector9D_f2 v1@6) 2) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 8)) (= (Vector9D_f3 v1@6) 3)) (=> (= (Vector9D_f3 v1@6) 3) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 7)) (= (Vector9D_f4 v1@6) 4)) (=> (= (Vector9D_f4 v1@6) 4) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= (Vector9D_f5 v1@6) 5)) (=> (= (Vector9D_f5 v1@6) 5) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= (Vector9D_f6 v1@6) 6)) (=> (= (Vector9D_f6 v1@6) 6) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (Vector9D_f7 v1@6) 7)) (=> (= (Vector9D_f7 v1@6) 7) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (Vector9D_f8 v1@6) 8)) (=> (= (Vector9D_f8 v1@6) 8) (=> (and (state Heap@@15 ZeroMask) (= (ControlFlow 0 2) (- 0 1))) (= (Vector9D_f9 v1@6) 9))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
