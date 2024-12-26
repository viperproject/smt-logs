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
(declare-sort T@Field_5332_53 0)
(declare-sort T@Field_5345_5346 0)
(declare-sort T@Field_8774_1356 0)
(declare-sort T@Field_5332_14402 0)
(declare-sort T@Field_5332_14269 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5293 0)) (((PolymorphicMapType_5293 (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| (Array T@Ref T@Field_8774_1356 Real)) (|PolymorphicMapType_5293_3333_53#PolymorphicMapType_5293| (Array T@Ref T@Field_5332_53 Real)) (|PolymorphicMapType_5293_3333_5346#PolymorphicMapType_5293| (Array T@Ref T@Field_5345_5346 Real)) (|PolymorphicMapType_5293_3333_14269#PolymorphicMapType_5293| (Array T@Ref T@Field_5332_14269 Real)) (|PolymorphicMapType_5293_3333_18524#PolymorphicMapType_5293| (Array T@Ref T@Field_5332_14402 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5821 0)) (((PolymorphicMapType_5821 (|PolymorphicMapType_5821_5332_53#PolymorphicMapType_5821| (Array T@Ref T@Field_5332_53 Bool)) (|PolymorphicMapType_5821_5332_5346#PolymorphicMapType_5821| (Array T@Ref T@Field_5345_5346 Bool)) (|PolymorphicMapType_5821_5332_1356#PolymorphicMapType_5821| (Array T@Ref T@Field_8774_1356 Bool)) (|PolymorphicMapType_5821_5332_14269#PolymorphicMapType_5821| (Array T@Ref T@Field_5332_14269 Bool)) (|PolymorphicMapType_5821_5332_15580#PolymorphicMapType_5821| (Array T@Ref T@Field_5332_14402 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5272 0)) (((PolymorphicMapType_5272 (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| (Array T@Ref T@Field_5332_53 Bool)) (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| (Array T@Ref T@Field_5345_5346 T@Ref)) (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| (Array T@Ref T@Field_8774_1356 Int)) (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| (Array T@Ref T@Field_5332_14402 T@PolymorphicMapType_5821)) (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| (Array T@Ref T@Field_5332_14269 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_5332_53)
(declare-fun val () T@Field_8774_1356)
(declare-fun succHeap (T@PolymorphicMapType_5272 T@PolymorphicMapType_5272) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5272 T@PolymorphicMapType_5272) Bool)
(declare-fun state (T@PolymorphicMapType_5272 T@PolymorphicMapType_5293) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5293) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5821)
(declare-sort T@ArrayDomainType 0)
(declare-fun |f'| (T@PolymorphicMapType_5272 T@ArrayDomainType) Bool)
(declare-fun dummyFunction_1758 (Bool) Bool)
(declare-fun |f#triggerStateless| (T@ArrayDomainType) Bool)
(declare-fun |g'| (T@PolymorphicMapType_5272 T@ArrayDomainType) Bool)
(declare-fun |g#triggerStateless| (T@ArrayDomainType) Bool)
(declare-fun f_6 (T@PolymorphicMapType_5272 T@ArrayDomainType) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun len_1 (T@ArrayDomainType) Int)
(declare-fun g_3 (T@PolymorphicMapType_5272 T@ArrayDomainType) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5272 T@PolymorphicMapType_5272 T@PolymorphicMapType_5293) Bool)
(declare-fun IsPredicateField_5332_14360 (T@Field_5332_14269) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5332 (T@Field_5332_14269) T@Field_5332_14402)
(declare-fun HasDirectPerm_5332_14333 (T@PolymorphicMapType_5293 T@Ref T@Field_5332_14269) Bool)
(declare-fun IsWandField_5332_16107 (T@Field_5332_14269) Bool)
(declare-fun WandMaskField_5332 (T@Field_5332_14269) T@Field_5332_14402)
(declare-fun dummyHeap () T@PolymorphicMapType_5272)
(declare-fun ZeroMask () T@PolymorphicMapType_5293)
(declare-fun InsidePredicate_5332_5332 (T@Field_5332_14269 T@FrameType T@Field_5332_14269 T@FrameType) Bool)
(declare-fun IsPredicateField_3333_1356 (T@Field_8774_1356) Bool)
(declare-fun IsWandField_3333_1356 (T@Field_8774_1356) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3333_19653 (T@Field_5332_14402) Bool)
(declare-fun IsWandField_3333_19669 (T@Field_5332_14402) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3333_5346 (T@Field_5345_5346) Bool)
(declare-fun IsWandField_3333_5346 (T@Field_5345_5346) Bool)
(declare-fun IsPredicateField_3333_53 (T@Field_5332_53) Bool)
(declare-fun IsWandField_3333_53 (T@Field_5332_53) Bool)
(declare-fun HasDirectPerm_5332_20107 (T@PolymorphicMapType_5293 T@Ref T@Field_5332_14402) Bool)
(declare-fun HasDirectPerm_5332_1356 (T@PolymorphicMapType_5293 T@Ref T@Field_8774_1356) Bool)
(declare-fun HasDirectPerm_5332_5346 (T@PolymorphicMapType_5293 T@Ref T@Field_5345_5346) Bool)
(declare-fun HasDirectPerm_5332_53 (T@PolymorphicMapType_5293 T@Ref T@Field_5332_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5293 T@PolymorphicMapType_5293 T@PolymorphicMapType_5293) Bool)
(declare-fun |f#condqp1| (T@PolymorphicMapType_5272 T@ArrayDomainType) Int)
(declare-fun |sk_f#condqp1| (Int Int) Int)
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun |g#condqp2| (T@PolymorphicMapType_5272 T@ArrayDomainType) Int)
(declare-fun |sk_g#condqp2| (Int Int) Int)
(declare-fun |f#frame| (T@FrameType T@ArrayDomainType) Bool)
(declare-fun FrameFragment_1553 (Int) T@FrameType)
(declare-fun |g#frame| (T@FrameType T@ArrayDomainType) Bool)
(declare-fun first (T@Ref) T@ArrayDomainType)
(declare-fun second (T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_5272) (Heap1 T@PolymorphicMapType_5272) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5272) (Mask T@PolymorphicMapType_5293) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5272) (Heap1@@0 T@PolymorphicMapType_5272) (Heap2 T@PolymorphicMapType_5272) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5332_14402) ) (!  (not (select (|PolymorphicMapType_5821_5332_15580#PolymorphicMapType_5821| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5821_5332_15580#PolymorphicMapType_5821| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5332_14269) ) (!  (not (select (|PolymorphicMapType_5821_5332_14269#PolymorphicMapType_5821| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5821_5332_14269#PolymorphicMapType_5821| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8774_1356) ) (!  (not (select (|PolymorphicMapType_5821_5332_1356#PolymorphicMapType_5821| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5821_5332_1356#PolymorphicMapType_5821| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5345_5346) ) (!  (not (select (|PolymorphicMapType_5821_5332_5346#PolymorphicMapType_5821| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5821_5332_5346#PolymorphicMapType_5821| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5332_53) ) (!  (not (select (|PolymorphicMapType_5821_5332_53#PolymorphicMapType_5821| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5821_5332_53#PolymorphicMapType_5821| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5272) (a_2 T@ArrayDomainType) ) (! (dummyFunction_1758 (|f#triggerStateless| a_2))
 :qid |stdinbpl.251:15|
 :skolemid |25|
 :pattern ( (|f'| Heap@@0 a_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5272) (a_2@@0 T@ArrayDomainType) ) (! (dummyFunction_1758 (|g#triggerStateless| a_2@@0))
 :qid |stdinbpl.412:15|
 :skolemid |42|
 :pattern ( (|g'| Heap@@1 a_2@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5272) (Mask@@0 T@PolymorphicMapType_5293) (a_2@@1 T@ArrayDomainType) ) (!  (=> (and (state Heap@@2 Mask@@0) (< AssumeFunctionsAbove 0)) (= (f_6 Heap@@2 a_2@@1) (forall ((k Int) ) (!  (=> (and (<= 0 k) (< k (len_1 a_2@@1))) (g_3 Heap@@2 a_2@@1))
 :qid |stdinbpl.259:79|
 :skolemid |26|
))))
 :qid |stdinbpl.257:15|
 :skolemid |27|
 :pattern ( (state Heap@@2 Mask@@0) (f_6 Heap@@2 a_2@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5272) (ExhaleHeap T@PolymorphicMapType_5272) (Mask@@1 T@PolymorphicMapType_5293) (pm_f_9 T@Field_5332_14269) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_5332_14333 Mask@@1 null pm_f_9) (IsPredicateField_5332_14360 pm_f_9)) (= (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@3) null (PredicateMaskField_5332 pm_f_9)) (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| ExhaleHeap) null (PredicateMaskField_5332 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (IsPredicateField_5332_14360 pm_f_9) (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| ExhaleHeap) null (PredicateMaskField_5332 pm_f_9)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5272) (ExhaleHeap@@0 T@PolymorphicMapType_5272) (Mask@@2 T@PolymorphicMapType_5293) (pm_f_9@@0 T@Field_5332_14269) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_5332_14333 Mask@@2 null pm_f_9@@0) (IsWandField_5332_16107 pm_f_9@@0)) (= (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@4) null (WandMaskField_5332 pm_f_9@@0)) (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| ExhaleHeap@@0) null (WandMaskField_5332 pm_f_9@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (IsWandField_5332_16107 pm_f_9@@0) (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| ExhaleHeap@@0) null (WandMaskField_5332 pm_f_9@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5272) (ExhaleHeap@@1 T@PolymorphicMapType_5272) (Mask@@3 T@PolymorphicMapType_5293) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| Heap@@5) o_27 $allocated) (select (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| ExhaleHeap@@1) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| ExhaleHeap@@1) o_27 $allocated))
)))
(assert (forall ((p T@Field_5332_14269) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5332_5332 p v_1 p w))
 :qid |stdinbpl.196:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5332_5332 p v_1 p w))
)))
(assert  (not (IsPredicateField_3333_1356 val)))
(assert  (not (IsWandField_3333_1356 val)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5272) (ExhaleHeap@@2 T@PolymorphicMapType_5272) (Mask@@4 T@PolymorphicMapType_5293) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@6 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_5293) (o_2@@4 T@Ref) (f_4@@4 T@Field_5332_14402) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_5293_3333_18524#PolymorphicMapType_5293| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_3333_19653 f_4@@4))) (not (IsWandField_3333_19669 f_4@@4))) (<= (select (|PolymorphicMapType_5293_3333_18524#PolymorphicMapType_5293| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_5293_3333_18524#PolymorphicMapType_5293| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_5293) (o_2@@5 T@Ref) (f_4@@5 T@Field_5332_14269) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_5293_3333_14269#PolymorphicMapType_5293| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5332_14360 f_4@@5))) (not (IsWandField_5332_16107 f_4@@5))) (<= (select (|PolymorphicMapType_5293_3333_14269#PolymorphicMapType_5293| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_5293_3333_14269#PolymorphicMapType_5293| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_5293) (o_2@@6 T@Ref) (f_4@@6 T@Field_5345_5346) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_5293_3333_5346#PolymorphicMapType_5293| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3333_5346 f_4@@6))) (not (IsWandField_3333_5346 f_4@@6))) (<= (select (|PolymorphicMapType_5293_3333_5346#PolymorphicMapType_5293| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_5293_3333_5346#PolymorphicMapType_5293| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5293) (o_2@@7 T@Ref) (f_4@@7 T@Field_5332_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5293_3333_53#PolymorphicMapType_5293| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3333_53 f_4@@7))) (not (IsWandField_3333_53 f_4@@7))) (<= (select (|PolymorphicMapType_5293_3333_53#PolymorphicMapType_5293| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5293_3333_53#PolymorphicMapType_5293| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5293) (o_2@@8 T@Ref) (f_4@@8 T@Field_8774_1356) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3333_1356 f_4@@8))) (not (IsWandField_3333_1356 f_4@@8))) (<= (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5293) (o_2@@9 T@Ref) (f_4@@9 T@Field_5332_14402) ) (! (= (HasDirectPerm_5332_20107 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5293_3333_18524#PolymorphicMapType_5293| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5332_20107 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5293) (o_2@@10 T@Ref) (f_4@@10 T@Field_5332_14269) ) (! (= (HasDirectPerm_5332_14333 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5293_3333_14269#PolymorphicMapType_5293| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5332_14333 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5293) (o_2@@11 T@Ref) (f_4@@11 T@Field_8774_1356) ) (! (= (HasDirectPerm_5332_1356 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5332_1356 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5293) (o_2@@12 T@Ref) (f_4@@12 T@Field_5345_5346) ) (! (= (HasDirectPerm_5332_5346 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_5293_3333_5346#PolymorphicMapType_5293| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5332_5346 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5293) (o_2@@13 T@Ref) (f_4@@13 T@Field_5332_53) ) (! (= (HasDirectPerm_5332_53 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_5293_3333_53#PolymorphicMapType_5293| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5332_53 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5272) (ExhaleHeap@@3 T@PolymorphicMapType_5272) (Mask@@15 T@PolymorphicMapType_5293) (pm_f_9@@1 T@Field_5332_14269) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_5332_14333 Mask@@15 null pm_f_9@@1) (IsPredicateField_5332_14360 pm_f_9@@1)) (and (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_5332_53) ) (!  (=> (select (|PolymorphicMapType_5821_5332_53#PolymorphicMapType_5821| (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@7) null (PredicateMaskField_5332 pm_f_9@@1))) o2_9 f_24) (= (select (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| Heap@@7) o2_9 f_24) (select (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| ExhaleHeap@@3) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| ExhaleHeap@@3) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_5345_5346) ) (!  (=> (select (|PolymorphicMapType_5821_5332_5346#PolymorphicMapType_5821| (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@7) null (PredicateMaskField_5332 pm_f_9@@1))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| Heap@@7) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| ExhaleHeap@@3) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| ExhaleHeap@@3) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_8774_1356) ) (!  (=> (select (|PolymorphicMapType_5821_5332_1356#PolymorphicMapType_5821| (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@7) null (PredicateMaskField_5332 pm_f_9@@1))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| Heap@@7) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| ExhaleHeap@@3) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| ExhaleHeap@@3) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_5332_14269) ) (!  (=> (select (|PolymorphicMapType_5821_5332_14269#PolymorphicMapType_5821| (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@7) null (PredicateMaskField_5332 pm_f_9@@1))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| Heap@@7) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| ExhaleHeap@@3) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| ExhaleHeap@@3) o2_9@@2 f_24@@2))
))) (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_5332_14402) ) (!  (=> (select (|PolymorphicMapType_5821_5332_15580#PolymorphicMapType_5821| (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@7) null (PredicateMaskField_5332 pm_f_9@@1))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@7) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| ExhaleHeap@@3) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| ExhaleHeap@@3) o2_9@@3 f_24@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@15) (IsPredicateField_5332_14360 pm_f_9@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5272) (ExhaleHeap@@4 T@PolymorphicMapType_5272) (Mask@@16 T@PolymorphicMapType_5293) (pm_f_9@@2 T@Field_5332_14269) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_5332_14333 Mask@@16 null pm_f_9@@2) (IsWandField_5332_16107 pm_f_9@@2)) (and (and (and (and (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_5332_53) ) (!  (=> (select (|PolymorphicMapType_5821_5332_53#PolymorphicMapType_5821| (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@8) null (WandMaskField_5332 pm_f_9@@2))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| Heap@@8) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| ExhaleHeap@@4) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| ExhaleHeap@@4) o2_9@@4 f_24@@4))
)) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_5345_5346) ) (!  (=> (select (|PolymorphicMapType_5821_5332_5346#PolymorphicMapType_5821| (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@8) null (WandMaskField_5332 pm_f_9@@2))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| Heap@@8) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| ExhaleHeap@@4) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| ExhaleHeap@@4) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_8774_1356) ) (!  (=> (select (|PolymorphicMapType_5821_5332_1356#PolymorphicMapType_5821| (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@8) null (WandMaskField_5332 pm_f_9@@2))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| Heap@@8) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| ExhaleHeap@@4) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| ExhaleHeap@@4) o2_9@@6 f_24@@6))
))) (forall ((o2_9@@7 T@Ref) (f_24@@7 T@Field_5332_14269) ) (!  (=> (select (|PolymorphicMapType_5821_5332_14269#PolymorphicMapType_5821| (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@8) null (WandMaskField_5332 pm_f_9@@2))) o2_9@@7 f_24@@7) (= (select (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| Heap@@8) o2_9@@7 f_24@@7) (select (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| ExhaleHeap@@4) o2_9@@7 f_24@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| ExhaleHeap@@4) o2_9@@7 f_24@@7))
))) (forall ((o2_9@@8 T@Ref) (f_24@@8 T@Field_5332_14402) ) (!  (=> (select (|PolymorphicMapType_5821_5332_15580#PolymorphicMapType_5821| (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@8) null (WandMaskField_5332 pm_f_9@@2))) o2_9@@8 f_24@@8) (= (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@8) o2_9@@8 f_24@@8) (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| ExhaleHeap@@4) o2_9@@8 f_24@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| ExhaleHeap@@4) o2_9@@8 f_24@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@16) (IsWandField_5332_16107 pm_f_9@@2))
)))
(assert (forall ((p@@0 Real) (f_6@@0 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6@@0) (ite (> p@@0 0.0) f_6@@0 EmptyFrame))
 :qid |stdinbpl.184:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5272) (ExhaleHeap@@5 T@PolymorphicMapType_5272) (Mask@@17 T@PolymorphicMapType_5293) (o_27@@0 T@Ref) (f_24@@9 T@Field_5332_14402) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_5332_20107 Mask@@17 o_27@@0 f_24@@9) (= (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@9) o_27@@0 f_24@@9) (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| ExhaleHeap@@5) o_27@@0 f_24@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| ExhaleHeap@@5) o_27@@0 f_24@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5272) (ExhaleHeap@@6 T@PolymorphicMapType_5272) (Mask@@18 T@PolymorphicMapType_5293) (o_27@@1 T@Ref) (f_24@@10 T@Field_5332_14269) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_5332_14333 Mask@@18 o_27@@1 f_24@@10) (= (select (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| Heap@@10) o_27@@1 f_24@@10) (select (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| ExhaleHeap@@6) o_27@@1 f_24@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| ExhaleHeap@@6) o_27@@1 f_24@@10))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5272) (ExhaleHeap@@7 T@PolymorphicMapType_5272) (Mask@@19 T@PolymorphicMapType_5293) (o_27@@2 T@Ref) (f_24@@11 T@Field_8774_1356) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_5332_1356 Mask@@19 o_27@@2 f_24@@11) (= (select (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| Heap@@11) o_27@@2 f_24@@11) (select (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| ExhaleHeap@@7) o_27@@2 f_24@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| ExhaleHeap@@7) o_27@@2 f_24@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5272) (ExhaleHeap@@8 T@PolymorphicMapType_5272) (Mask@@20 T@PolymorphicMapType_5293) (o_27@@3 T@Ref) (f_24@@12 T@Field_5345_5346) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_5332_5346 Mask@@20 o_27@@3 f_24@@12) (= (select (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| Heap@@12) o_27@@3 f_24@@12) (select (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| ExhaleHeap@@8) o_27@@3 f_24@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| ExhaleHeap@@8) o_27@@3 f_24@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5272) (ExhaleHeap@@9 T@PolymorphicMapType_5272) (Mask@@21 T@PolymorphicMapType_5293) (o_27@@4 T@Ref) (f_24@@13 T@Field_5332_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_5332_53 Mask@@21 o_27@@4 f_24@@13) (= (select (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| Heap@@13) o_27@@4 f_24@@13) (select (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| ExhaleHeap@@9) o_27@@4 f_24@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| ExhaleHeap@@9) o_27@@4 f_24@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5332_14402) ) (! (= (select (|PolymorphicMapType_5293_3333_18524#PolymorphicMapType_5293| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5293_3333_18524#PolymorphicMapType_5293| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5332_14269) ) (! (= (select (|PolymorphicMapType_5293_3333_14269#PolymorphicMapType_5293| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5293_3333_14269#PolymorphicMapType_5293| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_5345_5346) ) (! (= (select (|PolymorphicMapType_5293_3333_5346#PolymorphicMapType_5293| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5293_3333_5346#PolymorphicMapType_5293| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_5332_53) ) (! (= (select (|PolymorphicMapType_5293_3333_53#PolymorphicMapType_5293| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5293_3333_53#PolymorphicMapType_5293| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_8774_1356) ) (! (= (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5293) (SummandMask1 T@PolymorphicMapType_5293) (SummandMask2 T@PolymorphicMapType_5293) (o_2@@19 T@Ref) (f_4@@19 T@Field_5332_14402) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5293_3333_18524#PolymorphicMapType_5293| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_5293_3333_18524#PolymorphicMapType_5293| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_5293_3333_18524#PolymorphicMapType_5293| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5293_3333_18524#PolymorphicMapType_5293| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5293_3333_18524#PolymorphicMapType_5293| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5293_3333_18524#PolymorphicMapType_5293| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5293) (SummandMask1@@0 T@PolymorphicMapType_5293) (SummandMask2@@0 T@PolymorphicMapType_5293) (o_2@@20 T@Ref) (f_4@@20 T@Field_5332_14269) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5293_3333_14269#PolymorphicMapType_5293| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_5293_3333_14269#PolymorphicMapType_5293| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_5293_3333_14269#PolymorphicMapType_5293| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5293_3333_14269#PolymorphicMapType_5293| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5293_3333_14269#PolymorphicMapType_5293| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5293_3333_14269#PolymorphicMapType_5293| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5293) (SummandMask1@@1 T@PolymorphicMapType_5293) (SummandMask2@@1 T@PolymorphicMapType_5293) (o_2@@21 T@Ref) (f_4@@21 T@Field_5345_5346) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5293_3333_5346#PolymorphicMapType_5293| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_5293_3333_5346#PolymorphicMapType_5293| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_5293_3333_5346#PolymorphicMapType_5293| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5293_3333_5346#PolymorphicMapType_5293| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5293_3333_5346#PolymorphicMapType_5293| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5293_3333_5346#PolymorphicMapType_5293| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5293) (SummandMask1@@2 T@PolymorphicMapType_5293) (SummandMask2@@2 T@PolymorphicMapType_5293) (o_2@@22 T@Ref) (f_4@@22 T@Field_5332_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5293_3333_53#PolymorphicMapType_5293| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_5293_3333_53#PolymorphicMapType_5293| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_5293_3333_53#PolymorphicMapType_5293| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5293_3333_53#PolymorphicMapType_5293| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5293_3333_53#PolymorphicMapType_5293| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5293_3333_53#PolymorphicMapType_5293| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5293) (SummandMask1@@3 T@PolymorphicMapType_5293) (SummandMask2@@3 T@PolymorphicMapType_5293) (o_2@@23 T@Ref) (f_4@@23 T@Field_8774_1356) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a_2@@2 T@ArrayDomainType) ) (! (>= (len_1 a_2@@2) 0)
 :qid |stdinbpl.227:15|
 :skolemid |23|
 :pattern ( (len_1 a_2@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5272) (a_2@@3 T@ArrayDomainType) ) (!  (and (= (f_6 Heap@@14 a_2@@3) (|f'| Heap@@14 a_2@@3)) (dummyFunction_1758 (|f#triggerStateless| a_2@@3)))
 :qid |stdinbpl.247:15|
 :skolemid |24|
 :pattern ( (f_6 Heap@@14 a_2@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5272) (a_2@@4 T@ArrayDomainType) ) (!  (and (= (g_3 Heap@@15 a_2@@4) (|g'| Heap@@15 a_2@@4)) (dummyFunction_1758 (|g#triggerStateless| a_2@@4)))
 :qid |stdinbpl.408:15|
 :skolemid |41|
 :pattern ( (g_3 Heap@@15 a_2@@4))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_5272) (Heap1Heap T@PolymorphicMapType_5272) (a_2@@5 T@ArrayDomainType) ) (!  (=> (and (=  (and (and (<= 0 (|sk_f#condqp1| (|f#condqp1| Heap2Heap a_2@@5) (|f#condqp1| Heap1Heap a_2@@5))) (< (|sk_f#condqp1| (|f#condqp1| Heap2Heap a_2@@5) (|f#condqp1| Heap1Heap a_2@@5)) (len_1 a_2@@5))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_f#condqp1| (|f#condqp1| Heap2Heap a_2@@5) (|f#condqp1| Heap1Heap a_2@@5))) (< (|sk_f#condqp1| (|f#condqp1| Heap2Heap a_2@@5) (|f#condqp1| Heap1Heap a_2@@5)) (len_1 a_2@@5))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_f#condqp1| (|f#condqp1| Heap2Heap a_2@@5) (|f#condqp1| Heap1Heap a_2@@5))) (< (|sk_f#condqp1| (|f#condqp1| Heap2Heap a_2@@5) (|f#condqp1| Heap1Heap a_2@@5)) (len_1 a_2@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| Heap2Heap) (loc a_2@@5 (|sk_f#condqp1| (|f#condqp1| Heap2Heap a_2@@5) (|f#condqp1| Heap1Heap a_2@@5))) val) (select (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| Heap1Heap) (loc a_2@@5 (|sk_f#condqp1| (|f#condqp1| Heap2Heap a_2@@5) (|f#condqp1| Heap1Heap a_2@@5))) val)))) (= (|f#condqp1| Heap2Heap a_2@@5) (|f#condqp1| Heap1Heap a_2@@5)))
 :qid |stdinbpl.277:15|
 :skolemid |29|
 :pattern ( (|f#condqp1| Heap2Heap a_2@@5) (|f#condqp1| Heap1Heap a_2@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_5272) (Heap1Heap@@0 T@PolymorphicMapType_5272) (a_2@@6 T@ArrayDomainType) ) (!  (=> (and (=  (and (and (<= 0 (|sk_g#condqp2| (|g#condqp2| Heap2Heap@@0 a_2@@6) (|g#condqp2| Heap1Heap@@0 a_2@@6))) (< (|sk_g#condqp2| (|g#condqp2| Heap2Heap@@0 a_2@@6) (|g#condqp2| Heap1Heap@@0 a_2@@6)) (len_1 a_2@@6))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_g#condqp2| (|g#condqp2| Heap2Heap@@0 a_2@@6) (|g#condqp2| Heap1Heap@@0 a_2@@6))) (< (|sk_g#condqp2| (|g#condqp2| Heap2Heap@@0 a_2@@6) (|g#condqp2| Heap1Heap@@0 a_2@@6)) (len_1 a_2@@6))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_g#condqp2| (|g#condqp2| Heap2Heap@@0 a_2@@6) (|g#condqp2| Heap1Heap@@0 a_2@@6))) (< (|sk_g#condqp2| (|g#condqp2| Heap2Heap@@0 a_2@@6) (|g#condqp2| Heap1Heap@@0 a_2@@6)) (len_1 a_2@@6))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| Heap2Heap@@0) (loc a_2@@6 (|sk_g#condqp2| (|g#condqp2| Heap2Heap@@0 a_2@@6) (|g#condqp2| Heap1Heap@@0 a_2@@6))) val) (select (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| Heap1Heap@@0) (loc a_2@@6 (|sk_g#condqp2| (|g#condqp2| Heap2Heap@@0 a_2@@6) (|g#condqp2| Heap1Heap@@0 a_2@@6))) val)))) (= (|g#condqp2| Heap2Heap@@0 a_2@@6) (|g#condqp2| Heap1Heap@@0 a_2@@6)))
 :qid |stdinbpl.429:15|
 :skolemid |44|
 :pattern ( (|g#condqp2| Heap2Heap@@0 a_2@@6) (|g#condqp2| Heap1Heap@@0 a_2@@6) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5272) (Mask@@22 T@PolymorphicMapType_5293) (a_2@@7 T@ArrayDomainType) ) (!  (=> (state Heap@@16 Mask@@22) (= (|f'| Heap@@16 a_2@@7) (|f#frame| (FrameFragment_1553 (|f#condqp1| Heap@@16 a_2@@7)) a_2@@7)))
 :qid |stdinbpl.267:15|
 :skolemid |28|
 :pattern ( (state Heap@@16 Mask@@22) (|f'| Heap@@16 a_2@@7))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5272) (Mask@@23 T@PolymorphicMapType_5293) (a_2@@8 T@ArrayDomainType) ) (!  (=> (state Heap@@17 Mask@@23) (= (|g'| Heap@@17 a_2@@8) (|g#frame| (FrameFragment_1553 (|g#condqp2| Heap@@17 a_2@@8)) a_2@@8)))
 :qid |stdinbpl.419:15|
 :skolemid |43|
 :pattern ( (state Heap@@17 Mask@@23) (|g'| Heap@@17 a_2@@8))
)))
(assert (forall ((a_2@@9 T@ArrayDomainType) (i Int) ) (!  (and (= (first (loc a_2@@9 i)) a_2@@9) (= (second (loc a_2@@9 i)) i))
 :qid |stdinbpl.221:15|
 :skolemid |22|
 :pattern ( (loc a_2@@9 i))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5272) (o_20 T@Ref) (f_31 T@Field_5332_14269) (v T@FrameType) ) (! (succHeap Heap@@18 (PolymorphicMapType_5272 (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| Heap@@18) (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| Heap@@18) (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| Heap@@18) (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@18) (store (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| Heap@@18) o_20 f_31 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5272 (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| Heap@@18) (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| Heap@@18) (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| Heap@@18) (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@18) (store (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| Heap@@18) o_20 f_31 v)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5272) (o_20@@0 T@Ref) (f_31@@0 T@Field_5332_14402) (v@@0 T@PolymorphicMapType_5821) ) (! (succHeap Heap@@19 (PolymorphicMapType_5272 (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| Heap@@19) (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| Heap@@19) (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| Heap@@19) (store (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@19) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5272 (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| Heap@@19) (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| Heap@@19) (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| Heap@@19) (store (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@19) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5272) (o_20@@1 T@Ref) (f_31@@1 T@Field_8774_1356) (v@@1 Int) ) (! (succHeap Heap@@20 (PolymorphicMapType_5272 (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| Heap@@20) (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| Heap@@20) (store (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| Heap@@20) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@20) (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5272 (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| Heap@@20) (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| Heap@@20) (store (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| Heap@@20) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@20) (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5272) (o_20@@2 T@Ref) (f_31@@2 T@Field_5345_5346) (v@@2 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_5272 (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| Heap@@21) (store (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| Heap@@21) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| Heap@@21) (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@21) (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5272 (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| Heap@@21) (store (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| Heap@@21) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| Heap@@21) (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@21) (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5272) (o_20@@3 T@Ref) (f_31@@3 T@Field_5332_53) (v@@3 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_5272 (store (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| Heap@@22) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| Heap@@22) (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| Heap@@22) (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@22) (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5272 (store (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| Heap@@22) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| Heap@@22) (|PolymorphicMapType_5272_3333_1356#PolymorphicMapType_5272| Heap@@22) (|PolymorphicMapType_5272_5332_14446#PolymorphicMapType_5272| Heap@@22) (|PolymorphicMapType_5272_5332_14269#PolymorphicMapType_5272| Heap@@22)))
)))
(assert (forall ((o_20@@4 T@Ref) (f_17 T@Field_5345_5346) (Heap@@23 T@PolymorphicMapType_5272) ) (!  (=> (select (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| Heap@@23) o_20@@4 $allocated) (select (|PolymorphicMapType_5272_3187_53#PolymorphicMapType_5272| Heap@@23) (select (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| Heap@@23) o_20@@4 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5272_3190_3191#PolymorphicMapType_5272| Heap@@23) o_20@@4 f_17))
)))
(assert (forall ((p@@1 T@Field_5332_14269) (v_1@@0 T@FrameType) (q T@Field_5332_14269) (w@@0 T@FrameType) (r T@Field_5332_14269) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5332_5332 p@@1 v_1@@0 q w@@0) (InsidePredicate_5332_5332 q w@@0 r u)) (InsidePredicate_5332_5332 p@@1 v_1@@0 r u))
 :qid |stdinbpl.191:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5332_5332 p@@1 v_1@@0 q w@@0) (InsidePredicate_5332_5332 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered2 (Int) Bool)
(declare-fun a_2@@10 () T@ArrayDomainType)
(declare-fun QPMask@0 () T@PolymorphicMapType_5293)
(declare-fun k_2 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun Heap@@24 () T@PolymorphicMapType_5272)
(set-info :boogie-vc-id |f#definedness|)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (forall ((x_5 Int) (x_5_1 Int) ) (!  (=> (and (and (and (and (not (= x_5 x_5_1)) (and (<= 0 x_5) (< x_5 (len_1 a_2@@10)))) (and (<= 0 x_5_1) (< x_5_1 (len_1 a_2@@10)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@10 x_5) (loc a_2@@10 x_5_1))))
 :qid |stdinbpl.362:25|
 :skolemid |36|
 :pattern ( (neverTriggered2 x_5) (neverTriggered2 x_5_1))
))) (=> (forall ((x_5@@0 Int) (x_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= x_5@@0 x_5_1@@0)) (and (<= 0 x_5@@0) (< x_5@@0 (len_1 a_2@@10)))) (and (<= 0 x_5_1@@0) (< x_5_1@@0 (len_1 a_2@@10)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@10 x_5@@0) (loc a_2@@10 x_5_1@@0))))
 :qid |stdinbpl.362:25|
 :skolemid |36|
 :pattern ( (neverTriggered2 x_5@@0) (neverTriggered2 x_5_1@@0))
)) (=> (= (ControlFlow 0 6) (- 0 5)) (forall ((x_5@@1 Int) ) (!  (=> (and (<= 0 x_5@@1) (< x_5@@1 (len_1 a_2@@10))) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| QPMask@0) (loc a_2@@10 x_5@@1) val) NoPerm)))
 :qid |stdinbpl.369:25|
 :skolemid |37|
 :pattern ( (loc a_2@@10 x_5@@1))
 :pattern ( (loc a_2@@10 x_5@@1))
)))))))
(let ((anon6_correct true))
(let ((anon10_Then_correct  (=> (and (<= 0 k_2) (< k_2 (len_1 a_2@@10))) (and (=> (= (ControlFlow 0 8) 6) anon11_Then_correct) (=> (= (ControlFlow 0 8) 3) anon6_correct)))))
(let ((anon10_Else_correct  (=> (and (not (and (<= 0 k_2) (< k_2 (len_1 a_2@@10)))) (= (ControlFlow 0 4) 3)) anon6_correct)))
(let ((anon9_Else_correct true))
(let ((anon8_Else_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (forall ((x_4 Int) (x_4_1 Int) ) (!  (=> (and (and (and (and (not (= x_4 x_4_1)) (and (<= 0 x_4) (< x_4 (len_1 a_2@@10)))) (and (<= 0 x_4_1) (< x_4_1 (len_1 a_2@@10)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@10 x_4) (loc a_2@@10 x_4_1))))
 :qid |stdinbpl.312:15|
 :skolemid |30|
))) (=> (forall ((x_4@@0 Int) (x_4_1@@0 Int) ) (!  (=> (and (and (and (and (not (= x_4@@0 x_4_1@@0)) (and (<= 0 x_4@@0) (< x_4@@0 (len_1 a_2@@10)))) (and (<= 0 x_4_1@@0) (< x_4_1@@0 (len_1 a_2@@10)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@10 x_4@@0) (loc a_2@@10 x_4_1@@0))))
 :qid |stdinbpl.312:15|
 :skolemid |30|
)) (=> (and (and (forall ((x_4@@1 Int) ) (!  (=> (and (and (<= 0 x_4@@1) (< x_4@@1 (len_1 a_2@@10))) (< NoPerm FullPerm)) (and (qpRange1 (loc a_2@@10 x_4@@1)) (= (invRecv1 (loc a_2@@10 x_4@@1)) x_4@@1)))
 :qid |stdinbpl.318:22|
 :skolemid |31|
 :pattern ( (loc a_2@@10 x_4@@1))
 :pattern ( (loc a_2@@10 x_4@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_4)) (< (invRecv1 o_4) (len_1 a_2@@10))) (< NoPerm FullPerm)) (qpRange1 o_4)) (= (loc a_2@@10 (invRecv1 o_4)) o_4))
 :qid |stdinbpl.322:22|
 :skolemid |32|
 :pattern ( (invRecv1 o_4))
))) (and (forall ((x_4@@2 Int) ) (!  (=> (and (<= 0 x_4@@2) (< x_4@@2 (len_1 a_2@@10))) (not (= (loc a_2@@10 x_4@@2) null)))
 :qid |stdinbpl.328:22|
 :skolemid |33|
 :pattern ( (loc a_2@@10 x_4@@2))
 :pattern ( (loc a_2@@10 x_4@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_4@@0)) (< (invRecv1 o_4@@0) (len_1 a_2@@10))) (< NoPerm FullPerm)) (qpRange1 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@10 (invRecv1 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| QPMask@0) o_4@@0 val) (+ (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| ZeroMask) o_4@@0 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv1 o_4@@0)) (< (invRecv1 o_4@@0) (len_1 a_2@@10))) (< NoPerm FullPerm)) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| QPMask@0) o_4@@0 val) (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| ZeroMask) o_4@@0 val))))
 :qid |stdinbpl.334:22|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| QPMask@0) o_4@@0 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_5332_53) ) (!  (=> true (= (select (|PolymorphicMapType_5293_3333_53#PolymorphicMapType_5293| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_5293_3333_53#PolymorphicMapType_5293| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.338:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5293_3333_53#PolymorphicMapType_5293| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_5293_3333_53#PolymorphicMapType_5293| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_5345_5346) ) (!  (=> true (= (select (|PolymorphicMapType_5293_3333_5346#PolymorphicMapType_5293| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_5293_3333_5346#PolymorphicMapType_5293| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.338:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5293_3333_5346#PolymorphicMapType_5293| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_5293_3333_5346#PolymorphicMapType_5293| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_8774_1356) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.338:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_5293_3333_1356#PolymorphicMapType_5293| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_5332_14269) ) (!  (=> true (= (select (|PolymorphicMapType_5293_3333_14269#PolymorphicMapType_5293| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_5293_3333_14269#PolymorphicMapType_5293| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.338:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5293_3333_14269#PolymorphicMapType_5293| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_5293_3333_14269#PolymorphicMapType_5293| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_5332_14402) ) (!  (=> true (= (select (|PolymorphicMapType_5293_3333_18524#PolymorphicMapType_5293| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_5293_3333_18524#PolymorphicMapType_5293| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.338:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5293_3333_18524#PolymorphicMapType_5293| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_5293_3333_18524#PolymorphicMapType_5293| QPMask@0) o_4@@5 f_5@@3))
))) (and (state Heap@@24 QPMask@0) (state Heap@@24 QPMask@0))) (and (and (=> (= (ControlFlow 0 9) 2) anon9_Else_correct) (=> (= (ControlFlow 0 9) 8) anon10_Then_correct)) (=> (= (ControlFlow 0 9) 4) anon10_Else_correct))))))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@24 ZeroMask) (=> (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 0)) (and (=> (= (ControlFlow 0 11) 1) anon8_Then_correct) (=> (= (ControlFlow 0 11) 9) anon8_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12) 11) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
