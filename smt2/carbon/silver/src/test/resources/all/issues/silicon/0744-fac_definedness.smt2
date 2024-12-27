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
(declare-sort T@Field_3415_53 0)
(declare-sort T@Field_3428_3429 0)
(declare-sort T@Field_3415_8731 0)
(declare-sort T@Field_3415_8598 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3376 0)) (((PolymorphicMapType_3376 (|PolymorphicMapType_3376_3415_53#PolymorphicMapType_3376| (Array T@Ref T@Field_3415_53 Real)) (|PolymorphicMapType_3376_3415_3429#PolymorphicMapType_3376| (Array T@Ref T@Field_3428_3429 Real)) (|PolymorphicMapType_3376_3415_8598#PolymorphicMapType_3376| (Array T@Ref T@Field_3415_8598 Real)) (|PolymorphicMapType_3376_3415_12292#PolymorphicMapType_3376| (Array T@Ref T@Field_3415_8731 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3904 0)) (((PolymorphicMapType_3904 (|PolymorphicMapType_3904_3415_53#PolymorphicMapType_3904| (Array T@Ref T@Field_3415_53 Bool)) (|PolymorphicMapType_3904_3415_3429#PolymorphicMapType_3904| (Array T@Ref T@Field_3428_3429 Bool)) (|PolymorphicMapType_3904_3415_8598#PolymorphicMapType_3904| (Array T@Ref T@Field_3415_8598 Bool)) (|PolymorphicMapType_3904_3415_9711#PolymorphicMapType_3904| (Array T@Ref T@Field_3415_8731 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3355 0)) (((PolymorphicMapType_3355 (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| (Array T@Ref T@Field_3415_53 Bool)) (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| (Array T@Ref T@Field_3428_3429 T@Ref)) (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| (Array T@Ref T@Field_3415_8731 T@PolymorphicMapType_3904)) (|PolymorphicMapType_3355_3415_8598#PolymorphicMapType_3355| (Array T@Ref T@Field_3415_8598 T@FrameType)) ) ) ))
(declare-fun state (T@PolymorphicMapType_3355 T@PolymorphicMapType_3376) Bool)
(declare-fun |ge'| (T@PolymorphicMapType_3355 Int Int) Bool)
(declare-fun |ge#frame| (T@FrameType Int Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun succHeap (T@PolymorphicMapType_3355 T@PolymorphicMapType_3355) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3355 T@PolymorphicMapType_3355) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3376) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_3904)
(declare-fun dummyFunction_1731 (Bool) Bool)
(declare-fun |ge#triggerStateless| (Int Int) Bool)
(declare-fun |fac'| (T@PolymorphicMapType_3355 Int) Int)
(declare-fun dummyFunction_1409 (Int) Bool)
(declare-fun |fac#triggerStateless| (Int) Int)
(declare-fun fac (T@PolymorphicMapType_3355 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3355 T@PolymorphicMapType_3355 T@PolymorphicMapType_3376) Bool)
(declare-fun IsPredicateField_3415_8689 (T@Field_3415_8598) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3415 (T@Field_3415_8598) T@Field_3415_8731)
(declare-fun HasDirectPerm_3415_8662 (T@PolymorphicMapType_3376 T@Ref T@Field_3415_8598) Bool)
(declare-fun IsWandField_3415_10238 (T@Field_3415_8598) Bool)
(declare-fun WandMaskField_3415 (T@Field_3415_8598) T@Field_3415_8731)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun dummyHeap () T@PolymorphicMapType_3355)
(declare-fun ZeroMask () T@PolymorphicMapType_3376)
(declare-fun $allocated () T@Field_3415_53)
(declare-fun InsidePredicate_3415_3415 (T@Field_3415_8598 T@FrameType T@Field_3415_8598 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3415_13201 (T@Field_3415_8731) Bool)
(declare-fun IsWandField_3415_13217 (T@Field_3415_8731) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3415_3429 (T@Field_3428_3429) Bool)
(declare-fun IsWandField_3415_3429 (T@Field_3428_3429) Bool)
(declare-fun IsPredicateField_3415_53 (T@Field_3415_53) Bool)
(declare-fun IsWandField_3415_53 (T@Field_3415_53) Bool)
(declare-fun HasDirectPerm_3415_13572 (T@PolymorphicMapType_3376 T@Ref T@Field_3415_8731) Bool)
(declare-fun HasDirectPerm_3415_3429 (T@PolymorphicMapType_3376 T@Ref T@Field_3428_3429) Bool)
(declare-fun HasDirectPerm_3415_53 (T@PolymorphicMapType_3376 T@Ref T@Field_3415_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3376 T@PolymorphicMapType_3376 T@PolymorphicMapType_3376) Bool)
(declare-fun |fac#trigger| (T@FrameType Int) Bool)
(declare-fun ge (T@PolymorphicMapType_3355 Int Int) Bool)
(declare-fun |fac#frame| (T@FrameType Int) Int)
(assert (forall ((Heap T@PolymorphicMapType_3355) (Mask T@PolymorphicMapType_3376) (i1 Int) (i2_1 Int) ) (!  (=> (state Heap Mask) (= (|ge'| Heap i1 i2_1) (|ge#frame| EmptyFrame i1 i2_1)))
 :qid |stdinbpl.288:15|
 :skolemid |30|
 :pattern ( (state Heap Mask) (|ge'| Heap i1 i2_1))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_3355) (Heap1 T@PolymorphicMapType_3355) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3355) (Mask@@0 T@PolymorphicMapType_3376) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3355) (Heap1@@0 T@PolymorphicMapType_3355) (Heap2 T@PolymorphicMapType_3355) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3415_8731) ) (!  (not (select (|PolymorphicMapType_3904_3415_9711#PolymorphicMapType_3904| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3904_3415_9711#PolymorphicMapType_3904| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3415_8598) ) (!  (not (select (|PolymorphicMapType_3904_3415_8598#PolymorphicMapType_3904| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3904_3415_8598#PolymorphicMapType_3904| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3428_3429) ) (!  (not (select (|PolymorphicMapType_3904_3415_3429#PolymorphicMapType_3904| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3904_3415_3429#PolymorphicMapType_3904| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3415_53) ) (!  (not (select (|PolymorphicMapType_3904_3415_53#PolymorphicMapType_3904| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3904_3415_53#PolymorphicMapType_3904| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3355) (i1@@0 Int) (i2_1@@0 Int) ) (! (dummyFunction_1731 (|ge#triggerStateless| i1@@0 i2_1@@0))
 :qid |stdinbpl.275:15|
 :skolemid |28|
 :pattern ( (|ge'| Heap@@1 i1@@0 i2_1@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3355) (i Int) ) (! (dummyFunction_1409 (|fac#triggerStateless| i))
 :qid |stdinbpl.191:15|
 :skolemid |23|
 :pattern ( (|fac'| Heap@@2 i))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3355) (i@@0 Int) ) (!  (and (= (fac Heap@@3 i@@0) (|fac'| Heap@@3 i@@0)) (dummyFunction_1409 (|fac#triggerStateless| i@@0)))
 :qid |stdinbpl.187:15|
 :skolemid |22|
 :pattern ( (fac Heap@@3 i@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3355) (ExhaleHeap T@PolymorphicMapType_3355) (Mask@@1 T@PolymorphicMapType_3376) (pm_f T@Field_3415_8598) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_3415_8662 Mask@@1 null pm_f) (IsPredicateField_3415_8689 pm_f)) (= (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@4) null (PredicateMaskField_3415 pm_f)) (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| ExhaleHeap) null (PredicateMaskField_3415 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_3415_8689 pm_f) (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| ExhaleHeap) null (PredicateMaskField_3415 pm_f)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3355) (ExhaleHeap@@0 T@PolymorphicMapType_3355) (Mask@@2 T@PolymorphicMapType_3376) (pm_f@@0 T@Field_3415_8598) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_3415_8662 Mask@@2 null pm_f@@0) (IsWandField_3415_10238 pm_f@@0)) (= (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@5) null (WandMaskField_3415 pm_f@@0)) (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| ExhaleHeap@@0) null (WandMaskField_3415 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsWandField_3415_10238 pm_f@@0) (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| ExhaleHeap@@0) null (WandMaskField_3415 pm_f@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3355) (Mask@@3 T@PolymorphicMapType_3376) (i@@1 Int) ) (!  (=> (and (state Heap@@6 Mask@@3) (< AssumeFunctionsAbove 0)) (= (fac Heap@@6 i@@1) (ite (<= i@@1 1) 1 (* i@@1 (|fac'| Heap@@6 (- i@@1 1))))))
 :qid |stdinbpl.197:15|
 :skolemid |24|
 :pattern ( (state Heap@@6 Mask@@3) (fac Heap@@6 i@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3355) (ExhaleHeap@@1 T@PolymorphicMapType_3355) (Mask@@4 T@PolymorphicMapType_3376) (pm_f@@1 T@Field_3415_8598) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_3415_8662 Mask@@4 null pm_f@@1) (IsPredicateField_3415_8689 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3415_53) ) (!  (=> (select (|PolymorphicMapType_3904_3415_53#PolymorphicMapType_3904| (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@7) null (PredicateMaskField_3415 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| Heap@@7) o2 f_2) (select (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3428_3429) ) (!  (=> (select (|PolymorphicMapType_3904_3415_3429#PolymorphicMapType_3904| (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@7) null (PredicateMaskField_3415 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| Heap@@7) o2@@0 f_2@@0) (select (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_3415_8598) ) (!  (=> (select (|PolymorphicMapType_3904_3415_8598#PolymorphicMapType_3904| (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@7) null (PredicateMaskField_3415 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3355_3415_8598#PolymorphicMapType_3355| Heap@@7) o2@@1 f_2@@1) (select (|PolymorphicMapType_3355_3415_8598#PolymorphicMapType_3355| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3355_3415_8598#PolymorphicMapType_3355| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3415_8731) ) (!  (=> (select (|PolymorphicMapType_3904_3415_9711#PolymorphicMapType_3904| (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@7) null (PredicateMaskField_3415 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@7) o2@@2 f_2@@2) (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@4) (IsPredicateField_3415_8689 pm_f@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3355) (ExhaleHeap@@2 T@PolymorphicMapType_3355) (Mask@@5 T@PolymorphicMapType_3376) (pm_f@@2 T@Field_3415_8598) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_3415_8662 Mask@@5 null pm_f@@2) (IsWandField_3415_10238 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3415_53) ) (!  (=> (select (|PolymorphicMapType_3904_3415_53#PolymorphicMapType_3904| (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@8) null (WandMaskField_3415 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| Heap@@8) o2@@3 f_2@@3) (select (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3428_3429) ) (!  (=> (select (|PolymorphicMapType_3904_3415_3429#PolymorphicMapType_3904| (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@8) null (WandMaskField_3415 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| Heap@@8) o2@@4 f_2@@4) (select (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3415_8598) ) (!  (=> (select (|PolymorphicMapType_3904_3415_8598#PolymorphicMapType_3904| (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@8) null (WandMaskField_3415 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3355_3415_8598#PolymorphicMapType_3355| Heap@@8) o2@@5 f_2@@5) (select (|PolymorphicMapType_3355_3415_8598#PolymorphicMapType_3355| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3355_3415_8598#PolymorphicMapType_3355| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_3415_8731) ) (!  (=> (select (|PolymorphicMapType_3904_3415_9711#PolymorphicMapType_3904| (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@8) null (WandMaskField_3415 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@8) o2@@6 f_2@@6) (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@5) (IsWandField_3415_10238 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3355) (ExhaleHeap@@3 T@PolymorphicMapType_3355) (Mask@@6 T@PolymorphicMapType_3376) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@6) (=> (select (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| Heap@@9) o_1 $allocated) (select (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@6) (select (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_3415_8598) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3415_3415 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3415_3415 p v_1 p w))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3355) (ExhaleHeap@@4 T@PolymorphicMapType_3355) (Mask@@7 T@PolymorphicMapType_3376) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@7) (succHeap Heap@@10 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3376) (o_2@@3 T@Ref) (f_4@@3 T@Field_3415_8731) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3376_3415_12292#PolymorphicMapType_3376| Mask@@8) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3415_13201 f_4@@3))) (not (IsWandField_3415_13217 f_4@@3))) (<= (select (|PolymorphicMapType_3376_3415_12292#PolymorphicMapType_3376| Mask@@8) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3376_3415_12292#PolymorphicMapType_3376| Mask@@8) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3376) (o_2@@4 T@Ref) (f_4@@4 T@Field_3415_8598) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3376_3415_8598#PolymorphicMapType_3376| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3415_8689 f_4@@4))) (not (IsWandField_3415_10238 f_4@@4))) (<= (select (|PolymorphicMapType_3376_3415_8598#PolymorphicMapType_3376| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3376_3415_8598#PolymorphicMapType_3376| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3376) (o_2@@5 T@Ref) (f_4@@5 T@Field_3428_3429) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_3376_3415_3429#PolymorphicMapType_3376| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3415_3429 f_4@@5))) (not (IsWandField_3415_3429 f_4@@5))) (<= (select (|PolymorphicMapType_3376_3415_3429#PolymorphicMapType_3376| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_3376_3415_3429#PolymorphicMapType_3376| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3376) (o_2@@6 T@Ref) (f_4@@6 T@Field_3415_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_3376_3415_53#PolymorphicMapType_3376| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3415_53 f_4@@6))) (not (IsWandField_3415_53 f_4@@6))) (<= (select (|PolymorphicMapType_3376_3415_53#PolymorphicMapType_3376| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_3376_3415_53#PolymorphicMapType_3376| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3376) (o_2@@7 T@Ref) (f_4@@7 T@Field_3415_8731) ) (! (= (HasDirectPerm_3415_13572 Mask@@12 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3376_3415_12292#PolymorphicMapType_3376| Mask@@12) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3415_13572 Mask@@12 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3376) (o_2@@8 T@Ref) (f_4@@8 T@Field_3415_8598) ) (! (= (HasDirectPerm_3415_8662 Mask@@13 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3376_3415_8598#PolymorphicMapType_3376| Mask@@13) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3415_8662 Mask@@13 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3376) (o_2@@9 T@Ref) (f_4@@9 T@Field_3428_3429) ) (! (= (HasDirectPerm_3415_3429 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3376_3415_3429#PolymorphicMapType_3376| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3415_3429 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_3376) (o_2@@10 T@Ref) (f_4@@10 T@Field_3415_53) ) (! (= (HasDirectPerm_3415_53 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3376_3415_53#PolymorphicMapType_3376| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3415_53 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3355) (ExhaleHeap@@5 T@PolymorphicMapType_3355) (Mask@@16 T@PolymorphicMapType_3376) (o_1@@0 T@Ref) (f_2@@7 T@Field_3415_8731) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_3415_13572 Mask@@16 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@11) o_1@@0 f_2@@7) (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3355) (ExhaleHeap@@6 T@PolymorphicMapType_3355) (Mask@@17 T@PolymorphicMapType_3376) (o_1@@1 T@Ref) (f_2@@8 T@Field_3415_8598) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_3415_8662 Mask@@17 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_3355_3415_8598#PolymorphicMapType_3355| Heap@@12) o_1@@1 f_2@@8) (select (|PolymorphicMapType_3355_3415_8598#PolymorphicMapType_3355| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_3355_3415_8598#PolymorphicMapType_3355| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3355) (ExhaleHeap@@7 T@PolymorphicMapType_3355) (Mask@@18 T@PolymorphicMapType_3376) (o_1@@2 T@Ref) (f_2@@9 T@Field_3428_3429) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_3415_3429 Mask@@18 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| Heap@@13) o_1@@2 f_2@@9) (select (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3355) (ExhaleHeap@@8 T@PolymorphicMapType_3355) (Mask@@19 T@PolymorphicMapType_3376) (o_1@@3 T@Ref) (f_2@@10 T@Field_3415_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_3415_53 Mask@@19 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| Heap@@14) o_1@@3 f_2@@10) (select (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3415_8731) ) (! (= (select (|PolymorphicMapType_3376_3415_12292#PolymorphicMapType_3376| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3376_3415_12292#PolymorphicMapType_3376| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3415_8598) ) (! (= (select (|PolymorphicMapType_3376_3415_8598#PolymorphicMapType_3376| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3376_3415_8598#PolymorphicMapType_3376| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3428_3429) ) (! (= (select (|PolymorphicMapType_3376_3415_3429#PolymorphicMapType_3376| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3376_3415_3429#PolymorphicMapType_3376| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3415_53) ) (! (= (select (|PolymorphicMapType_3376_3415_53#PolymorphicMapType_3376| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3376_3415_53#PolymorphicMapType_3376| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3376) (SummandMask1 T@PolymorphicMapType_3376) (SummandMask2 T@PolymorphicMapType_3376) (o_2@@15 T@Ref) (f_4@@15 T@Field_3415_8731) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3376_3415_12292#PolymorphicMapType_3376| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3376_3415_12292#PolymorphicMapType_3376| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3376_3415_12292#PolymorphicMapType_3376| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3376_3415_12292#PolymorphicMapType_3376| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3376_3415_12292#PolymorphicMapType_3376| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3376_3415_12292#PolymorphicMapType_3376| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3376) (SummandMask1@@0 T@PolymorphicMapType_3376) (SummandMask2@@0 T@PolymorphicMapType_3376) (o_2@@16 T@Ref) (f_4@@16 T@Field_3415_8598) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3376_3415_8598#PolymorphicMapType_3376| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3376_3415_8598#PolymorphicMapType_3376| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3376_3415_8598#PolymorphicMapType_3376| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3376_3415_8598#PolymorphicMapType_3376| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3376_3415_8598#PolymorphicMapType_3376| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3376_3415_8598#PolymorphicMapType_3376| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3376) (SummandMask1@@1 T@PolymorphicMapType_3376) (SummandMask2@@1 T@PolymorphicMapType_3376) (o_2@@17 T@Ref) (f_4@@17 T@Field_3428_3429) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3376_3415_3429#PolymorphicMapType_3376| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3376_3415_3429#PolymorphicMapType_3376| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3376_3415_3429#PolymorphicMapType_3376| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3376_3415_3429#PolymorphicMapType_3376| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3376_3415_3429#PolymorphicMapType_3376| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3376_3415_3429#PolymorphicMapType_3376| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3376) (SummandMask1@@2 T@PolymorphicMapType_3376) (SummandMask2@@2 T@PolymorphicMapType_3376) (o_2@@18 T@Ref) (f_4@@18 T@Field_3415_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3376_3415_53#PolymorphicMapType_3376| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3376_3415_53#PolymorphicMapType_3376| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3376_3415_53#PolymorphicMapType_3376| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3376_3415_53#PolymorphicMapType_3376| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3376_3415_53#PolymorphicMapType_3376| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3376_3415_53#PolymorphicMapType_3376| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3355) (Mask@@20 T@PolymorphicMapType_3376) (i@@2 Int) ) (!  (=> (and (state Heap@@15 Mask@@20) (or (< AssumeFunctionsAbove 0) (|fac#trigger| EmptyFrame i@@2))) (ge Heap@@15 (|fac'| Heap@@15 i@@2) 1))
 :qid |stdinbpl.210:15|
 :skolemid |26|
 :pattern ( (state Heap@@15 Mask@@20) (|fac'| Heap@@15 i@@2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3355) (Mask@@21 T@PolymorphicMapType_3376) (i@@3 Int) ) (!  (=> (state Heap@@16 Mask@@21) (= (|fac'| Heap@@16 i@@3) (|fac#frame| EmptyFrame i@@3)))
 :qid |stdinbpl.204:15|
 :skolemid |25|
 :pattern ( (state Heap@@16 Mask@@21) (|fac'| Heap@@16 i@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3355) (o T@Ref) (f_3 T@Field_3415_8598) (v T@FrameType) ) (! (succHeap Heap@@17 (PolymorphicMapType_3355 (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| Heap@@17) (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| Heap@@17) (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@17) (store (|PolymorphicMapType_3355_3415_8598#PolymorphicMapType_3355| Heap@@17) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3355 (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| Heap@@17) (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| Heap@@17) (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@17) (store (|PolymorphicMapType_3355_3415_8598#PolymorphicMapType_3355| Heap@@17) o f_3 v)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3355) (o@@0 T@Ref) (f_3@@0 T@Field_3415_8731) (v@@0 T@PolymorphicMapType_3904) ) (! (succHeap Heap@@18 (PolymorphicMapType_3355 (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| Heap@@18) (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| Heap@@18) (store (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@18) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3355_3415_8598#PolymorphicMapType_3355| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3355 (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| Heap@@18) (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| Heap@@18) (store (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@18) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3355_3415_8598#PolymorphicMapType_3355| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3355) (o@@1 T@Ref) (f_3@@1 T@Field_3428_3429) (v@@1 T@Ref) ) (! (succHeap Heap@@19 (PolymorphicMapType_3355 (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| Heap@@19) (store (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| Heap@@19) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@19) (|PolymorphicMapType_3355_3415_8598#PolymorphicMapType_3355| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3355 (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| Heap@@19) (store (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| Heap@@19) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@19) (|PolymorphicMapType_3355_3415_8598#PolymorphicMapType_3355| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3355) (o@@2 T@Ref) (f_3@@2 T@Field_3415_53) (v@@2 Bool) ) (! (succHeap Heap@@20 (PolymorphicMapType_3355 (store (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| Heap@@20) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| Heap@@20) (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@20) (|PolymorphicMapType_3355_3415_8598#PolymorphicMapType_3355| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3355 (store (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| Heap@@20) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| Heap@@20) (|PolymorphicMapType_3355_3415_8775#PolymorphicMapType_3355| Heap@@20) (|PolymorphicMapType_3355_3415_8598#PolymorphicMapType_3355| Heap@@20)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_3428_3429) (Heap@@21 T@PolymorphicMapType_3355) ) (!  (=> (select (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| Heap@@21) o@@3 $allocated) (select (|PolymorphicMapType_3355_1793_53#PolymorphicMapType_3355| Heap@@21) (select (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| Heap@@21) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3355_1796_1797#PolymorphicMapType_3355| Heap@@21) o@@3 f))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3355) (Mask@@22 T@PolymorphicMapType_3376) (i1@@1 Int) (i2_1@@1 Int) ) (!  (=> (and (state Heap@@22 Mask@@22) (< AssumeFunctionsAbove 1)) (= (ge Heap@@22 i1@@1 i2_1@@1) (>= i1@@1 i2_1@@1)))
 :qid |stdinbpl.281:15|
 :skolemid |29|
 :pattern ( (state Heap@@22 Mask@@22) (ge Heap@@22 i1@@1 i2_1@@1))
)))
(assert (forall ((p@@1 T@Field_3415_8598) (v_1@@0 T@FrameType) (q T@Field_3415_8598) (w@@0 T@FrameType) (r T@Field_3415_8598) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3415_3415 p@@1 v_1@@0 q w@@0) (InsidePredicate_3415_3415 q w@@0 r u)) (InsidePredicate_3415_3415 p@@1 v_1@@0 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3415_3415 p@@1 v_1@@0 q w@@0) (InsidePredicate_3415_3415 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@23 T@PolymorphicMapType_3355) (i1@@2 Int) (i2_1@@2 Int) ) (!  (and (= (ge Heap@@23 i1@@2 i2_1@@2) (|ge'| Heap@@23 i1@@2 i2_1@@2)) (dummyFunction_1731 (|ge#triggerStateless| i1@@2 i2_1@@2)))
 :qid |stdinbpl.271:15|
 :skolemid |27|
 :pattern ( (ge Heap@@23 i1@@2 i2_1@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@24 () T@PolymorphicMapType_3355)
(declare-fun Result@0 () Int)
(declare-fun i@@4 () Int)
(set-info :boogie-vc-id |fac#definedness|)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon10_Else_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (ge Heap@@24 Result@0 1))))
(let ((anon10_Then_correct true))
(let ((anon5_correct  (=> (= Result@0 (ite (<= i@@4 1) 1 (* i@@4 (fac Heap@@24 (- i@@4 1))))) (and (=> (= (ControlFlow 0 5) 2) anon10_Then_correct) (=> (= (ControlFlow 0 5) 4) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (and (|fac#trigger| EmptyFrame (- i@@4 1)) (= (ControlFlow 0 7) 5)) anon5_correct)))
(let ((anon8_Then_correct  (=> (and (<= i@@4 1) (= (ControlFlow 0 6) 5)) anon5_correct)))
(let ((anon9_Then_correct true))
(let ((anon8_Else_correct  (=> (< 1 i@@4) (and (=> (= (ControlFlow 0 8) 1) anon9_Then_correct) (=> (= (ControlFlow 0 8) 7) anon9_Else_correct)))))
(let ((anon0_correct  (=> (state Heap@@24 ZeroMask) (=> (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 0)) (and (=> (= (ControlFlow 0 9) 6) anon8_Then_correct) (=> (= (ControlFlow 0 9) 8) anon8_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 9) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid