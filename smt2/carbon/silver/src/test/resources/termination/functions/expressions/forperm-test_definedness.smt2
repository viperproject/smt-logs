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
(declare-sort T@Field_4969_53 0)
(declare-sort T@Field_4982_4983 0)
(declare-sort T@Field_8296_1212 0)
(declare-sort T@Field_2596_13810 0)
(declare-sort T@Field_2596_13677 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4930 0)) (((PolymorphicMapType_4930 (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| (Array T@Ref T@Field_8296_1212 Real)) (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| (Array T@Ref T@Field_4969_53 Real)) (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| (Array T@Ref T@Field_4982_4983 Real)) (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| (Array T@Ref T@Field_2596_13677 Real)) (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| (Array T@Ref T@Field_2596_13810 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5458 0)) (((PolymorphicMapType_5458 (|PolymorphicMapType_5458_4969_53#PolymorphicMapType_5458| (Array T@Ref T@Field_4969_53 Bool)) (|PolymorphicMapType_5458_4969_4983#PolymorphicMapType_5458| (Array T@Ref T@Field_4982_4983 Bool)) (|PolymorphicMapType_5458_4969_1212#PolymorphicMapType_5458| (Array T@Ref T@Field_8296_1212 Bool)) (|PolymorphicMapType_5458_4969_13677#PolymorphicMapType_5458| (Array T@Ref T@Field_2596_13677 Bool)) (|PolymorphicMapType_5458_4969_14988#PolymorphicMapType_5458| (Array T@Ref T@Field_2596_13810 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4909 0)) (((PolymorphicMapType_4909 (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| (Array T@Ref T@Field_4969_53 Bool)) (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| (Array T@Ref T@Field_4982_4983 T@Ref)) (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| (Array T@Ref T@Field_8296_1212 Int)) (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| (Array T@Ref T@Field_2596_13810 T@PolymorphicMapType_5458)) (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| (Array T@Ref T@Field_2596_13677 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_4969_53)
(declare-fun f_7 () T@Field_8296_1212)
(declare-fun succHeap (T@PolymorphicMapType_4909 T@PolymorphicMapType_4909) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4909 T@PolymorphicMapType_4909) Bool)
(declare-fun state (T@PolymorphicMapType_4909 T@PolymorphicMapType_4930) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4930) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5458)
(declare-fun |test'| (T@PolymorphicMapType_4909 T@Ref) Bool)
(declare-fun dummyFunction_1396 (Bool) Bool)
(declare-fun |test#triggerStateless| (T@Ref) Bool)
(declare-fun |test2'| (T@PolymorphicMapType_4909 T@Ref) Bool)
(declare-fun |test2#triggerStateless| (T@Ref) Bool)
(declare-fun |nonTerminating'| (T@PolymorphicMapType_4909 Int) Bool)
(declare-fun |nonTerminating#triggerStateless| (Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4909 T@PolymorphicMapType_4909 T@PolymorphicMapType_4930) Bool)
(declare-fun IsPredicateField_2596_13768 (T@Field_2596_13677) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2596 (T@Field_2596_13677) T@Field_2596_13810)
(declare-fun HasDirectPerm_2596_13741 (T@PolymorphicMapType_4930 T@Ref T@Field_2596_13677) Bool)
(declare-fun IsWandField_2596_15515 (T@Field_2596_13677) Bool)
(declare-fun WandMaskField_2596 (T@Field_2596_13677) T@Field_2596_13810)
(declare-fun test2 (T@PolymorphicMapType_4909 T@Ref) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun test (T@PolymorphicMapType_4909 T@Ref) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_4909)
(declare-fun ZeroMask () T@PolymorphicMapType_4930)
(declare-fun InsidePredicate_4969_4969 (T@Field_2596_13677 T@FrameType T@Field_2596_13677 T@FrameType) Bool)
(declare-fun IsPredicateField_2596_1212 (T@Field_8296_1212) Bool)
(declare-fun IsWandField_2596_1212 (T@Field_8296_1212) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2596_19061 (T@Field_2596_13810) Bool)
(declare-fun IsWandField_2596_19077 (T@Field_2596_13810) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2596_4983 (T@Field_4982_4983) Bool)
(declare-fun IsWandField_2596_4983 (T@Field_4982_4983) Bool)
(declare-fun IsPredicateField_2596_53 (T@Field_4969_53) Bool)
(declare-fun IsWandField_2596_53 (T@Field_4969_53) Bool)
(declare-fun HasDirectPerm_2596_19515 (T@PolymorphicMapType_4930 T@Ref T@Field_2596_13810) Bool)
(declare-fun HasDirectPerm_2596_4983 (T@PolymorphicMapType_4930 T@Ref T@Field_4982_4983) Bool)
(declare-fun HasDirectPerm_2596_53 (T@PolymorphicMapType_4930 T@Ref T@Field_4969_53) Bool)
(declare-fun HasDirectPerm_2596_1212 (T@PolymorphicMapType_4930 T@Ref T@Field_8296_1212) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4930 T@PolymorphicMapType_4930 T@PolymorphicMapType_4930) Bool)
(declare-fun |test#frame| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_1212 (Int) T@FrameType)
(declare-fun |test2#frame| (T@FrameType T@Ref) Bool)
(declare-fun |nonTerminating#frame| (T@FrameType Int) Bool)
(declare-fun nonTerminating (T@PolymorphicMapType_4909 Int) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_4909) (Heap1 T@PolymorphicMapType_4909) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4909) (Mask T@PolymorphicMapType_4930) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4909) (Heap1@@0 T@PolymorphicMapType_4909) (Heap2 T@PolymorphicMapType_4909) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2596_13810) ) (!  (not (select (|PolymorphicMapType_5458_4969_14988#PolymorphicMapType_5458| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5458_4969_14988#PolymorphicMapType_5458| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2596_13677) ) (!  (not (select (|PolymorphicMapType_5458_4969_13677#PolymorphicMapType_5458| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5458_4969_13677#PolymorphicMapType_5458| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8296_1212) ) (!  (not (select (|PolymorphicMapType_5458_4969_1212#PolymorphicMapType_5458| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5458_4969_1212#PolymorphicMapType_5458| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4982_4983) ) (!  (not (select (|PolymorphicMapType_5458_4969_4983#PolymorphicMapType_5458| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5458_4969_4983#PolymorphicMapType_5458| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4969_53) ) (!  (not (select (|PolymorphicMapType_5458_4969_53#PolymorphicMapType_5458| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5458_4969_53#PolymorphicMapType_5458| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4909) (x T@Ref) ) (! (dummyFunction_1396 (|test#triggerStateless| x))
 :qid |stdinbpl.213:15|
 :skolemid |23|
 :pattern ( (|test'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4909) (x@@0 T@Ref) ) (! (dummyFunction_1396 (|test2#triggerStateless| x@@0))
 :qid |stdinbpl.307:15|
 :skolemid |28|
 :pattern ( (|test2'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4909) (v_2 Int) ) (! (dummyFunction_1396 (|nonTerminating#triggerStateless| v_2))
 :qid |stdinbpl.390:15|
 :skolemid |33|
 :pattern ( (|nonTerminating'| Heap@@2 v_2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4909) (ExhaleHeap T@PolymorphicMapType_4909) (Mask@@0 T@PolymorphicMapType_4930) (pm_f_5 T@Field_2596_13677) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2596_13741 Mask@@0 null pm_f_5) (IsPredicateField_2596_13768 pm_f_5)) (= (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@3) null (PredicateMaskField_2596 pm_f_5)) (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap) null (PredicateMaskField_2596 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_2596_13768 pm_f_5) (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap) null (PredicateMaskField_2596 pm_f_5)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4909) (ExhaleHeap@@0 T@PolymorphicMapType_4909) (Mask@@1 T@PolymorphicMapType_4930) (pm_f_5@@0 T@Field_2596_13677) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2596_13741 Mask@@1 null pm_f_5@@0) (IsWandField_2596_15515 pm_f_5@@0)) (= (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@4) null (WandMaskField_2596 pm_f_5@@0)) (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap@@0) null (WandMaskField_2596 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsWandField_2596_15515 pm_f_5@@0) (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap@@0) null (WandMaskField_2596 pm_f_5@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4909) (Mask@@2 T@PolymorphicMapType_4930) (x@@1 T@Ref) ) (!  (=> (and (state Heap@@5 Mask@@2) (< AssumeFunctionsAbove 0)) (test2 Heap@@5 x@@1))
 :qid |stdinbpl.313:15|
 :skolemid |29|
 :pattern ( (state Heap@@5 Mask@@2) (test2 Heap@@5 x@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4909) (Mask@@3 T@PolymorphicMapType_4930) (x@@2 T@Ref) ) (!  (=> (and (state Heap@@6 Mask@@3) (< AssumeFunctionsAbove 1)) (test Heap@@6 x@@2))
 :qid |stdinbpl.219:15|
 :skolemid |24|
 :pattern ( (state Heap@@6 Mask@@3) (test Heap@@6 x@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4909) (ExhaleHeap@@1 T@PolymorphicMapType_4909) (Mask@@4 T@PolymorphicMapType_4930) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@4) (=> (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@7) o_15 $allocated) (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| ExhaleHeap@@1) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@4) (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| ExhaleHeap@@1) o_15 $allocated))
)))
(assert (forall ((p T@Field_2596_13677) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4969_4969 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4969_4969 p v_1 p w))
)))
(assert  (not (IsPredicateField_2596_1212 f_7)))
(assert  (not (IsWandField_2596_1212 f_7)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4909) (ExhaleHeap@@2 T@PolymorphicMapType_4909) (Mask@@5 T@PolymorphicMapType_4930) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@5) (succHeap Heap@@8 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_4930) (o_2@@4 T@Ref) (f_4@@4 T@Field_2596_13810) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| Mask@@6) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2596_19061 f_4@@4))) (not (IsWandField_2596_19077 f_4@@4))) (<= (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| Mask@@6) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| Mask@@6) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_4930) (o_2@@5 T@Ref) (f_4@@5 T@Field_2596_13677) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| Mask@@7) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2596_13768 f_4@@5))) (not (IsWandField_2596_15515 f_4@@5))) (<= (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| Mask@@7) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| Mask@@7) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4930) (o_2@@6 T@Ref) (f_4@@6 T@Field_4982_4983) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| Mask@@8) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2596_4983 f_4@@6))) (not (IsWandField_2596_4983 f_4@@6))) (<= (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| Mask@@8) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| Mask@@8) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4930) (o_2@@7 T@Ref) (f_4@@7 T@Field_4969_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| Mask@@9) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_2596_53 f_4@@7))) (not (IsWandField_2596_53 f_4@@7))) (<= (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| Mask@@9) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| Mask@@9) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4930) (o_2@@8 T@Ref) (f_4@@8 T@Field_8296_1212) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| Mask@@10) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_2596_1212 f_4@@8))) (not (IsWandField_2596_1212 f_4@@8))) (<= (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| Mask@@10) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| Mask@@10) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4930) (o_2@@9 T@Ref) (f_4@@9 T@Field_2596_13810) ) (! (= (HasDirectPerm_2596_19515 Mask@@11 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| Mask@@11) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2596_19515 Mask@@11 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4930) (o_2@@10 T@Ref) (f_4@@10 T@Field_2596_13677) ) (! (= (HasDirectPerm_2596_13741 Mask@@12 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| Mask@@12) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2596_13741 Mask@@12 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4930) (o_2@@11 T@Ref) (f_4@@11 T@Field_4982_4983) ) (! (= (HasDirectPerm_2596_4983 Mask@@13 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| Mask@@13) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2596_4983 Mask@@13 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4930) (o_2@@12 T@Ref) (f_4@@12 T@Field_4969_53) ) (! (= (HasDirectPerm_2596_53 Mask@@14 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| Mask@@14) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2596_53 Mask@@14 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4930) (o_2@@13 T@Ref) (f_4@@13 T@Field_8296_1212) ) (! (= (HasDirectPerm_2596_1212 Mask@@15 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| Mask@@15) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2596_1212 Mask@@15 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4909) (ExhaleHeap@@3 T@PolymorphicMapType_4909) (Mask@@16 T@PolymorphicMapType_4930) (pm_f_5@@1 T@Field_2596_13677) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@16) (=> (and (HasDirectPerm_2596_13741 Mask@@16 null pm_f_5@@1) (IsPredicateField_2596_13768 pm_f_5@@1)) (and (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_4969_53) ) (!  (=> (select (|PolymorphicMapType_5458_4969_53#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@9) null (PredicateMaskField_2596 pm_f_5@@1))) o2_5 f_23) (= (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@9) o2_5 f_23) (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_4982_4983) ) (!  (=> (select (|PolymorphicMapType_5458_4969_4983#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@9) null (PredicateMaskField_2596 pm_f_5@@1))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@9) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_8296_1212) ) (!  (=> (select (|PolymorphicMapType_5458_4969_1212#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@9) null (PredicateMaskField_2596 pm_f_5@@1))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@9) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_2596_13677) ) (!  (=> (select (|PolymorphicMapType_5458_4969_13677#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@9) null (PredicateMaskField_2596 pm_f_5@@1))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@9) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5@@2 f_23@@2))
))) (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_2596_13810) ) (!  (=> (select (|PolymorphicMapType_5458_4969_14988#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@9) null (PredicateMaskField_2596 pm_f_5@@1))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@9) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5@@3 f_23@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@16) (IsPredicateField_2596_13768 pm_f_5@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4909) (ExhaleHeap@@4 T@PolymorphicMapType_4909) (Mask@@17 T@PolymorphicMapType_4930) (pm_f_5@@2 T@Field_2596_13677) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@17) (=> (and (HasDirectPerm_2596_13741 Mask@@17 null pm_f_5@@2) (IsWandField_2596_15515 pm_f_5@@2)) (and (and (and (and (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_4969_53) ) (!  (=> (select (|PolymorphicMapType_5458_4969_53#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@10) null (WandMaskField_2596 pm_f_5@@2))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@10) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@4 f_23@@4))
)) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_4982_4983) ) (!  (=> (select (|PolymorphicMapType_5458_4969_4983#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@10) null (WandMaskField_2596 pm_f_5@@2))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@10) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_8296_1212) ) (!  (=> (select (|PolymorphicMapType_5458_4969_1212#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@10) null (WandMaskField_2596 pm_f_5@@2))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@10) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@6 f_23@@6))
))) (forall ((o2_5@@7 T@Ref) (f_23@@7 T@Field_2596_13677) ) (!  (=> (select (|PolymorphicMapType_5458_4969_13677#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@10) null (WandMaskField_2596 pm_f_5@@2))) o2_5@@7 f_23@@7) (= (select (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@10) o2_5@@7 f_23@@7) (select (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@7 f_23@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@7 f_23@@7))
))) (forall ((o2_5@@8 T@Ref) (f_23@@8 T@Field_2596_13810) ) (!  (=> (select (|PolymorphicMapType_5458_4969_14988#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@10) null (WandMaskField_2596 pm_f_5@@2))) o2_5@@8 f_23@@8) (= (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@10) o2_5@@8 f_23@@8) (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@8 f_23@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@8 f_23@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@17) (IsWandField_2596_15515 pm_f_5@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4909) (ExhaleHeap@@5 T@PolymorphicMapType_4909) (Mask@@18 T@PolymorphicMapType_4930) (o_15@@0 T@Ref) (f_23@@9 T@Field_2596_13810) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_2596_19515 Mask@@18 o_15@@0 f_23@@9) (= (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@11) o_15@@0 f_23@@9) (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap@@5) o_15@@0 f_23@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap@@5) o_15@@0 f_23@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4909) (ExhaleHeap@@6 T@PolymorphicMapType_4909) (Mask@@19 T@PolymorphicMapType_4930) (o_15@@1 T@Ref) (f_23@@10 T@Field_2596_13677) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_2596_13741 Mask@@19 o_15@@1 f_23@@10) (= (select (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@12) o_15@@1 f_23@@10) (select (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| ExhaleHeap@@6) o_15@@1 f_23@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| ExhaleHeap@@6) o_15@@1 f_23@@10))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4909) (ExhaleHeap@@7 T@PolymorphicMapType_4909) (Mask@@20 T@PolymorphicMapType_4930) (o_15@@2 T@Ref) (f_23@@11 T@Field_4982_4983) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_2596_4983 Mask@@20 o_15@@2 f_23@@11) (= (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@13) o_15@@2 f_23@@11) (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| ExhaleHeap@@7) o_15@@2 f_23@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| ExhaleHeap@@7) o_15@@2 f_23@@11))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4909) (ExhaleHeap@@8 T@PolymorphicMapType_4909) (Mask@@21 T@PolymorphicMapType_4930) (o_15@@3 T@Ref) (f_23@@12 T@Field_4969_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_2596_53 Mask@@21 o_15@@3 f_23@@12) (= (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@14) o_15@@3 f_23@@12) (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| ExhaleHeap@@8) o_15@@3 f_23@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| ExhaleHeap@@8) o_15@@3 f_23@@12))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4909) (ExhaleHeap@@9 T@PolymorphicMapType_4909) (Mask@@22 T@PolymorphicMapType_4930) (o_15@@4 T@Ref) (f_23@@13 T@Field_8296_1212) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@22) (=> (HasDirectPerm_2596_1212 Mask@@22 o_15@@4 f_23@@13) (= (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@15) o_15@@4 f_23@@13) (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| ExhaleHeap@@9) o_15@@4 f_23@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@22) (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| ExhaleHeap@@9) o_15@@4 f_23@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_2596_13810) ) (! (= (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_2596_13677) ) (! (= (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_4982_4983) ) (! (= (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_4969_53) ) (! (= (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_8296_1212) ) (! (= (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4930) (SummandMask1 T@PolymorphicMapType_4930) (SummandMask2 T@PolymorphicMapType_4930) (o_2@@19 T@Ref) (f_4@@19 T@Field_2596_13810) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4930) (SummandMask1@@0 T@PolymorphicMapType_4930) (SummandMask2@@0 T@PolymorphicMapType_4930) (o_2@@20 T@Ref) (f_4@@20 T@Field_2596_13677) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4930) (SummandMask1@@1 T@PolymorphicMapType_4930) (SummandMask2@@1 T@PolymorphicMapType_4930) (o_2@@21 T@Ref) (f_4@@21 T@Field_4982_4983) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4930) (SummandMask1@@2 T@PolymorphicMapType_4930) (SummandMask2@@2 T@PolymorphicMapType_4930) (o_2@@22 T@Ref) (f_4@@22 T@Field_4969_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4930) (SummandMask1@@3 T@PolymorphicMapType_4930) (SummandMask2@@3 T@PolymorphicMapType_4930) (o_2@@23 T@Ref) (f_4@@23 T@Field_8296_1212) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4909) (Mask@@23 T@PolymorphicMapType_4930) (x@@3 T@Ref) ) (!  (=> (state Heap@@16 Mask@@23) (= (|test'| Heap@@16 x@@3) (|test#frame| (FrameFragment_1212 (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@16) x@@3 f_7)) x@@3)))
 :qid |stdinbpl.226:15|
 :skolemid |25|
 :pattern ( (state Heap@@16 Mask@@23) (|test'| Heap@@16 x@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4909) (Mask@@24 T@PolymorphicMapType_4930) (x@@4 T@Ref) ) (!  (=> (state Heap@@17 Mask@@24) (= (|test2'| Heap@@17 x@@4) (|test2#frame| EmptyFrame x@@4)))
 :qid |stdinbpl.320:15|
 :skolemid |30|
 :pattern ( (state Heap@@17 Mask@@24) (|test2'| Heap@@17 x@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4909) (Mask@@25 T@PolymorphicMapType_4930) (v_2@@0 Int) ) (!  (=> (state Heap@@18 Mask@@25) (= (|nonTerminating'| Heap@@18 v_2@@0) (|nonTerminating#frame| EmptyFrame v_2@@0)))
 :qid |stdinbpl.397:15|
 :skolemid |34|
 :pattern ( (state Heap@@18 Mask@@25) (|nonTerminating'| Heap@@18 v_2@@0))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4909) (x@@5 T@Ref) ) (!  (and (= (test Heap@@19 x@@5) (|test'| Heap@@19 x@@5)) (dummyFunction_1396 (|test#triggerStateless| x@@5)))
 :qid |stdinbpl.209:15|
 :skolemid |22|
 :pattern ( (test Heap@@19 x@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4909) (x@@6 T@Ref) ) (!  (and (= (test2 Heap@@20 x@@6) (|test2'| Heap@@20 x@@6)) (dummyFunction_1396 (|test2#triggerStateless| x@@6)))
 :qid |stdinbpl.303:15|
 :skolemid |27|
 :pattern ( (test2 Heap@@20 x@@6))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4909) (v_2@@1 Int) ) (!  (and (= (nonTerminating Heap@@21 v_2@@1) (|nonTerminating'| Heap@@21 v_2@@1)) (dummyFunction_1396 (|nonTerminating#triggerStateless| v_2@@1)))
 :qid |stdinbpl.386:15|
 :skolemid |32|
 :pattern ( (nonTerminating Heap@@21 v_2@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4909) (o_14 T@Ref) (f_24 T@Field_2596_13677) (v T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_4909 (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@22) (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@22) (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@22) (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@22) (store (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@22) o_14 f_24 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4909 (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@22) (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@22) (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@22) (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@22) (store (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@22) o_14 f_24 v)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4909) (o_14@@0 T@Ref) (f_24@@0 T@Field_2596_13810) (v@@0 T@PolymorphicMapType_5458) ) (! (succHeap Heap@@23 (PolymorphicMapType_4909 (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@23) (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@23) (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@23) (store (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@23) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4909 (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@23) (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@23) (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@23) (store (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@23) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4909) (o_14@@1 T@Ref) (f_24@@1 T@Field_8296_1212) (v@@1 Int) ) (! (succHeap Heap@@24 (PolymorphicMapType_4909 (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@24) (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@24) (store (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@24) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@24) (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4909 (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@24) (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@24) (store (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@24) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@24) (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4909) (o_14@@2 T@Ref) (f_24@@2 T@Field_4982_4983) (v@@2 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_4909 (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@25) (store (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@25) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@25) (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@25) (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4909 (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@25) (store (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@25) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@25) (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@25) (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4909) (o_14@@3 T@Ref) (f_24@@3 T@Field_4969_53) (v@@3 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_4909 (store (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@26) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@26) (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@26) (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@26) (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4909 (store (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@26) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@26) (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@26) (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@26) (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@26)))
)))
(assert (forall ((o_14@@4 T@Ref) (f_22 T@Field_4982_4983) (Heap@@27 T@PolymorphicMapType_4909) ) (!  (=> (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@27) o_14@@4 $allocated) (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@27) (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@27) o_14@@4 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@27) o_14@@4 f_22))
)))
(assert (forall ((p@@1 T@Field_2596_13677) (v_1@@0 T@FrameType) (q T@Field_2596_13677) (w@@0 T@FrameType) (r T@Field_2596_13677) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4969_4969 p@@1 v_1@@0 q w@@0) (InsidePredicate_4969_4969 q w@@0 r u)) (InsidePredicate_4969_4969 p@@1 v_1@@0 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4969_4969 p@@1 v_1@@0 q w@@0) (InsidePredicate_4969_4969 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@1 () T@PolymorphicMapType_4930)
(declare-fun x2_1 () T@Ref)
(declare-fun x@@7 () T@Ref)
(declare-fun Heap@@28 () T@PolymorphicMapType_4909)
(set-info :boogie-vc-id |test#definedness|)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon11_Then_correct true))
(let ((anon6_correct true))
(let ((anon10_Then_correct  (=> (HasDirectPerm_2596_1212 Mask@1 x2_1 f_7) (and (=> (= (ControlFlow 0 6) (- 0 8)) (HasDirectPerm_2596_1212 Mask@1 x2_1 f_7)) (=> (HasDirectPerm_2596_1212 Mask@1 x2_1 f_7) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_2596_1212 Mask@1 x2_1 f_7)) (=> (HasDirectPerm_2596_1212 Mask@1 x2_1 f_7) (and (=> (= (ControlFlow 0 6) 5) anon11_Then_correct) (=> (= (ControlFlow 0 6) 3) anon6_correct)))))))))
(let ((anon10_Else_correct  (=> (and (not (HasDirectPerm_2596_1212 Mask@1 x2_1 f_7)) (= (ControlFlow 0 4) 3)) anon6_correct)))
(let ((anon9_Else_correct true))
(let ((anon8_Else_correct  (=> (not (= x@@7 null)) (=> (and (and (= Mask@1 (PolymorphicMapType_4930 (store (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| ZeroMask) x@@7 f_7 (+ (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| ZeroMask) x@@7 f_7) FullPerm)) (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| ZeroMask) (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| ZeroMask) (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| ZeroMask) (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| ZeroMask))) (state Heap@@28 Mask@1)) (and (state Heap@@28 Mask@1) (state Heap@@28 Mask@1))) (and (and (=> (= (ControlFlow 0 9) 2) anon9_Else_correct) (=> (= (ControlFlow 0 9) 6) anon10_Then_correct)) (=> (= (ControlFlow 0 9) 4) anon10_Else_correct))))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@28 ZeroMask) (not AssumePermUpperBound)) (and (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@28) x@@7 $allocated) (= AssumeFunctionsAbove 1))) (and (=> (= (ControlFlow 0 10) 1) anon8_Then_correct) (=> (= (ControlFlow 0 10) 9) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 10) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
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
(declare-sort T@Field_4969_53 0)
(declare-sort T@Field_4982_4983 0)
(declare-sort T@Field_8296_1212 0)
(declare-sort T@Field_2596_13810 0)
(declare-sort T@Field_2596_13677 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4930 0)) (((PolymorphicMapType_4930 (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| (Array T@Ref T@Field_8296_1212 Real)) (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| (Array T@Ref T@Field_4969_53 Real)) (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| (Array T@Ref T@Field_4982_4983 Real)) (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| (Array T@Ref T@Field_2596_13677 Real)) (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| (Array T@Ref T@Field_2596_13810 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5458 0)) (((PolymorphicMapType_5458 (|PolymorphicMapType_5458_4969_53#PolymorphicMapType_5458| (Array T@Ref T@Field_4969_53 Bool)) (|PolymorphicMapType_5458_4969_4983#PolymorphicMapType_5458| (Array T@Ref T@Field_4982_4983 Bool)) (|PolymorphicMapType_5458_4969_1212#PolymorphicMapType_5458| (Array T@Ref T@Field_8296_1212 Bool)) (|PolymorphicMapType_5458_4969_13677#PolymorphicMapType_5458| (Array T@Ref T@Field_2596_13677 Bool)) (|PolymorphicMapType_5458_4969_14988#PolymorphicMapType_5458| (Array T@Ref T@Field_2596_13810 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4909 0)) (((PolymorphicMapType_4909 (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| (Array T@Ref T@Field_4969_53 Bool)) (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| (Array T@Ref T@Field_4982_4983 T@Ref)) (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| (Array T@Ref T@Field_8296_1212 Int)) (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| (Array T@Ref T@Field_2596_13810 T@PolymorphicMapType_5458)) (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| (Array T@Ref T@Field_2596_13677 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_4969_53)
(declare-fun f_7 () T@Field_8296_1212)
(declare-fun succHeap (T@PolymorphicMapType_4909 T@PolymorphicMapType_4909) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4909 T@PolymorphicMapType_4909) Bool)
(declare-fun state (T@PolymorphicMapType_4909 T@PolymorphicMapType_4930) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4930) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5458)
(declare-fun |test'| (T@PolymorphicMapType_4909 T@Ref) Bool)
(declare-fun dummyFunction_1396 (Bool) Bool)
(declare-fun |test#triggerStateless| (T@Ref) Bool)
(declare-fun |test2'| (T@PolymorphicMapType_4909 T@Ref) Bool)
(declare-fun |test2#triggerStateless| (T@Ref) Bool)
(declare-fun |nonTerminating'| (T@PolymorphicMapType_4909 Int) Bool)
(declare-fun |nonTerminating#triggerStateless| (Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4909 T@PolymorphicMapType_4909 T@PolymorphicMapType_4930) Bool)
(declare-fun IsPredicateField_2596_13768 (T@Field_2596_13677) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2596 (T@Field_2596_13677) T@Field_2596_13810)
(declare-fun HasDirectPerm_2596_13741 (T@PolymorphicMapType_4930 T@Ref T@Field_2596_13677) Bool)
(declare-fun IsWandField_2596_15515 (T@Field_2596_13677) Bool)
(declare-fun WandMaskField_2596 (T@Field_2596_13677) T@Field_2596_13810)
(declare-fun test2 (T@PolymorphicMapType_4909 T@Ref) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun test (T@PolymorphicMapType_4909 T@Ref) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_4909)
(declare-fun ZeroMask () T@PolymorphicMapType_4930)
(declare-fun InsidePredicate_4969_4969 (T@Field_2596_13677 T@FrameType T@Field_2596_13677 T@FrameType) Bool)
(declare-fun IsPredicateField_2596_1212 (T@Field_8296_1212) Bool)
(declare-fun IsWandField_2596_1212 (T@Field_8296_1212) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2596_19061 (T@Field_2596_13810) Bool)
(declare-fun IsWandField_2596_19077 (T@Field_2596_13810) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2596_4983 (T@Field_4982_4983) Bool)
(declare-fun IsWandField_2596_4983 (T@Field_4982_4983) Bool)
(declare-fun IsPredicateField_2596_53 (T@Field_4969_53) Bool)
(declare-fun IsWandField_2596_53 (T@Field_4969_53) Bool)
(declare-fun HasDirectPerm_2596_19515 (T@PolymorphicMapType_4930 T@Ref T@Field_2596_13810) Bool)
(declare-fun HasDirectPerm_2596_4983 (T@PolymorphicMapType_4930 T@Ref T@Field_4982_4983) Bool)
(declare-fun HasDirectPerm_2596_53 (T@PolymorphicMapType_4930 T@Ref T@Field_4969_53) Bool)
(declare-fun HasDirectPerm_2596_1212 (T@PolymorphicMapType_4930 T@Ref T@Field_8296_1212) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4930 T@PolymorphicMapType_4930 T@PolymorphicMapType_4930) Bool)
(declare-fun |test#frame| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_1212 (Int) T@FrameType)
(declare-fun |test2#frame| (T@FrameType T@Ref) Bool)
(declare-fun |nonTerminating#frame| (T@FrameType Int) Bool)
(declare-fun nonTerminating (T@PolymorphicMapType_4909 Int) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_4909) (Heap1 T@PolymorphicMapType_4909) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4909) (Mask T@PolymorphicMapType_4930) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4909) (Heap1@@0 T@PolymorphicMapType_4909) (Heap2 T@PolymorphicMapType_4909) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2596_13810) ) (!  (not (select (|PolymorphicMapType_5458_4969_14988#PolymorphicMapType_5458| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5458_4969_14988#PolymorphicMapType_5458| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2596_13677) ) (!  (not (select (|PolymorphicMapType_5458_4969_13677#PolymorphicMapType_5458| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5458_4969_13677#PolymorphicMapType_5458| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8296_1212) ) (!  (not (select (|PolymorphicMapType_5458_4969_1212#PolymorphicMapType_5458| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5458_4969_1212#PolymorphicMapType_5458| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4982_4983) ) (!  (not (select (|PolymorphicMapType_5458_4969_4983#PolymorphicMapType_5458| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5458_4969_4983#PolymorphicMapType_5458| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4969_53) ) (!  (not (select (|PolymorphicMapType_5458_4969_53#PolymorphicMapType_5458| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5458_4969_53#PolymorphicMapType_5458| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4909) (x T@Ref) ) (! (dummyFunction_1396 (|test#triggerStateless| x))
 :qid |stdinbpl.213:15|
 :skolemid |23|
 :pattern ( (|test'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4909) (x@@0 T@Ref) ) (! (dummyFunction_1396 (|test2#triggerStateless| x@@0))
 :qid |stdinbpl.307:15|
 :skolemid |28|
 :pattern ( (|test2'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4909) (v_2 Int) ) (! (dummyFunction_1396 (|nonTerminating#triggerStateless| v_2))
 :qid |stdinbpl.390:15|
 :skolemid |33|
 :pattern ( (|nonTerminating'| Heap@@2 v_2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4909) (ExhaleHeap T@PolymorphicMapType_4909) (Mask@@0 T@PolymorphicMapType_4930) (pm_f_5 T@Field_2596_13677) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2596_13741 Mask@@0 null pm_f_5) (IsPredicateField_2596_13768 pm_f_5)) (= (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@3) null (PredicateMaskField_2596 pm_f_5)) (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap) null (PredicateMaskField_2596 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_2596_13768 pm_f_5) (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap) null (PredicateMaskField_2596 pm_f_5)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4909) (ExhaleHeap@@0 T@PolymorphicMapType_4909) (Mask@@1 T@PolymorphicMapType_4930) (pm_f_5@@0 T@Field_2596_13677) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2596_13741 Mask@@1 null pm_f_5@@0) (IsWandField_2596_15515 pm_f_5@@0)) (= (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@4) null (WandMaskField_2596 pm_f_5@@0)) (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap@@0) null (WandMaskField_2596 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsWandField_2596_15515 pm_f_5@@0) (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap@@0) null (WandMaskField_2596 pm_f_5@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4909) (Mask@@2 T@PolymorphicMapType_4930) (x@@1 T@Ref) ) (!  (=> (and (state Heap@@5 Mask@@2) (< AssumeFunctionsAbove 0)) (test2 Heap@@5 x@@1))
 :qid |stdinbpl.313:15|
 :skolemid |29|
 :pattern ( (state Heap@@5 Mask@@2) (test2 Heap@@5 x@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4909) (Mask@@3 T@PolymorphicMapType_4930) (x@@2 T@Ref) ) (!  (=> (and (state Heap@@6 Mask@@3) (< AssumeFunctionsAbove 1)) (test Heap@@6 x@@2))
 :qid |stdinbpl.219:15|
 :skolemid |24|
 :pattern ( (state Heap@@6 Mask@@3) (test Heap@@6 x@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4909) (ExhaleHeap@@1 T@PolymorphicMapType_4909) (Mask@@4 T@PolymorphicMapType_4930) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@4) (=> (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@7) o_15 $allocated) (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| ExhaleHeap@@1) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@4) (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| ExhaleHeap@@1) o_15 $allocated))
)))
(assert (forall ((p T@Field_2596_13677) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4969_4969 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4969_4969 p v_1 p w))
)))
(assert  (not (IsPredicateField_2596_1212 f_7)))
(assert  (not (IsWandField_2596_1212 f_7)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4909) (ExhaleHeap@@2 T@PolymorphicMapType_4909) (Mask@@5 T@PolymorphicMapType_4930) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@5) (succHeap Heap@@8 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_4930) (o_2@@4 T@Ref) (f_4@@4 T@Field_2596_13810) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| Mask@@6) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2596_19061 f_4@@4))) (not (IsWandField_2596_19077 f_4@@4))) (<= (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| Mask@@6) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| Mask@@6) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_4930) (o_2@@5 T@Ref) (f_4@@5 T@Field_2596_13677) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| Mask@@7) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2596_13768 f_4@@5))) (not (IsWandField_2596_15515 f_4@@5))) (<= (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| Mask@@7) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| Mask@@7) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4930) (o_2@@6 T@Ref) (f_4@@6 T@Field_4982_4983) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| Mask@@8) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2596_4983 f_4@@6))) (not (IsWandField_2596_4983 f_4@@6))) (<= (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| Mask@@8) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| Mask@@8) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4930) (o_2@@7 T@Ref) (f_4@@7 T@Field_4969_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| Mask@@9) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_2596_53 f_4@@7))) (not (IsWandField_2596_53 f_4@@7))) (<= (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| Mask@@9) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| Mask@@9) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4930) (o_2@@8 T@Ref) (f_4@@8 T@Field_8296_1212) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| Mask@@10) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_2596_1212 f_4@@8))) (not (IsWandField_2596_1212 f_4@@8))) (<= (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| Mask@@10) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| Mask@@10) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4930) (o_2@@9 T@Ref) (f_4@@9 T@Field_2596_13810) ) (! (= (HasDirectPerm_2596_19515 Mask@@11 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| Mask@@11) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2596_19515 Mask@@11 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4930) (o_2@@10 T@Ref) (f_4@@10 T@Field_2596_13677) ) (! (= (HasDirectPerm_2596_13741 Mask@@12 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| Mask@@12) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2596_13741 Mask@@12 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4930) (o_2@@11 T@Ref) (f_4@@11 T@Field_4982_4983) ) (! (= (HasDirectPerm_2596_4983 Mask@@13 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| Mask@@13) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2596_4983 Mask@@13 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4930) (o_2@@12 T@Ref) (f_4@@12 T@Field_4969_53) ) (! (= (HasDirectPerm_2596_53 Mask@@14 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| Mask@@14) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2596_53 Mask@@14 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4930) (o_2@@13 T@Ref) (f_4@@13 T@Field_8296_1212) ) (! (= (HasDirectPerm_2596_1212 Mask@@15 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| Mask@@15) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2596_1212 Mask@@15 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4909) (ExhaleHeap@@3 T@PolymorphicMapType_4909) (Mask@@16 T@PolymorphicMapType_4930) (pm_f_5@@1 T@Field_2596_13677) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@16) (=> (and (HasDirectPerm_2596_13741 Mask@@16 null pm_f_5@@1) (IsPredicateField_2596_13768 pm_f_5@@1)) (and (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_4969_53) ) (!  (=> (select (|PolymorphicMapType_5458_4969_53#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@9) null (PredicateMaskField_2596 pm_f_5@@1))) o2_5 f_23) (= (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@9) o2_5 f_23) (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_4982_4983) ) (!  (=> (select (|PolymorphicMapType_5458_4969_4983#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@9) null (PredicateMaskField_2596 pm_f_5@@1))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@9) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_8296_1212) ) (!  (=> (select (|PolymorphicMapType_5458_4969_1212#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@9) null (PredicateMaskField_2596 pm_f_5@@1))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@9) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_2596_13677) ) (!  (=> (select (|PolymorphicMapType_5458_4969_13677#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@9) null (PredicateMaskField_2596 pm_f_5@@1))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@9) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5@@2 f_23@@2))
))) (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_2596_13810) ) (!  (=> (select (|PolymorphicMapType_5458_4969_14988#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@9) null (PredicateMaskField_2596 pm_f_5@@1))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@9) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap@@3) o2_5@@3 f_23@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@16) (IsPredicateField_2596_13768 pm_f_5@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4909) (ExhaleHeap@@4 T@PolymorphicMapType_4909) (Mask@@17 T@PolymorphicMapType_4930) (pm_f_5@@2 T@Field_2596_13677) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@17) (=> (and (HasDirectPerm_2596_13741 Mask@@17 null pm_f_5@@2) (IsWandField_2596_15515 pm_f_5@@2)) (and (and (and (and (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_4969_53) ) (!  (=> (select (|PolymorphicMapType_5458_4969_53#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@10) null (WandMaskField_2596 pm_f_5@@2))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@10) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@4 f_23@@4))
)) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_4982_4983) ) (!  (=> (select (|PolymorphicMapType_5458_4969_4983#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@10) null (WandMaskField_2596 pm_f_5@@2))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@10) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_8296_1212) ) (!  (=> (select (|PolymorphicMapType_5458_4969_1212#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@10) null (WandMaskField_2596 pm_f_5@@2))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@10) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@6 f_23@@6))
))) (forall ((o2_5@@7 T@Ref) (f_23@@7 T@Field_2596_13677) ) (!  (=> (select (|PolymorphicMapType_5458_4969_13677#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@10) null (WandMaskField_2596 pm_f_5@@2))) o2_5@@7 f_23@@7) (= (select (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@10) o2_5@@7 f_23@@7) (select (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@7 f_23@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@7 f_23@@7))
))) (forall ((o2_5@@8 T@Ref) (f_23@@8 T@Field_2596_13810) ) (!  (=> (select (|PolymorphicMapType_5458_4969_14988#PolymorphicMapType_5458| (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@10) null (WandMaskField_2596 pm_f_5@@2))) o2_5@@8 f_23@@8) (= (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@10) o2_5@@8 f_23@@8) (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@8 f_23@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap@@4) o2_5@@8 f_23@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@17) (IsWandField_2596_15515 pm_f_5@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4909) (ExhaleHeap@@5 T@PolymorphicMapType_4909) (Mask@@18 T@PolymorphicMapType_4930) (o_15@@0 T@Ref) (f_23@@9 T@Field_2596_13810) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_2596_19515 Mask@@18 o_15@@0 f_23@@9) (= (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@11) o_15@@0 f_23@@9) (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap@@5) o_15@@0 f_23@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| ExhaleHeap@@5) o_15@@0 f_23@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4909) (ExhaleHeap@@6 T@PolymorphicMapType_4909) (Mask@@19 T@PolymorphicMapType_4930) (o_15@@1 T@Ref) (f_23@@10 T@Field_2596_13677) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_2596_13741 Mask@@19 o_15@@1 f_23@@10) (= (select (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@12) o_15@@1 f_23@@10) (select (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| ExhaleHeap@@6) o_15@@1 f_23@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| ExhaleHeap@@6) o_15@@1 f_23@@10))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4909) (ExhaleHeap@@7 T@PolymorphicMapType_4909) (Mask@@20 T@PolymorphicMapType_4930) (o_15@@2 T@Ref) (f_23@@11 T@Field_4982_4983) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_2596_4983 Mask@@20 o_15@@2 f_23@@11) (= (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@13) o_15@@2 f_23@@11) (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| ExhaleHeap@@7) o_15@@2 f_23@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| ExhaleHeap@@7) o_15@@2 f_23@@11))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4909) (ExhaleHeap@@8 T@PolymorphicMapType_4909) (Mask@@21 T@PolymorphicMapType_4930) (o_15@@3 T@Ref) (f_23@@12 T@Field_4969_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_2596_53 Mask@@21 o_15@@3 f_23@@12) (= (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@14) o_15@@3 f_23@@12) (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| ExhaleHeap@@8) o_15@@3 f_23@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| ExhaleHeap@@8) o_15@@3 f_23@@12))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4909) (ExhaleHeap@@9 T@PolymorphicMapType_4909) (Mask@@22 T@PolymorphicMapType_4930) (o_15@@4 T@Ref) (f_23@@13 T@Field_8296_1212) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@22) (=> (HasDirectPerm_2596_1212 Mask@@22 o_15@@4 f_23@@13) (= (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@15) o_15@@4 f_23@@13) (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| ExhaleHeap@@9) o_15@@4 f_23@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@22) (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| ExhaleHeap@@9) o_15@@4 f_23@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_2596_13810) ) (! (= (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_2596_13677) ) (! (= (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_4982_4983) ) (! (= (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_4969_53) ) (! (= (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_8296_1212) ) (! (= (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4930) (SummandMask1 T@PolymorphicMapType_4930) (SummandMask2 T@PolymorphicMapType_4930) (o_2@@19 T@Ref) (f_4@@19 T@Field_2596_13810) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4930_2596_17932#PolymorphicMapType_4930| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4930) (SummandMask1@@0 T@PolymorphicMapType_4930) (SummandMask2@@0 T@PolymorphicMapType_4930) (o_2@@20 T@Ref) (f_4@@20 T@Field_2596_13677) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4930_2596_13677#PolymorphicMapType_4930| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4930) (SummandMask1@@1 T@PolymorphicMapType_4930) (SummandMask2@@1 T@PolymorphicMapType_4930) (o_2@@21 T@Ref) (f_4@@21 T@Field_4982_4983) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4930_2596_4983#PolymorphicMapType_4930| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4930) (SummandMask1@@2 T@PolymorphicMapType_4930) (SummandMask2@@2 T@PolymorphicMapType_4930) (o_2@@22 T@Ref) (f_4@@22 T@Field_4969_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4930_2596_53#PolymorphicMapType_4930| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4930) (SummandMask1@@3 T@PolymorphicMapType_4930) (SummandMask2@@3 T@PolymorphicMapType_4930) (o_2@@23 T@Ref) (f_4@@23 T@Field_8296_1212) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4930_2596_1212#PolymorphicMapType_4930| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4909) (Mask@@23 T@PolymorphicMapType_4930) (x@@3 T@Ref) ) (!  (=> (state Heap@@16 Mask@@23) (= (|test'| Heap@@16 x@@3) (|test#frame| (FrameFragment_1212 (select (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@16) x@@3 f_7)) x@@3)))
 :qid |stdinbpl.226:15|
 :skolemid |25|
 :pattern ( (state Heap@@16 Mask@@23) (|test'| Heap@@16 x@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4909) (Mask@@24 T@PolymorphicMapType_4930) (x@@4 T@Ref) ) (!  (=> (state Heap@@17 Mask@@24) (= (|test2'| Heap@@17 x@@4) (|test2#frame| EmptyFrame x@@4)))
 :qid |stdinbpl.320:15|
 :skolemid |30|
 :pattern ( (state Heap@@17 Mask@@24) (|test2'| Heap@@17 x@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4909) (Mask@@25 T@PolymorphicMapType_4930) (v_2@@0 Int) ) (!  (=> (state Heap@@18 Mask@@25) (= (|nonTerminating'| Heap@@18 v_2@@0) (|nonTerminating#frame| EmptyFrame v_2@@0)))
 :qid |stdinbpl.397:15|
 :skolemid |34|
 :pattern ( (state Heap@@18 Mask@@25) (|nonTerminating'| Heap@@18 v_2@@0))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4909) (x@@5 T@Ref) ) (!  (and (= (test Heap@@19 x@@5) (|test'| Heap@@19 x@@5)) (dummyFunction_1396 (|test#triggerStateless| x@@5)))
 :qid |stdinbpl.209:15|
 :skolemid |22|
 :pattern ( (test Heap@@19 x@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4909) (x@@6 T@Ref) ) (!  (and (= (test2 Heap@@20 x@@6) (|test2'| Heap@@20 x@@6)) (dummyFunction_1396 (|test2#triggerStateless| x@@6)))
 :qid |stdinbpl.303:15|
 :skolemid |27|
 :pattern ( (test2 Heap@@20 x@@6))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4909) (v_2@@1 Int) ) (!  (and (= (nonTerminating Heap@@21 v_2@@1) (|nonTerminating'| Heap@@21 v_2@@1)) (dummyFunction_1396 (|nonTerminating#triggerStateless| v_2@@1)))
 :qid |stdinbpl.386:15|
 :skolemid |32|
 :pattern ( (nonTerminating Heap@@21 v_2@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4909) (o_14 T@Ref) (f_24 T@Field_2596_13677) (v T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_4909 (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@22) (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@22) (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@22) (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@22) (store (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@22) o_14 f_24 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4909 (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@22) (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@22) (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@22) (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@22) (store (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@22) o_14 f_24 v)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4909) (o_14@@0 T@Ref) (f_24@@0 T@Field_2596_13810) (v@@0 T@PolymorphicMapType_5458) ) (! (succHeap Heap@@23 (PolymorphicMapType_4909 (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@23) (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@23) (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@23) (store (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@23) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4909 (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@23) (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@23) (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@23) (store (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@23) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4909) (o_14@@1 T@Ref) (f_24@@1 T@Field_8296_1212) (v@@1 Int) ) (! (succHeap Heap@@24 (PolymorphicMapType_4909 (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@24) (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@24) (store (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@24) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@24) (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4909 (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@24) (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@24) (store (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@24) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@24) (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4909) (o_14@@2 T@Ref) (f_24@@2 T@Field_4982_4983) (v@@2 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_4909 (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@25) (store (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@25) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@25) (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@25) (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4909 (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@25) (store (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@25) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@25) (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@25) (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4909) (o_14@@3 T@Ref) (f_24@@3 T@Field_4969_53) (v@@3 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_4909 (store (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@26) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@26) (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@26) (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@26) (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4909 (store (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@26) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@26) (|PolymorphicMapType_4909_2596_1212#PolymorphicMapType_4909| Heap@@26) (|PolymorphicMapType_4909_2596_13854#PolymorphicMapType_4909| Heap@@26) (|PolymorphicMapType_4909_4969_13677#PolymorphicMapType_4909| Heap@@26)))
)))
(assert (forall ((o_14@@4 T@Ref) (f_22 T@Field_4982_4983) (Heap@@27 T@PolymorphicMapType_4909) ) (!  (=> (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@27) o_14@@4 $allocated) (select (|PolymorphicMapType_4909_2468_53#PolymorphicMapType_4909| Heap@@27) (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@27) o_14@@4 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4909_2471_2472#PolymorphicMapType_4909| Heap@@27) o_14@@4 f_22))
)))
(assert (forall ((p@@1 T@Field_2596_13677) (v_1@@0 T@FrameType) (q T@Field_2596_13677) (w@@0 T@FrameType) (r T@Field_2596_13677) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4969_4969 p@@1 v_1@@0 q w@@0) (InsidePredicate_4969_4969 q w@@0 r u)) (InsidePredicate_4969_4969 p@@1 v_1@@0 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4969_4969 p@@1 v_1@@0 q w@@0) (InsidePredicate_4969_4969 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

