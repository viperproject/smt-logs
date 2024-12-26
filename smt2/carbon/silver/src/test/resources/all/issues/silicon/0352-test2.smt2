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
(declare-sort T@Field_4337_53 0)
(declare-sort T@Field_4350_4351 0)
(declare-sort T@Field_4337_11715 0)
(declare-sort T@Field_4337_11582 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4298 0)) (((PolymorphicMapType_4298 (|PolymorphicMapType_4298_4337_53#PolymorphicMapType_4298| (Array T@Ref T@Field_4337_53 Real)) (|PolymorphicMapType_4298_4337_4351#PolymorphicMapType_4298| (Array T@Ref T@Field_4350_4351 Real)) (|PolymorphicMapType_4298_4337_11582#PolymorphicMapType_4298| (Array T@Ref T@Field_4337_11582 Real)) (|PolymorphicMapType_4298_4337_15276#PolymorphicMapType_4298| (Array T@Ref T@Field_4337_11715 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4826 0)) (((PolymorphicMapType_4826 (|PolymorphicMapType_4826_4337_53#PolymorphicMapType_4826| (Array T@Ref T@Field_4337_53 Bool)) (|PolymorphicMapType_4826_4337_4351#PolymorphicMapType_4826| (Array T@Ref T@Field_4350_4351 Bool)) (|PolymorphicMapType_4826_4337_11582#PolymorphicMapType_4826| (Array T@Ref T@Field_4337_11582 Bool)) (|PolymorphicMapType_4826_4337_12695#PolymorphicMapType_4826| (Array T@Ref T@Field_4337_11715 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4277 0)) (((PolymorphicMapType_4277 (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| (Array T@Ref T@Field_4337_53 Bool)) (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| (Array T@Ref T@Field_4350_4351 T@Ref)) (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| (Array T@Ref T@Field_4337_11715 T@PolymorphicMapType_4826)) (|PolymorphicMapType_4277_4337_11582#PolymorphicMapType_4277| (Array T@Ref T@Field_4337_11582 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_4277 T@PolymorphicMapType_4277) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4277 T@PolymorphicMapType_4277) Bool)
(declare-fun state (T@PolymorphicMapType_4277 T@PolymorphicMapType_4298) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4298) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4826)
(declare-fun |foo3'| (T@PolymorphicMapType_4277 Int) Int)
(declare-fun dummyFunction_1312 (Int) Bool)
(declare-fun |foo3#triggerStateless| (Int) Int)
(declare-fun foo3_1 (T@PolymorphicMapType_4277 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4277 T@PolymorphicMapType_4277 T@PolymorphicMapType_4298) Bool)
(declare-fun IsPredicateField_4337_11673 (T@Field_4337_11582) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4337 (T@Field_4337_11582) T@Field_4337_11715)
(declare-fun HasDirectPerm_4337_11646 (T@PolymorphicMapType_4298 T@Ref T@Field_4337_11582) Bool)
(declare-fun IsWandField_4337_13222 (T@Field_4337_11582) Bool)
(declare-fun WandMaskField_4337 (T@Field_4337_11582) T@Field_4337_11715)
(declare-fun dummyHeap () T@PolymorphicMapType_4277)
(declare-fun ZeroMask () T@PolymorphicMapType_4298)
(declare-fun $allocated () T@Field_4337_53)
(declare-fun InsidePredicate_4337_4337 (T@Field_4337_11582 T@FrameType T@Field_4337_11582 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4337_16185 (T@Field_4337_11715) Bool)
(declare-fun IsWandField_4337_16201 (T@Field_4337_11715) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4337_4351 (T@Field_4350_4351) Bool)
(declare-fun IsWandField_4337_4351 (T@Field_4350_4351) Bool)
(declare-fun IsPredicateField_4337_53 (T@Field_4337_53) Bool)
(declare-fun IsWandField_4337_53 (T@Field_4337_53) Bool)
(declare-fun HasDirectPerm_4337_16556 (T@PolymorphicMapType_4298 T@Ref T@Field_4337_11715) Bool)
(declare-fun HasDirectPerm_4337_4351 (T@PolymorphicMapType_4298 T@Ref T@Field_4350_4351) Bool)
(declare-fun HasDirectPerm_4337_53 (T@PolymorphicMapType_4298 T@Ref T@Field_4337_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun foo_2 (T@PolymorphicMapType_4277) Int)
(declare-fun |foo'| (T@PolymorphicMapType_4277) Int)
(declare-fun |foo#triggerStateless| () Int)
(declare-fun bar (T@PolymorphicMapType_4277) Int)
(declare-fun |bar'| (T@PolymorphicMapType_4277) Int)
(declare-fun |bar#triggerStateless| () Int)
(declare-fun foo2_1 (T@PolymorphicMapType_4277) Int)
(declare-fun |foo2'| (T@PolymorphicMapType_4277) Int)
(declare-fun |foo2#triggerStateless| () Int)
(declare-fun sumMask (T@PolymorphicMapType_4298 T@PolymorphicMapType_4298 T@PolymorphicMapType_4298) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |foo3#frame| (T@FrameType Int) Int)
(declare-fun |foo#frame| (T@FrameType) Int)
(declare-fun |bar#frame| (T@FrameType) Int)
(declare-fun |foo2#frame| (T@FrameType) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_4277) (Heap1 T@PolymorphicMapType_4277) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4277) (Mask T@PolymorphicMapType_4298) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4277) (Heap1@@0 T@PolymorphicMapType_4277) (Heap2 T@PolymorphicMapType_4277) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4337_11715) ) (!  (not (select (|PolymorphicMapType_4826_4337_12695#PolymorphicMapType_4826| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4826_4337_12695#PolymorphicMapType_4826| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4337_11582) ) (!  (not (select (|PolymorphicMapType_4826_4337_11582#PolymorphicMapType_4826| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4826_4337_11582#PolymorphicMapType_4826| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4350_4351) ) (!  (not (select (|PolymorphicMapType_4826_4337_4351#PolymorphicMapType_4826| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4826_4337_4351#PolymorphicMapType_4826| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4337_53) ) (!  (not (select (|PolymorphicMapType_4826_4337_53#PolymorphicMapType_4826| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4826_4337_53#PolymorphicMapType_4826| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4277) (i Int) ) (! (dummyFunction_1312 (|foo3#triggerStateless| i))
 :qid |stdinbpl.343:15|
 :skolemid |35|
 :pattern ( (|foo3'| Heap@@0 i))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4277) (i@@0 Int) ) (!  (and (= (foo3_1 Heap@@1 i@@0) (|foo3'| Heap@@1 i@@0)) (dummyFunction_1312 (|foo3#triggerStateless| i@@0)))
 :qid |stdinbpl.339:15|
 :skolemid |34|
 :pattern ( (foo3_1 Heap@@1 i@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4277) (ExhaleHeap T@PolymorphicMapType_4277) (Mask@@0 T@PolymorphicMapType_4298) (pm_f T@Field_4337_11582) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4337_11646 Mask@@0 null pm_f) (IsPredicateField_4337_11673 pm_f)) (= (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@2) null (PredicateMaskField_4337 pm_f)) (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| ExhaleHeap) null (PredicateMaskField_4337 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_4337_11673 pm_f) (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| ExhaleHeap) null (PredicateMaskField_4337 pm_f)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4277) (ExhaleHeap@@0 T@PolymorphicMapType_4277) (Mask@@1 T@PolymorphicMapType_4298) (pm_f@@0 T@Field_4337_11582) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4337_11646 Mask@@1 null pm_f@@0) (IsWandField_4337_13222 pm_f@@0)) (= (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@3) null (WandMaskField_4337 pm_f@@0)) (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| ExhaleHeap@@0) null (WandMaskField_4337 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_4337_13222 pm_f@@0) (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| ExhaleHeap@@0) null (WandMaskField_4337 pm_f@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4277) (ExhaleHeap@@1 T@PolymorphicMapType_4277) (Mask@@2 T@PolymorphicMapType_4298) (pm_f@@1 T@Field_4337_11582) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4337_11646 Mask@@2 null pm_f@@1) (IsPredicateField_4337_11673 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_4337_53) ) (!  (=> (select (|PolymorphicMapType_4826_4337_53#PolymorphicMapType_4826| (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@4) null (PredicateMaskField_4337 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| Heap@@4) o2 f_2) (select (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_4350_4351) ) (!  (=> (select (|PolymorphicMapType_4826_4337_4351#PolymorphicMapType_4826| (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@4) null (PredicateMaskField_4337 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_4337_11582) ) (!  (=> (select (|PolymorphicMapType_4826_4337_11582#PolymorphicMapType_4826| (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@4) null (PredicateMaskField_4337 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_4277_4337_11582#PolymorphicMapType_4277| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_4277_4337_11582#PolymorphicMapType_4277| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4277_4337_11582#PolymorphicMapType_4277| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_4337_11715) ) (!  (=> (select (|PolymorphicMapType_4826_4337_12695#PolymorphicMapType_4826| (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@4) null (PredicateMaskField_4337 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4337_11673 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4277) (ExhaleHeap@@2 T@PolymorphicMapType_4277) (Mask@@3 T@PolymorphicMapType_4298) (pm_f@@2 T@Field_4337_11582) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4337_11646 Mask@@3 null pm_f@@2) (IsWandField_4337_13222 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_4337_53) ) (!  (=> (select (|PolymorphicMapType_4826_4337_53#PolymorphicMapType_4826| (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@5) null (WandMaskField_4337 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| Heap@@5) o2@@3 f_2@@3) (select (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_4350_4351) ) (!  (=> (select (|PolymorphicMapType_4826_4337_4351#PolymorphicMapType_4826| (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@5) null (WandMaskField_4337 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_4337_11582) ) (!  (=> (select (|PolymorphicMapType_4826_4337_11582#PolymorphicMapType_4826| (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@5) null (WandMaskField_4337 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_4277_4337_11582#PolymorphicMapType_4277| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_4277_4337_11582#PolymorphicMapType_4277| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4277_4337_11582#PolymorphicMapType_4277| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_4337_11715) ) (!  (=> (select (|PolymorphicMapType_4826_4337_12695#PolymorphicMapType_4826| (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@5) null (WandMaskField_4337 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_4337_13222 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4277) (ExhaleHeap@@3 T@PolymorphicMapType_4277) (Mask@@4 T@PolymorphicMapType_4298) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| Heap@@6) o_1 $allocated) (select (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_4337_11582) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4337_4337 p v_1 p w))
 :qid |stdinbpl.177:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4337_4337 p v_1 p w))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4277) (ExhaleHeap@@4 T@PolymorphicMapType_4277) (Mask@@5 T@PolymorphicMapType_4298) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@7 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_4298) (o_2@@3 T@Ref) (f_4@@3 T@Field_4337_11715) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_4298_4337_15276#PolymorphicMapType_4298| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4337_16185 f_4@@3))) (not (IsWandField_4337_16201 f_4@@3))) (<= (select (|PolymorphicMapType_4298_4337_15276#PolymorphicMapType_4298| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_4298_4337_15276#PolymorphicMapType_4298| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_4298) (o_2@@4 T@Ref) (f_4@@4 T@Field_4337_11582) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_4298_4337_11582#PolymorphicMapType_4298| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4337_11673 f_4@@4))) (not (IsWandField_4337_13222 f_4@@4))) (<= (select (|PolymorphicMapType_4298_4337_11582#PolymorphicMapType_4298| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_4298_4337_11582#PolymorphicMapType_4298| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4298) (o_2@@5 T@Ref) (f_4@@5 T@Field_4350_4351) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4298_4337_4351#PolymorphicMapType_4298| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4337_4351 f_4@@5))) (not (IsWandField_4337_4351 f_4@@5))) (<= (select (|PolymorphicMapType_4298_4337_4351#PolymorphicMapType_4298| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4298_4337_4351#PolymorphicMapType_4298| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4298) (o_2@@6 T@Ref) (f_4@@6 T@Field_4337_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_4298_4337_53#PolymorphicMapType_4298| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4337_53 f_4@@6))) (not (IsWandField_4337_53 f_4@@6))) (<= (select (|PolymorphicMapType_4298_4337_53#PolymorphicMapType_4298| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_4298_4337_53#PolymorphicMapType_4298| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4298) (o_2@@7 T@Ref) (f_4@@7 T@Field_4337_11715) ) (! (= (HasDirectPerm_4337_16556 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_4298_4337_15276#PolymorphicMapType_4298| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4337_16556 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4298) (o_2@@8 T@Ref) (f_4@@8 T@Field_4337_11582) ) (! (= (HasDirectPerm_4337_11646 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_4298_4337_11582#PolymorphicMapType_4298| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4337_11646 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4298) (o_2@@9 T@Ref) (f_4@@9 T@Field_4350_4351) ) (! (= (HasDirectPerm_4337_4351 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4298_4337_4351#PolymorphicMapType_4298| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4337_4351 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4298) (o_2@@10 T@Ref) (f_4@@10 T@Field_4337_53) ) (! (= (HasDirectPerm_4337_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4298_4337_53#PolymorphicMapType_4298| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4337_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.165:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4277) (ExhaleHeap@@5 T@PolymorphicMapType_4277) (Mask@@14 T@PolymorphicMapType_4298) (o_1@@0 T@Ref) (f_2@@7 T@Field_4337_11715) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_4337_16556 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@8) o_1@@0 f_2@@7) (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4277) (ExhaleHeap@@6 T@PolymorphicMapType_4277) (Mask@@15 T@PolymorphicMapType_4298) (o_1@@1 T@Ref) (f_2@@8 T@Field_4337_11582) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_4337_11646 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_4277_4337_11582#PolymorphicMapType_4277| Heap@@9) o_1@@1 f_2@@8) (select (|PolymorphicMapType_4277_4337_11582#PolymorphicMapType_4277| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_4277_4337_11582#PolymorphicMapType_4277| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4277) (ExhaleHeap@@7 T@PolymorphicMapType_4277) (Mask@@16 T@PolymorphicMapType_4298) (o_1@@2 T@Ref) (f_2@@9 T@Field_4350_4351) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_4337_4351 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| Heap@@10) o_1@@2 f_2@@9) (select (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4277) (ExhaleHeap@@8 T@PolymorphicMapType_4277) (Mask@@17 T@PolymorphicMapType_4298) (o_1@@3 T@Ref) (f_2@@10 T@Field_4337_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_4337_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| Heap@@11) o_1@@3 f_2@@10) (select (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4277) ) (!  (and (= (foo_2 Heap@@12) (|foo'| Heap@@12)) (dummyFunction_1312 |foo#triggerStateless|))
 :qid |stdinbpl.189:15|
 :skolemid |22|
 :pattern ( (foo_2 Heap@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4277) ) (!  (and (= (bar Heap@@13) (|bar'| Heap@@13)) (dummyFunction_1312 |bar#triggerStateless|))
 :qid |stdinbpl.239:15|
 :skolemid |26|
 :pattern ( (bar Heap@@13))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4277) ) (!  (and (= (foo2_1 Heap@@14) (|foo2'| Heap@@14)) (dummyFunction_1312 |foo2#triggerStateless|))
 :qid |stdinbpl.289:15|
 :skolemid |30|
 :pattern ( (foo2_1 Heap@@14))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_4337_11715) ) (! (= (select (|PolymorphicMapType_4298_4337_15276#PolymorphicMapType_4298| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4298_4337_15276#PolymorphicMapType_4298| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_4337_11582) ) (! (= (select (|PolymorphicMapType_4298_4337_11582#PolymorphicMapType_4298| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4298_4337_11582#PolymorphicMapType_4298| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_4350_4351) ) (! (= (select (|PolymorphicMapType_4298_4337_4351#PolymorphicMapType_4298| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4298_4337_4351#PolymorphicMapType_4298| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4337_53) ) (! (= (select (|PolymorphicMapType_4298_4337_53#PolymorphicMapType_4298| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4298_4337_53#PolymorphicMapType_4298| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4298) (SummandMask1 T@PolymorphicMapType_4298) (SummandMask2 T@PolymorphicMapType_4298) (o_2@@15 T@Ref) (f_4@@15 T@Field_4337_11715) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4298_4337_15276#PolymorphicMapType_4298| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_4298_4337_15276#PolymorphicMapType_4298| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_4298_4337_15276#PolymorphicMapType_4298| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4298_4337_15276#PolymorphicMapType_4298| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4298_4337_15276#PolymorphicMapType_4298| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4298_4337_15276#PolymorphicMapType_4298| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4298) (SummandMask1@@0 T@PolymorphicMapType_4298) (SummandMask2@@0 T@PolymorphicMapType_4298) (o_2@@16 T@Ref) (f_4@@16 T@Field_4337_11582) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4298_4337_11582#PolymorphicMapType_4298| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_4298_4337_11582#PolymorphicMapType_4298| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_4298_4337_11582#PolymorphicMapType_4298| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4298_4337_11582#PolymorphicMapType_4298| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4298_4337_11582#PolymorphicMapType_4298| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4298_4337_11582#PolymorphicMapType_4298| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4298) (SummandMask1@@1 T@PolymorphicMapType_4298) (SummandMask2@@1 T@PolymorphicMapType_4298) (o_2@@17 T@Ref) (f_4@@17 T@Field_4350_4351) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4298_4337_4351#PolymorphicMapType_4298| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_4298_4337_4351#PolymorphicMapType_4298| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_4298_4337_4351#PolymorphicMapType_4298| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4298_4337_4351#PolymorphicMapType_4298| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4298_4337_4351#PolymorphicMapType_4298| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4298_4337_4351#PolymorphicMapType_4298| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4298) (SummandMask1@@2 T@PolymorphicMapType_4298) (SummandMask2@@2 T@PolymorphicMapType_4298) (o_2@@18 T@Ref) (f_4@@18 T@Field_4337_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4298_4337_53#PolymorphicMapType_4298| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_4298_4337_53#PolymorphicMapType_4298| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_4298_4337_53#PolymorphicMapType_4298| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4298_4337_53#PolymorphicMapType_4298| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4298_4337_53#PolymorphicMapType_4298| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4298_4337_53#PolymorphicMapType_4298| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4277) (Mask@@18 T@PolymorphicMapType_4298) (i@@1 Int) ) (!  (=> (and (state Heap@@15 Mask@@18) (< AssumeFunctionsAbove 0)) (=> (< 0 i@@1) (= (foo3_1 Heap@@15 i@@1) (ite (< 0 i@@1) 1 (+ 1 (|foo3'| Heap@@15 i@@1))))))
 :qid |stdinbpl.349:15|
 :skolemid |36|
 :pattern ( (state Heap@@15 Mask@@18) (foo3_1 Heap@@15 i@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4277) (Mask@@19 T@PolymorphicMapType_4298) (i@@2 Int) ) (!  (=> (state Heap@@16 Mask@@19) (= (|foo3'| Heap@@16 i@@2) (|foo3#frame| EmptyFrame i@@2)))
 :qid |stdinbpl.356:15|
 :skolemid |37|
 :pattern ( (state Heap@@16 Mask@@19) (|foo3'| Heap@@16 i@@2))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4277) ) (! (dummyFunction_1312 |foo#triggerStateless|)
 :qid |stdinbpl.193:15|
 :skolemid |23|
 :pattern ( (|foo'| Heap@@17))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4277) ) (! (dummyFunction_1312 |bar#triggerStateless|)
 :qid |stdinbpl.243:15|
 :skolemid |27|
 :pattern ( (|bar'| Heap@@18))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4277) ) (! (dummyFunction_1312 |foo2#triggerStateless|)
 :qid |stdinbpl.293:15|
 :skolemid |31|
 :pattern ( (|foo2'| Heap@@19))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4277) (Mask@@20 T@PolymorphicMapType_4298) ) (!  (=> (state Heap@@20 Mask@@20) (= (|foo'| Heap@@20) (|foo#frame| EmptyFrame)))
 :qid |stdinbpl.206:15|
 :skolemid |25|
 :pattern ( (state Heap@@20 Mask@@20) (|foo'| Heap@@20))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4277) (Mask@@21 T@PolymorphicMapType_4298) ) (!  (=> (state Heap@@21 Mask@@21) (= (|bar'| Heap@@21) (|bar#frame| EmptyFrame)))
 :qid |stdinbpl.256:15|
 :skolemid |29|
 :pattern ( (state Heap@@21 Mask@@21) (|bar'| Heap@@21))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4277) (Mask@@22 T@PolymorphicMapType_4298) ) (!  (=> (state Heap@@22 Mask@@22) (= (|foo2'| Heap@@22) (|foo2#frame| EmptyFrame)))
 :qid |stdinbpl.306:15|
 :skolemid |33|
 :pattern ( (state Heap@@22 Mask@@22) (|foo2'| Heap@@22))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4277) (o T@Ref) (f_3 T@Field_4337_11582) (v T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_4277 (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| Heap@@23) (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| Heap@@23) (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@23) (store (|PolymorphicMapType_4277_4337_11582#PolymorphicMapType_4277| Heap@@23) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4277 (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| Heap@@23) (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| Heap@@23) (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@23) (store (|PolymorphicMapType_4277_4337_11582#PolymorphicMapType_4277| Heap@@23) o f_3 v)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4277) (o@@0 T@Ref) (f_3@@0 T@Field_4337_11715) (v@@0 T@PolymorphicMapType_4826) ) (! (succHeap Heap@@24 (PolymorphicMapType_4277 (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| Heap@@24) (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| Heap@@24) (store (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@24) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4277_4337_11582#PolymorphicMapType_4277| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4277 (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| Heap@@24) (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| Heap@@24) (store (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@24) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4277_4337_11582#PolymorphicMapType_4277| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4277) (o@@1 T@Ref) (f_3@@1 T@Field_4350_4351) (v@@1 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_4277 (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| Heap@@25) (store (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| Heap@@25) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@25) (|PolymorphicMapType_4277_4337_11582#PolymorphicMapType_4277| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4277 (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| Heap@@25) (store (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| Heap@@25) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@25) (|PolymorphicMapType_4277_4337_11582#PolymorphicMapType_4277| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4277) (o@@2 T@Ref) (f_3@@2 T@Field_4337_53) (v@@2 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_4277 (store (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| Heap@@26) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| Heap@@26) (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@26) (|PolymorphicMapType_4277_4337_11582#PolymorphicMapType_4277| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4277 (store (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| Heap@@26) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| Heap@@26) (|PolymorphicMapType_4277_4337_11759#PolymorphicMapType_4277| Heap@@26) (|PolymorphicMapType_4277_4337_11582#PolymorphicMapType_4277| Heap@@26)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_4350_4351) (Heap@@27 T@PolymorphicMapType_4277) ) (!  (=> (select (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| Heap@@27) o@@3 $allocated) (select (|PolymorphicMapType_4277_2213_53#PolymorphicMapType_4277| Heap@@27) (select (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| Heap@@27) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4277_2216_2217#PolymorphicMapType_4277| Heap@@27) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_4337_11582) (v_1@@0 T@FrameType) (q T@Field_4337_11582) (w@@0 T@FrameType) (r T@Field_4337_11582) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4337_4337 p@@1 v_1@@0 q w@@0) (InsidePredicate_4337_4337 q w@@0 r u)) (InsidePredicate_4337_4337 p@@1 v_1@@0 r u))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4337_4337 p@@1 v_1@@0 q w@@0) (InsidePredicate_4337_4337 q w@@0 r u))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_4277) (Mask@@23 T@PolymorphicMapType_4298) ) (!  (=> (and (state Heap@@28 Mask@@23) (< AssumeFunctionsAbove 1)) (= (foo2_1 Heap@@28) 1))
 :qid |stdinbpl.299:15|
 :skolemid |32|
 :pattern ( (state Heap@@28 Mask@@23) (foo2_1 Heap@@28))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_4277) (Mask@@24 T@PolymorphicMapType_4298) ) (!  (=> (and (state Heap@@29 Mask@@24) (< AssumeFunctionsAbove 2)) (= (bar Heap@@29) 100))
 :qid |stdinbpl.249:15|
 :skolemid |28|
 :pattern ( (state Heap@@29 Mask@@24) (bar Heap@@29))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_4277) (Mask@@25 T@PolymorphicMapType_4298) ) (!  (=> (and (state Heap@@30 Mask@@25) (< AssumeFunctionsAbove 3)) (= (foo_2 Heap@@30) 100))
 :qid |stdinbpl.199:15|
 :skolemid |24|
 :pattern ( (state Heap@@30 Mask@@25) (foo_2 Heap@@30))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@31 () T@PolymorphicMapType_4277)
(set-info :boogie-vc-id test2)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (>= (foo2_1 Heap@@31) 0))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@31 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 4) 1) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
