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
(declare-sort T@Field_3308_53 0)
(declare-sort T@Field_3321_3322 0)
(declare-sort T@Field_3308_8507 0)
(declare-sort T@Field_3308_8374 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3269 0)) (((PolymorphicMapType_3269 (|PolymorphicMapType_3269_3308_53#PolymorphicMapType_3269| (Array T@Ref T@Field_3308_53 Real)) (|PolymorphicMapType_3269_3308_3322#PolymorphicMapType_3269| (Array T@Ref T@Field_3321_3322 Real)) (|PolymorphicMapType_3269_3308_8374#PolymorphicMapType_3269| (Array T@Ref T@Field_3308_8374 Real)) (|PolymorphicMapType_3269_3308_12068#PolymorphicMapType_3269| (Array T@Ref T@Field_3308_8507 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3797 0)) (((PolymorphicMapType_3797 (|PolymorphicMapType_3797_3308_53#PolymorphicMapType_3797| (Array T@Ref T@Field_3308_53 Bool)) (|PolymorphicMapType_3797_3308_3322#PolymorphicMapType_3797| (Array T@Ref T@Field_3321_3322 Bool)) (|PolymorphicMapType_3797_3308_8374#PolymorphicMapType_3797| (Array T@Ref T@Field_3308_8374 Bool)) (|PolymorphicMapType_3797_3308_9487#PolymorphicMapType_3797| (Array T@Ref T@Field_3308_8507 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3248 0)) (((PolymorphicMapType_3248 (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| (Array T@Ref T@Field_3308_53 Bool)) (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| (Array T@Ref T@Field_3321_3322 T@Ref)) (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| (Array T@Ref T@Field_3308_8507 T@PolymorphicMapType_3797)) (|PolymorphicMapType_3248_3308_8374#PolymorphicMapType_3248| (Array T@Ref T@Field_3308_8374 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3248 T@PolymorphicMapType_3248) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3248 T@PolymorphicMapType_3248) Bool)
(declare-fun state (T@PolymorphicMapType_3248 T@PolymorphicMapType_3269) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3269) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_3797)
(declare-sort T@UnitDomainType 0)
(declare-fun Unit_tag (T@UnitDomainType) Int)
(declare-fun unit () T@UnitDomainType)
(declare-fun |functionUnit'| (T@PolymorphicMapType_3248 Int) T@UnitDomainType)
(declare-fun dummyFunction_1883 (T@UnitDomainType) Bool)
(declare-fun |functionUnit#triggerStateless| (Int) T@UnitDomainType)
(declare-fun functionUnit (T@PolymorphicMapType_3248 Int) T@UnitDomainType)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3248 T@PolymorphicMapType_3248 T@PolymorphicMapType_3269) Bool)
(declare-fun IsPredicateField_3308_8465 (T@Field_3308_8374) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3308 (T@Field_3308_8374) T@Field_3308_8507)
(declare-fun HasDirectPerm_3308_8438 (T@PolymorphicMapType_3269 T@Ref T@Field_3308_8374) Bool)
(declare-fun IsWandField_3308_10014 (T@Field_3308_8374) Bool)
(declare-fun WandMaskField_3308 (T@Field_3308_8374) T@Field_3308_8507)
(declare-fun dummyHeap () T@PolymorphicMapType_3248)
(declare-fun ZeroMask () T@PolymorphicMapType_3269)
(declare-fun $allocated () T@Field_3308_53)
(declare-fun InsidePredicate_3308_3308 (T@Field_3308_8374 T@FrameType T@Field_3308_8374 T@FrameType) Bool)
(declare-fun F67 (Int Int) Int)
(declare-fun L67 () Int)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3308_12977 (T@Field_3308_8507) Bool)
(declare-fun IsWandField_3308_12993 (T@Field_3308_8507) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3308_3322 (T@Field_3321_3322) Bool)
(declare-fun IsWandField_3308_3322 (T@Field_3321_3322) Bool)
(declare-fun IsPredicateField_3308_53 (T@Field_3308_53) Bool)
(declare-fun IsWandField_3308_53 (T@Field_3308_53) Bool)
(declare-fun R67 () Int)
(declare-fun HasDirectPerm_3308_13348 (T@PolymorphicMapType_3269 T@Ref T@Field_3308_8507) Bool)
(declare-fun HasDirectPerm_3308_3322 (T@PolymorphicMapType_3269 T@Ref T@Field_3321_3322) Bool)
(declare-fun HasDirectPerm_3308_53 (T@PolymorphicMapType_3269 T@Ref T@Field_3308_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun lemmaLEqualR67 (T@PolymorphicMapType_3248) T@UnitDomainType)
(declare-fun |lemmaLEqualR67'| (T@PolymorphicMapType_3248) T@UnitDomainType)
(declare-fun |lemmaLEqualR67#triggerStateless| () T@UnitDomainType)
(declare-fun sumMask (T@PolymorphicMapType_3269 T@PolymorphicMapType_3269 T@PolymorphicMapType_3269) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |functionUnit#frame| (T@FrameType Int) T@UnitDomainType)
(declare-fun |lemmaLEqualR67#frame| (T@FrameType) T@UnitDomainType)
(declare-fun |lemmaLEqualR67#trigger| (T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3248) (Heap1 T@PolymorphicMapType_3248) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3248) (Mask T@PolymorphicMapType_3269) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3248) (Heap1@@0 T@PolymorphicMapType_3248) (Heap2 T@PolymorphicMapType_3248) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3308_8507) ) (!  (not (select (|PolymorphicMapType_3797_3308_9487#PolymorphicMapType_3797| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3797_3308_9487#PolymorphicMapType_3797| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3308_8374) ) (!  (not (select (|PolymorphicMapType_3797_3308_8374#PolymorphicMapType_3797| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3797_3308_8374#PolymorphicMapType_3797| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3321_3322) ) (!  (not (select (|PolymorphicMapType_3797_3308_3322#PolymorphicMapType_3797| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3797_3308_3322#PolymorphicMapType_3797| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3308_53) ) (!  (not (select (|PolymorphicMapType_3797_3308_53#PolymorphicMapType_3797| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3797_3308_53#PolymorphicMapType_3797| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (= (Unit_tag unit) 0))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3248) (x Int) ) (! (dummyFunction_1883 (|functionUnit#triggerStateless| x))
 :qid |stdinbpl.241:15|
 :skolemid |26|
 :pattern ( (|functionUnit'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3248) (x@@0 Int) ) (!  (and (= (functionUnit Heap@@1 x@@0) (|functionUnit'| Heap@@1 x@@0)) (dummyFunction_1883 (|functionUnit#triggerStateless| x@@0)))
 :qid |stdinbpl.237:15|
 :skolemid |25|
 :pattern ( (functionUnit Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3248) (ExhaleHeap T@PolymorphicMapType_3248) (Mask@@0 T@PolymorphicMapType_3269) (pm_f T@Field_3308_8374) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3308_8438 Mask@@0 null pm_f) (IsPredicateField_3308_8465 pm_f)) (= (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@2) null (PredicateMaskField_3308 pm_f)) (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| ExhaleHeap) null (PredicateMaskField_3308 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_3308_8465 pm_f) (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| ExhaleHeap) null (PredicateMaskField_3308 pm_f)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3248) (ExhaleHeap@@0 T@PolymorphicMapType_3248) (Mask@@1 T@PolymorphicMapType_3269) (pm_f@@0 T@Field_3308_8374) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3308_8438 Mask@@1 null pm_f@@0) (IsWandField_3308_10014 pm_f@@0)) (= (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@3) null (WandMaskField_3308 pm_f@@0)) (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| ExhaleHeap@@0) null (WandMaskField_3308 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_3308_10014 pm_f@@0) (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| ExhaleHeap@@0) null (WandMaskField_3308 pm_f@@0)))
)))
(assert (forall ((t_2 T@UnitDomainType) ) (! (= t_2 unit)
 :qid |stdinbpl.225:15|
 :skolemid |24|
 :pattern ( (Unit_tag t_2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3248) (ExhaleHeap@@1 T@PolymorphicMapType_3248) (Mask@@2 T@PolymorphicMapType_3269) (pm_f@@1 T@Field_3308_8374) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3308_8438 Mask@@2 null pm_f@@1) (IsPredicateField_3308_8465 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3308_53) ) (!  (=> (select (|PolymorphicMapType_3797_3308_53#PolymorphicMapType_3797| (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@4) null (PredicateMaskField_3308 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| Heap@@4) o2 f_2) (select (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3321_3322) ) (!  (=> (select (|PolymorphicMapType_3797_3308_3322#PolymorphicMapType_3797| (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@4) null (PredicateMaskField_3308 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_3308_8374) ) (!  (=> (select (|PolymorphicMapType_3797_3308_8374#PolymorphicMapType_3797| (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@4) null (PredicateMaskField_3308 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3248_3308_8374#PolymorphicMapType_3248| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_3248_3308_8374#PolymorphicMapType_3248| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3248_3308_8374#PolymorphicMapType_3248| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3308_8507) ) (!  (=> (select (|PolymorphicMapType_3797_3308_9487#PolymorphicMapType_3797| (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@4) null (PredicateMaskField_3308 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3308_8465 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3248) (ExhaleHeap@@2 T@PolymorphicMapType_3248) (Mask@@3 T@PolymorphicMapType_3269) (pm_f@@2 T@Field_3308_8374) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3308_8438 Mask@@3 null pm_f@@2) (IsWandField_3308_10014 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3308_53) ) (!  (=> (select (|PolymorphicMapType_3797_3308_53#PolymorphicMapType_3797| (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@5) null (WandMaskField_3308 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| Heap@@5) o2@@3 f_2@@3) (select (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3321_3322) ) (!  (=> (select (|PolymorphicMapType_3797_3308_3322#PolymorphicMapType_3797| (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@5) null (WandMaskField_3308 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3308_8374) ) (!  (=> (select (|PolymorphicMapType_3797_3308_8374#PolymorphicMapType_3797| (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@5) null (WandMaskField_3308 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3248_3308_8374#PolymorphicMapType_3248| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_3248_3308_8374#PolymorphicMapType_3248| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3248_3308_8374#PolymorphicMapType_3248| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_3308_8507) ) (!  (=> (select (|PolymorphicMapType_3797_3308_9487#PolymorphicMapType_3797| (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@5) null (WandMaskField_3308 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_3308_10014 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3248) (ExhaleHeap@@3 T@PolymorphicMapType_3248) (Mask@@4 T@PolymorphicMapType_3269) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| Heap@@6) o_1 $allocated) (select (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_3308_8374) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3308_3308 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3308_3308 p v_1 p w))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3248) (ExhaleHeap@@4 T@PolymorphicMapType_3248) (Mask@@5 T@PolymorphicMapType_3269) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@7 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((x@@1 Int) ) (! (= (F67 L67 x@@1) L67)
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (F67 L67 x@@1))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3269) (o_2@@3 T@Ref) (f_4@@3 T@Field_3308_8507) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3269_3308_12068#PolymorphicMapType_3269| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3308_12977 f_4@@3))) (not (IsWandField_3308_12993 f_4@@3))) (<= (select (|PolymorphicMapType_3269_3308_12068#PolymorphicMapType_3269| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3269_3308_12068#PolymorphicMapType_3269| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3269) (o_2@@4 T@Ref) (f_4@@4 T@Field_3308_8374) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3269_3308_8374#PolymorphicMapType_3269| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3308_8465 f_4@@4))) (not (IsWandField_3308_10014 f_4@@4))) (<= (select (|PolymorphicMapType_3269_3308_8374#PolymorphicMapType_3269| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3269_3308_8374#PolymorphicMapType_3269| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3269) (o_2@@5 T@Ref) (f_4@@5 T@Field_3321_3322) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3269_3308_3322#PolymorphicMapType_3269| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3308_3322 f_4@@5))) (not (IsWandField_3308_3322 f_4@@5))) (<= (select (|PolymorphicMapType_3269_3308_3322#PolymorphicMapType_3269| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3269_3308_3322#PolymorphicMapType_3269| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3269) (o_2@@6 T@Ref) (f_4@@6 T@Field_3308_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3269_3308_53#PolymorphicMapType_3269| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3308_53 f_4@@6))) (not (IsWandField_3308_53 f_4@@6))) (<= (select (|PolymorphicMapType_3269_3308_53#PolymorphicMapType_3269| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3269_3308_53#PolymorphicMapType_3269| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((x@@2 Int) ) (! (= (F67 x@@2 R67) R67)
 :qid |stdinbpl.203:15|
 :skolemid |23|
 :pattern ( (F67 x@@2 R67))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3269) (o_2@@7 T@Ref) (f_4@@7 T@Field_3308_8507) ) (! (= (HasDirectPerm_3308_13348 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3269_3308_12068#PolymorphicMapType_3269| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3308_13348 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3269) (o_2@@8 T@Ref) (f_4@@8 T@Field_3308_8374) ) (! (= (HasDirectPerm_3308_8438 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3269_3308_8374#PolymorphicMapType_3269| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3308_8438 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3269) (o_2@@9 T@Ref) (f_4@@9 T@Field_3321_3322) ) (! (= (HasDirectPerm_3308_3322 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3269_3308_3322#PolymorphicMapType_3269| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3308_3322 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3269) (o_2@@10 T@Ref) (f_4@@10 T@Field_3308_53) ) (! (= (HasDirectPerm_3308_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3269_3308_53#PolymorphicMapType_3269| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3308_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3248) (ExhaleHeap@@5 T@PolymorphicMapType_3248) (Mask@@14 T@PolymorphicMapType_3269) (o_1@@0 T@Ref) (f_2@@7 T@Field_3308_8507) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_3308_13348 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@8) o_1@@0 f_2@@7) (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3248) (ExhaleHeap@@6 T@PolymorphicMapType_3248) (Mask@@15 T@PolymorphicMapType_3269) (o_1@@1 T@Ref) (f_2@@8 T@Field_3308_8374) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_3308_8438 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_3248_3308_8374#PolymorphicMapType_3248| Heap@@9) o_1@@1 f_2@@8) (select (|PolymorphicMapType_3248_3308_8374#PolymorphicMapType_3248| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_3248_3308_8374#PolymorphicMapType_3248| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3248) (ExhaleHeap@@7 T@PolymorphicMapType_3248) (Mask@@16 T@PolymorphicMapType_3269) (o_1@@2 T@Ref) (f_2@@9 T@Field_3321_3322) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_3308_3322 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| Heap@@10) o_1@@2 f_2@@9) (select (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3248) (ExhaleHeap@@8 T@PolymorphicMapType_3248) (Mask@@17 T@PolymorphicMapType_3269) (o_1@@3 T@Ref) (f_2@@10 T@Field_3308_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_3308_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| Heap@@11) o_1@@3 f_2@@10) (select (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3248) ) (!  (and (= (lemmaLEqualR67 Heap@@12) (|lemmaLEqualR67'| Heap@@12)) (dummyFunction_1883 |lemmaLEqualR67#triggerStateless|))
 :qid |stdinbpl.278:15|
 :skolemid |28|
 :pattern ( (lemmaLEqualR67 Heap@@12))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3308_8507) ) (! (= (select (|PolymorphicMapType_3269_3308_12068#PolymorphicMapType_3269| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3269_3308_12068#PolymorphicMapType_3269| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3308_8374) ) (! (= (select (|PolymorphicMapType_3269_3308_8374#PolymorphicMapType_3269| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3269_3308_8374#PolymorphicMapType_3269| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3321_3322) ) (! (= (select (|PolymorphicMapType_3269_3308_3322#PolymorphicMapType_3269| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3269_3308_3322#PolymorphicMapType_3269| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3308_53) ) (! (= (select (|PolymorphicMapType_3269_3308_53#PolymorphicMapType_3269| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3269_3308_53#PolymorphicMapType_3269| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3269) (SummandMask1 T@PolymorphicMapType_3269) (SummandMask2 T@PolymorphicMapType_3269) (o_2@@15 T@Ref) (f_4@@15 T@Field_3308_8507) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3269_3308_12068#PolymorphicMapType_3269| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3269_3308_12068#PolymorphicMapType_3269| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3269_3308_12068#PolymorphicMapType_3269| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3269_3308_12068#PolymorphicMapType_3269| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3269_3308_12068#PolymorphicMapType_3269| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3269_3308_12068#PolymorphicMapType_3269| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3269) (SummandMask1@@0 T@PolymorphicMapType_3269) (SummandMask2@@0 T@PolymorphicMapType_3269) (o_2@@16 T@Ref) (f_4@@16 T@Field_3308_8374) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3269_3308_8374#PolymorphicMapType_3269| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3269_3308_8374#PolymorphicMapType_3269| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3269_3308_8374#PolymorphicMapType_3269| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3269_3308_8374#PolymorphicMapType_3269| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3269_3308_8374#PolymorphicMapType_3269| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3269_3308_8374#PolymorphicMapType_3269| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3269) (SummandMask1@@1 T@PolymorphicMapType_3269) (SummandMask2@@1 T@PolymorphicMapType_3269) (o_2@@17 T@Ref) (f_4@@17 T@Field_3321_3322) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3269_3308_3322#PolymorphicMapType_3269| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3269_3308_3322#PolymorphicMapType_3269| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3269_3308_3322#PolymorphicMapType_3269| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3269_3308_3322#PolymorphicMapType_3269| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3269_3308_3322#PolymorphicMapType_3269| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3269_3308_3322#PolymorphicMapType_3269| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3269) (SummandMask1@@2 T@PolymorphicMapType_3269) (SummandMask2@@2 T@PolymorphicMapType_3269) (o_2@@18 T@Ref) (f_4@@18 T@Field_3308_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3269_3308_53#PolymorphicMapType_3269| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3269_3308_53#PolymorphicMapType_3269| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3269_3308_53#PolymorphicMapType_3269| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3269_3308_53#PolymorphicMapType_3269| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3269_3308_53#PolymorphicMapType_3269| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3269_3308_53#PolymorphicMapType_3269| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3248) (Mask@@18 T@PolymorphicMapType_3269) ) (!  (=> (and (state Heap@@13 Mask@@18) (< AssumeFunctionsAbove 1)) (= (lemmaLEqualR67 Heap@@13) unit))
 :qid |stdinbpl.288:15|
 :skolemid |30|
 :pattern ( (state Heap@@13 Mask@@18) (lemmaLEqualR67 Heap@@13))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3248) (Mask@@19 T@PolymorphicMapType_3269) (x@@3 Int) ) (!  (=> (state Heap@@14 Mask@@19) (= (|functionUnit'| Heap@@14 x@@3) (|functionUnit#frame| EmptyFrame x@@3)))
 :qid |stdinbpl.248:15|
 :skolemid |27|
 :pattern ( (state Heap@@14 Mask@@19) (|functionUnit'| Heap@@14 x@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3248) ) (! (dummyFunction_1883 |lemmaLEqualR67#triggerStateless|)
 :qid |stdinbpl.282:15|
 :skolemid |29|
 :pattern ( (|lemmaLEqualR67'| Heap@@15))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3248) (Mask@@20 T@PolymorphicMapType_3269) ) (!  (=> (state Heap@@16 Mask@@20) (= (|lemmaLEqualR67'| Heap@@16) (|lemmaLEqualR67#frame| EmptyFrame)))
 :qid |stdinbpl.295:15|
 :skolemid |31|
 :pattern ( (state Heap@@16 Mask@@20) (|lemmaLEqualR67'| Heap@@16))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3248) (o T@Ref) (f_3 T@Field_3308_8374) (v T@FrameType) ) (! (succHeap Heap@@17 (PolymorphicMapType_3248 (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| Heap@@17) (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| Heap@@17) (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@17) (store (|PolymorphicMapType_3248_3308_8374#PolymorphicMapType_3248| Heap@@17) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3248 (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| Heap@@17) (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| Heap@@17) (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@17) (store (|PolymorphicMapType_3248_3308_8374#PolymorphicMapType_3248| Heap@@17) o f_3 v)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3248) (o@@0 T@Ref) (f_3@@0 T@Field_3308_8507) (v@@0 T@PolymorphicMapType_3797) ) (! (succHeap Heap@@18 (PolymorphicMapType_3248 (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| Heap@@18) (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| Heap@@18) (store (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@18) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3248_3308_8374#PolymorphicMapType_3248| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3248 (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| Heap@@18) (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| Heap@@18) (store (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@18) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3248_3308_8374#PolymorphicMapType_3248| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3248) (o@@1 T@Ref) (f_3@@1 T@Field_3321_3322) (v@@1 T@Ref) ) (! (succHeap Heap@@19 (PolymorphicMapType_3248 (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| Heap@@19) (store (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| Heap@@19) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@19) (|PolymorphicMapType_3248_3308_8374#PolymorphicMapType_3248| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3248 (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| Heap@@19) (store (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| Heap@@19) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@19) (|PolymorphicMapType_3248_3308_8374#PolymorphicMapType_3248| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3248) (o@@2 T@Ref) (f_3@@2 T@Field_3308_53) (v@@2 Bool) ) (! (succHeap Heap@@20 (PolymorphicMapType_3248 (store (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| Heap@@20) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| Heap@@20) (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@20) (|PolymorphicMapType_3248_3308_8374#PolymorphicMapType_3248| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3248 (store (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| Heap@@20) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| Heap@@20) (|PolymorphicMapType_3248_3308_8551#PolymorphicMapType_3248| Heap@@20) (|PolymorphicMapType_3248_3308_8374#PolymorphicMapType_3248| Heap@@20)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_3321_3322) (Heap@@21 T@PolymorphicMapType_3248) ) (!  (=> (select (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| Heap@@21) o@@3 $allocated) (select (|PolymorphicMapType_3248_1739_53#PolymorphicMapType_3248| Heap@@21) (select (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| Heap@@21) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3248_1742_1743#PolymorphicMapType_3248| Heap@@21) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_3308_8374) (v_1@@0 T@FrameType) (q T@Field_3308_8374) (w@@0 T@FrameType) (r T@Field_3308_8374) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3308_3308 p@@1 v_1@@0 q w@@0) (InsidePredicate_3308_3308 q w@@0 r u)) (InsidePredicate_3308_3308 p@@1 v_1@@0 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3308_3308 p@@1 v_1@@0 q w@@0) (InsidePredicate_3308_3308 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3248) (Mask@@21 T@PolymorphicMapType_3269) ) (!  (=> (and (state Heap@@22 Mask@@21) (or (< AssumeFunctionsAbove 1) (|lemmaLEqualR67#trigger| EmptyFrame))) (= L67 R67))
 :qid |stdinbpl.301:15|
 :skolemid |32|
 :pattern ( (state Heap@@22 Mask@@21) (|lemmaLEqualR67'| Heap@@22))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@23 () T@PolymorphicMapType_3248)
(declare-fun x_1@0 () Int)
(declare-fun Result@0 () T@UnitDomainType)
(set-info :boogie-vc-id |lemmaLEqualR67#definedness|)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (state Heap@@23 ZeroMask) (not AssumePermUpperBound)) (=> (and (and (= AssumeFunctionsAbove 1) (= x_1@0 (F67 L67 R67))) (and (= Result@0 unit) (= (ControlFlow 0 2) (- 0 1)))) (= L67 R67)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
