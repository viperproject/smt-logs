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
(declare-sort T@Field_3172_53 0)
(declare-sort T@Field_3185_3186 0)
(declare-sort T@Field_3172_8310 0)
(declare-sort T@Field_3172_8177 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3133 0)) (((PolymorphicMapType_3133 (|PolymorphicMapType_3133_3172_53#PolymorphicMapType_3133| (Array T@Ref T@Field_3172_53 Real)) (|PolymorphicMapType_3133_3172_3186#PolymorphicMapType_3133| (Array T@Ref T@Field_3185_3186 Real)) (|PolymorphicMapType_3133_3172_8177#PolymorphicMapType_3133| (Array T@Ref T@Field_3172_8177 Real)) (|PolymorphicMapType_3133_3172_11871#PolymorphicMapType_3133| (Array T@Ref T@Field_3172_8310 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3661 0)) (((PolymorphicMapType_3661 (|PolymorphicMapType_3661_3172_53#PolymorphicMapType_3661| (Array T@Ref T@Field_3172_53 Bool)) (|PolymorphicMapType_3661_3172_3186#PolymorphicMapType_3661| (Array T@Ref T@Field_3185_3186 Bool)) (|PolymorphicMapType_3661_3172_8177#PolymorphicMapType_3661| (Array T@Ref T@Field_3172_8177 Bool)) (|PolymorphicMapType_3661_3172_9290#PolymorphicMapType_3661| (Array T@Ref T@Field_3172_8310 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3112 0)) (((PolymorphicMapType_3112 (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| (Array T@Ref T@Field_3172_53 Bool)) (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| (Array T@Ref T@Field_3185_3186 T@Ref)) (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| (Array T@Ref T@Field_3172_8310 T@PolymorphicMapType_3661)) (|PolymorphicMapType_3112_3172_8177#PolymorphicMapType_3112| (Array T@Ref T@Field_3172_8177 T@FrameType)) ) ) ))
(declare-fun state (T@PolymorphicMapType_3112 T@PolymorphicMapType_3133) Bool)
(declare-fun |LibB'| (T@PolymorphicMapType_3112 Int Bool) Bool)
(declare-fun |LibB#frame| (T@FrameType Int Bool) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun succHeap (T@PolymorphicMapType_3112 T@PolymorphicMapType_3112) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3112 T@PolymorphicMapType_3112) Bool)
(declare-fun foo (Int) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3133) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_3661)
(declare-fun dummyFunction_1441 (Bool) Bool)
(declare-fun |LibB#triggerStateless| (Int Bool) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3112 T@PolymorphicMapType_3112 T@PolymorphicMapType_3133) Bool)
(declare-fun IsPredicateField_3172_8268 (T@Field_3172_8177) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3172 (T@Field_3172_8177) T@Field_3172_8310)
(declare-fun HasDirectPerm_3172_8241 (T@PolymorphicMapType_3133 T@Ref T@Field_3172_8177) Bool)
(declare-fun IsWandField_3172_9817 (T@Field_3172_8177) Bool)
(declare-fun WandMaskField_3172 (T@Field_3172_8177) T@Field_3172_8310)
(declare-fun dummyHeap () T@PolymorphicMapType_3112)
(declare-fun ZeroMask () T@PolymorphicMapType_3133)
(declare-fun $allocated () T@Field_3172_53)
(declare-fun InsidePredicate_3172_3172 (T@Field_3172_8177 T@FrameType T@Field_3172_8177 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3172_12780 (T@Field_3172_8310) Bool)
(declare-fun IsWandField_3172_12796 (T@Field_3172_8310) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3172_3186 (T@Field_3185_3186) Bool)
(declare-fun IsWandField_3172_3186 (T@Field_3185_3186) Bool)
(declare-fun IsPredicateField_3172_53 (T@Field_3172_53) Bool)
(declare-fun IsWandField_3172_53 (T@Field_3172_53) Bool)
(declare-fun HasDirectPerm_3172_13151 (T@PolymorphicMapType_3133 T@Ref T@Field_3172_8310) Bool)
(declare-fun HasDirectPerm_3172_3186 (T@PolymorphicMapType_3133 T@Ref T@Field_3185_3186) Bool)
(declare-fun HasDirectPerm_3172_53 (T@PolymorphicMapType_3133 T@Ref T@Field_3172_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |LibB#trigger| (T@FrameType Int Bool) Bool)
(declare-fun sumMask (T@PolymorphicMapType_3133 T@PolymorphicMapType_3133 T@PolymorphicMapType_3133) Bool)
(declare-fun LibB (T@PolymorphicMapType_3112 Int Bool) Bool)
(assert (forall ((Heap T@PolymorphicMapType_3112) (Mask T@PolymorphicMapType_3133) (a_2 Int) (b_24 Bool) ) (!  (=> (state Heap Mask) (= (|LibB'| Heap a_2 b_24) (|LibB#frame| EmptyFrame a_2 b_24)))
 :qid |stdinbpl.213:15|
 :skolemid |25|
 :pattern ( (state Heap Mask) (|LibB'| Heap a_2 b_24))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_3112) (Heap1 T@PolymorphicMapType_3112) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((n Int) ) (! (foo n)
 :qid |stdinbpl.190:15|
 :skolemid |22|
 :pattern ( (foo n))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3112) (Mask@@0 T@PolymorphicMapType_3133) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3112) (Heap1@@0 T@PolymorphicMapType_3112) (Heap2 T@PolymorphicMapType_3112) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3172_8310) ) (!  (not (select (|PolymorphicMapType_3661_3172_9290#PolymorphicMapType_3661| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3661_3172_9290#PolymorphicMapType_3661| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3172_8177) ) (!  (not (select (|PolymorphicMapType_3661_3172_8177#PolymorphicMapType_3661| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3661_3172_8177#PolymorphicMapType_3661| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3185_3186) ) (!  (not (select (|PolymorphicMapType_3661_3172_3186#PolymorphicMapType_3661| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3661_3172_3186#PolymorphicMapType_3661| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3172_53) ) (!  (not (select (|PolymorphicMapType_3661_3172_53#PolymorphicMapType_3661| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3661_3172_53#PolymorphicMapType_3661| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3112) (a_2@@0 Int) (b_24@@0 Bool) ) (! (dummyFunction_1441 (|LibB#triggerStateless| a_2@@0 b_24@@0))
 :qid |stdinbpl.206:15|
 :skolemid |24|
 :pattern ( (|LibB'| Heap@@1 a_2@@0 b_24@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3112) (ExhaleHeap T@PolymorphicMapType_3112) (Mask@@1 T@PolymorphicMapType_3133) (pm_f T@Field_3172_8177) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_3172_8241 Mask@@1 null pm_f) (IsPredicateField_3172_8268 pm_f)) (= (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@2) null (PredicateMaskField_3172 pm_f)) (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| ExhaleHeap) null (PredicateMaskField_3172 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (IsPredicateField_3172_8268 pm_f) (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| ExhaleHeap) null (PredicateMaskField_3172 pm_f)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3112) (ExhaleHeap@@0 T@PolymorphicMapType_3112) (Mask@@2 T@PolymorphicMapType_3133) (pm_f@@0 T@Field_3172_8177) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_3172_8241 Mask@@2 null pm_f@@0) (IsWandField_3172_9817 pm_f@@0)) (= (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@3) null (WandMaskField_3172 pm_f@@0)) (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| ExhaleHeap@@0) null (WandMaskField_3172 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (IsWandField_3172_9817 pm_f@@0) (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| ExhaleHeap@@0) null (WandMaskField_3172 pm_f@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3112) (ExhaleHeap@@1 T@PolymorphicMapType_3112) (Mask@@3 T@PolymorphicMapType_3133) (pm_f@@1 T@Field_3172_8177) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_3172_8241 Mask@@3 null pm_f@@1) (IsPredicateField_3172_8268 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3172_53) ) (!  (=> (select (|PolymorphicMapType_3661_3172_53#PolymorphicMapType_3661| (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@4) null (PredicateMaskField_3172 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| Heap@@4) o2 f_2) (select (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3185_3186) ) (!  (=> (select (|PolymorphicMapType_3661_3172_3186#PolymorphicMapType_3661| (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@4) null (PredicateMaskField_3172 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_3172_8177) ) (!  (=> (select (|PolymorphicMapType_3661_3172_8177#PolymorphicMapType_3661| (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@4) null (PredicateMaskField_3172 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3112_3172_8177#PolymorphicMapType_3112| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_3112_3172_8177#PolymorphicMapType_3112| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3112_3172_8177#PolymorphicMapType_3112| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3172_8310) ) (!  (=> (select (|PolymorphicMapType_3661_3172_9290#PolymorphicMapType_3661| (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@4) null (PredicateMaskField_3172 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (IsPredicateField_3172_8268 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3112) (ExhaleHeap@@2 T@PolymorphicMapType_3112) (Mask@@4 T@PolymorphicMapType_3133) (pm_f@@2 T@Field_3172_8177) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_3172_8241 Mask@@4 null pm_f@@2) (IsWandField_3172_9817 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3172_53) ) (!  (=> (select (|PolymorphicMapType_3661_3172_53#PolymorphicMapType_3661| (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@5) null (WandMaskField_3172 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| Heap@@5) o2@@3 f_2@@3) (select (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3185_3186) ) (!  (=> (select (|PolymorphicMapType_3661_3172_3186#PolymorphicMapType_3661| (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@5) null (WandMaskField_3172 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3172_8177) ) (!  (=> (select (|PolymorphicMapType_3661_3172_8177#PolymorphicMapType_3661| (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@5) null (WandMaskField_3172 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3112_3172_8177#PolymorphicMapType_3112| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_3112_3172_8177#PolymorphicMapType_3112| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3112_3172_8177#PolymorphicMapType_3112| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_3172_8310) ) (!  (=> (select (|PolymorphicMapType_3661_3172_9290#PolymorphicMapType_3661| (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@5) null (WandMaskField_3172 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (IsWandField_3172_9817 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3112) (ExhaleHeap@@3 T@PolymorphicMapType_3112) (Mask@@5 T@PolymorphicMapType_3133) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@5) (=> (select (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| Heap@@6) o_1 $allocated) (select (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@5) (select (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_3172_8177) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3172_3172 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3172_3172 p v_1 p w))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3112) (ExhaleHeap@@4 T@PolymorphicMapType_3112) (Mask@@6 T@PolymorphicMapType_3133) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@6) (succHeap Heap@@7 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3133) (o_2@@3 T@Ref) (f_4@@3 T@Field_3172_8310) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3133_3172_11871#PolymorphicMapType_3133| Mask@@7) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3172_12780 f_4@@3))) (not (IsWandField_3172_12796 f_4@@3))) (<= (select (|PolymorphicMapType_3133_3172_11871#PolymorphicMapType_3133| Mask@@7) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3133_3172_11871#PolymorphicMapType_3133| Mask@@7) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3133) (o_2@@4 T@Ref) (f_4@@4 T@Field_3172_8177) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3133_3172_8177#PolymorphicMapType_3133| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3172_8268 f_4@@4))) (not (IsWandField_3172_9817 f_4@@4))) (<= (select (|PolymorphicMapType_3133_3172_8177#PolymorphicMapType_3133| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3133_3172_8177#PolymorphicMapType_3133| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3133) (o_2@@5 T@Ref) (f_4@@5 T@Field_3185_3186) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3133_3172_3186#PolymorphicMapType_3133| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3172_3186 f_4@@5))) (not (IsWandField_3172_3186 f_4@@5))) (<= (select (|PolymorphicMapType_3133_3172_3186#PolymorphicMapType_3133| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3133_3172_3186#PolymorphicMapType_3133| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3133) (o_2@@6 T@Ref) (f_4@@6 T@Field_3172_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_3133_3172_53#PolymorphicMapType_3133| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3172_53 f_4@@6))) (not (IsWandField_3172_53 f_4@@6))) (<= (select (|PolymorphicMapType_3133_3172_53#PolymorphicMapType_3133| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_3133_3172_53#PolymorphicMapType_3133| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3133) (o_2@@7 T@Ref) (f_4@@7 T@Field_3172_8310) ) (! (= (HasDirectPerm_3172_13151 Mask@@11 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3133_3172_11871#PolymorphicMapType_3133| Mask@@11) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3172_13151 Mask@@11 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3133) (o_2@@8 T@Ref) (f_4@@8 T@Field_3172_8177) ) (! (= (HasDirectPerm_3172_8241 Mask@@12 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3133_3172_8177#PolymorphicMapType_3133| Mask@@12) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3172_8241 Mask@@12 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3133) (o_2@@9 T@Ref) (f_4@@9 T@Field_3185_3186) ) (! (= (HasDirectPerm_3172_3186 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3133_3172_3186#PolymorphicMapType_3133| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3172_3186 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3133) (o_2@@10 T@Ref) (f_4@@10 T@Field_3172_53) ) (! (= (HasDirectPerm_3172_53 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3133_3172_53#PolymorphicMapType_3133| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3172_53 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3112) (Mask@@15 T@PolymorphicMapType_3133) (a_2@@1 Int) (b_24@@1 Bool) ) (!  (=> (and (state Heap@@8 Mask@@15) (or (< AssumeFunctionsAbove 0) (|LibB#trigger| EmptyFrame a_2@@1 b_24@@1))) (=> (foo 1) (= (|LibB'| Heap@@8 a_2@@1 b_24@@1)  (or b_24@@1 (foo a_2@@1)))))
 :qid |stdinbpl.219:15|
 :skolemid |26|
 :pattern ( (state Heap@@8 Mask@@15) (|LibB'| Heap@@8 a_2@@1 b_24@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3112) (ExhaleHeap@@5 T@PolymorphicMapType_3112) (Mask@@16 T@PolymorphicMapType_3133) (o_1@@0 T@Ref) (f_2@@7 T@Field_3172_8310) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_3172_13151 Mask@@16 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@9) o_1@@0 f_2@@7) (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3112) (ExhaleHeap@@6 T@PolymorphicMapType_3112) (Mask@@17 T@PolymorphicMapType_3133) (o_1@@1 T@Ref) (f_2@@8 T@Field_3172_8177) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_3172_8241 Mask@@17 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_3112_3172_8177#PolymorphicMapType_3112| Heap@@10) o_1@@1 f_2@@8) (select (|PolymorphicMapType_3112_3172_8177#PolymorphicMapType_3112| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_3112_3172_8177#PolymorphicMapType_3112| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3112) (ExhaleHeap@@7 T@PolymorphicMapType_3112) (Mask@@18 T@PolymorphicMapType_3133) (o_1@@2 T@Ref) (f_2@@9 T@Field_3185_3186) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_3172_3186 Mask@@18 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| Heap@@11) o_1@@2 f_2@@9) (select (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3112) (ExhaleHeap@@8 T@PolymorphicMapType_3112) (Mask@@19 T@PolymorphicMapType_3133) (o_1@@3 T@Ref) (f_2@@10 T@Field_3172_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_3172_53 Mask@@19 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| Heap@@12) o_1@@3 f_2@@10) (select (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3172_8310) ) (! (= (select (|PolymorphicMapType_3133_3172_11871#PolymorphicMapType_3133| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3133_3172_11871#PolymorphicMapType_3133| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3172_8177) ) (! (= (select (|PolymorphicMapType_3133_3172_8177#PolymorphicMapType_3133| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3133_3172_8177#PolymorphicMapType_3133| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3185_3186) ) (! (= (select (|PolymorphicMapType_3133_3172_3186#PolymorphicMapType_3133| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3133_3172_3186#PolymorphicMapType_3133| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3172_53) ) (! (= (select (|PolymorphicMapType_3133_3172_53#PolymorphicMapType_3133| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3133_3172_53#PolymorphicMapType_3133| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3133) (SummandMask1 T@PolymorphicMapType_3133) (SummandMask2 T@PolymorphicMapType_3133) (o_2@@15 T@Ref) (f_4@@15 T@Field_3172_8310) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3133_3172_11871#PolymorphicMapType_3133| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3133_3172_11871#PolymorphicMapType_3133| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3133_3172_11871#PolymorphicMapType_3133| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3133_3172_11871#PolymorphicMapType_3133| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3133_3172_11871#PolymorphicMapType_3133| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3133_3172_11871#PolymorphicMapType_3133| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3133) (SummandMask1@@0 T@PolymorphicMapType_3133) (SummandMask2@@0 T@PolymorphicMapType_3133) (o_2@@16 T@Ref) (f_4@@16 T@Field_3172_8177) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3133_3172_8177#PolymorphicMapType_3133| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3133_3172_8177#PolymorphicMapType_3133| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3133_3172_8177#PolymorphicMapType_3133| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3133_3172_8177#PolymorphicMapType_3133| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3133_3172_8177#PolymorphicMapType_3133| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3133_3172_8177#PolymorphicMapType_3133| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3133) (SummandMask1@@1 T@PolymorphicMapType_3133) (SummandMask2@@1 T@PolymorphicMapType_3133) (o_2@@17 T@Ref) (f_4@@17 T@Field_3185_3186) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3133_3172_3186#PolymorphicMapType_3133| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3133_3172_3186#PolymorphicMapType_3133| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3133_3172_3186#PolymorphicMapType_3133| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3133_3172_3186#PolymorphicMapType_3133| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3133_3172_3186#PolymorphicMapType_3133| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3133_3172_3186#PolymorphicMapType_3133| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3133) (SummandMask1@@2 T@PolymorphicMapType_3133) (SummandMask2@@2 T@PolymorphicMapType_3133) (o_2@@18 T@Ref) (f_4@@18 T@Field_3172_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3133_3172_53#PolymorphicMapType_3133| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3133_3172_53#PolymorphicMapType_3133| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3133_3172_53#PolymorphicMapType_3133| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3133_3172_53#PolymorphicMapType_3133| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3133_3172_53#PolymorphicMapType_3133| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3133_3172_53#PolymorphicMapType_3133| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3112) (o T@Ref) (f_3 T@Field_3172_8177) (v T@FrameType) ) (! (succHeap Heap@@13 (PolymorphicMapType_3112 (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| Heap@@13) (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| Heap@@13) (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@13) (store (|PolymorphicMapType_3112_3172_8177#PolymorphicMapType_3112| Heap@@13) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3112 (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| Heap@@13) (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| Heap@@13) (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@13) (store (|PolymorphicMapType_3112_3172_8177#PolymorphicMapType_3112| Heap@@13) o f_3 v)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3112) (o@@0 T@Ref) (f_3@@0 T@Field_3172_8310) (v@@0 T@PolymorphicMapType_3661) ) (! (succHeap Heap@@14 (PolymorphicMapType_3112 (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| Heap@@14) (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| Heap@@14) (store (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@14) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3112_3172_8177#PolymorphicMapType_3112| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3112 (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| Heap@@14) (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| Heap@@14) (store (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@14) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3112_3172_8177#PolymorphicMapType_3112| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3112) (o@@1 T@Ref) (f_3@@1 T@Field_3185_3186) (v@@1 T@Ref) ) (! (succHeap Heap@@15 (PolymorphicMapType_3112 (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| Heap@@15) (store (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| Heap@@15) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@15) (|PolymorphicMapType_3112_3172_8177#PolymorphicMapType_3112| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3112 (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| Heap@@15) (store (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| Heap@@15) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@15) (|PolymorphicMapType_3112_3172_8177#PolymorphicMapType_3112| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3112) (o@@2 T@Ref) (f_3@@2 T@Field_3172_53) (v@@2 Bool) ) (! (succHeap Heap@@16 (PolymorphicMapType_3112 (store (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| Heap@@16) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| Heap@@16) (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@16) (|PolymorphicMapType_3112_3172_8177#PolymorphicMapType_3112| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3112 (store (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| Heap@@16) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| Heap@@16) (|PolymorphicMapType_3112_3172_8354#PolymorphicMapType_3112| Heap@@16) (|PolymorphicMapType_3112_3172_8177#PolymorphicMapType_3112| Heap@@16)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_3185_3186) (Heap@@17 T@PolymorphicMapType_3112) ) (!  (=> (select (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| Heap@@17) o@@3 $allocated) (select (|PolymorphicMapType_3112_1624_53#PolymorphicMapType_3112| Heap@@17) (select (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| Heap@@17) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3112_1627_1628#PolymorphicMapType_3112| Heap@@17) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_3172_8177) (v_1@@0 T@FrameType) (q T@Field_3172_8177) (w@@0 T@FrameType) (r T@Field_3172_8177) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3172_3172 p@@1 v_1@@0 q w@@0) (InsidePredicate_3172_3172 q w@@0 r u)) (InsidePredicate_3172_3172 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3172_3172 p@@1 v_1@@0 q w@@0) (InsidePredicate_3172_3172 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3112) (a_2@@2 Int) (b_24@@2 Bool) ) (!  (and (= (LibB Heap@@18 a_2@@2 b_24@@2) (|LibB'| Heap@@18 a_2@@2 b_24@@2)) (dummyFunction_1441 (|LibB#triggerStateless| a_2@@2 b_24@@2)))
 :qid |stdinbpl.202:15|
 :skolemid |23|
 :pattern ( (LibB Heap@@18 a_2@@2 b_24@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@19 () T@PolymorphicMapType_3112)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (LibB Heap@@19 77 false))))
(let ((anon3_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (foo 1))))
(let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
