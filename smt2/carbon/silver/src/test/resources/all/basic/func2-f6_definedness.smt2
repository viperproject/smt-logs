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
(declare-sort T@Field_5939_53 0)
(declare-sort T@Field_5952_5953 0)
(declare-sort T@Field_9266_1189 0)
(declare-sort T@Field_3178_16434 0)
(declare-sort T@Field_3178_16301 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5900 0)) (((PolymorphicMapType_5900 (|PolymorphicMapType_5900_3178_1189#PolymorphicMapType_5900| (Array T@Ref T@Field_9266_1189 Real)) (|PolymorphicMapType_5900_3178_53#PolymorphicMapType_5900| (Array T@Ref T@Field_5939_53 Real)) (|PolymorphicMapType_5900_3178_5953#PolymorphicMapType_5900| (Array T@Ref T@Field_5952_5953 Real)) (|PolymorphicMapType_5900_3178_16301#PolymorphicMapType_5900| (Array T@Ref T@Field_3178_16301 Real)) (|PolymorphicMapType_5900_3178_20556#PolymorphicMapType_5900| (Array T@Ref T@Field_3178_16434 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6428 0)) (((PolymorphicMapType_6428 (|PolymorphicMapType_6428_5939_53#PolymorphicMapType_6428| (Array T@Ref T@Field_5939_53 Bool)) (|PolymorphicMapType_6428_5939_5953#PolymorphicMapType_6428| (Array T@Ref T@Field_5952_5953 Bool)) (|PolymorphicMapType_6428_5939_1189#PolymorphicMapType_6428| (Array T@Ref T@Field_9266_1189 Bool)) (|PolymorphicMapType_6428_5939_16301#PolymorphicMapType_6428| (Array T@Ref T@Field_3178_16301 Bool)) (|PolymorphicMapType_6428_5939_17612#PolymorphicMapType_6428| (Array T@Ref T@Field_3178_16434 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5879 0)) (((PolymorphicMapType_5879 (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| (Array T@Ref T@Field_5939_53 Bool)) (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| (Array T@Ref T@Field_5952_5953 T@Ref)) (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| (Array T@Ref T@Field_9266_1189 Int)) (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| (Array T@Ref T@Field_3178_16434 T@PolymorphicMapType_6428)) (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| (Array T@Ref T@Field_3178_16301 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_5939_53)
(declare-fun f_7 () T@Field_9266_1189)
(declare-fun succHeap (T@PolymorphicMapType_5879 T@PolymorphicMapType_5879) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5879 T@PolymorphicMapType_5879) Bool)
(declare-fun state (T@PolymorphicMapType_5879 T@PolymorphicMapType_5900) Bool)
(declare-fun f1_3 (T@PolymorphicMapType_5879 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_5900) Bool)
(declare-fun f3_a (T@PolymorphicMapType_5879 T@Ref) Int)
(declare-fun f4_1 (T@PolymorphicMapType_5879 T@Ref) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_6428)
(declare-fun |f1'| (T@PolymorphicMapType_5879 T@Ref) Int)
(declare-fun dummyFunction_1378 (Int) Bool)
(declare-fun |f1#triggerStateless| (T@Ref) Int)
(declare-fun |f3_a'| (T@PolymorphicMapType_5879 T@Ref) Int)
(declare-fun |f3_a#triggerStateless| (T@Ref) Int)
(declare-fun |f3_b'| (T@PolymorphicMapType_5879 T@Ref) Int)
(declare-fun |f3_b#triggerStateless| (T@Ref) Int)
(declare-fun |f4'| (T@PolymorphicMapType_5879 T@Ref) Int)
(declare-fun |f4#triggerStateless| (T@Ref) Int)
(declare-fun |f5'| (T@PolymorphicMapType_5879 T@Ref) Int)
(declare-fun |f5#triggerStateless| (T@Ref) Int)
(declare-fun |f6'| (T@PolymorphicMapType_5879 T@Ref) Int)
(declare-fun |f6#triggerStateless| (T@Ref) Int)
(declare-fun f3_b (T@PolymorphicMapType_5879 T@Ref) Int)
(declare-fun f5_1 (T@PolymorphicMapType_5879 T@Ref) Int)
(declare-fun f6_1 (T@PolymorphicMapType_5879 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5879 T@PolymorphicMapType_5879 T@PolymorphicMapType_5900) Bool)
(declare-fun IsPredicateField_3178_16392 (T@Field_3178_16301) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3178 (T@Field_3178_16301) T@Field_3178_16434)
(declare-fun HasDirectPerm_3178_16365 (T@PolymorphicMapType_5900 T@Ref T@Field_3178_16301) Bool)
(declare-fun IsWandField_3178_18139 (T@Field_3178_16301) Bool)
(declare-fun WandMaskField_3178 (T@Field_3178_16301) T@Field_3178_16434)
(declare-fun dummyHeap () T@PolymorphicMapType_5879)
(declare-fun ZeroMask () T@PolymorphicMapType_5900)
(declare-fun InsidePredicate_5939_5939 (T@Field_3178_16301 T@FrameType T@Field_3178_16301 T@FrameType) Bool)
(declare-fun IsPredicateField_3178_1189 (T@Field_9266_1189) Bool)
(declare-fun IsWandField_3178_1189 (T@Field_9266_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3178_21685 (T@Field_3178_16434) Bool)
(declare-fun IsWandField_3178_21701 (T@Field_3178_16434) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3178_5953 (T@Field_5952_5953) Bool)
(declare-fun IsWandField_3178_5953 (T@Field_5952_5953) Bool)
(declare-fun IsPredicateField_3178_53 (T@Field_5939_53) Bool)
(declare-fun IsWandField_3178_53 (T@Field_5939_53) Bool)
(declare-fun HasDirectPerm_3178_22139 (T@PolymorphicMapType_5900 T@Ref T@Field_3178_16434) Bool)
(declare-fun HasDirectPerm_3178_5953 (T@PolymorphicMapType_5900 T@Ref T@Field_5952_5953) Bool)
(declare-fun HasDirectPerm_3178_53 (T@PolymorphicMapType_5900 T@Ref T@Field_5939_53) Bool)
(declare-fun HasDirectPerm_3178_1189 (T@PolymorphicMapType_5900 T@Ref T@Field_9266_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5900 T@PolymorphicMapType_5900 T@PolymorphicMapType_5900) Bool)
(declare-fun |f1#frame| (T@FrameType T@Ref) Int)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun |f4#frame| (T@FrameType T@Ref) Int)
(declare-fun |f3_a#frame| (T@FrameType T@Ref) Int)
(declare-fun |f3_b#frame| (T@FrameType T@Ref) Int)
(declare-fun |f5#frame| (T@FrameType T@Ref) Int)
(declare-fun |f6#frame| (T@FrameType T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_5879) (Heap1 T@PolymorphicMapType_5879) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5879) (Mask T@PolymorphicMapType_5900) (r_1 T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 1)) (= (f1_3 Heap r_1) (select (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap) r_1 f_7)))
 :qid |stdinbpl.209:15|
 :skolemid |24|
 :pattern ( (state Heap Mask) (f1_3 Heap r_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5879) (Mask@@0 T@PolymorphicMapType_5900) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5879) (Heap1@@0 T@PolymorphicMapType_5879) (Heap2 T@PolymorphicMapType_5879) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5879) (Mask@@1 T@PolymorphicMapType_5900) (r_1@@0 T@Ref) ) (!  (=> (and (state Heap@@1 Mask@@1) (< AssumeFunctionsAbove 2)) (=> (= (select (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@1) r_1@@0 f_7) 2) (= (f3_a Heap@@1 r_1@@0) 2)))
 :qid |stdinbpl.276:15|
 :skolemid |28|
 :pattern ( (state Heap@@1 Mask@@1) (f3_a Heap@@1 r_1@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5879) (Mask@@2 T@PolymorphicMapType_5900) (r_1@@1 T@Ref) ) (!  (=> (and (state Heap@@2 Mask@@2) (< AssumeFunctionsAbove 5)) (=> (= (select (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@2) r_1@@1 f_7) 2) (= (f4_1 Heap@@2 r_1@@1) 2)))
 :qid |stdinbpl.396:15|
 :skolemid |36|
 :pattern ( (state Heap@@2 Mask@@2) (f4_1 Heap@@2 r_1@@1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3178_16434) ) (!  (not (select (|PolymorphicMapType_6428_5939_17612#PolymorphicMapType_6428| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6428_5939_17612#PolymorphicMapType_6428| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3178_16301) ) (!  (not (select (|PolymorphicMapType_6428_5939_16301#PolymorphicMapType_6428| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6428_5939_16301#PolymorphicMapType_6428| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9266_1189) ) (!  (not (select (|PolymorphicMapType_6428_5939_1189#PolymorphicMapType_6428| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6428_5939_1189#PolymorphicMapType_6428| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5952_5953) ) (!  (not (select (|PolymorphicMapType_6428_5939_5953#PolymorphicMapType_6428| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6428_5939_5953#PolymorphicMapType_6428| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5939_53) ) (!  (not (select (|PolymorphicMapType_6428_5939_53#PolymorphicMapType_6428| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6428_5939_53#PolymorphicMapType_6428| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5879) (r_1@@2 T@Ref) ) (! (dummyFunction_1378 (|f1#triggerStateless| r_1@@2))
 :qid |stdinbpl.203:15|
 :skolemid |23|
 :pattern ( (|f1'| Heap@@3 r_1@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5879) (r_1@@3 T@Ref) ) (! (dummyFunction_1378 (|f3_a#triggerStateless| r_1@@3))
 :qid |stdinbpl.270:15|
 :skolemid |27|
 :pattern ( (|f3_a'| Heap@@4 r_1@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5879) (r_1@@4 T@Ref) ) (! (dummyFunction_1378 (|f3_b#triggerStateless| r_1@@4))
 :qid |stdinbpl.329:15|
 :skolemid |31|
 :pattern ( (|f3_b'| Heap@@5 r_1@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5879) (r_1@@5 T@Ref) ) (! (dummyFunction_1378 (|f4#triggerStateless| r_1@@5))
 :qid |stdinbpl.390:15|
 :skolemid |35|
 :pattern ( (|f4'| Heap@@6 r_1@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5879) (r_1@@6 T@Ref) ) (! (dummyFunction_1378 (|f5#triggerStateless| r_1@@6))
 :qid |stdinbpl.455:15|
 :skolemid |39|
 :pattern ( (|f5'| Heap@@7 r_1@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5879) (r_1@@7 T@Ref) ) (! (dummyFunction_1378 (|f6#triggerStateless| r_1@@7))
 :qid |stdinbpl.516:15|
 :skolemid |43|
 :pattern ( (|f6'| Heap@@8 r_1@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5879) (r_1@@8 T@Ref) ) (!  (and (= (f1_3 Heap@@9 r_1@@8) (|f1'| Heap@@9 r_1@@8)) (dummyFunction_1378 (|f1#triggerStateless| r_1@@8)))
 :qid |stdinbpl.199:15|
 :skolemid |22|
 :pattern ( (f1_3 Heap@@9 r_1@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5879) (r_1@@9 T@Ref) ) (!  (and (= (f3_a Heap@@10 r_1@@9) (|f3_a'| Heap@@10 r_1@@9)) (dummyFunction_1378 (|f3_a#triggerStateless| r_1@@9)))
 :qid |stdinbpl.266:15|
 :skolemid |26|
 :pattern ( (f3_a Heap@@10 r_1@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5879) (r_1@@10 T@Ref) ) (!  (and (= (f3_b Heap@@11 r_1@@10) (|f3_b'| Heap@@11 r_1@@10)) (dummyFunction_1378 (|f3_b#triggerStateless| r_1@@10)))
 :qid |stdinbpl.325:15|
 :skolemid |30|
 :pattern ( (f3_b Heap@@11 r_1@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5879) (r_1@@11 T@Ref) ) (!  (and (= (f4_1 Heap@@12 r_1@@11) (|f4'| Heap@@12 r_1@@11)) (dummyFunction_1378 (|f4#triggerStateless| r_1@@11)))
 :qid |stdinbpl.386:15|
 :skolemid |34|
 :pattern ( (f4_1 Heap@@12 r_1@@11))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5879) (r_1@@12 T@Ref) ) (!  (and (= (f5_1 Heap@@13 r_1@@12) (|f5'| Heap@@13 r_1@@12)) (dummyFunction_1378 (|f5#triggerStateless| r_1@@12)))
 :qid |stdinbpl.451:15|
 :skolemid |38|
 :pattern ( (f5_1 Heap@@13 r_1@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5879) (r_1@@13 T@Ref) ) (!  (and (= (f6_1 Heap@@14 r_1@@13) (|f6'| Heap@@14 r_1@@13)) (dummyFunction_1378 (|f6#triggerStateless| r_1@@13)))
 :qid |stdinbpl.512:15|
 :skolemid |42|
 :pattern ( (f6_1 Heap@@14 r_1@@13))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5879) (ExhaleHeap T@PolymorphicMapType_5879) (Mask@@3 T@PolymorphicMapType_5900) (pm_f T@Field_3178_16301) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_3178_16365 Mask@@3 null pm_f) (IsPredicateField_3178_16392 pm_f)) (= (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@15) null (PredicateMaskField_3178 pm_f)) (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| ExhaleHeap) null (PredicateMaskField_3178 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap Mask@@3) (IsPredicateField_3178_16392 pm_f) (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| ExhaleHeap) null (PredicateMaskField_3178 pm_f)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5879) (ExhaleHeap@@0 T@PolymorphicMapType_5879) (Mask@@4 T@PolymorphicMapType_5900) (pm_f@@0 T@Field_3178_16301) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_3178_16365 Mask@@4 null pm_f@@0) (IsWandField_3178_18139 pm_f@@0)) (= (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@16) null (WandMaskField_3178 pm_f@@0)) (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| ExhaleHeap@@0) null (WandMaskField_3178 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@0 Mask@@4) (IsWandField_3178_18139 pm_f@@0) (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| ExhaleHeap@@0) null (WandMaskField_3178 pm_f@@0)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5879) (Mask@@5 T@PolymorphicMapType_5900) (r_1@@14 T@Ref) ) (!  (=> (and (state Heap@@17 Mask@@5) (< AssumeFunctionsAbove 3)) (=> (and (not (= r_1@@14 null)) (= (select (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@17) r_1@@14 f_7) 2)) (= (f3_b Heap@@17 r_1@@14) 2)))
 :qid |stdinbpl.335:15|
 :skolemid |32|
 :pattern ( (state Heap@@17 Mask@@5) (f3_b Heap@@17 r_1@@14))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5879) (ExhaleHeap@@1 T@PolymorphicMapType_5879) (Mask@@6 T@PolymorphicMapType_5900) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@1 Mask@@6) (=> (select (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| Heap@@18) o_1 $allocated) (select (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@1 Mask@@6) (select (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_3178_16301) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5939_5939 p v_1 p w))
 :qid |stdinbpl.179:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5939_5939 p v_1 p w))
)))
(assert  (not (IsPredicateField_3178_1189 f_7)))
(assert  (not (IsWandField_3178_1189 f_7)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5879) (ExhaleHeap@@2 T@PolymorphicMapType_5879) (Mask@@7 T@PolymorphicMapType_5900) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@2 Mask@@7) (succHeap Heap@@19 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@2 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5900) (o_2@@4 T@Ref) (f_4@@4 T@Field_3178_16434) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5900_3178_20556#PolymorphicMapType_5900| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3178_21685 f_4@@4))) (not (IsWandField_3178_21701 f_4@@4))) (<= (select (|PolymorphicMapType_5900_3178_20556#PolymorphicMapType_5900| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5900_3178_20556#PolymorphicMapType_5900| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5900) (o_2@@5 T@Ref) (f_4@@5 T@Field_3178_16301) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5900_3178_16301#PolymorphicMapType_5900| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3178_16392 f_4@@5))) (not (IsWandField_3178_18139 f_4@@5))) (<= (select (|PolymorphicMapType_5900_3178_16301#PolymorphicMapType_5900| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5900_3178_16301#PolymorphicMapType_5900| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5900) (o_2@@6 T@Ref) (f_4@@6 T@Field_5952_5953) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_5900_3178_5953#PolymorphicMapType_5900| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3178_5953 f_4@@6))) (not (IsWandField_3178_5953 f_4@@6))) (<= (select (|PolymorphicMapType_5900_3178_5953#PolymorphicMapType_5900| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_5900_3178_5953#PolymorphicMapType_5900| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5900) (o_2@@7 T@Ref) (f_4@@7 T@Field_5939_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_5900_3178_53#PolymorphicMapType_5900| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3178_53 f_4@@7))) (not (IsWandField_3178_53 f_4@@7))) (<= (select (|PolymorphicMapType_5900_3178_53#PolymorphicMapType_5900| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_5900_3178_53#PolymorphicMapType_5900| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5900) (o_2@@8 T@Ref) (f_4@@8 T@Field_9266_1189) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_5900_3178_1189#PolymorphicMapType_5900| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3178_1189 f_4@@8))) (not (IsWandField_3178_1189 f_4@@8))) (<= (select (|PolymorphicMapType_5900_3178_1189#PolymorphicMapType_5900| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_5900_3178_1189#PolymorphicMapType_5900| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5900) (o_2@@9 T@Ref) (f_4@@9 T@Field_3178_16434) ) (! (= (HasDirectPerm_3178_22139 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5900_3178_20556#PolymorphicMapType_5900| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3178_22139 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5900) (o_2@@10 T@Ref) (f_4@@10 T@Field_3178_16301) ) (! (= (HasDirectPerm_3178_16365 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5900_3178_16301#PolymorphicMapType_5900| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3178_16365 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5900) (o_2@@11 T@Ref) (f_4@@11 T@Field_5952_5953) ) (! (= (HasDirectPerm_3178_5953 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_5900_3178_5953#PolymorphicMapType_5900| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3178_5953 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5900) (o_2@@12 T@Ref) (f_4@@12 T@Field_5939_53) ) (! (= (HasDirectPerm_3178_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_5900_3178_53#PolymorphicMapType_5900| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3178_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5900) (o_2@@13 T@Ref) (f_4@@13 T@Field_9266_1189) ) (! (= (HasDirectPerm_3178_1189 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_5900_3178_1189#PolymorphicMapType_5900| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3178_1189 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5879) (ExhaleHeap@@3 T@PolymorphicMapType_5879) (Mask@@18 T@PolymorphicMapType_5900) (pm_f@@1 T@Field_3178_16301) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_3178_16365 Mask@@18 null pm_f@@1) (IsPredicateField_3178_16392 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_5939_53) ) (!  (=> (select (|PolymorphicMapType_6428_5939_53#PolymorphicMapType_6428| (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@20) null (PredicateMaskField_3178 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| Heap@@20) o2 f_2) (select (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_5952_5953) ) (!  (=> (select (|PolymorphicMapType_6428_5939_5953#PolymorphicMapType_6428| (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@20) null (PredicateMaskField_3178 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| Heap@@20) o2@@0 f_2@@0) (select (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_9266_1189) ) (!  (=> (select (|PolymorphicMapType_6428_5939_1189#PolymorphicMapType_6428| (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@20) null (PredicateMaskField_3178 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@20) o2@@1 f_2@@1) (select (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3178_16301) ) (!  (=> (select (|PolymorphicMapType_6428_5939_16301#PolymorphicMapType_6428| (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@20) null (PredicateMaskField_3178 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| Heap@@20) o2@@2 f_2@@2) (select (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3178_16434) ) (!  (=> (select (|PolymorphicMapType_6428_5939_17612#PolymorphicMapType_6428| (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@20) null (PredicateMaskField_3178 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@20) o2@@3 f_2@@3) (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@3 Mask@@18) (IsPredicateField_3178_16392 pm_f@@1))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5879) (ExhaleHeap@@4 T@PolymorphicMapType_5879) (Mask@@19 T@PolymorphicMapType_5900) (pm_f@@2 T@Field_3178_16301) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_3178_16365 Mask@@19 null pm_f@@2) (IsWandField_3178_18139 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_5939_53) ) (!  (=> (select (|PolymorphicMapType_6428_5939_53#PolymorphicMapType_6428| (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@21) null (WandMaskField_3178 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| Heap@@21) o2@@4 f_2@@4) (select (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_5952_5953) ) (!  (=> (select (|PolymorphicMapType_6428_5939_5953#PolymorphicMapType_6428| (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@21) null (WandMaskField_3178 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| Heap@@21) o2@@5 f_2@@5) (select (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_9266_1189) ) (!  (=> (select (|PolymorphicMapType_6428_5939_1189#PolymorphicMapType_6428| (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@21) null (WandMaskField_3178 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@21) o2@@6 f_2@@6) (select (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_3178_16301) ) (!  (=> (select (|PolymorphicMapType_6428_5939_16301#PolymorphicMapType_6428| (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@21) null (WandMaskField_3178 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| Heap@@21) o2@@7 f_2@@7) (select (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_3178_16434) ) (!  (=> (select (|PolymorphicMapType_6428_5939_17612#PolymorphicMapType_6428| (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@21) null (WandMaskField_3178 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@21) o2@@8 f_2@@8) (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@4 Mask@@19) (IsWandField_3178_18139 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.167:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5879) (ExhaleHeap@@5 T@PolymorphicMapType_5879) (Mask@@20 T@PolymorphicMapType_5900) (o_1@@0 T@Ref) (f_2@@9 T@Field_3178_16434) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_3178_22139 Mask@@20 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@22) o_1@@0 f_2@@9) (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5879) (ExhaleHeap@@6 T@PolymorphicMapType_5879) (Mask@@21 T@PolymorphicMapType_5900) (o_1@@1 T@Ref) (f_2@@10 T@Field_3178_16301) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_3178_16365 Mask@@21 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| Heap@@23) o_1@@1 f_2@@10) (select (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5879) (ExhaleHeap@@7 T@PolymorphicMapType_5879) (Mask@@22 T@PolymorphicMapType_5900) (o_1@@2 T@Ref) (f_2@@11 T@Field_5952_5953) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_3178_5953 Mask@@22 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| Heap@@24) o_1@@2 f_2@@11) (select (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5879) (ExhaleHeap@@8 T@PolymorphicMapType_5879) (Mask@@23 T@PolymorphicMapType_5900) (o_1@@3 T@Ref) (f_2@@12 T@Field_5939_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_3178_53 Mask@@23 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| Heap@@25) o_1@@3 f_2@@12) (select (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5879) (ExhaleHeap@@9 T@PolymorphicMapType_5879) (Mask@@24 T@PolymorphicMapType_5900) (o_1@@4 T@Ref) (f_2@@13 T@Field_9266_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_3178_1189 Mask@@24 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@26) o_1@@4 f_2@@13) (select (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3178_16434) ) (! (= (select (|PolymorphicMapType_5900_3178_20556#PolymorphicMapType_5900| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5900_3178_20556#PolymorphicMapType_5900| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3178_16301) ) (! (= (select (|PolymorphicMapType_5900_3178_16301#PolymorphicMapType_5900| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5900_3178_16301#PolymorphicMapType_5900| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_5952_5953) ) (! (= (select (|PolymorphicMapType_5900_3178_5953#PolymorphicMapType_5900| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5900_3178_5953#PolymorphicMapType_5900| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_5939_53) ) (! (= (select (|PolymorphicMapType_5900_3178_53#PolymorphicMapType_5900| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5900_3178_53#PolymorphicMapType_5900| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_9266_1189) ) (! (= (select (|PolymorphicMapType_5900_3178_1189#PolymorphicMapType_5900| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5900_3178_1189#PolymorphicMapType_5900| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5900) (SummandMask1 T@PolymorphicMapType_5900) (SummandMask2 T@PolymorphicMapType_5900) (o_2@@19 T@Ref) (f_4@@19 T@Field_3178_16434) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5900_3178_20556#PolymorphicMapType_5900| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_5900_3178_20556#PolymorphicMapType_5900| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_5900_3178_20556#PolymorphicMapType_5900| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5900_3178_20556#PolymorphicMapType_5900| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5900_3178_20556#PolymorphicMapType_5900| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5900_3178_20556#PolymorphicMapType_5900| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5900) (SummandMask1@@0 T@PolymorphicMapType_5900) (SummandMask2@@0 T@PolymorphicMapType_5900) (o_2@@20 T@Ref) (f_4@@20 T@Field_3178_16301) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5900_3178_16301#PolymorphicMapType_5900| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_5900_3178_16301#PolymorphicMapType_5900| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_5900_3178_16301#PolymorphicMapType_5900| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5900_3178_16301#PolymorphicMapType_5900| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5900_3178_16301#PolymorphicMapType_5900| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5900_3178_16301#PolymorphicMapType_5900| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5900) (SummandMask1@@1 T@PolymorphicMapType_5900) (SummandMask2@@1 T@PolymorphicMapType_5900) (o_2@@21 T@Ref) (f_4@@21 T@Field_5952_5953) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5900_3178_5953#PolymorphicMapType_5900| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_5900_3178_5953#PolymorphicMapType_5900| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_5900_3178_5953#PolymorphicMapType_5900| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5900_3178_5953#PolymorphicMapType_5900| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5900_3178_5953#PolymorphicMapType_5900| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5900_3178_5953#PolymorphicMapType_5900| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5900) (SummandMask1@@2 T@PolymorphicMapType_5900) (SummandMask2@@2 T@PolymorphicMapType_5900) (o_2@@22 T@Ref) (f_4@@22 T@Field_5939_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5900_3178_53#PolymorphicMapType_5900| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_5900_3178_53#PolymorphicMapType_5900| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_5900_3178_53#PolymorphicMapType_5900| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5900_3178_53#PolymorphicMapType_5900| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5900_3178_53#PolymorphicMapType_5900| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5900_3178_53#PolymorphicMapType_5900| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5900) (SummandMask1@@3 T@PolymorphicMapType_5900) (SummandMask2@@3 T@PolymorphicMapType_5900) (o_2@@23 T@Ref) (f_4@@23 T@Field_9266_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5900_3178_1189#PolymorphicMapType_5900| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_5900_3178_1189#PolymorphicMapType_5900| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_5900_3178_1189#PolymorphicMapType_5900| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5900_3178_1189#PolymorphicMapType_5900| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5900_3178_1189#PolymorphicMapType_5900| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5900_3178_1189#PolymorphicMapType_5900| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5879) (Mask@@25 T@PolymorphicMapType_5900) (r_1@@15 T@Ref) ) (!  (=> (and (state Heap@@27 Mask@@25) (< AssumeFunctionsAbove 0)) (=> (not (= r_1@@15 null)) (= (f6_1 Heap@@27 r_1@@15) (f4_1 Heap@@27 r_1@@15))))
 :qid |stdinbpl.522:15|
 :skolemid |44|
 :pattern ( (state Heap@@27 Mask@@25) (f6_1 Heap@@27 r_1@@15))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5879) (Mask@@26 T@PolymorphicMapType_5900) (r_1@@16 T@Ref) ) (!  (=> (and (state Heap@@28 Mask@@26) (< AssumeFunctionsAbove 4)) (=> (not (= r_1@@16 null)) (= (f5_1 Heap@@28 r_1@@16) (select (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@28) r_1@@16 f_7))))
 :qid |stdinbpl.461:15|
 :skolemid |40|
 :pattern ( (state Heap@@28 Mask@@26) (f5_1 Heap@@28 r_1@@16))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5879) (Mask@@27 T@PolymorphicMapType_5900) (r_1@@17 T@Ref) ) (!  (=> (state Heap@@29 Mask@@27) (= (|f1'| Heap@@29 r_1@@17) (|f1#frame| (FrameFragment_1189 (select (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@29) r_1@@17 f_7)) r_1@@17)))
 :qid |stdinbpl.216:15|
 :skolemid |25|
 :pattern ( (state Heap@@29 Mask@@27) (|f1'| Heap@@29 r_1@@17))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5879) (Mask@@28 T@PolymorphicMapType_5900) (r_1@@18 T@Ref) ) (!  (=> (state Heap@@30 Mask@@28) (= (|f4'| Heap@@30 r_1@@18) (|f4#frame| (FrameFragment_1189 (select (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@30) r_1@@18 f_7)) r_1@@18)))
 :qid |stdinbpl.403:15|
 :skolemid |37|
 :pattern ( (state Heap@@30 Mask@@28) (|f4'| Heap@@30 r_1@@18))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_5879) (Mask@@29 T@PolymorphicMapType_5900) (r_1@@19 T@Ref) ) (!  (=> (state Heap@@31 Mask@@29) (= (|f3_a'| Heap@@31 r_1@@19) (|f3_a#frame| EmptyFrame r_1@@19)))
 :qid |stdinbpl.283:15|
 :skolemid |29|
 :pattern ( (state Heap@@31 Mask@@29) (|f3_a'| Heap@@31 r_1@@19))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_5879) (Mask@@30 T@PolymorphicMapType_5900) (r_1@@20 T@Ref) ) (!  (=> (state Heap@@32 Mask@@30) (= (|f3_b'| Heap@@32 r_1@@20) (|f3_b#frame| EmptyFrame r_1@@20)))
 :qid |stdinbpl.342:15|
 :skolemid |33|
 :pattern ( (state Heap@@32 Mask@@30) (|f3_b'| Heap@@32 r_1@@20))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_5879) (Mask@@31 T@PolymorphicMapType_5900) (r_1@@21 T@Ref) ) (!  (=> (state Heap@@33 Mask@@31) (= (|f5'| Heap@@33 r_1@@21) (|f5#frame| EmptyFrame r_1@@21)))
 :qid |stdinbpl.468:15|
 :skolemid |41|
 :pattern ( (state Heap@@33 Mask@@31) (|f5'| Heap@@33 r_1@@21))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_5879) (Mask@@32 T@PolymorphicMapType_5900) (r_1@@22 T@Ref) ) (!  (=> (state Heap@@34 Mask@@32) (= (|f6'| Heap@@34 r_1@@22) (|f6#frame| EmptyFrame r_1@@22)))
 :qid |stdinbpl.529:15|
 :skolemid |45|
 :pattern ( (state Heap@@34 Mask@@32) (|f6'| Heap@@34 r_1@@22))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_5879) (o T@Ref) (f_3 T@Field_3178_16301) (v T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_5879 (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| Heap@@35) (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| Heap@@35) (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@35) (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@35) (store (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| Heap@@35) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5879 (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| Heap@@35) (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| Heap@@35) (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@35) (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@35) (store (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| Heap@@35) o f_3 v)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_5879) (o@@0 T@Ref) (f_3@@0 T@Field_3178_16434) (v@@0 T@PolymorphicMapType_6428) ) (! (succHeap Heap@@36 (PolymorphicMapType_5879 (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| Heap@@36) (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| Heap@@36) (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@36) (store (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@36) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5879 (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| Heap@@36) (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| Heap@@36) (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@36) (store (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@36) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_5879) (o@@1 T@Ref) (f_3@@1 T@Field_9266_1189) (v@@1 Int) ) (! (succHeap Heap@@37 (PolymorphicMapType_5879 (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| Heap@@37) (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| Heap@@37) (store (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@37) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@37) (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5879 (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| Heap@@37) (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| Heap@@37) (store (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@37) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@37) (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_5879) (o@@2 T@Ref) (f_3@@2 T@Field_5952_5953) (v@@2 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_5879 (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| Heap@@38) (store (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| Heap@@38) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@38) (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@38) (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5879 (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| Heap@@38) (store (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| Heap@@38) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@38) (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@38) (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_5879) (o@@3 T@Ref) (f_3@@3 T@Field_5939_53) (v@@3 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_5879 (store (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| Heap@@39) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| Heap@@39) (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@39) (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@39) (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5879 (store (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| Heap@@39) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| Heap@@39) (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@39) (|PolymorphicMapType_5879_3178_16478#PolymorphicMapType_5879| Heap@@39) (|PolymorphicMapType_5879_5939_16301#PolymorphicMapType_5879| Heap@@39)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_5952_5953) (Heap@@40 T@PolymorphicMapType_5879) ) (!  (=> (select (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| Heap@@40) o@@4 $allocated) (select (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| Heap@@40) (select (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| Heap@@40) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5879_3053_3054#PolymorphicMapType_5879| Heap@@40) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_3178_16301) (v_1@@0 T@FrameType) (q T@Field_3178_16301) (w@@0 T@FrameType) (r T@Field_3178_16301) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5939_5939 p@@1 v_1@@0 q w@@0) (InsidePredicate_5939_5939 q w@@0 r u)) (InsidePredicate_5939_5939 p@@1 v_1@@0 r u))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5939_5939 p@@1 v_1@@0 q w@@0) (InsidePredicate_5939_5939 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Invalid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun r_1@@23 () T@Ref)
(declare-fun Heap@@41 () T@PolymorphicMapType_5879)
(set-info :boogie-vc-id |f6#definedness|)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_5900_3178_1189#PolymorphicMapType_5900| ZeroMask) r_1@@23 f_7)))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_5900_3178_1189#PolymorphicMapType_5900| ZeroMask) r_1@@23 f_7))) (=> (= (ControlFlow 0 2) (- 0 1)) (= (select (|PolymorphicMapType_5879_3178_1189#PolymorphicMapType_5879| Heap@@41) r_1@@23 f_7) 2))))))
(let ((anon0_correct  (=> (and (state Heap@@41 ZeroMask) (not AssumePermUpperBound)) (=> (and (and (select (|PolymorphicMapType_5879_3050_53#PolymorphicMapType_5879| Heap@@41) r_1@@23 $allocated) (= AssumeFunctionsAbove 0)) (and (not (= r_1@@23 null)) (state Heap@@41 ZeroMask))) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
