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
(declare-sort T@Field_5856_53 0)
(declare-sort T@Field_5869_5870 0)
(declare-sort T@Field_9183_1212 0)
(declare-sort T@Field_5856_17132 0)
(declare-sort T@Field_5856_16999 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5817 0)) (((PolymorphicMapType_5817 (|PolymorphicMapType_5817_2962_1212#PolymorphicMapType_5817| (Array T@Ref T@Field_9183_1212 Real)) (|PolymorphicMapType_5817_2962_53#PolymorphicMapType_5817| (Array T@Ref T@Field_5856_53 Real)) (|PolymorphicMapType_5817_2962_5870#PolymorphicMapType_5817| (Array T@Ref T@Field_5869_5870 Real)) (|PolymorphicMapType_5817_2962_16999#PolymorphicMapType_5817| (Array T@Ref T@Field_5856_16999 Real)) (|PolymorphicMapType_5817_2962_21254#PolymorphicMapType_5817| (Array T@Ref T@Field_5856_17132 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6345 0)) (((PolymorphicMapType_6345 (|PolymorphicMapType_6345_5856_53#PolymorphicMapType_6345| (Array T@Ref T@Field_5856_53 Bool)) (|PolymorphicMapType_6345_5856_5870#PolymorphicMapType_6345| (Array T@Ref T@Field_5869_5870 Bool)) (|PolymorphicMapType_6345_5856_1212#PolymorphicMapType_6345| (Array T@Ref T@Field_9183_1212 Bool)) (|PolymorphicMapType_6345_5856_16999#PolymorphicMapType_6345| (Array T@Ref T@Field_5856_16999 Bool)) (|PolymorphicMapType_6345_5856_18310#PolymorphicMapType_6345| (Array T@Ref T@Field_5856_17132 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5796 0)) (((PolymorphicMapType_5796 (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| (Array T@Ref T@Field_5856_53 Bool)) (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| (Array T@Ref T@Field_5869_5870 T@Ref)) (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| (Array T@Ref T@Field_9183_1212 Int)) (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| (Array T@Ref T@Field_5856_17132 T@PolymorphicMapType_6345)) (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| (Array T@Ref T@Field_5856_16999 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_5856_53)
(declare-fun f_7 () T@Field_9183_1212)
(declare-fun g () T@Field_9183_1212)
(declare-fun succHeap (T@PolymorphicMapType_5796 T@PolymorphicMapType_5796) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5796 T@PolymorphicMapType_5796) Bool)
(declare-fun state (T@PolymorphicMapType_5796 T@PolymorphicMapType_5817) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5817) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6345)
(declare-fun |test1'| (T@PolymorphicMapType_5796 T@Ref) Bool)
(declare-fun dummyFunction_1424 (Bool) Bool)
(declare-fun |test1#triggerStateless| (T@Ref) Bool)
(declare-fun |test2'| (T@PolymorphicMapType_5796 T@Ref) Bool)
(declare-fun |test2#triggerStateless| (T@Ref) Bool)
(declare-fun |nonTerminating'| (T@PolymorphicMapType_5796 T@Ref) Bool)
(declare-fun |nonTerminating#triggerStateless| (T@Ref) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5796 T@PolymorphicMapType_5796 T@PolymorphicMapType_5817) Bool)
(declare-fun IsPredicateField_5856_17090 (T@Field_5856_16999) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5856 (T@Field_5856_16999) T@Field_5856_17132)
(declare-fun HasDirectPerm_5856_17063 (T@PolymorphicMapType_5817 T@Ref T@Field_5856_16999) Bool)
(declare-fun IsWandField_5856_18837 (T@Field_5856_16999) Bool)
(declare-fun WandMaskField_5856 (T@Field_5856_16999) T@Field_5856_17132)
(declare-fun |test1#frame| (T@FrameType T@Ref) Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1212 (Int) T@FrameType)
(declare-fun dummyHeap () T@PolymorphicMapType_5796)
(declare-fun ZeroMask () T@PolymorphicMapType_5817)
(declare-fun InsidePredicate_5856_5856 (T@Field_5856_16999 T@FrameType T@Field_5856_16999 T@FrameType) Bool)
(declare-fun IsPredicateField_2962_1212 (T@Field_9183_1212) Bool)
(declare-fun IsWandField_2962_1212 (T@Field_9183_1212) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2962_22383 (T@Field_5856_17132) Bool)
(declare-fun IsWandField_2962_22399 (T@Field_5856_17132) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2962_5870 (T@Field_5869_5870) Bool)
(declare-fun IsWandField_2962_5870 (T@Field_5869_5870) Bool)
(declare-fun IsPredicateField_2962_53 (T@Field_5856_53) Bool)
(declare-fun IsWandField_2962_53 (T@Field_5856_53) Bool)
(declare-fun HasDirectPerm_5856_22837 (T@PolymorphicMapType_5817 T@Ref T@Field_5856_17132) Bool)
(declare-fun HasDirectPerm_5856_1212 (T@PolymorphicMapType_5817 T@Ref T@Field_9183_1212) Bool)
(declare-fun HasDirectPerm_5856_5870 (T@PolymorphicMapType_5817 T@Ref T@Field_5869_5870) Bool)
(declare-fun HasDirectPerm_5856_53 (T@PolymorphicMapType_5817 T@Ref T@Field_5856_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5817 T@PolymorphicMapType_5817 T@PolymorphicMapType_5817) Bool)
(declare-fun |nonTerminating#frame| (T@FrameType T@Ref) Bool)
(declare-fun test1_1 (T@PolymorphicMapType_5796 T@Ref) Bool)
(declare-fun test2_1 (T@PolymorphicMapType_5796 T@Ref) Bool)
(declare-fun nonTerminating (T@PolymorphicMapType_5796 T@Ref) Bool)
(declare-fun |test2#frame| (T@FrameType T@Ref) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_5796) (Heap1 T@PolymorphicMapType_5796) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5796) (Mask T@PolymorphicMapType_5817) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5796) (Heap1@@0 T@PolymorphicMapType_5796) (Heap2 T@PolymorphicMapType_5796) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5856_17132) ) (!  (not (select (|PolymorphicMapType_6345_5856_18310#PolymorphicMapType_6345| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6345_5856_18310#PolymorphicMapType_6345| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5856_16999) ) (!  (not (select (|PolymorphicMapType_6345_5856_16999#PolymorphicMapType_6345| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6345_5856_16999#PolymorphicMapType_6345| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9183_1212) ) (!  (not (select (|PolymorphicMapType_6345_5856_1212#PolymorphicMapType_6345| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6345_5856_1212#PolymorphicMapType_6345| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5869_5870) ) (!  (not (select (|PolymorphicMapType_6345_5856_5870#PolymorphicMapType_6345| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6345_5856_5870#PolymorphicMapType_6345| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5856_53) ) (!  (not (select (|PolymorphicMapType_6345_5856_53#PolymorphicMapType_6345| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6345_5856_53#PolymorphicMapType_6345| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5796) (x T@Ref) ) (! (dummyFunction_1424 (|test1#triggerStateless| x))
 :qid |stdinbpl.216:15|
 :skolemid |23|
 :pattern ( (|test1'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5796) (x@@0 T@Ref) ) (! (dummyFunction_1424 (|test2#triggerStateless| x@@0))
 :qid |stdinbpl.287:15|
 :skolemid |27|
 :pattern ( (|test2'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5796) (x@@1 T@Ref) ) (! (dummyFunction_1424 (|nonTerminating#triggerStateless| x@@1))
 :qid |stdinbpl.362:15|
 :skolemid |31|
 :pattern ( (|nonTerminating'| Heap@@2 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5796) (ExhaleHeap T@PolymorphicMapType_5796) (Mask@@0 T@PolymorphicMapType_5817) (pm_f T@Field_5856_16999) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5856_17063 Mask@@0 null pm_f) (IsPredicateField_5856_17090 pm_f)) (= (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@3) null (PredicateMaskField_5856 pm_f)) (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| ExhaleHeap) null (PredicateMaskField_5856 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_5856_17090 pm_f) (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| ExhaleHeap) null (PredicateMaskField_5856 pm_f)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5796) (ExhaleHeap@@0 T@PolymorphicMapType_5796) (Mask@@1 T@PolymorphicMapType_5817) (pm_f@@0 T@Field_5856_16999) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5856_17063 Mask@@1 null pm_f@@0) (IsWandField_5856_18837 pm_f@@0)) (= (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@4) null (WandMaskField_5856 pm_f@@0)) (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| ExhaleHeap@@0) null (WandMaskField_5856 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsWandField_5856_18837 pm_f@@0) (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| ExhaleHeap@@0) null (WandMaskField_5856 pm_f@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5796) (Mask@@2 T@PolymorphicMapType_5817) (x@@2 T@Ref) ) (!  (=> (state Heap@@5 Mask@@2) (= (|test1'| Heap@@5 x@@2) (|test1#frame| (CombineFrames (FrameFragment_1212 (select (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| Heap@@5) x@@2 f_7)) (FrameFragment_1212 (select (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| Heap@@5) x@@2 g))) x@@2)))
 :qid |stdinbpl.229:15|
 :skolemid |25|
 :pattern ( (state Heap@@5 Mask@@2) (|test1'| Heap@@5 x@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5796) (ExhaleHeap@@1 T@PolymorphicMapType_5796) (Mask@@3 T@PolymorphicMapType_5817) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| Heap@@6) o_1 $allocated) (select (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_5856_16999) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5856_5856 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5856_5856 p v_1 p w))
)))
(assert  (not (IsPredicateField_2962_1212 f_7)))
(assert  (not (IsWandField_2962_1212 f_7)))
(assert  (not (IsPredicateField_2962_1212 g)))
(assert  (not (IsWandField_2962_1212 g)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5796) (ExhaleHeap@@2 T@PolymorphicMapType_5796) (Mask@@4 T@PolymorphicMapType_5817) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@7 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_5817) (o_2@@4 T@Ref) (f_4@@4 T@Field_5856_17132) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_5817_2962_21254#PolymorphicMapType_5817| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_2962_22383 f_4@@4))) (not (IsWandField_2962_22399 f_4@@4))) (<= (select (|PolymorphicMapType_5817_2962_21254#PolymorphicMapType_5817| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_5817_2962_21254#PolymorphicMapType_5817| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_5817) (o_2@@5 T@Ref) (f_4@@5 T@Field_5856_16999) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_5817_2962_16999#PolymorphicMapType_5817| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5856_17090 f_4@@5))) (not (IsWandField_5856_18837 f_4@@5))) (<= (select (|PolymorphicMapType_5817_2962_16999#PolymorphicMapType_5817| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_5817_2962_16999#PolymorphicMapType_5817| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_5817) (o_2@@6 T@Ref) (f_4@@6 T@Field_5869_5870) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_5817_2962_5870#PolymorphicMapType_5817| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2962_5870 f_4@@6))) (not (IsWandField_2962_5870 f_4@@6))) (<= (select (|PolymorphicMapType_5817_2962_5870#PolymorphicMapType_5817| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_5817_2962_5870#PolymorphicMapType_5817| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5817) (o_2@@7 T@Ref) (f_4@@7 T@Field_5856_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5817_2962_53#PolymorphicMapType_5817| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2962_53 f_4@@7))) (not (IsWandField_2962_53 f_4@@7))) (<= (select (|PolymorphicMapType_5817_2962_53#PolymorphicMapType_5817| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5817_2962_53#PolymorphicMapType_5817| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5817) (o_2@@8 T@Ref) (f_4@@8 T@Field_9183_1212) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5817_2962_1212#PolymorphicMapType_5817| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_2962_1212 f_4@@8))) (not (IsWandField_2962_1212 f_4@@8))) (<= (select (|PolymorphicMapType_5817_2962_1212#PolymorphicMapType_5817| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5817_2962_1212#PolymorphicMapType_5817| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5817) (o_2@@9 T@Ref) (f_4@@9 T@Field_5856_17132) ) (! (= (HasDirectPerm_5856_22837 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5817_2962_21254#PolymorphicMapType_5817| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5856_22837 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5817) (o_2@@10 T@Ref) (f_4@@10 T@Field_5856_16999) ) (! (= (HasDirectPerm_5856_17063 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5817_2962_16999#PolymorphicMapType_5817| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5856_17063 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5817) (o_2@@11 T@Ref) (f_4@@11 T@Field_9183_1212) ) (! (= (HasDirectPerm_5856_1212 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_5817_2962_1212#PolymorphicMapType_5817| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5856_1212 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5817) (o_2@@12 T@Ref) (f_4@@12 T@Field_5869_5870) ) (! (= (HasDirectPerm_5856_5870 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_5817_2962_5870#PolymorphicMapType_5817| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5856_5870 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5817) (o_2@@13 T@Ref) (f_4@@13 T@Field_5856_53) ) (! (= (HasDirectPerm_5856_53 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_5817_2962_53#PolymorphicMapType_5817| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5856_53 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5796) (ExhaleHeap@@3 T@PolymorphicMapType_5796) (Mask@@15 T@PolymorphicMapType_5817) (pm_f@@1 T@Field_5856_16999) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_5856_17063 Mask@@15 null pm_f@@1) (IsPredicateField_5856_17090 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_5856_53) ) (!  (=> (select (|PolymorphicMapType_6345_5856_53#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@8) null (PredicateMaskField_5856 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| Heap@@8) o2 f_2) (select (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_5869_5870) ) (!  (=> (select (|PolymorphicMapType_6345_5856_5870#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@8) null (PredicateMaskField_5856 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| Heap@@8) o2@@0 f_2@@0) (select (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_9183_1212) ) (!  (=> (select (|PolymorphicMapType_6345_5856_1212#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@8) null (PredicateMaskField_5856 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| Heap@@8) o2@@1 f_2@@1) (select (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_5856_16999) ) (!  (=> (select (|PolymorphicMapType_6345_5856_16999#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@8) null (PredicateMaskField_5856 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| Heap@@8) o2@@2 f_2@@2) (select (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_5856_17132) ) (!  (=> (select (|PolymorphicMapType_6345_5856_18310#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@8) null (PredicateMaskField_5856 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@8) o2@@3 f_2@@3) (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@15) (IsPredicateField_5856_17090 pm_f@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5796) (ExhaleHeap@@4 T@PolymorphicMapType_5796) (Mask@@16 T@PolymorphicMapType_5817) (pm_f@@2 T@Field_5856_16999) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_5856_17063 Mask@@16 null pm_f@@2) (IsWandField_5856_18837 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_5856_53) ) (!  (=> (select (|PolymorphicMapType_6345_5856_53#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@9) null (WandMaskField_5856 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| Heap@@9) o2@@4 f_2@@4) (select (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_5869_5870) ) (!  (=> (select (|PolymorphicMapType_6345_5856_5870#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@9) null (WandMaskField_5856 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| Heap@@9) o2@@5 f_2@@5) (select (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_9183_1212) ) (!  (=> (select (|PolymorphicMapType_6345_5856_1212#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@9) null (WandMaskField_5856 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| Heap@@9) o2@@6 f_2@@6) (select (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_5856_16999) ) (!  (=> (select (|PolymorphicMapType_6345_5856_16999#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@9) null (WandMaskField_5856 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| Heap@@9) o2@@7 f_2@@7) (select (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_5856_17132) ) (!  (=> (select (|PolymorphicMapType_6345_5856_18310#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@9) null (WandMaskField_5856 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@9) o2@@8 f_2@@8) (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@16) (IsWandField_5856_18837 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5796) (ExhaleHeap@@5 T@PolymorphicMapType_5796) (Mask@@17 T@PolymorphicMapType_5817) (o_1@@0 T@Ref) (f_2@@9 T@Field_5856_17132) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_5856_22837 Mask@@17 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@10) o_1@@0 f_2@@9) (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5796) (ExhaleHeap@@6 T@PolymorphicMapType_5796) (Mask@@18 T@PolymorphicMapType_5817) (o_1@@1 T@Ref) (f_2@@10 T@Field_5856_16999) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_5856_17063 Mask@@18 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| Heap@@11) o_1@@1 f_2@@10) (select (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5796) (ExhaleHeap@@7 T@PolymorphicMapType_5796) (Mask@@19 T@PolymorphicMapType_5817) (o_1@@2 T@Ref) (f_2@@11 T@Field_9183_1212) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_5856_1212 Mask@@19 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| Heap@@12) o_1@@2 f_2@@11) (select (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5796) (ExhaleHeap@@8 T@PolymorphicMapType_5796) (Mask@@20 T@PolymorphicMapType_5817) (o_1@@3 T@Ref) (f_2@@12 T@Field_5869_5870) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_5856_5870 Mask@@20 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| Heap@@13) o_1@@3 f_2@@12) (select (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5796) (ExhaleHeap@@9 T@PolymorphicMapType_5796) (Mask@@21 T@PolymorphicMapType_5817) (o_1@@4 T@Ref) (f_2@@13 T@Field_5856_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_5856_53 Mask@@21 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| Heap@@14) o_1@@4 f_2@@13) (select (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5856_17132) ) (! (= (select (|PolymorphicMapType_5817_2962_21254#PolymorphicMapType_5817| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5817_2962_21254#PolymorphicMapType_5817| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5856_16999) ) (! (= (select (|PolymorphicMapType_5817_2962_16999#PolymorphicMapType_5817| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5817_2962_16999#PolymorphicMapType_5817| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_5869_5870) ) (! (= (select (|PolymorphicMapType_5817_2962_5870#PolymorphicMapType_5817| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5817_2962_5870#PolymorphicMapType_5817| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_5856_53) ) (! (= (select (|PolymorphicMapType_5817_2962_53#PolymorphicMapType_5817| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5817_2962_53#PolymorphicMapType_5817| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_9183_1212) ) (! (= (select (|PolymorphicMapType_5817_2962_1212#PolymorphicMapType_5817| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5817_2962_1212#PolymorphicMapType_5817| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5817) (SummandMask1 T@PolymorphicMapType_5817) (SummandMask2 T@PolymorphicMapType_5817) (o_2@@19 T@Ref) (f_4@@19 T@Field_5856_17132) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5817_2962_21254#PolymorphicMapType_5817| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_5817_2962_21254#PolymorphicMapType_5817| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_5817_2962_21254#PolymorphicMapType_5817| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5817_2962_21254#PolymorphicMapType_5817| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5817_2962_21254#PolymorphicMapType_5817| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5817_2962_21254#PolymorphicMapType_5817| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5817) (SummandMask1@@0 T@PolymorphicMapType_5817) (SummandMask2@@0 T@PolymorphicMapType_5817) (o_2@@20 T@Ref) (f_4@@20 T@Field_5856_16999) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5817_2962_16999#PolymorphicMapType_5817| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_5817_2962_16999#PolymorphicMapType_5817| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_5817_2962_16999#PolymorphicMapType_5817| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5817_2962_16999#PolymorphicMapType_5817| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5817_2962_16999#PolymorphicMapType_5817| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5817_2962_16999#PolymorphicMapType_5817| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5817) (SummandMask1@@1 T@PolymorphicMapType_5817) (SummandMask2@@1 T@PolymorphicMapType_5817) (o_2@@21 T@Ref) (f_4@@21 T@Field_5869_5870) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5817_2962_5870#PolymorphicMapType_5817| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_5817_2962_5870#PolymorphicMapType_5817| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_5817_2962_5870#PolymorphicMapType_5817| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5817_2962_5870#PolymorphicMapType_5817| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5817_2962_5870#PolymorphicMapType_5817| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5817_2962_5870#PolymorphicMapType_5817| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5817) (SummandMask1@@2 T@PolymorphicMapType_5817) (SummandMask2@@2 T@PolymorphicMapType_5817) (o_2@@22 T@Ref) (f_4@@22 T@Field_5856_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5817_2962_53#PolymorphicMapType_5817| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_5817_2962_53#PolymorphicMapType_5817| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_5817_2962_53#PolymorphicMapType_5817| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5817_2962_53#PolymorphicMapType_5817| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5817_2962_53#PolymorphicMapType_5817| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5817_2962_53#PolymorphicMapType_5817| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5817) (SummandMask1@@3 T@PolymorphicMapType_5817) (SummandMask2@@3 T@PolymorphicMapType_5817) (o_2@@23 T@Ref) (f_4@@23 T@Field_9183_1212) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5817_2962_1212#PolymorphicMapType_5817| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_5817_2962_1212#PolymorphicMapType_5817| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_5817_2962_1212#PolymorphicMapType_5817| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5817_2962_1212#PolymorphicMapType_5817| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5817_2962_1212#PolymorphicMapType_5817| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5817_2962_1212#PolymorphicMapType_5817| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5796) (Mask@@22 T@PolymorphicMapType_5817) (x@@3 T@Ref) ) (!  (=> (state Heap@@15 Mask@@22) (= (|nonTerminating'| Heap@@15 x@@3) (|nonTerminating#frame| EmptyFrame x@@3)))
 :qid |stdinbpl.369:15|
 :skolemid |32|
 :pattern ( (state Heap@@15 Mask@@22) (|nonTerminating'| Heap@@15 x@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5796) (x@@4 T@Ref) ) (!  (and (= (test1_1 Heap@@16 x@@4) (|test1'| Heap@@16 x@@4)) (dummyFunction_1424 (|test1#triggerStateless| x@@4)))
 :qid |stdinbpl.212:15|
 :skolemid |22|
 :pattern ( (test1_1 Heap@@16 x@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5796) (x@@5 T@Ref) ) (!  (and (= (test2_1 Heap@@17 x@@5) (|test2'| Heap@@17 x@@5)) (dummyFunction_1424 (|test2#triggerStateless| x@@5)))
 :qid |stdinbpl.283:15|
 :skolemid |26|
 :pattern ( (test2_1 Heap@@17 x@@5))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5796) (x@@6 T@Ref) ) (!  (and (= (nonTerminating Heap@@18 x@@6) (|nonTerminating'| Heap@@18 x@@6)) (dummyFunction_1424 (|nonTerminating#triggerStateless| x@@6)))
 :qid |stdinbpl.358:15|
 :skolemid |30|
 :pattern ( (nonTerminating Heap@@18 x@@6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5796) (o T@Ref) (f_3 T@Field_5856_16999) (v T@FrameType) ) (! (succHeap Heap@@19 (PolymorphicMapType_5796 (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| Heap@@19) (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| Heap@@19) (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| Heap@@19) (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@19) (store (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| Heap@@19) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5796 (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| Heap@@19) (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| Heap@@19) (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| Heap@@19) (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@19) (store (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| Heap@@19) o f_3 v)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5796) (o@@0 T@Ref) (f_3@@0 T@Field_5856_17132) (v@@0 T@PolymorphicMapType_6345) ) (! (succHeap Heap@@20 (PolymorphicMapType_5796 (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| Heap@@20) (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| Heap@@20) (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| Heap@@20) (store (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@20) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5796 (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| Heap@@20) (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| Heap@@20) (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| Heap@@20) (store (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@20) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5796) (o@@1 T@Ref) (f_3@@1 T@Field_9183_1212) (v@@1 Int) ) (! (succHeap Heap@@21 (PolymorphicMapType_5796 (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| Heap@@21) (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| Heap@@21) (store (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| Heap@@21) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@21) (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5796 (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| Heap@@21) (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| Heap@@21) (store (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| Heap@@21) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@21) (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5796) (o@@2 T@Ref) (f_3@@2 T@Field_5869_5870) (v@@2 T@Ref) ) (! (succHeap Heap@@22 (PolymorphicMapType_5796 (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| Heap@@22) (store (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| Heap@@22) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| Heap@@22) (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@22) (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5796 (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| Heap@@22) (store (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| Heap@@22) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| Heap@@22) (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@22) (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5796) (o@@3 T@Ref) (f_3@@3 T@Field_5856_53) (v@@3 Bool) ) (! (succHeap Heap@@23 (PolymorphicMapType_5796 (store (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| Heap@@23) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| Heap@@23) (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| Heap@@23) (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@23) (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5796 (store (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| Heap@@23) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| Heap@@23) (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| Heap@@23) (|PolymorphicMapType_5796_5856_17176#PolymorphicMapType_5796| Heap@@23) (|PolymorphicMapType_5796_5856_16999#PolymorphicMapType_5796| Heap@@23)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_5869_5870) (Heap@@24 T@PolymorphicMapType_5796) ) (!  (=> (select (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| Heap@@24) o@@4 $allocated) (select (|PolymorphicMapType_5796_2834_53#PolymorphicMapType_5796| Heap@@24) (select (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| Heap@@24) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5796_2837_2838#PolymorphicMapType_5796| Heap@@24) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_5856_16999) (v_1@@0 T@FrameType) (q T@Field_5856_16999) (w@@0 T@FrameType) (r T@Field_5856_16999) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5856_5856 p@@1 v_1@@0 q w@@0) (InsidePredicate_5856_5856 q w@@0 r u)) (InsidePredicate_5856_5856 p@@1 v_1@@0 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5856_5856 p@@1 v_1@@0 q w@@0) (InsidePredicate_5856_5856 q w@@0 r u))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5796) (Mask@@23 T@PolymorphicMapType_5817) (x@@7 T@Ref) ) (!  (=> (state Heap@@25 Mask@@23) (= (|test2'| Heap@@25 x@@7) (|test2#frame| (CombineFrames (FrameFragment_1212 (select (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| Heap@@25) x@@7 f_7)) (CombineFrames (FrameFragment_1212 (select (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| Heap@@25) x@@7 f_7)) (FrameFragment_1212 (select (|PolymorphicMapType_5796_2962_1212#PolymorphicMapType_5796| Heap@@25) x@@7 g)))) x@@7)))
 :qid |stdinbpl.300:15|
 :skolemid |29|
 :pattern ( (state Heap@@25 Mask@@23) (|test2'| Heap@@25 x@@7))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5796) (Mask@@24 T@PolymorphicMapType_5817) (x@@8 T@Ref) ) (!  (=> (and (state Heap@@26 Mask@@24) (< AssumeFunctionsAbove 0)) (= (test2_1 Heap@@26 x@@8) (nonTerminating Heap@@26 x@@8)))
 :qid |stdinbpl.293:15|
 :skolemid |28|
 :pattern ( (state Heap@@26 Mask@@24) (test2_1 Heap@@26 x@@8))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5796) (Mask@@25 T@PolymorphicMapType_5817) (x@@9 T@Ref) ) (!  (=> (and (state Heap@@27 Mask@@25) (< AssumeFunctionsAbove 1)) (= (test1_1 Heap@@27 x@@9) (nonTerminating Heap@@27 x@@9)))
 :qid |stdinbpl.222:15|
 :skolemid |24|
 :pattern ( (state Heap@@27 Mask@@25) (test1_1 Heap@@27 x@@9))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |test1#definedness|)
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
 (=> (= (ControlFlow 0 0) 4) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid