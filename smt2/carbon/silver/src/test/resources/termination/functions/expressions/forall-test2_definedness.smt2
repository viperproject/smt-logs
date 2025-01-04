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
(declare-sort T@Field_5477_53 0)
(declare-sort T@Field_5490_5491 0)
(declare-sort T@Field_8812_1237 0)
(declare-sort T@Field_5477_15320 0)
(declare-sort T@Field_5477_15187 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5438 0)) (((PolymorphicMapType_5438 (|PolymorphicMapType_5438_3092_1237#PolymorphicMapType_5438| (Array T@Ref T@Field_8812_1237 Real)) (|PolymorphicMapType_5438_3092_53#PolymorphicMapType_5438| (Array T@Ref T@Field_5477_53 Real)) (|PolymorphicMapType_5438_3092_5491#PolymorphicMapType_5438| (Array T@Ref T@Field_5490_5491 Real)) (|PolymorphicMapType_5438_3092_15187#PolymorphicMapType_5438| (Array T@Ref T@Field_5477_15187 Real)) (|PolymorphicMapType_5438_3092_19442#PolymorphicMapType_5438| (Array T@Ref T@Field_5477_15320 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5966 0)) (((PolymorphicMapType_5966 (|PolymorphicMapType_5966_5477_53#PolymorphicMapType_5966| (Array T@Ref T@Field_5477_53 Bool)) (|PolymorphicMapType_5966_5477_5491#PolymorphicMapType_5966| (Array T@Ref T@Field_5490_5491 Bool)) (|PolymorphicMapType_5966_5477_1237#PolymorphicMapType_5966| (Array T@Ref T@Field_8812_1237 Bool)) (|PolymorphicMapType_5966_5477_15187#PolymorphicMapType_5966| (Array T@Ref T@Field_5477_15187 Bool)) (|PolymorphicMapType_5966_5477_16498#PolymorphicMapType_5966| (Array T@Ref T@Field_5477_15320 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5417 0)) (((PolymorphicMapType_5417 (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| (Array T@Ref T@Field_5477_53 Bool)) (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| (Array T@Ref T@Field_5490_5491 T@Ref)) (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| (Array T@Ref T@Field_8812_1237 Int)) (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| (Array T@Ref T@Field_5477_15320 T@PolymorphicMapType_5966)) (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| (Array T@Ref T@Field_5477_15187 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_5477_53)
(declare-fun f_7 () T@Field_8812_1237)
(declare-fun succHeap (T@PolymorphicMapType_5417 T@PolymorphicMapType_5417) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5417 T@PolymorphicMapType_5417) Bool)
(declare-fun state (T@PolymorphicMapType_5417 T@PolymorphicMapType_5438) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5438) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5966)
(declare-fun |test'| (T@PolymorphicMapType_5417 T@Ref) Bool)
(declare-fun dummyFunction_1575 (Bool) Bool)
(declare-fun |test#triggerStateless| (T@Ref) Bool)
(declare-fun |test2'| (T@PolymorphicMapType_5417 T@Ref) Bool)
(declare-fun |test2#triggerStateless| (T@Ref) Bool)
(declare-fun |nonTerminating'| (T@PolymorphicMapType_5417 T@Ref) Bool)
(declare-fun |nonTerminating#triggerStateless| (T@Ref) Bool)
(declare-fun test2_1 (T@PolymorphicMapType_5417 T@Ref) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |nonTerminating#frame| (T@FrameType T@Ref) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5417 T@PolymorphicMapType_5417 T@PolymorphicMapType_5438) Bool)
(declare-fun IsPredicateField_5477_15278 (T@Field_5477_15187) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5477 (T@Field_5477_15187) T@Field_5477_15320)
(declare-fun HasDirectPerm_5477_15251 (T@PolymorphicMapType_5438 T@Ref T@Field_5477_15187) Bool)
(declare-fun IsWandField_5477_17025 (T@Field_5477_15187) Bool)
(declare-fun WandMaskField_5477 (T@Field_5477_15187) T@Field_5477_15320)
(declare-fun test_2 (T@PolymorphicMapType_5417 T@Ref) Bool)
(declare-fun nonTerminating (T@PolymorphicMapType_5417 T@Ref) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_5417)
(declare-fun ZeroMask () T@PolymorphicMapType_5438)
(declare-fun InsidePredicate_5477_5477 (T@Field_5477_15187 T@FrameType T@Field_5477_15187 T@FrameType) Bool)
(declare-fun IsPredicateField_3092_1237 (T@Field_8812_1237) Bool)
(declare-fun IsWandField_3092_1237 (T@Field_8812_1237) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3092_20571 (T@Field_5477_15320) Bool)
(declare-fun IsWandField_3092_20587 (T@Field_5477_15320) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3092_5491 (T@Field_5490_5491) Bool)
(declare-fun IsWandField_3092_5491 (T@Field_5490_5491) Bool)
(declare-fun IsPredicateField_3092_53 (T@Field_5477_53) Bool)
(declare-fun IsWandField_3092_53 (T@Field_5477_53) Bool)
(declare-fun HasDirectPerm_5477_21025 (T@PolymorphicMapType_5438 T@Ref T@Field_5477_15320) Bool)
(declare-fun HasDirectPerm_5477_1237 (T@PolymorphicMapType_5438 T@Ref T@Field_8812_1237) Bool)
(declare-fun HasDirectPerm_5477_5491 (T@PolymorphicMapType_5438 T@Ref T@Field_5490_5491) Bool)
(declare-fun HasDirectPerm_5477_53 (T@PolymorphicMapType_5438 T@Ref T@Field_5477_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5438 T@PolymorphicMapType_5438 T@PolymorphicMapType_5438) Bool)
(declare-fun |test2#frame| (T@FrameType T@Ref) Bool)
(declare-fun |test#frame| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_1431 (Int) T@FrameType)
(declare-fun |test#condqp1| (T@PolymorphicMapType_5417 T@Ref) Int)
(declare-fun |sk_test#condqp1| (Int Int) T@Ref)
(assert (forall ((Heap0 T@PolymorphicMapType_5417) (Heap1 T@PolymorphicMapType_5417) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5417) (Mask T@PolymorphicMapType_5438) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5417) (Heap1@@0 T@PolymorphicMapType_5417) (Heap2 T@PolymorphicMapType_5417) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5477_15320) ) (!  (not (select (|PolymorphicMapType_5966_5477_16498#PolymorphicMapType_5966| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5966_5477_16498#PolymorphicMapType_5966| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5477_15187) ) (!  (not (select (|PolymorphicMapType_5966_5477_15187#PolymorphicMapType_5966| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5966_5477_15187#PolymorphicMapType_5966| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8812_1237) ) (!  (not (select (|PolymorphicMapType_5966_5477_1237#PolymorphicMapType_5966| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5966_5477_1237#PolymorphicMapType_5966| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5490_5491) ) (!  (not (select (|PolymorphicMapType_5966_5477_5491#PolymorphicMapType_5966| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5966_5477_5491#PolymorphicMapType_5966| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5477_53) ) (!  (not (select (|PolymorphicMapType_5966_5477_53#PolymorphicMapType_5966| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5966_5477_53#PolymorphicMapType_5966| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5417) (x T@Ref) ) (! (dummyFunction_1575 (|test#triggerStateless| x))
 :qid |stdinbpl.218:15|
 :skolemid |23|
 :pattern ( (|test'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5417) (x@@0 T@Ref) ) (! (dummyFunction_1575 (|test2#triggerStateless| x@@0))
 :qid |stdinbpl.342:15|
 :skolemid |36|
 :pattern ( (|test2'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5417) (x@@1 T@Ref) ) (! (dummyFunction_1575 (|nonTerminating#triggerStateless| x@@1))
 :qid |stdinbpl.409:15|
 :skolemid |42|
 :pattern ( (|nonTerminating'| Heap@@2 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5417) (Mask@@0 T@PolymorphicMapType_5438) (x@@2 T@Ref) ) (!  (=> (and (state Heap@@3 Mask@@0) (< AssumeFunctionsAbove 0)) (=> (forall ((x2 T@Ref) ) (!  (=> (= x@@2 x2) false)
 :qid |stdinbpl.350:61|
 :skolemid |37|
 :pattern ( (|nonTerminating#frame| EmptyFrame x2))
)) (test2_1 Heap@@3 x@@2)))
 :qid |stdinbpl.348:15|
 :skolemid |38|
 :pattern ( (state Heap@@3 Mask@@0) (test2_1 Heap@@3 x@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5417) (ExhaleHeap T@PolymorphicMapType_5417) (Mask@@1 T@PolymorphicMapType_5438) (pm_f_13 T@Field_5477_15187) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_5477_15251 Mask@@1 null pm_f_13) (IsPredicateField_5477_15278 pm_f_13)) (= (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@4) null (PredicateMaskField_5477 pm_f_13)) (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| ExhaleHeap) null (PredicateMaskField_5477 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_5477_15278 pm_f_13) (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| ExhaleHeap) null (PredicateMaskField_5477 pm_f_13)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5417) (ExhaleHeap@@0 T@PolymorphicMapType_5417) (Mask@@2 T@PolymorphicMapType_5438) (pm_f_13@@0 T@Field_5477_15187) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_5477_15251 Mask@@2 null pm_f_13@@0) (IsWandField_5477_17025 pm_f_13@@0)) (= (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@5) null (WandMaskField_5477 pm_f_13@@0)) (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| ExhaleHeap@@0) null (WandMaskField_5477 pm_f_13@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsWandField_5477_17025 pm_f_13@@0) (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| ExhaleHeap@@0) null (WandMaskField_5477 pm_f_13@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5417) (Mask@@3 T@PolymorphicMapType_5438) (x@@3 T@Ref) ) (!  (=> (and (state Heap@@6 Mask@@3) (< AssumeFunctionsAbove 1)) (=> (forall ((x2_1_1 T@Ref) ) (!  (=> (= x@@3 x2_1_1) (nonTerminating Heap@@6 x2_1_1))
 :qid |stdinbpl.226:61|
 :skolemid |24|
 :pattern ( (|nonTerminating#frame| EmptyFrame x2_1_1))
)) (test_2 Heap@@6 x@@3)))
 :qid |stdinbpl.224:15|
 :skolemid |25|
 :pattern ( (state Heap@@6 Mask@@3) (test_2 Heap@@6 x@@3))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5417) (ExhaleHeap@@1 T@PolymorphicMapType_5417) (Mask@@4 T@PolymorphicMapType_5438) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@4) (=> (select (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| Heap@@7) o_22 $allocated) (select (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| ExhaleHeap@@1) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@4) (select (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| ExhaleHeap@@1) o_22 $allocated))
)))
(assert (forall ((p T@Field_5477_15187) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5477_5477 p v_1 p w))
 :qid |stdinbpl.194:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5477_5477 p v_1 p w))
)))
(assert  (not (IsPredicateField_3092_1237 f_7)))
(assert  (not (IsWandField_3092_1237 f_7)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5417) (ExhaleHeap@@2 T@PolymorphicMapType_5417) (Mask@@5 T@PolymorphicMapType_5438) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@5) (succHeap Heap@@8 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_5438) (o_2@@4 T@Ref) (f_4@@4 T@Field_5477_15320) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_5438_3092_19442#PolymorphicMapType_5438| Mask@@6) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3092_20571 f_4@@4))) (not (IsWandField_3092_20587 f_4@@4))) (<= (select (|PolymorphicMapType_5438_3092_19442#PolymorphicMapType_5438| Mask@@6) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_5438_3092_19442#PolymorphicMapType_5438| Mask@@6) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_5438) (o_2@@5 T@Ref) (f_4@@5 T@Field_5477_15187) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_5438_3092_15187#PolymorphicMapType_5438| Mask@@7) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5477_15278 f_4@@5))) (not (IsWandField_5477_17025 f_4@@5))) (<= (select (|PolymorphicMapType_5438_3092_15187#PolymorphicMapType_5438| Mask@@7) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_5438_3092_15187#PolymorphicMapType_5438| Mask@@7) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5438) (o_2@@6 T@Ref) (f_4@@6 T@Field_5490_5491) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5438_3092_5491#PolymorphicMapType_5438| Mask@@8) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3092_5491 f_4@@6))) (not (IsWandField_3092_5491 f_4@@6))) (<= (select (|PolymorphicMapType_5438_3092_5491#PolymorphicMapType_5438| Mask@@8) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5438_3092_5491#PolymorphicMapType_5438| Mask@@8) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5438) (o_2@@7 T@Ref) (f_4@@7 T@Field_5477_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5438_3092_53#PolymorphicMapType_5438| Mask@@9) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3092_53 f_4@@7))) (not (IsWandField_3092_53 f_4@@7))) (<= (select (|PolymorphicMapType_5438_3092_53#PolymorphicMapType_5438| Mask@@9) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5438_3092_53#PolymorphicMapType_5438| Mask@@9) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5438) (o_2@@8 T@Ref) (f_4@@8 T@Field_8812_1237) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_5438_3092_1237#PolymorphicMapType_5438| Mask@@10) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3092_1237 f_4@@8))) (not (IsWandField_3092_1237 f_4@@8))) (<= (select (|PolymorphicMapType_5438_3092_1237#PolymorphicMapType_5438| Mask@@10) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_5438_3092_1237#PolymorphicMapType_5438| Mask@@10) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5438) (o_2@@9 T@Ref) (f_4@@9 T@Field_5477_15320) ) (! (= (HasDirectPerm_5477_21025 Mask@@11 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5438_3092_19442#PolymorphicMapType_5438| Mask@@11) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5477_21025 Mask@@11 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5438) (o_2@@10 T@Ref) (f_4@@10 T@Field_5477_15187) ) (! (= (HasDirectPerm_5477_15251 Mask@@12 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5438_3092_15187#PolymorphicMapType_5438| Mask@@12) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5477_15251 Mask@@12 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5438) (o_2@@11 T@Ref) (f_4@@11 T@Field_8812_1237) ) (! (= (HasDirectPerm_5477_1237 Mask@@13 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_5438_3092_1237#PolymorphicMapType_5438| Mask@@13) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5477_1237 Mask@@13 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5438) (o_2@@12 T@Ref) (f_4@@12 T@Field_5490_5491) ) (! (= (HasDirectPerm_5477_5491 Mask@@14 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_5438_3092_5491#PolymorphicMapType_5438| Mask@@14) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5477_5491 Mask@@14 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5438) (o_2@@13 T@Ref) (f_4@@13 T@Field_5477_53) ) (! (= (HasDirectPerm_5477_53 Mask@@15 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_5438_3092_53#PolymorphicMapType_5438| Mask@@15) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5477_53 Mask@@15 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5417) (ExhaleHeap@@3 T@PolymorphicMapType_5417) (Mask@@16 T@PolymorphicMapType_5438) (pm_f_13@@1 T@Field_5477_15187) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@16) (=> (and (HasDirectPerm_5477_15251 Mask@@16 null pm_f_13@@1) (IsPredicateField_5477_15278 pm_f_13@@1)) (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_5477_53) ) (!  (=> (select (|PolymorphicMapType_5966_5477_53#PolymorphicMapType_5966| (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@9) null (PredicateMaskField_5477 pm_f_13@@1))) o2_13 f_30) (= (select (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| Heap@@9) o2_13 f_30) (select (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| ExhaleHeap@@3) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| ExhaleHeap@@3) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_5490_5491) ) (!  (=> (select (|PolymorphicMapType_5966_5477_5491#PolymorphicMapType_5966| (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@9) null (PredicateMaskField_5477 pm_f_13@@1))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| Heap@@9) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| ExhaleHeap@@3) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| ExhaleHeap@@3) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_8812_1237) ) (!  (=> (select (|PolymorphicMapType_5966_5477_1237#PolymorphicMapType_5966| (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@9) null (PredicateMaskField_5477 pm_f_13@@1))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| Heap@@9) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| ExhaleHeap@@3) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| ExhaleHeap@@3) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_5477_15187) ) (!  (=> (select (|PolymorphicMapType_5966_5477_15187#PolymorphicMapType_5966| (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@9) null (PredicateMaskField_5477 pm_f_13@@1))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| Heap@@9) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| ExhaleHeap@@3) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| ExhaleHeap@@3) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_5477_15320) ) (!  (=> (select (|PolymorphicMapType_5966_5477_16498#PolymorphicMapType_5966| (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@9) null (PredicateMaskField_5477 pm_f_13@@1))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@9) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| ExhaleHeap@@3) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| ExhaleHeap@@3) o2_13@@3 f_30@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@16) (IsPredicateField_5477_15278 pm_f_13@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5417) (ExhaleHeap@@4 T@PolymorphicMapType_5417) (Mask@@17 T@PolymorphicMapType_5438) (pm_f_13@@2 T@Field_5477_15187) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@17) (=> (and (HasDirectPerm_5477_15251 Mask@@17 null pm_f_13@@2) (IsWandField_5477_17025 pm_f_13@@2)) (and (and (and (and (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_5477_53) ) (!  (=> (select (|PolymorphicMapType_5966_5477_53#PolymorphicMapType_5966| (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@10) null (WandMaskField_5477 pm_f_13@@2))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| Heap@@10) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| ExhaleHeap@@4) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| ExhaleHeap@@4) o2_13@@4 f_30@@4))
)) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_5490_5491) ) (!  (=> (select (|PolymorphicMapType_5966_5477_5491#PolymorphicMapType_5966| (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@10) null (WandMaskField_5477 pm_f_13@@2))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| Heap@@10) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| ExhaleHeap@@4) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| ExhaleHeap@@4) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_8812_1237) ) (!  (=> (select (|PolymorphicMapType_5966_5477_1237#PolymorphicMapType_5966| (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@10) null (WandMaskField_5477 pm_f_13@@2))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| Heap@@10) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| ExhaleHeap@@4) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| ExhaleHeap@@4) o2_13@@6 f_30@@6))
))) (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_5477_15187) ) (!  (=> (select (|PolymorphicMapType_5966_5477_15187#PolymorphicMapType_5966| (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@10) null (WandMaskField_5477 pm_f_13@@2))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| Heap@@10) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| ExhaleHeap@@4) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| ExhaleHeap@@4) o2_13@@7 f_30@@7))
))) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_5477_15320) ) (!  (=> (select (|PolymorphicMapType_5966_5477_16498#PolymorphicMapType_5966| (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@10) null (WandMaskField_5477 pm_f_13@@2))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@10) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| ExhaleHeap@@4) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| ExhaleHeap@@4) o2_13@@8 f_30@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@17) (IsWandField_5477_17025 pm_f_13@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.182:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5417) (ExhaleHeap@@5 T@PolymorphicMapType_5417) (Mask@@18 T@PolymorphicMapType_5438) (o_22@@0 T@Ref) (f_30@@9 T@Field_5477_15320) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_5477_21025 Mask@@18 o_22@@0 f_30@@9) (= (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@11) o_22@@0 f_30@@9) (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| ExhaleHeap@@5) o_22@@0 f_30@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| ExhaleHeap@@5) o_22@@0 f_30@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5417) (ExhaleHeap@@6 T@PolymorphicMapType_5417) (Mask@@19 T@PolymorphicMapType_5438) (o_22@@1 T@Ref) (f_30@@10 T@Field_5477_15187) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_5477_15251 Mask@@19 o_22@@1 f_30@@10) (= (select (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| Heap@@12) o_22@@1 f_30@@10) (select (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| ExhaleHeap@@6) o_22@@1 f_30@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| ExhaleHeap@@6) o_22@@1 f_30@@10))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5417) (ExhaleHeap@@7 T@PolymorphicMapType_5417) (Mask@@20 T@PolymorphicMapType_5438) (o_22@@2 T@Ref) (f_30@@11 T@Field_8812_1237) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_5477_1237 Mask@@20 o_22@@2 f_30@@11) (= (select (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| Heap@@13) o_22@@2 f_30@@11) (select (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| ExhaleHeap@@7) o_22@@2 f_30@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| ExhaleHeap@@7) o_22@@2 f_30@@11))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5417) (ExhaleHeap@@8 T@PolymorphicMapType_5417) (Mask@@21 T@PolymorphicMapType_5438) (o_22@@3 T@Ref) (f_30@@12 T@Field_5490_5491) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_5477_5491 Mask@@21 o_22@@3 f_30@@12) (= (select (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| Heap@@14) o_22@@3 f_30@@12) (select (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| ExhaleHeap@@8) o_22@@3 f_30@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| ExhaleHeap@@8) o_22@@3 f_30@@12))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5417) (ExhaleHeap@@9 T@PolymorphicMapType_5417) (Mask@@22 T@PolymorphicMapType_5438) (o_22@@4 T@Ref) (f_30@@13 T@Field_5477_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@22) (=> (HasDirectPerm_5477_53 Mask@@22 o_22@@4 f_30@@13) (= (select (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| Heap@@15) o_22@@4 f_30@@13) (select (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| ExhaleHeap@@9) o_22@@4 f_30@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@22) (select (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| ExhaleHeap@@9) o_22@@4 f_30@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5477_15320) ) (! (= (select (|PolymorphicMapType_5438_3092_19442#PolymorphicMapType_5438| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5438_3092_19442#PolymorphicMapType_5438| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5477_15187) ) (! (= (select (|PolymorphicMapType_5438_3092_15187#PolymorphicMapType_5438| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5438_3092_15187#PolymorphicMapType_5438| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_5490_5491) ) (! (= (select (|PolymorphicMapType_5438_3092_5491#PolymorphicMapType_5438| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5438_3092_5491#PolymorphicMapType_5438| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_5477_53) ) (! (= (select (|PolymorphicMapType_5438_3092_53#PolymorphicMapType_5438| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5438_3092_53#PolymorphicMapType_5438| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_8812_1237) ) (! (= (select (|PolymorphicMapType_5438_3092_1237#PolymorphicMapType_5438| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5438_3092_1237#PolymorphicMapType_5438| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5438) (SummandMask1 T@PolymorphicMapType_5438) (SummandMask2 T@PolymorphicMapType_5438) (o_2@@19 T@Ref) (f_4@@19 T@Field_5477_15320) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5438_3092_19442#PolymorphicMapType_5438| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_5438_3092_19442#PolymorphicMapType_5438| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_5438_3092_19442#PolymorphicMapType_5438| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5438_3092_19442#PolymorphicMapType_5438| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5438_3092_19442#PolymorphicMapType_5438| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5438_3092_19442#PolymorphicMapType_5438| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5438) (SummandMask1@@0 T@PolymorphicMapType_5438) (SummandMask2@@0 T@PolymorphicMapType_5438) (o_2@@20 T@Ref) (f_4@@20 T@Field_5477_15187) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5438_3092_15187#PolymorphicMapType_5438| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_5438_3092_15187#PolymorphicMapType_5438| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_5438_3092_15187#PolymorphicMapType_5438| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5438_3092_15187#PolymorphicMapType_5438| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5438_3092_15187#PolymorphicMapType_5438| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5438_3092_15187#PolymorphicMapType_5438| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5438) (SummandMask1@@1 T@PolymorphicMapType_5438) (SummandMask2@@1 T@PolymorphicMapType_5438) (o_2@@21 T@Ref) (f_4@@21 T@Field_5490_5491) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5438_3092_5491#PolymorphicMapType_5438| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_5438_3092_5491#PolymorphicMapType_5438| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_5438_3092_5491#PolymorphicMapType_5438| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5438_3092_5491#PolymorphicMapType_5438| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5438_3092_5491#PolymorphicMapType_5438| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5438_3092_5491#PolymorphicMapType_5438| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5438) (SummandMask1@@2 T@PolymorphicMapType_5438) (SummandMask2@@2 T@PolymorphicMapType_5438) (o_2@@22 T@Ref) (f_4@@22 T@Field_5477_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5438_3092_53#PolymorphicMapType_5438| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_5438_3092_53#PolymorphicMapType_5438| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_5438_3092_53#PolymorphicMapType_5438| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5438_3092_53#PolymorphicMapType_5438| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5438_3092_53#PolymorphicMapType_5438| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5438_3092_53#PolymorphicMapType_5438| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5438) (SummandMask1@@3 T@PolymorphicMapType_5438) (SummandMask2@@3 T@PolymorphicMapType_5438) (o_2@@23 T@Ref) (f_4@@23 T@Field_8812_1237) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5438_3092_1237#PolymorphicMapType_5438| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_5438_3092_1237#PolymorphicMapType_5438| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_5438_3092_1237#PolymorphicMapType_5438| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5438_3092_1237#PolymorphicMapType_5438| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5438_3092_1237#PolymorphicMapType_5438| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5438_3092_1237#PolymorphicMapType_5438| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5417) (Mask@@23 T@PolymorphicMapType_5438) (x@@4 T@Ref) ) (!  (=> (state Heap@@16 Mask@@23) (= (|test2'| Heap@@16 x@@4) (|test2#frame| EmptyFrame x@@4)))
 :qid |stdinbpl.358:15|
 :skolemid |39|
 :pattern ( (state Heap@@16 Mask@@23) (|test2'| Heap@@16 x@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5417) (Mask@@24 T@PolymorphicMapType_5438) (x@@5 T@Ref) ) (!  (=> (state Heap@@17 Mask@@24) (= (|nonTerminating'| Heap@@17 x@@5) (|nonTerminating#frame| EmptyFrame x@@5)))
 :qid |stdinbpl.416:15|
 :skolemid |43|
 :pattern ( (state Heap@@17 Mask@@24) (|nonTerminating'| Heap@@17 x@@5))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5417) (x@@6 T@Ref) ) (!  (and (= (test_2 Heap@@18 x@@6) (|test'| Heap@@18 x@@6)) (dummyFunction_1575 (|test#triggerStateless| x@@6)))
 :qid |stdinbpl.214:15|
 :skolemid |22|
 :pattern ( (test_2 Heap@@18 x@@6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5417) (x@@7 T@Ref) ) (!  (and (= (test2_1 Heap@@19 x@@7) (|test2'| Heap@@19 x@@7)) (dummyFunction_1575 (|test2#triggerStateless| x@@7)))
 :qid |stdinbpl.338:15|
 :skolemid |35|
 :pattern ( (test2_1 Heap@@19 x@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5417) (x@@8 T@Ref) ) (!  (and (= (nonTerminating Heap@@20 x@@8) (|nonTerminating'| Heap@@20 x@@8)) (dummyFunction_1575 (|nonTerminating#triggerStateless| x@@8)))
 :qid |stdinbpl.405:15|
 :skolemid |41|
 :pattern ( (nonTerminating Heap@@20 x@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5417) (Mask@@25 T@PolymorphicMapType_5438) (x@@9 T@Ref) ) (!  (=> (state Heap@@21 Mask@@25) (= (|test'| Heap@@21 x@@9) (|test#frame| (FrameFragment_1431 (|test#condqp1| Heap@@21 x@@9)) x@@9)))
 :qid |stdinbpl.234:15|
 :skolemid |26|
 :pattern ( (state Heap@@21 Mask@@25) (|test'| Heap@@21 x@@9))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_5417) (Heap1Heap T@PolymorphicMapType_5417) (x@@10 T@Ref) ) (!  (=> (and (=  (and (= x@@10 (|sk_test#condqp1| (|test#condqp1| Heap2Heap x@@10) (|test#condqp1| Heap1Heap x@@10))) (< NoPerm FullPerm))  (and (= x@@10 (|sk_test#condqp1| (|test#condqp1| Heap2Heap x@@10) (|test#condqp1| Heap1Heap x@@10))) (< NoPerm FullPerm))) (=> (and (= x@@10 (|sk_test#condqp1| (|test#condqp1| Heap2Heap x@@10) (|test#condqp1| Heap1Heap x@@10))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| Heap2Heap) (|sk_test#condqp1| (|test#condqp1| Heap2Heap x@@10) (|test#condqp1| Heap1Heap x@@10)) f_7) (select (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| Heap1Heap) (|sk_test#condqp1| (|test#condqp1| Heap2Heap x@@10) (|test#condqp1| Heap1Heap x@@10)) f_7)))) (= (|test#condqp1| Heap2Heap x@@10) (|test#condqp1| Heap1Heap x@@10)))
 :qid |stdinbpl.244:15|
 :skolemid |27|
 :pattern ( (|test#condqp1| Heap2Heap x@@10) (|test#condqp1| Heap1Heap x@@10) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5417) (o_35 T@Ref) (f_11 T@Field_5477_15187) (v T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_5417 (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| Heap@@22) (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| Heap@@22) (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| Heap@@22) (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@22) (store (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| Heap@@22) o_35 f_11 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5417 (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| Heap@@22) (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| Heap@@22) (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| Heap@@22) (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@22) (store (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| Heap@@22) o_35 f_11 v)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5417) (o_35@@0 T@Ref) (f_11@@0 T@Field_5477_15320) (v@@0 T@PolymorphicMapType_5966) ) (! (succHeap Heap@@23 (PolymorphicMapType_5417 (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| Heap@@23) (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| Heap@@23) (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| Heap@@23) (store (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@23) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5417 (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| Heap@@23) (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| Heap@@23) (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| Heap@@23) (store (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@23) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5417) (o_35@@1 T@Ref) (f_11@@1 T@Field_8812_1237) (v@@1 Int) ) (! (succHeap Heap@@24 (PolymorphicMapType_5417 (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| Heap@@24) (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| Heap@@24) (store (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| Heap@@24) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@24) (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5417 (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| Heap@@24) (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| Heap@@24) (store (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| Heap@@24) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@24) (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5417) (o_35@@2 T@Ref) (f_11@@2 T@Field_5490_5491) (v@@2 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_5417 (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| Heap@@25) (store (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| Heap@@25) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| Heap@@25) (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@25) (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5417 (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| Heap@@25) (store (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| Heap@@25) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| Heap@@25) (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@25) (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5417) (o_35@@3 T@Ref) (f_11@@3 T@Field_5477_53) (v@@3 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_5417 (store (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| Heap@@26) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| Heap@@26) (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| Heap@@26) (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@26) (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5417 (store (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| Heap@@26) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| Heap@@26) (|PolymorphicMapType_5417_3092_1237#PolymorphicMapType_5417| Heap@@26) (|PolymorphicMapType_5417_5477_15364#PolymorphicMapType_5417| Heap@@26) (|PolymorphicMapType_5417_5477_15187#PolymorphicMapType_5417| Heap@@26)))
)))
(assert (forall ((o_35@@4 T@Ref) (f_31 T@Field_5490_5491) (Heap@@27 T@PolymorphicMapType_5417) ) (!  (=> (select (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| Heap@@27) o_35@@4 $allocated) (select (|PolymorphicMapType_5417_2956_53#PolymorphicMapType_5417| Heap@@27) (select (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| Heap@@27) o_35@@4 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5417_2959_2960#PolymorphicMapType_5417| Heap@@27) o_35@@4 f_31))
)))
(assert (forall ((p@@1 T@Field_5477_15187) (v_1@@0 T@FrameType) (q T@Field_5477_15187) (w@@0 T@FrameType) (r T@Field_5477_15187) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5477_5477 p@@1 v_1@@0 q w@@0) (InsidePredicate_5477_5477 q w@@0 r u)) (InsidePredicate_5477_5477 p@@1 v_1@@0 r u))
 :qid |stdinbpl.189:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5477_5477 p@@1 v_1@@0 q w@@0) (InsidePredicate_5477_5477 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |test2#definedness|)
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
