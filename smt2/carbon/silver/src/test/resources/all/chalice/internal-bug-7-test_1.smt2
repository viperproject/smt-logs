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
(declare-sort T@Field_4926_53 0)
(declare-sort T@Field_4939_4940 0)
(declare-sort T@Field_8642_8643 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_11271_11276 0)
(declare-sort T@Field_2592_8643 0)
(declare-sort T@Field_2592_11276 0)
(declare-sort T@Field_8642_2593 0)
(declare-sort T@Field_8642_53 0)
(declare-datatypes ((T@PolymorphicMapType_4887 0)) (((PolymorphicMapType_4887 (|PolymorphicMapType_4887_2629_2630#PolymorphicMapType_4887| (Array T@Ref T@Field_8642_8643 Real)) (|PolymorphicMapType_4887_2592_2593#PolymorphicMapType_4887| (Array T@Ref T@Field_4939_4940 Real)) (|PolymorphicMapType_4887_2629_2593#PolymorphicMapType_4887| (Array T@Ref T@Field_8642_2593 Real)) (|PolymorphicMapType_4887_2629_53#PolymorphicMapType_4887| (Array T@Ref T@Field_8642_53 Real)) (|PolymorphicMapType_4887_2629_23139#PolymorphicMapType_4887| (Array T@Ref T@Field_11271_11276 Real)) (|PolymorphicMapType_4887_2592_2630#PolymorphicMapType_4887| (Array T@Ref T@Field_2592_8643 Real)) (|PolymorphicMapType_4887_2592_53#PolymorphicMapType_4887| (Array T@Ref T@Field_4926_53 Real)) (|PolymorphicMapType_4887_2592_23470#PolymorphicMapType_4887| (Array T@Ref T@Field_2592_11276 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5415 0)) (((PolymorphicMapType_5415 (|PolymorphicMapType_5415_2592_2593#PolymorphicMapType_5415| (Array T@Ref T@Field_4939_4940 Bool)) (|PolymorphicMapType_5415_2592_53#PolymorphicMapType_5415| (Array T@Ref T@Field_4926_53 Bool)) (|PolymorphicMapType_5415_2592_8643#PolymorphicMapType_5415| (Array T@Ref T@Field_2592_8643 Bool)) (|PolymorphicMapType_5415_2592_17568#PolymorphicMapType_5415| (Array T@Ref T@Field_2592_11276 Bool)) (|PolymorphicMapType_5415_8642_2593#PolymorphicMapType_5415| (Array T@Ref T@Field_8642_2593 Bool)) (|PolymorphicMapType_5415_8642_53#PolymorphicMapType_5415| (Array T@Ref T@Field_8642_53 Bool)) (|PolymorphicMapType_5415_8642_8643#PolymorphicMapType_5415| (Array T@Ref T@Field_8642_8643 Bool)) (|PolymorphicMapType_5415_8642_18418#PolymorphicMapType_5415| (Array T@Ref T@Field_11271_11276 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4866 0)) (((PolymorphicMapType_4866 (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| (Array T@Ref T@Field_4926_53 Bool)) (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| (Array T@Ref T@Field_4939_4940 T@Ref)) (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| (Array T@Ref T@Field_8642_8643 T@FrameType)) (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| (Array T@Ref T@Field_11271_11276 T@PolymorphicMapType_5415)) (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| (Array T@Ref T@Field_2592_8643 T@FrameType)) (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| (Array T@Ref T@Field_2592_11276 T@PolymorphicMapType_5415)) (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| (Array T@Ref T@Field_8642_2593 T@Ref)) (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| (Array T@Ref T@Field_8642_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_4926_53)
(declare-fun n_85 () T@Field_4939_4940)
(declare-fun succHeap (T@PolymorphicMapType_4866 T@PolymorphicMapType_4866) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4866 T@PolymorphicMapType_4866) Bool)
(declare-fun state (T@PolymorphicMapType_4866 T@PolymorphicMapType_4887) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4887) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4866 T@PolymorphicMapType_4866 T@PolymorphicMapType_4887) Bool)
(declare-fun IsPredicateField_2629_2630 (T@Field_8642_8643) Bool)
(declare-fun HasDirectPerm_8642_8643 (T@PolymorphicMapType_4887 T@Ref T@Field_8642_8643) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2629 (T@Field_8642_8643) T@Field_11271_11276)
(declare-fun IsPredicateField_2592_16297 (T@Field_2592_8643) Bool)
(declare-fun HasDirectPerm_2592_8643 (T@PolymorphicMapType_4887 T@Ref T@Field_2592_8643) Bool)
(declare-fun PredicateMaskField_2592 (T@Field_2592_8643) T@Field_2592_11276)
(declare-fun IsWandField_8642_19583 (T@Field_8642_8643) Bool)
(declare-fun WandMaskField_8642 (T@Field_8642_8643) T@Field_11271_11276)
(declare-fun IsWandField_2592_19226 (T@Field_2592_8643) Bool)
(declare-fun WandMaskField_2592 (T@Field_2592_8643) T@Field_2592_11276)
(declare-fun ZeroPMask () T@PolymorphicMapType_5415)
(declare-fun P (T@Ref) T@Field_8642_8643)
(declare-fun |length'| (T@PolymorphicMapType_4866 T@Ref) Int)
(declare-fun dummyFunction_1464 (Int) Bool)
(declare-fun |length#triggerStateless| (T@Ref) Int)
(declare-fun |P#trigger_2629| (T@PolymorphicMapType_4866 T@Field_8642_8643) Bool)
(declare-fun |P#everUsed_2629| (T@Field_8642_8643) Bool)
(declare-fun length_1 (T@PolymorphicMapType_4866 T@Ref) Int)
(declare-fun |P#sm| (T@Ref) T@Field_11271_11276)
(declare-fun dummyHeap () T@PolymorphicMapType_4866)
(declare-fun ZeroMask () T@PolymorphicMapType_4887)
(declare-fun InsidePredicate_4926_4926 (T@Field_2592_8643 T@FrameType T@Field_2592_8643 T@FrameType) Bool)
(declare-fun InsidePredicate_2629_2629 (T@Field_8642_8643 T@FrameType T@Field_8642_8643 T@FrameType) Bool)
(declare-fun IsPredicateField_2592_2593 (T@Field_4939_4940) Bool)
(declare-fun IsWandField_2592_2593 (T@Field_4939_4940) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2592_25294 (T@Field_2592_11276) Bool)
(declare-fun IsWandField_2592_25310 (T@Field_2592_11276) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2592_53 (T@Field_4926_53) Bool)
(declare-fun IsWandField_2592_53 (T@Field_4926_53) Bool)
(declare-fun IsPredicateField_2629_24645 (T@Field_11271_11276) Bool)
(declare-fun IsWandField_2629_24661 (T@Field_11271_11276) Bool)
(declare-fun IsPredicateField_2629_53 (T@Field_8642_53) Bool)
(declare-fun IsWandField_2629_53 (T@Field_8642_53) Bool)
(declare-fun IsPredicateField_2629_2593 (T@Field_8642_2593) Bool)
(declare-fun IsWandField_2629_2593 (T@Field_8642_2593) Bool)
(declare-fun HasDirectPerm_8642_16052 (T@PolymorphicMapType_4887 T@Ref T@Field_11271_11276) Bool)
(declare-fun HasDirectPerm_8642_53 (T@PolymorphicMapType_4887 T@Ref T@Field_8642_53) Bool)
(declare-fun HasDirectPerm_8642_2593 (T@PolymorphicMapType_4887 T@Ref T@Field_8642_2593) Bool)
(declare-fun HasDirectPerm_2592_15112 (T@PolymorphicMapType_4887 T@Ref T@Field_2592_11276) Bool)
(declare-fun HasDirectPerm_2592_53 (T@PolymorphicMapType_4887 T@Ref T@Field_4926_53) Bool)
(declare-fun HasDirectPerm_2592_2593 (T@PolymorphicMapType_4887 T@Ref T@Field_4939_4940) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4887 T@PolymorphicMapType_4887 T@PolymorphicMapType_4887) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |length#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_2629_2630 (T@Field_8642_8643) Int)
(declare-fun |length#trigger| (T@FrameType T@Ref) Bool)
(declare-fun InsidePredicate_4926_2629 (T@Field_2592_8643 T@FrameType T@Field_8642_8643 T@FrameType) Bool)
(declare-fun InsidePredicate_2629_4926 (T@Field_8642_8643 T@FrameType T@Field_2592_8643 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_4866) (Heap1 T@PolymorphicMapType_4866) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4866) (Mask T@PolymorphicMapType_4887) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4866) (ExhaleHeap T@PolymorphicMapType_4866) (Mask@@0 T@PolymorphicMapType_4887) (pm_f_5 T@Field_8642_8643) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8642_8643 Mask@@0 null pm_f_5) (IsPredicateField_2629_2630 pm_f_5)) (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_4939_4940) ) (!  (=> (select (|PolymorphicMapType_5415_2592_2593#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@0) null (PredicateMaskField_2629 pm_f_5))) o2_5 f_23) (= (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@0) o2_5 f_23) (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| ExhaleHeap) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| ExhaleHeap) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_4926_53) ) (!  (=> (select (|PolymorphicMapType_5415_2592_53#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@0) null (PredicateMaskField_2629 pm_f_5))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@0) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| ExhaleHeap) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| ExhaleHeap) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_2592_8643) ) (!  (=> (select (|PolymorphicMapType_5415_2592_8643#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@0) null (PredicateMaskField_2629 pm_f_5))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@0) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| ExhaleHeap) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| ExhaleHeap) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_2592_11276) ) (!  (=> (select (|PolymorphicMapType_5415_2592_17568#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@0) null (PredicateMaskField_2629 pm_f_5))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@0) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| ExhaleHeap) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| ExhaleHeap) o2_5@@2 f_23@@2))
))) (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_8642_2593) ) (!  (=> (select (|PolymorphicMapType_5415_8642_2593#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@0) null (PredicateMaskField_2629 pm_f_5))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@0) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| ExhaleHeap) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| ExhaleHeap) o2_5@@3 f_23@@3))
))) (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_8642_53) ) (!  (=> (select (|PolymorphicMapType_5415_8642_53#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@0) null (PredicateMaskField_2629 pm_f_5))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@0) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| ExhaleHeap) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| ExhaleHeap) o2_5@@4 f_23@@4))
))) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_8642_8643) ) (!  (=> (select (|PolymorphicMapType_5415_8642_8643#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@0) null (PredicateMaskField_2629 pm_f_5))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@0) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| ExhaleHeap) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| ExhaleHeap) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_11271_11276) ) (!  (=> (select (|PolymorphicMapType_5415_8642_18418#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@0) null (PredicateMaskField_2629 pm_f_5))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@0) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| ExhaleHeap) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| ExhaleHeap) o2_5@@6 f_23@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2629_2630 pm_f_5))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4866) (ExhaleHeap@@0 T@PolymorphicMapType_4866) (Mask@@1 T@PolymorphicMapType_4887) (pm_f_5@@0 T@Field_2592_8643) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2592_8643 Mask@@1 null pm_f_5@@0) (IsPredicateField_2592_16297 pm_f_5@@0)) (and (and (and (and (and (and (and (forall ((o2_5@@7 T@Ref) (f_23@@7 T@Field_4939_4940) ) (!  (=> (select (|PolymorphicMapType_5415_2592_2593#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@1) null (PredicateMaskField_2592 pm_f_5@@0))) o2_5@@7 f_23@@7) (= (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@1) o2_5@@7 f_23@@7) (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| ExhaleHeap@@0) o2_5@@7 f_23@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| ExhaleHeap@@0) o2_5@@7 f_23@@7))
)) (forall ((o2_5@@8 T@Ref) (f_23@@8 T@Field_4926_53) ) (!  (=> (select (|PolymorphicMapType_5415_2592_53#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@1) null (PredicateMaskField_2592 pm_f_5@@0))) o2_5@@8 f_23@@8) (= (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@1) o2_5@@8 f_23@@8) (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| ExhaleHeap@@0) o2_5@@8 f_23@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| ExhaleHeap@@0) o2_5@@8 f_23@@8))
))) (forall ((o2_5@@9 T@Ref) (f_23@@9 T@Field_2592_8643) ) (!  (=> (select (|PolymorphicMapType_5415_2592_8643#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@1) null (PredicateMaskField_2592 pm_f_5@@0))) o2_5@@9 f_23@@9) (= (select (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@1) o2_5@@9 f_23@@9) (select (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| ExhaleHeap@@0) o2_5@@9 f_23@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| ExhaleHeap@@0) o2_5@@9 f_23@@9))
))) (forall ((o2_5@@10 T@Ref) (f_23@@10 T@Field_2592_11276) ) (!  (=> (select (|PolymorphicMapType_5415_2592_17568#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@1) null (PredicateMaskField_2592 pm_f_5@@0))) o2_5@@10 f_23@@10) (= (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@1) o2_5@@10 f_23@@10) (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| ExhaleHeap@@0) o2_5@@10 f_23@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| ExhaleHeap@@0) o2_5@@10 f_23@@10))
))) (forall ((o2_5@@11 T@Ref) (f_23@@11 T@Field_8642_2593) ) (!  (=> (select (|PolymorphicMapType_5415_8642_2593#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@1) null (PredicateMaskField_2592 pm_f_5@@0))) o2_5@@11 f_23@@11) (= (select (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@1) o2_5@@11 f_23@@11) (select (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| ExhaleHeap@@0) o2_5@@11 f_23@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| ExhaleHeap@@0) o2_5@@11 f_23@@11))
))) (forall ((o2_5@@12 T@Ref) (f_23@@12 T@Field_8642_53) ) (!  (=> (select (|PolymorphicMapType_5415_8642_53#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@1) null (PredicateMaskField_2592 pm_f_5@@0))) o2_5@@12 f_23@@12) (= (select (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@1) o2_5@@12 f_23@@12) (select (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| ExhaleHeap@@0) o2_5@@12 f_23@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| ExhaleHeap@@0) o2_5@@12 f_23@@12))
))) (forall ((o2_5@@13 T@Ref) (f_23@@13 T@Field_8642_8643) ) (!  (=> (select (|PolymorphicMapType_5415_8642_8643#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@1) null (PredicateMaskField_2592 pm_f_5@@0))) o2_5@@13 f_23@@13) (= (select (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@1) o2_5@@13 f_23@@13) (select (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| ExhaleHeap@@0) o2_5@@13 f_23@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| ExhaleHeap@@0) o2_5@@13 f_23@@13))
))) (forall ((o2_5@@14 T@Ref) (f_23@@14 T@Field_11271_11276) ) (!  (=> (select (|PolymorphicMapType_5415_8642_18418#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@1) null (PredicateMaskField_2592 pm_f_5@@0))) o2_5@@14 f_23@@14) (= (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@1) o2_5@@14 f_23@@14) (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| ExhaleHeap@@0) o2_5@@14 f_23@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| ExhaleHeap@@0) o2_5@@14 f_23@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_2592_16297 pm_f_5@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4866) (ExhaleHeap@@1 T@PolymorphicMapType_4866) (Mask@@2 T@PolymorphicMapType_4887) (pm_f_5@@1 T@Field_8642_8643) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8642_8643 Mask@@2 null pm_f_5@@1) (IsWandField_8642_19583 pm_f_5@@1)) (and (and (and (and (and (and (and (forall ((o2_5@@15 T@Ref) (f_23@@15 T@Field_4939_4940) ) (!  (=> (select (|PolymorphicMapType_5415_2592_2593#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@2) null (WandMaskField_8642 pm_f_5@@1))) o2_5@@15 f_23@@15) (= (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@2) o2_5@@15 f_23@@15) (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| ExhaleHeap@@1) o2_5@@15 f_23@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| ExhaleHeap@@1) o2_5@@15 f_23@@15))
)) (forall ((o2_5@@16 T@Ref) (f_23@@16 T@Field_4926_53) ) (!  (=> (select (|PolymorphicMapType_5415_2592_53#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@2) null (WandMaskField_8642 pm_f_5@@1))) o2_5@@16 f_23@@16) (= (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@2) o2_5@@16 f_23@@16) (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| ExhaleHeap@@1) o2_5@@16 f_23@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| ExhaleHeap@@1) o2_5@@16 f_23@@16))
))) (forall ((o2_5@@17 T@Ref) (f_23@@17 T@Field_2592_8643) ) (!  (=> (select (|PolymorphicMapType_5415_2592_8643#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@2) null (WandMaskField_8642 pm_f_5@@1))) o2_5@@17 f_23@@17) (= (select (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@2) o2_5@@17 f_23@@17) (select (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| ExhaleHeap@@1) o2_5@@17 f_23@@17)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| ExhaleHeap@@1) o2_5@@17 f_23@@17))
))) (forall ((o2_5@@18 T@Ref) (f_23@@18 T@Field_2592_11276) ) (!  (=> (select (|PolymorphicMapType_5415_2592_17568#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@2) null (WandMaskField_8642 pm_f_5@@1))) o2_5@@18 f_23@@18) (= (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@2) o2_5@@18 f_23@@18) (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| ExhaleHeap@@1) o2_5@@18 f_23@@18)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| ExhaleHeap@@1) o2_5@@18 f_23@@18))
))) (forall ((o2_5@@19 T@Ref) (f_23@@19 T@Field_8642_2593) ) (!  (=> (select (|PolymorphicMapType_5415_8642_2593#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@2) null (WandMaskField_8642 pm_f_5@@1))) o2_5@@19 f_23@@19) (= (select (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@2) o2_5@@19 f_23@@19) (select (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| ExhaleHeap@@1) o2_5@@19 f_23@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| ExhaleHeap@@1) o2_5@@19 f_23@@19))
))) (forall ((o2_5@@20 T@Ref) (f_23@@20 T@Field_8642_53) ) (!  (=> (select (|PolymorphicMapType_5415_8642_53#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@2) null (WandMaskField_8642 pm_f_5@@1))) o2_5@@20 f_23@@20) (= (select (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@2) o2_5@@20 f_23@@20) (select (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| ExhaleHeap@@1) o2_5@@20 f_23@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| ExhaleHeap@@1) o2_5@@20 f_23@@20))
))) (forall ((o2_5@@21 T@Ref) (f_23@@21 T@Field_8642_8643) ) (!  (=> (select (|PolymorphicMapType_5415_8642_8643#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@2) null (WandMaskField_8642 pm_f_5@@1))) o2_5@@21 f_23@@21) (= (select (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@2) o2_5@@21 f_23@@21) (select (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| ExhaleHeap@@1) o2_5@@21 f_23@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| ExhaleHeap@@1) o2_5@@21 f_23@@21))
))) (forall ((o2_5@@22 T@Ref) (f_23@@22 T@Field_11271_11276) ) (!  (=> (select (|PolymorphicMapType_5415_8642_18418#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@2) null (WandMaskField_8642 pm_f_5@@1))) o2_5@@22 f_23@@22) (= (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@2) o2_5@@22 f_23@@22) (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| ExhaleHeap@@1) o2_5@@22 f_23@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| ExhaleHeap@@1) o2_5@@22 f_23@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_8642_19583 pm_f_5@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4866) (ExhaleHeap@@2 T@PolymorphicMapType_4866) (Mask@@3 T@PolymorphicMapType_4887) (pm_f_5@@2 T@Field_2592_8643) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_2592_8643 Mask@@3 null pm_f_5@@2) (IsWandField_2592_19226 pm_f_5@@2)) (and (and (and (and (and (and (and (forall ((o2_5@@23 T@Ref) (f_23@@23 T@Field_4939_4940) ) (!  (=> (select (|PolymorphicMapType_5415_2592_2593#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@3) null (WandMaskField_2592 pm_f_5@@2))) o2_5@@23 f_23@@23) (= (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@3) o2_5@@23 f_23@@23) (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| ExhaleHeap@@2) o2_5@@23 f_23@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| ExhaleHeap@@2) o2_5@@23 f_23@@23))
)) (forall ((o2_5@@24 T@Ref) (f_23@@24 T@Field_4926_53) ) (!  (=> (select (|PolymorphicMapType_5415_2592_53#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@3) null (WandMaskField_2592 pm_f_5@@2))) o2_5@@24 f_23@@24) (= (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@3) o2_5@@24 f_23@@24) (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| ExhaleHeap@@2) o2_5@@24 f_23@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| ExhaleHeap@@2) o2_5@@24 f_23@@24))
))) (forall ((o2_5@@25 T@Ref) (f_23@@25 T@Field_2592_8643) ) (!  (=> (select (|PolymorphicMapType_5415_2592_8643#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@3) null (WandMaskField_2592 pm_f_5@@2))) o2_5@@25 f_23@@25) (= (select (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@3) o2_5@@25 f_23@@25) (select (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| ExhaleHeap@@2) o2_5@@25 f_23@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| ExhaleHeap@@2) o2_5@@25 f_23@@25))
))) (forall ((o2_5@@26 T@Ref) (f_23@@26 T@Field_2592_11276) ) (!  (=> (select (|PolymorphicMapType_5415_2592_17568#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@3) null (WandMaskField_2592 pm_f_5@@2))) o2_5@@26 f_23@@26) (= (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@3) o2_5@@26 f_23@@26) (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| ExhaleHeap@@2) o2_5@@26 f_23@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| ExhaleHeap@@2) o2_5@@26 f_23@@26))
))) (forall ((o2_5@@27 T@Ref) (f_23@@27 T@Field_8642_2593) ) (!  (=> (select (|PolymorphicMapType_5415_8642_2593#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@3) null (WandMaskField_2592 pm_f_5@@2))) o2_5@@27 f_23@@27) (= (select (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@3) o2_5@@27 f_23@@27) (select (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| ExhaleHeap@@2) o2_5@@27 f_23@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| ExhaleHeap@@2) o2_5@@27 f_23@@27))
))) (forall ((o2_5@@28 T@Ref) (f_23@@28 T@Field_8642_53) ) (!  (=> (select (|PolymorphicMapType_5415_8642_53#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@3) null (WandMaskField_2592 pm_f_5@@2))) o2_5@@28 f_23@@28) (= (select (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@3) o2_5@@28 f_23@@28) (select (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| ExhaleHeap@@2) o2_5@@28 f_23@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| ExhaleHeap@@2) o2_5@@28 f_23@@28))
))) (forall ((o2_5@@29 T@Ref) (f_23@@29 T@Field_8642_8643) ) (!  (=> (select (|PolymorphicMapType_5415_8642_8643#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@3) null (WandMaskField_2592 pm_f_5@@2))) o2_5@@29 f_23@@29) (= (select (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@3) o2_5@@29 f_23@@29) (select (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| ExhaleHeap@@2) o2_5@@29 f_23@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| ExhaleHeap@@2) o2_5@@29 f_23@@29))
))) (forall ((o2_5@@30 T@Ref) (f_23@@30 T@Field_11271_11276) ) (!  (=> (select (|PolymorphicMapType_5415_8642_18418#PolymorphicMapType_5415| (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@3) null (WandMaskField_2592 pm_f_5@@2))) o2_5@@30 f_23@@30) (= (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@3) o2_5@@30 f_23@@30) (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| ExhaleHeap@@2) o2_5@@30 f_23@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| ExhaleHeap@@2) o2_5@@30 f_23@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_2592_19226 pm_f_5@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4866) (Heap1@@0 T@PolymorphicMapType_4866) (Heap2 T@PolymorphicMapType_4866) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11271_11276) ) (!  (not (select (|PolymorphicMapType_5415_8642_18418#PolymorphicMapType_5415| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5415_8642_18418#PolymorphicMapType_5415| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8642_8643) ) (!  (not (select (|PolymorphicMapType_5415_8642_8643#PolymorphicMapType_5415| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5415_8642_8643#PolymorphicMapType_5415| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8642_53) ) (!  (not (select (|PolymorphicMapType_5415_8642_53#PolymorphicMapType_5415| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5415_8642_53#PolymorphicMapType_5415| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8642_2593) ) (!  (not (select (|PolymorphicMapType_5415_8642_2593#PolymorphicMapType_5415| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5415_8642_2593#PolymorphicMapType_5415| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_2592_11276) ) (!  (not (select (|PolymorphicMapType_5415_2592_17568#PolymorphicMapType_5415| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5415_2592_17568#PolymorphicMapType_5415| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_2592_8643) ) (!  (not (select (|PolymorphicMapType_5415_2592_8643#PolymorphicMapType_5415| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5415_2592_8643#PolymorphicMapType_5415| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4926_53) ) (!  (not (select (|PolymorphicMapType_5415_2592_53#PolymorphicMapType_5415| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5415_2592_53#PolymorphicMapType_5415| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_4939_4940) ) (!  (not (select (|PolymorphicMapType_5415_2592_2593#PolymorphicMapType_5415| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5415_2592_2593#PolymorphicMapType_5415| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_2629_2630 (P this))
 :qid |stdinbpl.336:15|
 :skolemid |29|
 :pattern ( (P this))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4866) (this@@0 T@Ref) ) (! (dummyFunction_1464 (|length#triggerStateless| this@@0))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (|length'| Heap@@4 this@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4866) (this@@1 T@Ref) ) (! (|P#everUsed_2629| (P this@@1))
 :qid |stdinbpl.355:15|
 :skolemid |33|
 :pattern ( (|P#trigger_2629| Heap@@5 (P this@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4866) (this@@2 T@Ref) ) (!  (and (= (length_1 Heap@@6 this@@2) (|length'| Heap@@6 this@@2)) (dummyFunction_1464 (|length#triggerStateless| this@@2)))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (length_1 Heap@@6 this@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4866) (ExhaleHeap@@3 T@PolymorphicMapType_4866) (Mask@@4 T@PolymorphicMapType_4887) (pm_f_5@@3 T@Field_8642_8643) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_8642_8643 Mask@@4 null pm_f_5@@3) (IsPredicateField_2629_2630 pm_f_5@@3)) (= (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@7) null (PredicateMaskField_2629 pm_f_5@@3)) (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| ExhaleHeap@@3) null (PredicateMaskField_2629 pm_f_5@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_2629_2630 pm_f_5@@3) (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| ExhaleHeap@@3) null (PredicateMaskField_2629 pm_f_5@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4866) (ExhaleHeap@@4 T@PolymorphicMapType_4866) (Mask@@5 T@PolymorphicMapType_4887) (pm_f_5@@4 T@Field_2592_8643) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_2592_8643 Mask@@5 null pm_f_5@@4) (IsPredicateField_2592_16297 pm_f_5@@4)) (= (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@8) null (PredicateMaskField_2592 pm_f_5@@4)) (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| ExhaleHeap@@4) null (PredicateMaskField_2592 pm_f_5@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_2592_16297 pm_f_5@@4) (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| ExhaleHeap@@4) null (PredicateMaskField_2592 pm_f_5@@4)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4866) (ExhaleHeap@@5 T@PolymorphicMapType_4866) (Mask@@6 T@PolymorphicMapType_4887) (pm_f_5@@5 T@Field_8642_8643) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_8642_8643 Mask@@6 null pm_f_5@@5) (IsWandField_8642_19583 pm_f_5@@5)) (= (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@9) null (WandMaskField_8642 pm_f_5@@5)) (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| ExhaleHeap@@5) null (WandMaskField_8642 pm_f_5@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_8642_19583 pm_f_5@@5) (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| ExhaleHeap@@5) null (WandMaskField_8642 pm_f_5@@5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4866) (ExhaleHeap@@6 T@PolymorphicMapType_4866) (Mask@@7 T@PolymorphicMapType_4887) (pm_f_5@@6 T@Field_2592_8643) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_2592_8643 Mask@@7 null pm_f_5@@6) (IsWandField_2592_19226 pm_f_5@@6)) (= (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@10) null (WandMaskField_2592 pm_f_5@@6)) (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| ExhaleHeap@@6) null (WandMaskField_2592 pm_f_5@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_2592_19226 pm_f_5@@6) (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| ExhaleHeap@@6) null (WandMaskField_2592 pm_f_5@@6)))
)))
(assert (forall ((this@@3 T@Ref) (this2 T@Ref) ) (!  (=> (= (P this@@3) (P this2)) (= this@@3 this2))
 :qid |stdinbpl.346:15|
 :skolemid |31|
 :pattern ( (P this@@3) (P this2))
)))
(assert (forall ((this@@4 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|P#sm| this@@4) (|P#sm| this2@@0)) (= this@@4 this2@@0))
 :qid |stdinbpl.350:15|
 :skolemid |32|
 :pattern ( (|P#sm| this@@4) (|P#sm| this2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4866) (ExhaleHeap@@7 T@PolymorphicMapType_4866) (Mask@@8 T@PolymorphicMapType_4887) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@11) o_15 $allocated) (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| ExhaleHeap@@7) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| ExhaleHeap@@7) o_15 $allocated))
)))
(assert (forall ((p T@Field_2592_8643) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4926_4926 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4926_4926 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_8642_8643) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_2629_2629 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_2629_2629 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_2592_2593 n_85)))
(assert  (not (IsWandField_2592_2593 n_85)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4866) (ExhaleHeap@@8 T@PolymorphicMapType_4866) (Mask@@9 T@PolymorphicMapType_4887) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4887) (o_2@@7 T@Ref) (f_4@@7 T@Field_2592_11276) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_4887_2592_23470#PolymorphicMapType_4887| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_2592_25294 f_4@@7))) (not (IsWandField_2592_25310 f_4@@7))) (<= (select (|PolymorphicMapType_4887_2592_23470#PolymorphicMapType_4887| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_4887_2592_23470#PolymorphicMapType_4887| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4887) (o_2@@8 T@Ref) (f_4@@8 T@Field_4926_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_4887_2592_53#PolymorphicMapType_4887| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_2592_53 f_4@@8))) (not (IsWandField_2592_53 f_4@@8))) (<= (select (|PolymorphicMapType_4887_2592_53#PolymorphicMapType_4887| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_4887_2592_53#PolymorphicMapType_4887| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4887) (o_2@@9 T@Ref) (f_4@@9 T@Field_4939_4940) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_4887_2592_2593#PolymorphicMapType_4887| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_2592_2593 f_4@@9))) (not (IsWandField_2592_2593 f_4@@9))) (<= (select (|PolymorphicMapType_4887_2592_2593#PolymorphicMapType_4887| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_4887_2592_2593#PolymorphicMapType_4887| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4887) (o_2@@10 T@Ref) (f_4@@10 T@Field_2592_8643) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_4887_2592_2630#PolymorphicMapType_4887| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_2592_16297 f_4@@10))) (not (IsWandField_2592_19226 f_4@@10))) (<= (select (|PolymorphicMapType_4887_2592_2630#PolymorphicMapType_4887| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_4887_2592_2630#PolymorphicMapType_4887| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4887) (o_2@@11 T@Ref) (f_4@@11 T@Field_11271_11276) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_4887_2629_23139#PolymorphicMapType_4887| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_2629_24645 f_4@@11))) (not (IsWandField_2629_24661 f_4@@11))) (<= (select (|PolymorphicMapType_4887_2629_23139#PolymorphicMapType_4887| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_4887_2629_23139#PolymorphicMapType_4887| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4887) (o_2@@12 T@Ref) (f_4@@12 T@Field_8642_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_4887_2629_53#PolymorphicMapType_4887| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_2629_53 f_4@@12))) (not (IsWandField_2629_53 f_4@@12))) (<= (select (|PolymorphicMapType_4887_2629_53#PolymorphicMapType_4887| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_4887_2629_53#PolymorphicMapType_4887| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_4887) (o_2@@13 T@Ref) (f_4@@13 T@Field_8642_2593) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_4887_2629_2593#PolymorphicMapType_4887| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_2629_2593 f_4@@13))) (not (IsWandField_2629_2593 f_4@@13))) (<= (select (|PolymorphicMapType_4887_2629_2593#PolymorphicMapType_4887| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_4887_2629_2593#PolymorphicMapType_4887| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_4887) (o_2@@14 T@Ref) (f_4@@14 T@Field_8642_8643) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_4887_2629_2630#PolymorphicMapType_4887| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2629_2630 f_4@@14))) (not (IsWandField_8642_19583 f_4@@14))) (<= (select (|PolymorphicMapType_4887_2629_2630#PolymorphicMapType_4887| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_4887_2629_2630#PolymorphicMapType_4887| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_4887) (o_2@@15 T@Ref) (f_4@@15 T@Field_11271_11276) ) (! (= (HasDirectPerm_8642_16052 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_4887_2629_23139#PolymorphicMapType_4887| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8642_16052 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_4887) (o_2@@16 T@Ref) (f_4@@16 T@Field_8642_8643) ) (! (= (HasDirectPerm_8642_8643 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_4887_2629_2630#PolymorphicMapType_4887| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8642_8643 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_4887) (o_2@@17 T@Ref) (f_4@@17 T@Field_8642_53) ) (! (= (HasDirectPerm_8642_53 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_4887_2629_53#PolymorphicMapType_4887| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8642_53 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_4887) (o_2@@18 T@Ref) (f_4@@18 T@Field_8642_2593) ) (! (= (HasDirectPerm_8642_2593 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_4887_2629_2593#PolymorphicMapType_4887| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8642_2593 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_4887) (o_2@@19 T@Ref) (f_4@@19 T@Field_2592_11276) ) (! (= (HasDirectPerm_2592_15112 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_4887_2592_23470#PolymorphicMapType_4887| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2592_15112 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_4887) (o_2@@20 T@Ref) (f_4@@20 T@Field_2592_8643) ) (! (= (HasDirectPerm_2592_8643 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_4887_2592_2630#PolymorphicMapType_4887| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2592_8643 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_4887) (o_2@@21 T@Ref) (f_4@@21 T@Field_4926_53) ) (! (= (HasDirectPerm_2592_53 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_4887_2592_53#PolymorphicMapType_4887| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2592_53 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_4887) (o_2@@22 T@Ref) (f_4@@22 T@Field_4939_4940) ) (! (= (HasDirectPerm_2592_2593 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_4887_2592_2593#PolymorphicMapType_4887| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2592_2593 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4866) (ExhaleHeap@@9 T@PolymorphicMapType_4866) (Mask@@26 T@PolymorphicMapType_4887) (o_15@@0 T@Ref) (f_23@@31 T@Field_11271_11276) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_8642_16052 Mask@@26 o_15@@0 f_23@@31) (= (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@13) o_15@@0 f_23@@31) (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| ExhaleHeap@@9) o_15@@0 f_23@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| ExhaleHeap@@9) o_15@@0 f_23@@31))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4866) (ExhaleHeap@@10 T@PolymorphicMapType_4866) (Mask@@27 T@PolymorphicMapType_4887) (o_15@@1 T@Ref) (f_23@@32 T@Field_8642_8643) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_8642_8643 Mask@@27 o_15@@1 f_23@@32) (= (select (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@14) o_15@@1 f_23@@32) (select (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| ExhaleHeap@@10) o_15@@1 f_23@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| ExhaleHeap@@10) o_15@@1 f_23@@32))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4866) (ExhaleHeap@@11 T@PolymorphicMapType_4866) (Mask@@28 T@PolymorphicMapType_4887) (o_15@@2 T@Ref) (f_23@@33 T@Field_8642_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_8642_53 Mask@@28 o_15@@2 f_23@@33) (= (select (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@15) o_15@@2 f_23@@33) (select (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| ExhaleHeap@@11) o_15@@2 f_23@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| ExhaleHeap@@11) o_15@@2 f_23@@33))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4866) (ExhaleHeap@@12 T@PolymorphicMapType_4866) (Mask@@29 T@PolymorphicMapType_4887) (o_15@@3 T@Ref) (f_23@@34 T@Field_8642_2593) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_8642_2593 Mask@@29 o_15@@3 f_23@@34) (= (select (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@16) o_15@@3 f_23@@34) (select (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| ExhaleHeap@@12) o_15@@3 f_23@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| ExhaleHeap@@12) o_15@@3 f_23@@34))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4866) (ExhaleHeap@@13 T@PolymorphicMapType_4866) (Mask@@30 T@PolymorphicMapType_4887) (o_15@@4 T@Ref) (f_23@@35 T@Field_2592_11276) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_2592_15112 Mask@@30 o_15@@4 f_23@@35) (= (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@17) o_15@@4 f_23@@35) (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| ExhaleHeap@@13) o_15@@4 f_23@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| ExhaleHeap@@13) o_15@@4 f_23@@35))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4866) (ExhaleHeap@@14 T@PolymorphicMapType_4866) (Mask@@31 T@PolymorphicMapType_4887) (o_15@@5 T@Ref) (f_23@@36 T@Field_2592_8643) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_2592_8643 Mask@@31 o_15@@5 f_23@@36) (= (select (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@18) o_15@@5 f_23@@36) (select (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| ExhaleHeap@@14) o_15@@5 f_23@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| ExhaleHeap@@14) o_15@@5 f_23@@36))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4866) (ExhaleHeap@@15 T@PolymorphicMapType_4866) (Mask@@32 T@PolymorphicMapType_4887) (o_15@@6 T@Ref) (f_23@@37 T@Field_4926_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_2592_53 Mask@@32 o_15@@6 f_23@@37) (= (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@19) o_15@@6 f_23@@37) (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| ExhaleHeap@@15) o_15@@6 f_23@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| ExhaleHeap@@15) o_15@@6 f_23@@37))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4866) (ExhaleHeap@@16 T@PolymorphicMapType_4866) (Mask@@33 T@PolymorphicMapType_4887) (o_15@@7 T@Ref) (f_23@@38 T@Field_4939_4940) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_2592_2593 Mask@@33 o_15@@7 f_23@@38) (= (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@20) o_15@@7 f_23@@38) (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| ExhaleHeap@@16) o_15@@7 f_23@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| ExhaleHeap@@16) o_15@@7 f_23@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_2592_11276) ) (! (= (select (|PolymorphicMapType_4887_2592_23470#PolymorphicMapType_4887| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4887_2592_23470#PolymorphicMapType_4887| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_4926_53) ) (! (= (select (|PolymorphicMapType_4887_2592_53#PolymorphicMapType_4887| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4887_2592_53#PolymorphicMapType_4887| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_4939_4940) ) (! (= (select (|PolymorphicMapType_4887_2592_2593#PolymorphicMapType_4887| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4887_2592_2593#PolymorphicMapType_4887| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_2592_8643) ) (! (= (select (|PolymorphicMapType_4887_2592_2630#PolymorphicMapType_4887| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4887_2592_2630#PolymorphicMapType_4887| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_11271_11276) ) (! (= (select (|PolymorphicMapType_4887_2629_23139#PolymorphicMapType_4887| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4887_2629_23139#PolymorphicMapType_4887| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_8642_53) ) (! (= (select (|PolymorphicMapType_4887_2629_53#PolymorphicMapType_4887| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4887_2629_53#PolymorphicMapType_4887| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_8642_2593) ) (! (= (select (|PolymorphicMapType_4887_2629_2593#PolymorphicMapType_4887| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4887_2629_2593#PolymorphicMapType_4887| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_8642_8643) ) (! (= (select (|PolymorphicMapType_4887_2629_2630#PolymorphicMapType_4887| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4887_2629_2630#PolymorphicMapType_4887| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4887) (SummandMask1 T@PolymorphicMapType_4887) (SummandMask2 T@PolymorphicMapType_4887) (o_2@@31 T@Ref) (f_4@@31 T@Field_2592_11276) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4887_2592_23470#PolymorphicMapType_4887| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_4887_2592_23470#PolymorphicMapType_4887| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_4887_2592_23470#PolymorphicMapType_4887| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4887_2592_23470#PolymorphicMapType_4887| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4887_2592_23470#PolymorphicMapType_4887| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4887_2592_23470#PolymorphicMapType_4887| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4887) (SummandMask1@@0 T@PolymorphicMapType_4887) (SummandMask2@@0 T@PolymorphicMapType_4887) (o_2@@32 T@Ref) (f_4@@32 T@Field_4926_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4887_2592_53#PolymorphicMapType_4887| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_4887_2592_53#PolymorphicMapType_4887| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_4887_2592_53#PolymorphicMapType_4887| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4887_2592_53#PolymorphicMapType_4887| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4887_2592_53#PolymorphicMapType_4887| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4887_2592_53#PolymorphicMapType_4887| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4887) (SummandMask1@@1 T@PolymorphicMapType_4887) (SummandMask2@@1 T@PolymorphicMapType_4887) (o_2@@33 T@Ref) (f_4@@33 T@Field_4939_4940) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4887_2592_2593#PolymorphicMapType_4887| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_4887_2592_2593#PolymorphicMapType_4887| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_4887_2592_2593#PolymorphicMapType_4887| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4887_2592_2593#PolymorphicMapType_4887| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4887_2592_2593#PolymorphicMapType_4887| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4887_2592_2593#PolymorphicMapType_4887| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4887) (SummandMask1@@2 T@PolymorphicMapType_4887) (SummandMask2@@2 T@PolymorphicMapType_4887) (o_2@@34 T@Ref) (f_4@@34 T@Field_2592_8643) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4887_2592_2630#PolymorphicMapType_4887| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_4887_2592_2630#PolymorphicMapType_4887| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_4887_2592_2630#PolymorphicMapType_4887| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4887_2592_2630#PolymorphicMapType_4887| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4887_2592_2630#PolymorphicMapType_4887| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4887_2592_2630#PolymorphicMapType_4887| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4887) (SummandMask1@@3 T@PolymorphicMapType_4887) (SummandMask2@@3 T@PolymorphicMapType_4887) (o_2@@35 T@Ref) (f_4@@35 T@Field_11271_11276) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4887_2629_23139#PolymorphicMapType_4887| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_4887_2629_23139#PolymorphicMapType_4887| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_4887_2629_23139#PolymorphicMapType_4887| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4887_2629_23139#PolymorphicMapType_4887| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4887_2629_23139#PolymorphicMapType_4887| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4887_2629_23139#PolymorphicMapType_4887| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_4887) (SummandMask1@@4 T@PolymorphicMapType_4887) (SummandMask2@@4 T@PolymorphicMapType_4887) (o_2@@36 T@Ref) (f_4@@36 T@Field_8642_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_4887_2629_53#PolymorphicMapType_4887| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_4887_2629_53#PolymorphicMapType_4887| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_4887_2629_53#PolymorphicMapType_4887| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4887_2629_53#PolymorphicMapType_4887| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4887_2629_53#PolymorphicMapType_4887| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4887_2629_53#PolymorphicMapType_4887| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_4887) (SummandMask1@@5 T@PolymorphicMapType_4887) (SummandMask2@@5 T@PolymorphicMapType_4887) (o_2@@37 T@Ref) (f_4@@37 T@Field_8642_2593) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_4887_2629_2593#PolymorphicMapType_4887| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_4887_2629_2593#PolymorphicMapType_4887| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_4887_2629_2593#PolymorphicMapType_4887| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4887_2629_2593#PolymorphicMapType_4887| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4887_2629_2593#PolymorphicMapType_4887| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4887_2629_2593#PolymorphicMapType_4887| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_4887) (SummandMask1@@6 T@PolymorphicMapType_4887) (SummandMask2@@6 T@PolymorphicMapType_4887) (o_2@@38 T@Ref) (f_4@@38 T@Field_8642_8643) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_4887_2629_2630#PolymorphicMapType_4887| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_4887_2629_2630#PolymorphicMapType_4887| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_4887_2629_2630#PolymorphicMapType_4887| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4887_2629_2630#PolymorphicMapType_4887| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4887_2629_2630#PolymorphicMapType_4887| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4887_2629_2630#PolymorphicMapType_4887| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4866) (Mask@@34 T@PolymorphicMapType_4887) (this@@5 T@Ref) ) (!  (=> (and (state Heap@@21 Mask@@34) (< AssumeFunctionsAbove 0)) (= (length_1 Heap@@21 this@@5) (+ 1 (ite (= (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@21) this@@5 n_85) null) 0 (|length'| Heap@@21 (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@21) this@@5 n_85))))))
 :qid |stdinbpl.204:15|
 :skolemid |24|
 :pattern ( (state Heap@@21 Mask@@34) (length_1 Heap@@21 this@@5))
 :pattern ( (state Heap@@21 Mask@@34) (|length#triggerStateless| this@@5) (|P#trigger_2629| Heap@@21 (P this@@5)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4866) (Mask@@35 T@PolymorphicMapType_4887) (this@@6 T@Ref) ) (!  (=> (state Heap@@22 Mask@@35) (= (|length'| Heap@@22 this@@6) (|length#frame| (select (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@22) null (P this@@6)) this@@6)))
 :qid |stdinbpl.211:15|
 :skolemid |25|
 :pattern ( (state Heap@@22 Mask@@35) (|length'| Heap@@22 this@@6))
 :pattern ( (state Heap@@22 Mask@@35) (|length#triggerStateless| this@@6) (|P#trigger_2629| Heap@@22 (P this@@6)))
)))
(assert (forall ((this@@7 T@Ref) ) (! (= (getPredWandId_2629_2630 (P this@@7)) 0)
 :qid |stdinbpl.340:15|
 :skolemid |30|
 :pattern ( (P this@@7))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4866) (Mask@@36 T@PolymorphicMapType_4887) (this@@8 T@Ref) ) (!  (=> (and (state Heap@@23 Mask@@36) (or (< AssumeFunctionsAbove 0) (|length#trigger| (select (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@23) null (P this@@8)) this@@8))) (>= (|length'| Heap@@23 this@@8) 1))
 :qid |stdinbpl.217:15|
 :skolemid |26|
 :pattern ( (state Heap@@23 Mask@@36) (|length'| Heap@@23 this@@8))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4866) (o_14 T@Ref) (f_24 T@Field_11271_11276) (v T@PolymorphicMapType_5415) ) (! (succHeap Heap@@24 (PolymorphicMapType_4866 (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@24) (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@24) (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@24) (store (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@24) o_14 f_24 v) (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@24) (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@24) (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@24) (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4866 (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@24) (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@24) (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@24) (store (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@24) o_14 f_24 v) (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@24) (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@24) (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@24) (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4866) (o_14@@0 T@Ref) (f_24@@0 T@Field_8642_8643) (v@@0 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_4866 (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@25) (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@25) (store (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@25) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@25) (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@25) (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@25) (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@25) (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4866 (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@25) (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@25) (store (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@25) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@25) (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@25) (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@25) (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@25) (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4866) (o_14@@1 T@Ref) (f_24@@1 T@Field_8642_2593) (v@@1 T@Ref) ) (! (succHeap Heap@@26 (PolymorphicMapType_4866 (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@26) (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@26) (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@26) (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@26) (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@26) (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@26) (store (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@26) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4866 (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@26) (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@26) (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@26) (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@26) (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@26) (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@26) (store (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@26) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_4866) (o_14@@2 T@Ref) (f_24@@2 T@Field_8642_53) (v@@2 Bool) ) (! (succHeap Heap@@27 (PolymorphicMapType_4866 (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@27) (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@27) (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@27) (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@27) (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@27) (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@27) (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@27) (store (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@27) o_14@@2 f_24@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4866 (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@27) (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@27) (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@27) (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@27) (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@27) (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@27) (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@27) (store (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@27) o_14@@2 f_24@@2 v@@2)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_4866) (o_14@@3 T@Ref) (f_24@@3 T@Field_2592_11276) (v@@3 T@PolymorphicMapType_5415) ) (! (succHeap Heap@@28 (PolymorphicMapType_4866 (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@28) (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@28) (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@28) (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@28) (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@28) (store (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@28) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@28) (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4866 (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@28) (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@28) (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@28) (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@28) (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@28) (store (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@28) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@28) (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_4866) (o_14@@4 T@Ref) (f_24@@4 T@Field_2592_8643) (v@@4 T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_4866 (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@29) (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@29) (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@29) (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@29) (store (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@29) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@29) (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@29) (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4866 (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@29) (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@29) (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@29) (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@29) (store (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@29) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@29) (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@29) (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_4866) (o_14@@5 T@Ref) (f_24@@5 T@Field_4939_4940) (v@@5 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_4866 (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@30) (store (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@30) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@30) (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@30) (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@30) (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@30) (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@30) (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4866 (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@30) (store (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@30) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@30) (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@30) (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@30) (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@30) (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@30) (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_4866) (o_14@@6 T@Ref) (f_24@@6 T@Field_4926_53) (v@@6 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_4866 (store (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@31) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@31) (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@31) (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@31) (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@31) (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@31) (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@31) (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4866 (store (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@31) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@31) (|PolymorphicMapType_4866_2629_2630#PolymorphicMapType_4866| Heap@@31) (|PolymorphicMapType_4866_2633_11363#PolymorphicMapType_4866| Heap@@31) (|PolymorphicMapType_4866_2592_8643#PolymorphicMapType_4866| Heap@@31) (|PolymorphicMapType_4866_2592_15154#PolymorphicMapType_4866| Heap@@31) (|PolymorphicMapType_4866_8642_2593#PolymorphicMapType_4866| Heap@@31) (|PolymorphicMapType_4866_8642_53#PolymorphicMapType_4866| Heap@@31)))
)))
(assert (forall ((this@@9 T@Ref) ) (! (= (PredicateMaskField_2629 (P this@@9)) (|P#sm| this@@9))
 :qid |stdinbpl.332:15|
 :skolemid |28|
 :pattern ( (PredicateMaskField_2629 (P this@@9)))
)))
(assert (forall ((o_14@@7 T@Ref) (f_22 T@Field_4939_4940) (Heap@@32 T@PolymorphicMapType_4866) ) (!  (=> (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@32) o_14@@7 $allocated) (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@32) (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@32) o_14@@7 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4866_2467_2468#PolymorphicMapType_4866| Heap@@32) o_14@@7 f_22))
)))
(assert (forall ((p@@2 T@Field_2592_8643) (v_1@@1 T@FrameType) (q T@Field_2592_8643) (w@@1 T@FrameType) (r T@Field_2592_8643) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4926_4926 p@@2 v_1@@1 q w@@1) (InsidePredicate_4926_4926 q w@@1 r u)) (InsidePredicate_4926_4926 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4926_4926 p@@2 v_1@@1 q w@@1) (InsidePredicate_4926_4926 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_2592_8643) (v_1@@2 T@FrameType) (q@@0 T@Field_2592_8643) (w@@2 T@FrameType) (r@@0 T@Field_8642_8643) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_4926_4926 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_4926_2629 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_4926_2629 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4926_4926 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_4926_2629 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_2592_8643) (v_1@@3 T@FrameType) (q@@1 T@Field_8642_8643) (w@@3 T@FrameType) (r@@1 T@Field_2592_8643) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_4926_2629 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_2629_4926 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_4926_4926 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4926_2629 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_2629_4926 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_2592_8643) (v_1@@4 T@FrameType) (q@@2 T@Field_8642_8643) (w@@4 T@FrameType) (r@@2 T@Field_8642_8643) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_4926_2629 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_2629_2629 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_4926_2629 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4926_2629 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_2629_2629 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_8642_8643) (v_1@@5 T@FrameType) (q@@3 T@Field_2592_8643) (w@@5 T@FrameType) (r@@3 T@Field_2592_8643) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_2629_4926 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_4926_4926 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_2629_4926 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2629_4926 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_4926_4926 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_8642_8643) (v_1@@6 T@FrameType) (q@@4 T@Field_2592_8643) (w@@6 T@FrameType) (r@@4 T@Field_8642_8643) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_2629_4926 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_4926_2629 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_2629_2629 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2629_4926 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_4926_2629 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_8642_8643) (v_1@@7 T@FrameType) (q@@5 T@Field_8642_8643) (w@@7 T@FrameType) (r@@5 T@Field_2592_8643) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_2629_2629 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_2629_4926 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_2629_4926 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2629_2629 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_2629_4926 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_8642_8643) (v_1@@8 T@FrameType) (q@@6 T@Field_8642_8643) (w@@8 T@FrameType) (r@@6 T@Field_8642_8643) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_2629_2629 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_2629_2629 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_2629_2629 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2629_2629 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_2629_2629 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@33 () T@PolymorphicMapType_4866)
(declare-fun node () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_4887)
(declare-fun this@@10 () T@Ref)
(set-info :boogie-vc-id test_1)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (>= (length_1 Heap@@33 node) 1))))
(let ((anon3_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_4887_2629_2630#PolymorphicMapType_4887| Mask@0) null (P node)))))))
(let ((anon0_correct  (=> (and (state Heap@@33 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@33) this@@10 $allocated)) (and (select (|PolymorphicMapType_4866_2464_53#PolymorphicMapType_4866| Heap@@33) node $allocated) (not (= node null)))) (and (and (state Heap@@33 ZeroMask) (= Mask@0 (PolymorphicMapType_4887 (store (|PolymorphicMapType_4887_2629_2630#PolymorphicMapType_4887| ZeroMask) null (P node) (+ (select (|PolymorphicMapType_4887_2629_2630#PolymorphicMapType_4887| ZeroMask) null (P node)) FullPerm)) (|PolymorphicMapType_4887_2592_2593#PolymorphicMapType_4887| ZeroMask) (|PolymorphicMapType_4887_2629_2593#PolymorphicMapType_4887| ZeroMask) (|PolymorphicMapType_4887_2629_53#PolymorphicMapType_4887| ZeroMask) (|PolymorphicMapType_4887_2629_23139#PolymorphicMapType_4887| ZeroMask) (|PolymorphicMapType_4887_2592_2630#PolymorphicMapType_4887| ZeroMask) (|PolymorphicMapType_4887_2592_53#PolymorphicMapType_4887| ZeroMask) (|PolymorphicMapType_4887_2592_23470#PolymorphicMapType_4887| ZeroMask)))) (and (state Heap@@33 Mask@0) (state Heap@@33 Mask@0)))) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
