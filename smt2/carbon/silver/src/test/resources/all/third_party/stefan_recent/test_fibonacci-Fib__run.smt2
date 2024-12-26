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
(declare-sort T@Field_9150_53 0)
(declare-sort T@Field_9163_9164 0)
(declare-sort T@Field_12477_1189 0)
(declare-sort T@Field_4568_13224 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_4568_13241 0)
(declare-sort T@Field_13223_1204 0)
(declare-sort T@Field_13223_53 0)
(declare-sort T@Field_13223_9164 0)
(declare-sort T@Field_13223_13224 0)
(declare-sort T@Field_13236_13241 0)
(declare-datatypes ((T@PolymorphicMapType_9111 0)) (((PolymorphicMapType_9111 (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| (Array T@Ref T@Field_12477_1189 Real)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| (Array T@Ref T@Field_13223_13224 Real)) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| (Array T@Ref T@Field_4568_13224 Real)) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| (Array T@Ref T@Field_9150_53 Real)) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| (Array T@Ref T@Field_9163_9164 Real)) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| (Array T@Ref T@Field_4568_13241 Real)) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| (Array T@Ref T@Field_13223_1204 Real)) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| (Array T@Ref T@Field_13223_53 Real)) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| (Array T@Ref T@Field_13223_9164 Real)) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| (Array T@Ref T@Field_13236_13241 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9639 0)) (((PolymorphicMapType_9639 (|PolymorphicMapType_9639_9150_53#PolymorphicMapType_9639| (Array T@Ref T@Field_9150_53 Bool)) (|PolymorphicMapType_9639_9150_9164#PolymorphicMapType_9639| (Array T@Ref T@Field_9163_9164 Bool)) (|PolymorphicMapType_9639_9150_1189#PolymorphicMapType_9639| (Array T@Ref T@Field_12477_1189 Bool)) (|PolymorphicMapType_9639_9150_13224#PolymorphicMapType_9639| (Array T@Ref T@Field_4568_13224 Bool)) (|PolymorphicMapType_9639_9150_32012#PolymorphicMapType_9639| (Array T@Ref T@Field_4568_13241 Bool)) (|PolymorphicMapType_9639_13223_53#PolymorphicMapType_9639| (Array T@Ref T@Field_13223_53 Bool)) (|PolymorphicMapType_9639_13223_9164#PolymorphicMapType_9639| (Array T@Ref T@Field_13223_9164 Bool)) (|PolymorphicMapType_9639_13223_1189#PolymorphicMapType_9639| (Array T@Ref T@Field_13223_1204 Bool)) (|PolymorphicMapType_9639_13223_13224#PolymorphicMapType_9639| (Array T@Ref T@Field_13223_13224 Bool)) (|PolymorphicMapType_9639_13223_33060#PolymorphicMapType_9639| (Array T@Ref T@Field_13236_13241 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9090 0)) (((PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| (Array T@Ref T@Field_9150_53 Bool)) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| (Array T@Ref T@Field_9163_9164 T@Ref)) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| (Array T@Ref T@Field_12477_1189 Int)) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| (Array T@Ref T@Field_4568_13224 T@FrameType)) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| (Array T@Ref T@Field_4568_13241 T@PolymorphicMapType_9639)) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| (Array T@Ref T@Field_13223_1204 Int)) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| (Array T@Ref T@Field_13223_53 Bool)) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| (Array T@Ref T@Field_13223_9164 T@Ref)) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| (Array T@Ref T@Field_13223_13224 T@FrameType)) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| (Array T@Ref T@Field_13236_13241 T@PolymorphicMapType_9639)) ) ) ))
(declare-fun $allocated () T@Field_9150_53)
(declare-fun Fib__input () T@Field_12477_1189)
(declare-fun Fib__output () T@Field_12477_1189)
(declare-fun succHeap (T@PolymorphicMapType_9090 T@PolymorphicMapType_9090) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9090 T@PolymorphicMapType_9090) Bool)
(declare-fun state (T@PolymorphicMapType_9090 T@PolymorphicMapType_9111) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9111) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9639)
(declare-fun Fib__joinToken (T@Ref) T@Field_13223_13224)
(declare-fun IsPredicateField_4581_4582 (T@Field_13223_13224) Bool)
(declare-fun |Fib__fib'| (T@PolymorphicMapType_9090 Int) Int)
(declare-fun dummyFunction_1402 (Int) Bool)
(declare-fun |Fib__fib#triggerStateless| (Int) Int)
(declare-fun |Fib__joinToken#trigger_4581| (T@PolymorphicMapType_9090 T@Field_13223_13224) Bool)
(declare-fun |Fib__joinToken#everUsed_4581| (T@Field_13223_13224) Bool)
(declare-fun Fib__fib (T@PolymorphicMapType_9090 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9090 T@PolymorphicMapType_9090 T@PolymorphicMapType_9111) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4581 (T@Field_13223_13224) T@Field_13236_13241)
(declare-fun HasDirectPerm_13223_13224 (T@PolymorphicMapType_9111 T@Ref T@Field_13223_13224) Bool)
(declare-fun IsPredicateField_4568_30528 (T@Field_4568_13224) Bool)
(declare-fun PredicateMaskField_4568 (T@Field_4568_13224) T@Field_4568_13241)
(declare-fun HasDirectPerm_4568_13224 (T@PolymorphicMapType_9111 T@Ref T@Field_4568_13224) Bool)
(declare-fun IsWandField_13223_34225 (T@Field_13223_13224) Bool)
(declare-fun WandMaskField_13223 (T@Field_13223_13224) T@Field_13236_13241)
(declare-fun IsWandField_4568_33868 (T@Field_4568_13224) Bool)
(declare-fun WandMaskField_4568 (T@Field_4568_13224) T@Field_4568_13241)
(declare-fun |Fib__joinToken#sm| (T@Ref) T@Field_13236_13241)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun dummyHeap () T@PolymorphicMapType_9090)
(declare-fun ZeroMask () T@PolymorphicMapType_9111)
(declare-fun InsidePredicate_13223_13223 (T@Field_13223_13224 T@FrameType T@Field_13223_13224 T@FrameType) Bool)
(declare-fun InsidePredicate_9150_9150 (T@Field_4568_13224 T@FrameType T@Field_4568_13224 T@FrameType) Bool)
(declare-fun IsPredicateField_4566_1189 (T@Field_12477_1189) Bool)
(declare-fun IsWandField_4566_1189 (T@Field_12477_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4581_41157 (T@Field_13236_13241) Bool)
(declare-fun IsWandField_4581_41173 (T@Field_13236_13241) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4581_9164 (T@Field_13223_9164) Bool)
(declare-fun IsWandField_4581_9164 (T@Field_13223_9164) Bool)
(declare-fun IsPredicateField_4581_53 (T@Field_13223_53) Bool)
(declare-fun IsWandField_4581_53 (T@Field_13223_53) Bool)
(declare-fun IsPredicateField_4581_1189 (T@Field_13223_1204) Bool)
(declare-fun IsWandField_4581_1189 (T@Field_13223_1204) Bool)
(declare-fun IsPredicateField_4566_40326 (T@Field_4568_13241) Bool)
(declare-fun IsWandField_4566_40342 (T@Field_4568_13241) Bool)
(declare-fun IsPredicateField_4566_9164 (T@Field_9163_9164) Bool)
(declare-fun IsWandField_4566_9164 (T@Field_9163_9164) Bool)
(declare-fun IsPredicateField_4566_53 (T@Field_9150_53) Bool)
(declare-fun IsWandField_4566_53 (T@Field_9150_53) Bool)
(declare-fun HasDirectPerm_13223_30240 (T@PolymorphicMapType_9111 T@Ref T@Field_13236_13241) Bool)
(declare-fun HasDirectPerm_13223_9164 (T@PolymorphicMapType_9111 T@Ref T@Field_13223_9164) Bool)
(declare-fun HasDirectPerm_13223_53 (T@PolymorphicMapType_9111 T@Ref T@Field_13223_53) Bool)
(declare-fun HasDirectPerm_13223_1204 (T@PolymorphicMapType_9111 T@Ref T@Field_13223_1204) Bool)
(declare-fun HasDirectPerm_4568_29062 (T@PolymorphicMapType_9111 T@Ref T@Field_4568_13241) Bool)
(declare-fun HasDirectPerm_4568_9164 (T@PolymorphicMapType_9111 T@Ref T@Field_9163_9164) Bool)
(declare-fun HasDirectPerm_4568_53 (T@PolymorphicMapType_9111 T@Ref T@Field_9150_53) Bool)
(declare-fun HasDirectPerm_4568_1204 (T@PolymorphicMapType_9111 T@Ref T@Field_12477_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9111 T@PolymorphicMapType_9111 T@PolymorphicMapType_9111) Bool)
(declare-fun getPredWandId_4581_4582 (T@Field_13223_13224) Int)
(declare-fun |Fib__fib#frame| (T@FrameType Int) Int)
(declare-fun InsidePredicate_13223_9150 (T@Field_13223_13224 T@FrameType T@Field_4568_13224 T@FrameType) Bool)
(declare-fun InsidePredicate_9150_13223 (T@Field_4568_13224 T@FrameType T@Field_13223_13224 T@FrameType) Bool)
(assert (distinct Fib__input Fib__output)
)
(assert (forall ((Heap0 T@PolymorphicMapType_9090) (Heap1 T@PolymorphicMapType_9090) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9090) (Mask T@PolymorphicMapType_9111) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9090) (Heap1@@0 T@PolymorphicMapType_9090) (Heap2 T@PolymorphicMapType_9090) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_13236_13241) ) (!  (not (select (|PolymorphicMapType_9639_13223_33060#PolymorphicMapType_9639| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9639_13223_33060#PolymorphicMapType_9639| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13223_13224) ) (!  (not (select (|PolymorphicMapType_9639_13223_13224#PolymorphicMapType_9639| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9639_13223_13224#PolymorphicMapType_9639| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13223_1204) ) (!  (not (select (|PolymorphicMapType_9639_13223_1189#PolymorphicMapType_9639| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9639_13223_1189#PolymorphicMapType_9639| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_13223_9164) ) (!  (not (select (|PolymorphicMapType_9639_13223_9164#PolymorphicMapType_9639| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9639_13223_9164#PolymorphicMapType_9639| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_13223_53) ) (!  (not (select (|PolymorphicMapType_9639_13223_53#PolymorphicMapType_9639| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9639_13223_53#PolymorphicMapType_9639| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4568_13241) ) (!  (not (select (|PolymorphicMapType_9639_9150_32012#PolymorphicMapType_9639| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9639_9150_32012#PolymorphicMapType_9639| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4568_13224) ) (!  (not (select (|PolymorphicMapType_9639_9150_13224#PolymorphicMapType_9639| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9639_9150_13224#PolymorphicMapType_9639| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_12477_1189) ) (!  (not (select (|PolymorphicMapType_9639_9150_1189#PolymorphicMapType_9639| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9639_9150_1189#PolymorphicMapType_9639| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_9163_9164) ) (!  (not (select (|PolymorphicMapType_9639_9150_9164#PolymorphicMapType_9639| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9639_9150_9164#PolymorphicMapType_9639| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_9150_53) ) (!  (not (select (|PolymorphicMapType_9639_9150_53#PolymorphicMapType_9639| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9639_9150_53#PolymorphicMapType_9639| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((diz T@Ref) ) (! (IsPredicateField_4581_4582 (Fib__joinToken diz))
 :qid |stdinbpl.272:15|
 :skolemid |27|
 :pattern ( (Fib__joinToken diz))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9090) (n Int) ) (! (dummyFunction_1402 (|Fib__fib#triggerStateless| n))
 :qid |stdinbpl.201:15|
 :skolemid |23|
 :pattern ( (|Fib__fib'| Heap@@0 n))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9090) (diz@@0 T@Ref) ) (! (|Fib__joinToken#everUsed_4581| (Fib__joinToken diz@@0))
 :qid |stdinbpl.291:15|
 :skolemid |31|
 :pattern ( (|Fib__joinToken#trigger_4581| Heap@@1 (Fib__joinToken diz@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9090) (n@@0 Int) ) (!  (and (= (Fib__fib Heap@@2 n@@0) (|Fib__fib'| Heap@@2 n@@0)) (dummyFunction_1402 (|Fib__fib#triggerStateless| n@@0)))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (Fib__fib Heap@@2 n@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9090) (ExhaleHeap T@PolymorphicMapType_9090) (Mask@@0 T@PolymorphicMapType_9111) (pm_f T@Field_13223_13224) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_13223_13224 Mask@@0 null pm_f) (IsPredicateField_4581_4582 pm_f)) (= (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@3) null (PredicateMaskField_4581 pm_f)) (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| ExhaleHeap) null (PredicateMaskField_4581 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_4581_4582 pm_f) (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| ExhaleHeap) null (PredicateMaskField_4581 pm_f)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9090) (ExhaleHeap@@0 T@PolymorphicMapType_9090) (Mask@@1 T@PolymorphicMapType_9111) (pm_f@@0 T@Field_4568_13224) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4568_13224 Mask@@1 null pm_f@@0) (IsPredicateField_4568_30528 pm_f@@0)) (= (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@4) null (PredicateMaskField_4568 pm_f@@0)) (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| ExhaleHeap@@0) null (PredicateMaskField_4568 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4568_30528 pm_f@@0) (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| ExhaleHeap@@0) null (PredicateMaskField_4568 pm_f@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9090) (ExhaleHeap@@1 T@PolymorphicMapType_9090) (Mask@@2 T@PolymorphicMapType_9111) (pm_f@@1 T@Field_13223_13224) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_13223_13224 Mask@@2 null pm_f@@1) (IsWandField_13223_34225 pm_f@@1)) (= (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@5) null (WandMaskField_13223 pm_f@@1)) (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| ExhaleHeap@@1) null (WandMaskField_13223 pm_f@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsWandField_13223_34225 pm_f@@1) (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| ExhaleHeap@@1) null (WandMaskField_13223 pm_f@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9090) (ExhaleHeap@@2 T@PolymorphicMapType_9090) (Mask@@3 T@PolymorphicMapType_9111) (pm_f@@2 T@Field_4568_13224) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4568_13224 Mask@@3 null pm_f@@2) (IsWandField_4568_33868 pm_f@@2)) (= (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@6) null (WandMaskField_4568 pm_f@@2)) (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| ExhaleHeap@@2) null (WandMaskField_4568 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_4568_33868 pm_f@@2) (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| ExhaleHeap@@2) null (WandMaskField_4568 pm_f@@2)))
)))
(assert (forall ((diz@@1 T@Ref) (diz2 T@Ref) ) (!  (=> (= (Fib__joinToken diz@@1) (Fib__joinToken diz2)) (= diz@@1 diz2))
 :qid |stdinbpl.282:15|
 :skolemid |29|
 :pattern ( (Fib__joinToken diz@@1) (Fib__joinToken diz2))
)))
(assert (forall ((diz@@2 T@Ref) (diz2@@0 T@Ref) ) (!  (=> (= (|Fib__joinToken#sm| diz@@2) (|Fib__joinToken#sm| diz2@@0)) (= diz@@2 diz2@@0))
 :qid |stdinbpl.286:15|
 :skolemid |30|
 :pattern ( (|Fib__joinToken#sm| diz@@2) (|Fib__joinToken#sm| diz2@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9090) (ExhaleHeap@@3 T@PolymorphicMapType_9090) (Mask@@4 T@PolymorphicMapType_9111) (pm_f@@3 T@Field_13223_13224) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_13223_13224 Mask@@4 null pm_f@@3) (IsPredicateField_4581_4582 pm_f@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_9150_53) ) (!  (=> (select (|PolymorphicMapType_9639_9150_53#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@7) null (PredicateMaskField_4581 pm_f@@3))) o2 f_2) (= (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@7) o2 f_2) (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_9163_9164) ) (!  (=> (select (|PolymorphicMapType_9639_9150_9164#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@7) null (PredicateMaskField_4581 pm_f@@3))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@7) o2@@0 f_2@@0) (select (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_12477_1189) ) (!  (=> (select (|PolymorphicMapType_9639_9150_1189#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@7) null (PredicateMaskField_4581 pm_f@@3))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@7) o2@@1 f_2@@1) (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_4568_13224) ) (!  (=> (select (|PolymorphicMapType_9639_9150_13224#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@7) null (PredicateMaskField_4581 pm_f@@3))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@7) o2@@2 f_2@@2) (select (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_4568_13241) ) (!  (=> (select (|PolymorphicMapType_9639_9150_32012#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@7) null (PredicateMaskField_4581 pm_f@@3))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@7) o2@@3 f_2@@3) (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| ExhaleHeap@@3) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_13223_53) ) (!  (=> (select (|PolymorphicMapType_9639_13223_53#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@7) null (PredicateMaskField_4581 pm_f@@3))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@7) o2@@4 f_2@@4) (select (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| ExhaleHeap@@3) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| ExhaleHeap@@3) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_13223_9164) ) (!  (=> (select (|PolymorphicMapType_9639_13223_9164#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@7) null (PredicateMaskField_4581 pm_f@@3))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@7) o2@@5 f_2@@5) (select (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| ExhaleHeap@@3) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| ExhaleHeap@@3) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_13223_1204) ) (!  (=> (select (|PolymorphicMapType_9639_13223_1189#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@7) null (PredicateMaskField_4581 pm_f@@3))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@7) o2@@6 f_2@@6) (select (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| ExhaleHeap@@3) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| ExhaleHeap@@3) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_13223_13224) ) (!  (=> (select (|PolymorphicMapType_9639_13223_13224#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@7) null (PredicateMaskField_4581 pm_f@@3))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@7) o2@@7 f_2@@7) (select (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| ExhaleHeap@@3) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| ExhaleHeap@@3) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_13236_13241) ) (!  (=> (select (|PolymorphicMapType_9639_13223_33060#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@7) null (PredicateMaskField_4581 pm_f@@3))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@7) o2@@8 f_2@@8) (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| ExhaleHeap@@3) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| ExhaleHeap@@3) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_4581_4582 pm_f@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9090) (ExhaleHeap@@4 T@PolymorphicMapType_9090) (Mask@@5 T@PolymorphicMapType_9111) (pm_f@@4 T@Field_4568_13224) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4568_13224 Mask@@5 null pm_f@@4) (IsPredicateField_4568_30528 pm_f@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_9150_53) ) (!  (=> (select (|PolymorphicMapType_9639_9150_53#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@8) null (PredicateMaskField_4568 pm_f@@4))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@8) o2@@9 f_2@@9) (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@9 f_2@@9))
)) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_9163_9164) ) (!  (=> (select (|PolymorphicMapType_9639_9150_9164#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@8) null (PredicateMaskField_4568 pm_f@@4))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@8) o2@@10 f_2@@10) (select (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_12477_1189) ) (!  (=> (select (|PolymorphicMapType_9639_9150_1189#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@8) null (PredicateMaskField_4568 pm_f@@4))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@8) o2@@11 f_2@@11) (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_4568_13224) ) (!  (=> (select (|PolymorphicMapType_9639_9150_13224#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@8) null (PredicateMaskField_4568 pm_f@@4))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@8) o2@@12 f_2@@12) (select (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_4568_13241) ) (!  (=> (select (|PolymorphicMapType_9639_9150_32012#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@8) null (PredicateMaskField_4568 pm_f@@4))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@8) o2@@13 f_2@@13) (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_13223_53) ) (!  (=> (select (|PolymorphicMapType_9639_13223_53#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@8) null (PredicateMaskField_4568 pm_f@@4))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@8) o2@@14 f_2@@14) (select (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_13223_9164) ) (!  (=> (select (|PolymorphicMapType_9639_13223_9164#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@8) null (PredicateMaskField_4568 pm_f@@4))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@8) o2@@15 f_2@@15) (select (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_13223_1204) ) (!  (=> (select (|PolymorphicMapType_9639_13223_1189#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@8) null (PredicateMaskField_4568 pm_f@@4))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@8) o2@@16 f_2@@16) (select (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_13223_13224) ) (!  (=> (select (|PolymorphicMapType_9639_13223_13224#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@8) null (PredicateMaskField_4568 pm_f@@4))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@8) o2@@17 f_2@@17) (select (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_13236_13241) ) (!  (=> (select (|PolymorphicMapType_9639_13223_33060#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@8) null (PredicateMaskField_4568 pm_f@@4))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@8) o2@@18 f_2@@18) (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| ExhaleHeap@@4) o2@@18 f_2@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_4568_30528 pm_f@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9090) (ExhaleHeap@@5 T@PolymorphicMapType_9090) (Mask@@6 T@PolymorphicMapType_9111) (pm_f@@5 T@Field_13223_13224) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_13223_13224 Mask@@6 null pm_f@@5) (IsWandField_13223_34225 pm_f@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_9150_53) ) (!  (=> (select (|PolymorphicMapType_9639_9150_53#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@9) null (WandMaskField_13223 pm_f@@5))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@9) o2@@19 f_2@@19) (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@19 f_2@@19))
)) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_9163_9164) ) (!  (=> (select (|PolymorphicMapType_9639_9150_9164#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@9) null (WandMaskField_13223 pm_f@@5))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@9) o2@@20 f_2@@20) (select (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_12477_1189) ) (!  (=> (select (|PolymorphicMapType_9639_9150_1189#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@9) null (WandMaskField_13223 pm_f@@5))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@9) o2@@21 f_2@@21) (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_4568_13224) ) (!  (=> (select (|PolymorphicMapType_9639_9150_13224#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@9) null (WandMaskField_13223 pm_f@@5))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@9) o2@@22 f_2@@22) (select (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@22 f_2@@22))
))) (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_4568_13241) ) (!  (=> (select (|PolymorphicMapType_9639_9150_32012#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@9) null (WandMaskField_13223 pm_f@@5))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@9) o2@@23 f_2@@23) (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@23 f_2@@23))
))) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_13223_53) ) (!  (=> (select (|PolymorphicMapType_9639_13223_53#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@9) null (WandMaskField_13223 pm_f@@5))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@9) o2@@24 f_2@@24) (select (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_13223_9164) ) (!  (=> (select (|PolymorphicMapType_9639_13223_9164#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@9) null (WandMaskField_13223 pm_f@@5))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@9) o2@@25 f_2@@25) (select (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_13223_1204) ) (!  (=> (select (|PolymorphicMapType_9639_13223_1189#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@9) null (WandMaskField_13223 pm_f@@5))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@9) o2@@26 f_2@@26) (select (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_13223_13224) ) (!  (=> (select (|PolymorphicMapType_9639_13223_13224#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@9) null (WandMaskField_13223 pm_f@@5))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@9) o2@@27 f_2@@27) (select (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_13236_13241) ) (!  (=> (select (|PolymorphicMapType_9639_13223_33060#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@9) null (WandMaskField_13223 pm_f@@5))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@9) o2@@28 f_2@@28) (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| ExhaleHeap@@5) o2@@28 f_2@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_13223_34225 pm_f@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9090) (ExhaleHeap@@6 T@PolymorphicMapType_9090) (Mask@@7 T@PolymorphicMapType_9111) (pm_f@@6 T@Field_4568_13224) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_4568_13224 Mask@@7 null pm_f@@6) (IsWandField_4568_33868 pm_f@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_9150_53) ) (!  (=> (select (|PolymorphicMapType_9639_9150_53#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@10) null (WandMaskField_4568 pm_f@@6))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@10) o2@@29 f_2@@29) (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@29 f_2@@29))
)) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_9163_9164) ) (!  (=> (select (|PolymorphicMapType_9639_9150_9164#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@10) null (WandMaskField_4568 pm_f@@6))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@10) o2@@30 f_2@@30) (select (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_12477_1189) ) (!  (=> (select (|PolymorphicMapType_9639_9150_1189#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@10) null (WandMaskField_4568 pm_f@@6))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@10) o2@@31 f_2@@31) (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@31 f_2@@31)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_4568_13224) ) (!  (=> (select (|PolymorphicMapType_9639_9150_13224#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@10) null (WandMaskField_4568 pm_f@@6))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@10) o2@@32 f_2@@32) (select (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@32 f_2@@32)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_4568_13241) ) (!  (=> (select (|PolymorphicMapType_9639_9150_32012#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@10) null (WandMaskField_4568 pm_f@@6))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@10) o2@@33 f_2@@33) (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@33 f_2@@33)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_13223_53) ) (!  (=> (select (|PolymorphicMapType_9639_13223_53#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@10) null (WandMaskField_4568 pm_f@@6))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@10) o2@@34 f_2@@34) (select (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@34 f_2@@34)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@34 f_2@@34))
))) (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_13223_9164) ) (!  (=> (select (|PolymorphicMapType_9639_13223_9164#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@10) null (WandMaskField_4568 pm_f@@6))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@10) o2@@35 f_2@@35) (select (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@35 f_2@@35)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@35 f_2@@35))
))) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_13223_1204) ) (!  (=> (select (|PolymorphicMapType_9639_13223_1189#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@10) null (WandMaskField_4568 pm_f@@6))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@10) o2@@36 f_2@@36) (select (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@36 f_2@@36)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_13223_13224) ) (!  (=> (select (|PolymorphicMapType_9639_13223_13224#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@10) null (WandMaskField_4568 pm_f@@6))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@10) o2@@37 f_2@@37) (select (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@37 f_2@@37)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_13236_13241) ) (!  (=> (select (|PolymorphicMapType_9639_13223_33060#PolymorphicMapType_9639| (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@10) null (WandMaskField_4568 pm_f@@6))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@10) o2@@38 f_2@@38) (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@38 f_2@@38)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| ExhaleHeap@@6) o2@@38 f_2@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_4568_33868 pm_f@@6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9090) (Mask@@8 T@PolymorphicMapType_9111) (n@@1 Int) ) (!  (=> (and (state Heap@@11 Mask@@8) (< AssumeFunctionsAbove 0)) (= (Fib__fib Heap@@11 n@@1) (ite (< n@@1 2) 1 (+ (|Fib__fib'| Heap@@11 (- n@@1 1)) (|Fib__fib'| Heap@@11 (- n@@1 2))))))
 :qid |stdinbpl.207:15|
 :skolemid |24|
 :pattern ( (state Heap@@11 Mask@@8) (Fib__fib Heap@@11 n@@1))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9090) (ExhaleHeap@@7 T@PolymorphicMapType_9090) (Mask@@9 T@PolymorphicMapType_9111) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@12) o_1 $allocated) (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_13223_13224) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_13223_13223 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13223_13223 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_4568_13224) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9150_9150 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9150_9150 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4566_1189 Fib__input)))
(assert  (not (IsWandField_4566_1189 Fib__input)))
(assert  (not (IsPredicateField_4566_1189 Fib__output)))
(assert  (not (IsWandField_4566_1189 Fib__output)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9090) (ExhaleHeap@@8 T@PolymorphicMapType_9090) (Mask@@10 T@PolymorphicMapType_9111) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@13 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9111) (o_2@@9 T@Ref) (f_4@@9 T@Field_13236_13241) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4581_41157 f_4@@9))) (not (IsWandField_4581_41173 f_4@@9))) (<= (select (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9111) (o_2@@10 T@Ref) (f_4@@10 T@Field_13223_9164) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4581_9164 f_4@@10))) (not (IsWandField_4581_9164 f_4@@10))) (<= (select (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9111) (o_2@@11 T@Ref) (f_4@@11 T@Field_13223_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@@13) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4581_53 f_4@@11))) (not (IsWandField_4581_53 f_4@@11))) (<= (select (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@@13) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@@13) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9111) (o_2@@12 T@Ref) (f_4@@12 T@Field_13223_13224) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@@14) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4581_4582 f_4@@12))) (not (IsWandField_13223_34225 f_4@@12))) (<= (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@@14) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@@14) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9111) (o_2@@13 T@Ref) (f_4@@13 T@Field_13223_1204) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@@15) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4581_1189 f_4@@13))) (not (IsWandField_4581_1189 f_4@@13))) (<= (select (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@@15) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@@15) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9111) (o_2@@14 T@Ref) (f_4@@14 T@Field_4568_13241) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@@16) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4566_40326 f_4@@14))) (not (IsWandField_4566_40342 f_4@@14))) (<= (select (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@@16) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@@16) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9111) (o_2@@15 T@Ref) (f_4@@15 T@Field_9163_9164) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@@17) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4566_9164 f_4@@15))) (not (IsWandField_4566_9164 f_4@@15))) (<= (select (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@@17) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@@17) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9111) (o_2@@16 T@Ref) (f_4@@16 T@Field_9150_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@@18) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4566_53 f_4@@16))) (not (IsWandField_4566_53 f_4@@16))) (<= (select (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@@18) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@@18) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9111) (o_2@@17 T@Ref) (f_4@@17 T@Field_4568_13224) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4568_30528 f_4@@17))) (not (IsWandField_4568_33868 f_4@@17))) (<= (select (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9111) (o_2@@18 T@Ref) (f_4@@18 T@Field_12477_1189) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_4566_1189 f_4@@18))) (not (IsWandField_4566_1189 f_4@@18))) (<= (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9111) (o_2@@19 T@Ref) (f_4@@19 T@Field_13236_13241) ) (! (= (HasDirectPerm_13223_30240 Mask@@21 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@@21) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13223_30240 Mask@@21 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9111) (o_2@@20 T@Ref) (f_4@@20 T@Field_13223_13224) ) (! (= (HasDirectPerm_13223_13224 Mask@@22 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@@22) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13223_13224 Mask@@22 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9111) (o_2@@21 T@Ref) (f_4@@21 T@Field_13223_9164) ) (! (= (HasDirectPerm_13223_9164 Mask@@23 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@@23) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13223_9164 Mask@@23 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9111) (o_2@@22 T@Ref) (f_4@@22 T@Field_13223_53) ) (! (= (HasDirectPerm_13223_53 Mask@@24 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@@24) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13223_53 Mask@@24 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9111) (o_2@@23 T@Ref) (f_4@@23 T@Field_13223_1204) ) (! (= (HasDirectPerm_13223_1204 Mask@@25 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@@25) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13223_1204 Mask@@25 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9111) (o_2@@24 T@Ref) (f_4@@24 T@Field_4568_13241) ) (! (= (HasDirectPerm_4568_29062 Mask@@26 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@@26) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4568_29062 Mask@@26 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9111) (o_2@@25 T@Ref) (f_4@@25 T@Field_4568_13224) ) (! (= (HasDirectPerm_4568_13224 Mask@@27 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@@27) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4568_13224 Mask@@27 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9111) (o_2@@26 T@Ref) (f_4@@26 T@Field_9163_9164) ) (! (= (HasDirectPerm_4568_9164 Mask@@28 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@@28) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4568_9164 Mask@@28 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9111) (o_2@@27 T@Ref) (f_4@@27 T@Field_9150_53) ) (! (= (HasDirectPerm_4568_53 Mask@@29 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@@29) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4568_53 Mask@@29 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_9111) (o_2@@28 T@Ref) (f_4@@28 T@Field_12477_1189) ) (! (= (HasDirectPerm_4568_1204 Mask@@30 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@@30) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4568_1204 Mask@@30 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9090) (ExhaleHeap@@9 T@PolymorphicMapType_9090) (Mask@@31 T@PolymorphicMapType_9111) (o_1@@0 T@Ref) (f_2@@39 T@Field_13236_13241) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_13223_30240 Mask@@31 o_1@@0 f_2@@39) (= (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@14) o_1@@0 f_2@@39) (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| ExhaleHeap@@9) o_1@@0 f_2@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| ExhaleHeap@@9) o_1@@0 f_2@@39))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9090) (ExhaleHeap@@10 T@PolymorphicMapType_9090) (Mask@@32 T@PolymorphicMapType_9111) (o_1@@1 T@Ref) (f_2@@40 T@Field_13223_13224) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_13223_13224 Mask@@32 o_1@@1 f_2@@40) (= (select (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@15) o_1@@1 f_2@@40) (select (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| ExhaleHeap@@10) o_1@@1 f_2@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| ExhaleHeap@@10) o_1@@1 f_2@@40))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9090) (ExhaleHeap@@11 T@PolymorphicMapType_9090) (Mask@@33 T@PolymorphicMapType_9111) (o_1@@2 T@Ref) (f_2@@41 T@Field_13223_9164) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_13223_9164 Mask@@33 o_1@@2 f_2@@41) (= (select (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@16) o_1@@2 f_2@@41) (select (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| ExhaleHeap@@11) o_1@@2 f_2@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| ExhaleHeap@@11) o_1@@2 f_2@@41))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9090) (ExhaleHeap@@12 T@PolymorphicMapType_9090) (Mask@@34 T@PolymorphicMapType_9111) (o_1@@3 T@Ref) (f_2@@42 T@Field_13223_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_13223_53 Mask@@34 o_1@@3 f_2@@42) (= (select (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@17) o_1@@3 f_2@@42) (select (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| ExhaleHeap@@12) o_1@@3 f_2@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| ExhaleHeap@@12) o_1@@3 f_2@@42))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9090) (ExhaleHeap@@13 T@PolymorphicMapType_9090) (Mask@@35 T@PolymorphicMapType_9111) (o_1@@4 T@Ref) (f_2@@43 T@Field_13223_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_13223_1204 Mask@@35 o_1@@4 f_2@@43) (= (select (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@18) o_1@@4 f_2@@43) (select (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| ExhaleHeap@@13) o_1@@4 f_2@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| ExhaleHeap@@13) o_1@@4 f_2@@43))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9090) (ExhaleHeap@@14 T@PolymorphicMapType_9090) (Mask@@36 T@PolymorphicMapType_9111) (o_1@@5 T@Ref) (f_2@@44 T@Field_4568_13241) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_4568_29062 Mask@@36 o_1@@5 f_2@@44) (= (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@19) o_1@@5 f_2@@44) (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| ExhaleHeap@@14) o_1@@5 f_2@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| ExhaleHeap@@14) o_1@@5 f_2@@44))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9090) (ExhaleHeap@@15 T@PolymorphicMapType_9090) (Mask@@37 T@PolymorphicMapType_9111) (o_1@@6 T@Ref) (f_2@@45 T@Field_4568_13224) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_4568_13224 Mask@@37 o_1@@6 f_2@@45) (= (select (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@20) o_1@@6 f_2@@45) (select (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| ExhaleHeap@@15) o_1@@6 f_2@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| ExhaleHeap@@15) o_1@@6 f_2@@45))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9090) (ExhaleHeap@@16 T@PolymorphicMapType_9090) (Mask@@38 T@PolymorphicMapType_9111) (o_1@@7 T@Ref) (f_2@@46 T@Field_9163_9164) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_4568_9164 Mask@@38 o_1@@7 f_2@@46) (= (select (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@21) o_1@@7 f_2@@46) (select (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| ExhaleHeap@@16) o_1@@7 f_2@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| ExhaleHeap@@16) o_1@@7 f_2@@46))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9090) (ExhaleHeap@@17 T@PolymorphicMapType_9090) (Mask@@39 T@PolymorphicMapType_9111) (o_1@@8 T@Ref) (f_2@@47 T@Field_9150_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_4568_53 Mask@@39 o_1@@8 f_2@@47) (= (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@22) o_1@@8 f_2@@47) (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| ExhaleHeap@@17) o_1@@8 f_2@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| ExhaleHeap@@17) o_1@@8 f_2@@47))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9090) (ExhaleHeap@@18 T@PolymorphicMapType_9090) (Mask@@40 T@PolymorphicMapType_9111) (o_1@@9 T@Ref) (f_2@@48 T@Field_12477_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_4568_1204 Mask@@40 o_1@@9 f_2@@48) (= (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@23) o_1@@9 f_2@@48) (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| ExhaleHeap@@18) o_1@@9 f_2@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| ExhaleHeap@@18) o_1@@9 f_2@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_13236_13241) ) (! (= (select (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_13223_9164) ) (! (= (select (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_13223_53) ) (! (= (select (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_13223_13224) ) (! (= (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_13223_1204) ) (! (= (select (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_4568_13241) ) (! (= (select (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_9163_9164) ) (! (= (select (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_9150_53) ) (! (= (select (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_4568_13224) ) (! (= (select (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_12477_1189) ) (! (= (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9111) (SummandMask1 T@PolymorphicMapType_9111) (SummandMask2 T@PolymorphicMapType_9111) (o_2@@39 T@Ref) (f_4@@39 T@Field_13236_13241) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9111) (SummandMask1@@0 T@PolymorphicMapType_9111) (SummandMask2@@0 T@PolymorphicMapType_9111) (o_2@@40 T@Ref) (f_4@@40 T@Field_13223_9164) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9111) (SummandMask1@@1 T@PolymorphicMapType_9111) (SummandMask2@@1 T@PolymorphicMapType_9111) (o_2@@41 T@Ref) (f_4@@41 T@Field_13223_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9111) (SummandMask1@@2 T@PolymorphicMapType_9111) (SummandMask2@@2 T@PolymorphicMapType_9111) (o_2@@42 T@Ref) (f_4@@42 T@Field_13223_13224) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9111) (SummandMask1@@3 T@PolymorphicMapType_9111) (SummandMask2@@3 T@PolymorphicMapType_9111) (o_2@@43 T@Ref) (f_4@@43 T@Field_13223_1204) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9111) (SummandMask1@@4 T@PolymorphicMapType_9111) (SummandMask2@@4 T@PolymorphicMapType_9111) (o_2@@44 T@Ref) (f_4@@44 T@Field_4568_13241) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9111) (SummandMask1@@5 T@PolymorphicMapType_9111) (SummandMask2@@5 T@PolymorphicMapType_9111) (o_2@@45 T@Ref) (f_4@@45 T@Field_9163_9164) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9111) (SummandMask1@@6 T@PolymorphicMapType_9111) (SummandMask2@@6 T@PolymorphicMapType_9111) (o_2@@46 T@Ref) (f_4@@46 T@Field_9150_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9111) (SummandMask1@@7 T@PolymorphicMapType_9111) (SummandMask2@@7 T@PolymorphicMapType_9111) (o_2@@47 T@Ref) (f_4@@47 T@Field_4568_13224) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9111) (SummandMask1@@8 T@PolymorphicMapType_9111) (SummandMask2@@8 T@PolymorphicMapType_9111) (o_2@@48 T@Ref) (f_4@@48 T@Field_12477_1189) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((diz@@3 T@Ref) ) (! (= (getPredWandId_4581_4582 (Fib__joinToken diz@@3)) 0)
 :qid |stdinbpl.276:15|
 :skolemid |28|
 :pattern ( (Fib__joinToken diz@@3))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9090) (Mask@@41 T@PolymorphicMapType_9111) (n@@2 Int) ) (!  (=> (state Heap@@24 Mask@@41) (= (|Fib__fib'| Heap@@24 n@@2) (|Fib__fib#frame| EmptyFrame n@@2)))
 :qid |stdinbpl.214:15|
 :skolemid |25|
 :pattern ( (state Heap@@24 Mask@@41) (|Fib__fib'| Heap@@24 n@@2))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9090) (o T@Ref) (f_3 T@Field_13236_13241) (v T@PolymorphicMapType_9639) ) (! (succHeap Heap@@25 (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@25) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@25) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@25) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@25) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@25) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@25) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@25) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@25) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@25) (store (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@25) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@25) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@25) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@25) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@25) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@25) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@25) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@25) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@25) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@25) (store (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@25) o f_3 v)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9090) (o@@0 T@Ref) (f_3@@0 T@Field_13223_13224) (v@@0 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@26) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@26) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@26) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@26) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@26) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@26) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@26) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@26) (store (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@26) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@26) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@26) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@26) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@26) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@26) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@26) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@26) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@26) (store (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@26) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9090) (o@@1 T@Ref) (f_3@@1 T@Field_13223_1204) (v@@1 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@27) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@27) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@27) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@27) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@27) (store (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@27) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@27) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@27) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@27) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@27) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@27) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@27) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@27) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@27) (store (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@27) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@27) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@27) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@27) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9090) (o@@2 T@Ref) (f_3@@2 T@Field_13223_9164) (v@@2 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@28) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@28) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@28) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@28) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@28) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@28) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@28) (store (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@28) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@28) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@28) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@28) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@28) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@28) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@28) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@28) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@28) (store (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@28) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@28) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9090) (o@@3 T@Ref) (f_3@@3 T@Field_13223_53) (v@@3 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@29) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@29) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@29) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@29) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@29) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@29) (store (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@29) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@29) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@29) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@29) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@29) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@29) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@29) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@29) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@29) (store (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@29) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@29) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@29) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9090) (o@@4 T@Ref) (f_3@@4 T@Field_4568_13241) (v@@4 T@PolymorphicMapType_9639) ) (! (succHeap Heap@@30 (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@30) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@30) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@30) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@30) (store (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@30) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@30) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@30) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@30) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@30) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@30) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@30) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@30) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@30) (store (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@30) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@30) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@30) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@30) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@30) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9090) (o@@5 T@Ref) (f_3@@5 T@Field_4568_13224) (v@@5 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@31) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@31) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@31) (store (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@31) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@31) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@31) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@31) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@31) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@31) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@31) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@31) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@31) (store (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@31) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@31) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@31) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@31) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@31) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@31) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9090) (o@@6 T@Ref) (f_3@@6 T@Field_12477_1189) (v@@6 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@32) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@32) (store (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@32) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@32) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@32) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@32) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@32) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@32) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@32) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@32) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@32) (store (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@32) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@32) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@32) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@32) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@32) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@32) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@32) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9090) (o@@7 T@Ref) (f_3@@7 T@Field_9163_9164) (v@@7 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@33) (store (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@33) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@33) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@33) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@33) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@33) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@33) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@33) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@33) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@33) (store (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@33) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@33) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@33) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@33) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@33) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@33) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@33) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@33) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_9090) (o@@8 T@Ref) (f_3@@8 T@Field_9150_53) (v@@8 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_9090 (store (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@34) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@34) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@34) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@34) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@34) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@34) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@34) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@34) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@34) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9090 (store (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@34) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@34) (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@34) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@34) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@34) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@34) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@34) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@34) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@34) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@34)))
)))
(assert (forall ((diz@@4 T@Ref) ) (! (= (PredicateMaskField_4581 (Fib__joinToken diz@@4)) (|Fib__joinToken#sm| diz@@4))
 :qid |stdinbpl.268:15|
 :skolemid |26|
 :pattern ( (PredicateMaskField_4581 (Fib__joinToken diz@@4)))
)))
(assert (forall ((o@@9 T@Ref) (f T@Field_9163_9164) (Heap@@35 T@PolymorphicMapType_9090) ) (!  (=> (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@35) o@@9 $allocated) (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@35) (select (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@35) o@@9 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@35) o@@9 f))
)))
(assert (forall ((p@@2 T@Field_13223_13224) (v_1@@1 T@FrameType) (q T@Field_13223_13224) (w@@1 T@FrameType) (r T@Field_13223_13224) (u T@FrameType) ) (!  (=> (and (InsidePredicate_13223_13223 p@@2 v_1@@1 q w@@1) (InsidePredicate_13223_13223 q w@@1 r u)) (InsidePredicate_13223_13223 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13223_13223 p@@2 v_1@@1 q w@@1) (InsidePredicate_13223_13223 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_13223_13224) (v_1@@2 T@FrameType) (q@@0 T@Field_13223_13224) (w@@2 T@FrameType) (r@@0 T@Field_4568_13224) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_13223_13223 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_13223_9150 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_13223_9150 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13223_13223 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_13223_9150 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_13223_13224) (v_1@@3 T@FrameType) (q@@1 T@Field_4568_13224) (w@@3 T@FrameType) (r@@1 T@Field_13223_13224) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_13223_9150 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_9150_13223 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_13223_13223 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13223_9150 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_9150_13223 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_13223_13224) (v_1@@4 T@FrameType) (q@@2 T@Field_4568_13224) (w@@4 T@FrameType) (r@@2 T@Field_4568_13224) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_13223_9150 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_9150_9150 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_13223_9150 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13223_9150 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_9150_9150 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_4568_13224) (v_1@@5 T@FrameType) (q@@3 T@Field_13223_13224) (w@@5 T@FrameType) (r@@3 T@Field_13223_13224) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_9150_13223 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_13223_13223 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_9150_13223 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9150_13223 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_13223_13223 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_4568_13224) (v_1@@6 T@FrameType) (q@@4 T@Field_13223_13224) (w@@6 T@FrameType) (r@@4 T@Field_4568_13224) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_9150_13223 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_13223_9150 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_9150_9150 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9150_13223 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_13223_9150 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_4568_13224) (v_1@@7 T@FrameType) (q@@5 T@Field_4568_13224) (w@@7 T@FrameType) (r@@5 T@Field_13223_13224) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_9150_9150 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_9150_13223 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_9150_13223 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9150_9150 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_9150_13223 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_4568_13224) (v_1@@8 T@FrameType) (q@@6 T@Field_4568_13224) (w@@8 T@FrameType) (r@@6 T@Field_4568_13224) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_9150_9150 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_9150_9150 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_9150_9150 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9150_9150 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_9150_9150 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_9090)
(declare-fun perm@1 () Real)
(declare-fun diz@@5 () T@Ref)
(declare-fun PostMask@0 () T@PolymorphicMapType_9111)
(declare-fun PostMask@1 () T@PolymorphicMapType_9111)
(declare-fun Mask@20 () T@PolymorphicMapType_9111)
(declare-fun Mask@19 () T@PolymorphicMapType_9111)
(declare-fun Heap@2 () T@PolymorphicMapType_9090)
(declare-fun Mask@18 () T@PolymorphicMapType_9111)
(declare-fun perm@6 () Real)
(declare-fun Mask@15 () T@PolymorphicMapType_9111)
(declare-fun Mask@14 () T@PolymorphicMapType_9111)
(declare-fun __flatten_3@0 () T@Ref)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_9090)
(declare-fun ExhaleHeap@3 () T@PolymorphicMapType_9090)
(declare-fun perm@5 () Real)
(declare-fun Mask@16 () T@PolymorphicMapType_9111)
(declare-fun Mask@17 () T@PolymorphicMapType_9111)
(declare-fun __flatten_2@0 () T@Ref)
(declare-fun __flatten_8@0 () Int)
(declare-fun Heap@1 () T@PolymorphicMapType_9090)
(declare-fun Mask@12 () T@PolymorphicMapType_9111)
(declare-fun Mask@11 () T@PolymorphicMapType_9111)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_9090)
(declare-fun perm@4 () Real)
(declare-fun Mask@13 () T@PolymorphicMapType_9111)
(declare-fun current_thread_id () Int)
(declare-fun Mask@10 () T@PolymorphicMapType_9111)
(declare-fun Mask@9 () T@PolymorphicMapType_9111)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_9090)
(declare-fun Mask@8 () T@PolymorphicMapType_9111)
(declare-fun perm@3 () Real)
(declare-fun Mask@7 () T@PolymorphicMapType_9111)
(declare-fun Mask@6 () T@PolymorphicMapType_9111)
(declare-fun Heap@@36 () T@PolymorphicMapType_9090)
(declare-fun Mask@5 () T@PolymorphicMapType_9111)
(declare-fun perm@2 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_9111)
(declare-fun arg_n@0 () Int)
(declare-fun Mask@2 () T@PolymorphicMapType_9111)
(declare-fun Mask@3 () T@PolymorphicMapType_9111)
(declare-fun arg_n_1@0 () Int)
(declare-fun Mask@4 () T@PolymorphicMapType_9111)
(declare-fun Heap@0 () T@PolymorphicMapType_9090)
(declare-fun f2 () T@Ref)
(declare-fun f1 () T@Ref)
(declare-fun __flatten_2 () T@Ref)
(declare-fun __flatten_3 () T@Ref)
(declare-fun perm@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_9111)
(set-info :boogie-vc-id Fib__run)
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
 (=> (= (ControlFlow 0 0) 68) (let ((anon25_Else_correct true))
(let ((anon25_Then_correct true))
(let ((anon24_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (= perm@1 (/ (to_real 1) (to_real 10)))) (and (=> (= (ControlFlow 0 62) (- 0 65)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (=> (> perm@1 NoPerm) (not (= diz@@5 null))) (=> (and (and (and (= PostMask@0 (PolymorphicMapType_9111 (store (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| ZeroMask) diz@@5 Fib__input (+ (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| ZeroMask) diz@@5 Fib__input) perm@1)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| ZeroMask) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| ZeroMask) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| ZeroMask) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| ZeroMask) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| ZeroMask) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| ZeroMask) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| ZeroMask) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| ZeroMask) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| ZeroMask))) (state PostHeap@0 PostMask@0)) (and (state PostHeap@0 PostMask@0) (not (= diz@@5 null)))) (and (and (= PostMask@1 (PolymorphicMapType_9111 (store (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| PostMask@0) diz@@5 Fib__output (+ (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| PostMask@0) diz@@5 Fib__output) FullPerm)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| PostMask@0) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| PostMask@0) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| PostMask@0) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| PostMask@0) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| PostMask@0) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| PostMask@0) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| PostMask@0) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| PostMask@0) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| PostMask@0))) (state PostHeap@0 PostMask@1)) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1)))) (and (=> (= (ControlFlow 0 62) (- 0 64)) (HasDirectPerm_4568_1204 PostMask@1 diz@@5 Fib__output)) (=> (HasDirectPerm_4568_1204 PostMask@1 diz@@5 Fib__output) (and (=> (= (ControlFlow 0 62) (- 0 63)) (HasDirectPerm_4568_1204 PostMask@1 diz@@5 Fib__input)) (=> (HasDirectPerm_4568_1204 PostMask@1 diz@@5 Fib__input) (and (=> (= (ControlFlow 0 62) 60) anon25_Then_correct) (=> (= (ControlFlow 0 62) 61) anon25_Else_correct)))))))))))))
(let ((anon23_correct  (=> (and (= Mask@20 (PolymorphicMapType_9111 (store (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@19) diz@@5 Fib__output (- (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@19) diz@@5 Fib__output) FullPerm)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@19) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@19) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@19) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@19) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@19) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@19) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@19) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@19) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@19))) (= (ControlFlow 0 2) (- 0 1))) (= (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@2) diz@@5 Fib__output) (Fib__fib Heap@2 (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@2) diz@@5 Fib__input))))))
(let ((anon34_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 5) 2)) anon23_correct)))
(let ((anon34_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= FullPerm (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@19) diz@@5 Fib__output))) (=> (<= FullPerm (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@19) diz@@5 Fib__output)) (=> (= (ControlFlow 0 3) 2) anon23_correct))))))
(let ((anon21_correct  (=> (= Mask@19 (PolymorphicMapType_9111 (store (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@18) diz@@5 Fib__input (- (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@18) diz@@5 Fib__input) perm@6)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@18) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@18) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@18) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@18) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@18) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@18) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@18) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@18) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@18))) (and (=> (= (ControlFlow 0 6) 3) anon34_Then_correct) (=> (= (ControlFlow 0 6) 5) anon34_Else_correct)))))
(let ((anon33_Else_correct  (=> (and (= perm@6 NoPerm) (= (ControlFlow 0 9) 6)) anon21_correct)))
(let ((anon33_Then_correct  (=> (not (= perm@6 NoPerm)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= perm@6 (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@18) diz@@5 Fib__input))) (=> (<= perm@6 (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@18) diz@@5 Fib__input)) (=> (= (ControlFlow 0 7) 6) anon21_correct))))))
(let ((anon19_correct  (=> (and (state Heap@2 Mask@18) (= perm@6 (/ (to_real 1) (to_real 10)))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (>= perm@6 NoPerm)) (=> (>= perm@6 NoPerm) (and (=> (= (ControlFlow 0 10) 7) anon33_Then_correct) (=> (= (ControlFlow 0 10) 9) anon33_Else_correct)))))))
(let ((anon18_correct  (=> (= Mask@15 (PolymorphicMapType_9111 (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@14) (store (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@14) null (Fib__joinToken __flatten_3@0) (- (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@14) null (Fib__joinToken __flatten_3@0)) FullPerm)) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@14) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@14) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@14) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@14) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@14) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@14) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@14) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@14))) (=> (and (IdenticalOnKnownLocations ExhaleHeap@2 ExhaleHeap@3 Mask@15) (= perm@5 (/ (to_real 1) (to_real 10)))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (>= perm@5 NoPerm)) (=> (>= perm@5 NoPerm) (=> (and (=> (> perm@5 NoPerm) (not (= __flatten_3@0 null))) (= Mask@16 (PolymorphicMapType_9111 (store (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@15) __flatten_3@0 Fib__input (+ (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@15) __flatten_3@0 Fib__input) perm@5)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@15) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@15) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@15) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@15) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@15) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@15) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@15) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@15) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@15)))) (=> (and (and (and (state ExhaleHeap@3 Mask@16) (not (= __flatten_3@0 null))) (and (= Mask@17 (PolymorphicMapType_9111 (store (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@16) __flatten_3@0 Fib__output (+ (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@16) __flatten_3@0 Fib__output) FullPerm)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@16) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@16) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@16) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@16) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@16) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@16) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@16) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@16) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@16))) (state ExhaleHeap@3 Mask@17))) (and (and (state ExhaleHeap@3 Mask@17) (= (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| ExhaleHeap@3) __flatten_3@0 Fib__output) (Fib__fib ExhaleHeap@3 (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| ExhaleHeap@3) __flatten_3@0 Fib__input)))) (and (state ExhaleHeap@3 Mask@17) (state ExhaleHeap@3 Mask@17)))) (and (=> (= (ControlFlow 0 14) (- 0 17)) (HasDirectPerm_4568_1204 Mask@17 __flatten_2@0 Fib__output)) (=> (HasDirectPerm_4568_1204 Mask@17 __flatten_2@0 Fib__output) (and (=> (= (ControlFlow 0 14) (- 0 16)) (HasDirectPerm_4568_1204 Mask@17 __flatten_3@0 Fib__output)) (=> (HasDirectPerm_4568_1204 Mask@17 __flatten_3@0 Fib__output) (=> (= __flatten_8@0 (+ (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| ExhaleHeap@3) __flatten_2@0 Fib__output) (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| ExhaleHeap@3) __flatten_3@0 Fib__output))) (=> (and (state ExhaleHeap@3 Mask@17) (state ExhaleHeap@3 Mask@17)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (= FullPerm (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@17) diz@@5 Fib__output))) (=> (= FullPerm (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@17) diz@@5 Fib__output)) (=> (= Heap@1 (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| ExhaleHeap@3) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| ExhaleHeap@3) (store (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| ExhaleHeap@3) diz@@5 Fib__output __flatten_8@0) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| ExhaleHeap@3) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| ExhaleHeap@3) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| ExhaleHeap@3) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| ExhaleHeap@3) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| ExhaleHeap@3) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| ExhaleHeap@3) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| ExhaleHeap@3))) (=> (and (and (state Heap@1 Mask@17) (= Mask@18 Mask@17)) (and (= Heap@2 Heap@1) (= (ControlFlow 0 14) 10))) anon19_correct))))))))))))))))))
(let ((anon32_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 21) 14)) anon18_correct)))
(let ((anon32_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 19) (- 0 20)) (<= FullPerm (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@14) null (Fib__joinToken __flatten_3@0)))) (=> (<= FullPerm (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@14) null (Fib__joinToken __flatten_3@0))) (=> (= (ControlFlow 0 19) 14) anon18_correct))))))
(let ((anon16_correct  (=> (= Mask@12 (PolymorphicMapType_9111 (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@11) (store (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@11) null (Fib__joinToken __flatten_2@0) (- (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@11) null (Fib__joinToken __flatten_2@0)) FullPerm)) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@11) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@11) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@11) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@11) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@11) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@11) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@11) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@11))) (=> (and (IdenticalOnKnownLocations ExhaleHeap@1 ExhaleHeap@2 Mask@12) (= perm@4 (/ (to_real 1) (to_real 10)))) (and (=> (= (ControlFlow 0 22) (- 0 25)) (>= perm@4 NoPerm)) (=> (>= perm@4 NoPerm) (=> (and (=> (> perm@4 NoPerm) (not (= __flatten_2@0 null))) (= Mask@13 (PolymorphicMapType_9111 (store (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@12) __flatten_2@0 Fib__input (+ (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@12) __flatten_2@0 Fib__input) perm@4)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@12) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@12) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@12) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@12) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@12) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@12) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@12) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@12) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@12)))) (=> (and (and (and (state ExhaleHeap@2 Mask@13) (not (= __flatten_2@0 null))) (and (= Mask@14 (PolymorphicMapType_9111 (store (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@13) __flatten_2@0 Fib__output (+ (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@13) __flatten_2@0 Fib__output) FullPerm)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@13) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@13) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@13) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@13) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@13) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@13) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@13) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@13) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@13))) (state ExhaleHeap@2 Mask@14))) (and (and (state ExhaleHeap@2 Mask@14) (= (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| ExhaleHeap@2) __flatten_2@0 Fib__output) (Fib__fib ExhaleHeap@2 (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| ExhaleHeap@2) __flatten_2@0 Fib__input)))) (and (state ExhaleHeap@2 Mask@14) (state ExhaleHeap@2 Mask@14)))) (and (=> (= (ControlFlow 0 22) (- 0 24)) (not (= __flatten_3@0 null))) (=> (not (= __flatten_3@0 null)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 22) 19) anon32_Then_correct) (=> (= (ControlFlow 0 22) 21) anon32_Else_correct))))))))))))))
(let ((anon31_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 28) 22)) anon16_correct)))
(let ((anon31_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (<= FullPerm (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@11) null (Fib__joinToken __flatten_2@0)))) (=> (<= FullPerm (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@11) null (Fib__joinToken __flatten_2@0))) (=> (= (ControlFlow 0 26) 22) anon16_correct))))))
(let ((anon14_correct  (=> (and (= Mask@10 (PolymorphicMapType_9111 (store (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@9) __flatten_3@0 Fib__output (- (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@9) __flatten_3@0 Fib__output) FullPerm)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@9) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@9) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@9) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@9) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@9) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@9) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@9) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@9) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@9))) (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@1 Mask@10)) (=> (and (and (= Mask@11 (PolymorphicMapType_9111 (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@10) (store (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@10) null (Fib__joinToken __flatten_3@0) (+ (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@10) null (Fib__joinToken __flatten_3@0)) FullPerm)) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@10) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@10) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@10) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@10) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@10) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@10) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@10) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@10))) (state ExhaleHeap@1 Mask@11)) (and (state ExhaleHeap@1 Mask@11) (state ExhaleHeap@1 Mask@11))) (and (=> (= (ControlFlow 0 29) (- 0 31)) (not (= __flatten_2@0 null))) (=> (not (= __flatten_2@0 null)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 29) 26) anon31_Then_correct) (=> (= (ControlFlow 0 29) 28) anon31_Else_correct))))))))))
(let ((anon30_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 34) 29)) anon14_correct)))
(let ((anon30_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (<= FullPerm (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@9) __flatten_3@0 Fib__output))) (=> (<= FullPerm (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@9) __flatten_3@0 Fib__output)) (=> (= (ControlFlow 0 32) 29) anon14_correct))))))
(let ((anon12_correct  (=> (= Mask@9 (PolymorphicMapType_9111 (store (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@8) __flatten_3@0 Fib__input (- (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@8) __flatten_3@0 Fib__input) perm@3)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@8) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@8) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@8) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@8) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@8) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@8) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@8) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@8) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@8))) (and (=> (= (ControlFlow 0 35) 32) anon30_Then_correct) (=> (= (ControlFlow 0 35) 34) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (and (= perm@3 NoPerm) (= (ControlFlow 0 38) 35)) anon12_correct)))
(let ((anon29_Then_correct  (=> (not (= perm@3 NoPerm)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (<= perm@3 (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@8) __flatten_3@0 Fib__input))) (=> (<= perm@3 (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@8) __flatten_3@0 Fib__input)) (=> (= (ControlFlow 0 36) 35) anon12_correct))))))
(let ((anon10_correct  (=> (and (= Mask@7 (PolymorphicMapType_9111 (store (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@6) __flatten_2@0 Fib__output (- (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@6) __flatten_2@0 Fib__output) FullPerm)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@6) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@6) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@6) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@6) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@6) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@6) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@6) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@6) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@6))) (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@0 Mask@7)) (=> (and (and (= Mask@8 (PolymorphicMapType_9111 (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@7) (store (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@7) null (Fib__joinToken __flatten_2@0) (+ (select (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@7) null (Fib__joinToken __flatten_2@0)) FullPerm)) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@7) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@7) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@7) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@7) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@7) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@7) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@7) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@7))) (state ExhaleHeap@0 Mask@8)) (and (state ExhaleHeap@0 Mask@8) (state ExhaleHeap@0 Mask@8))) (and (=> (= (ControlFlow 0 39) (- 0 42)) (not (= __flatten_3@0 null))) (=> (not (= __flatten_3@0 null)) (and (=> (= (ControlFlow 0 39) (- 0 41)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (=> (= perm@3 (/ (to_real 1) (to_real 10))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (and (=> (= (ControlFlow 0 39) 36) anon29_Then_correct) (=> (= (ControlFlow 0 39) 38) anon29_Else_correct)))))))))))))
(let ((anon28_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 45) 39)) anon10_correct)))
(let ((anon28_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 43) (- 0 44)) (<= FullPerm (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@6) __flatten_2@0 Fib__output))) (=> (<= FullPerm (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@6) __flatten_2@0 Fib__output)) (=> (= (ControlFlow 0 43) 39) anon10_correct))))))
(let ((anon8_correct  (=> (= Mask@6 (PolymorphicMapType_9111 (store (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@5) __flatten_2@0 Fib__input (- (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@5) __flatten_2@0 Fib__input) perm@2)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@5) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@5) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@5) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@5) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@5) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@5) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@5) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@5) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@5))) (and (=> (= (ControlFlow 0 46) 43) anon28_Then_correct) (=> (= (ControlFlow 0 46) 45) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (and (= perm@2 NoPerm) (= (ControlFlow 0 49) 46)) anon8_correct)))
(let ((anon27_Then_correct  (=> (not (= perm@2 NoPerm)) (and (=> (= (ControlFlow 0 47) (- 0 48)) (<= perm@2 (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@5) __flatten_2@0 Fib__input))) (=> (<= perm@2 (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@5) __flatten_2@0 Fib__input)) (=> (= (ControlFlow 0 47) 46) anon8_correct))))))
(let ((anon26_Else_correct  (=> (<= 2 (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@36) diz@@5 Fib__input)) (and (=> (= (ControlFlow 0 50) (- 0 57)) (HasDirectPerm_4568_1204 Mask@1 diz@@5 Fib__input)) (=> (HasDirectPerm_4568_1204 Mask@1 diz@@5 Fib__input) (=> (= arg_n@0 (- (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@36) diz@@5 Fib__input) 1)) (and (=> (= (ControlFlow 0 50) (- 0 56)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (=> (and (and (not (= __flatten_2@0 null)) (not (= __flatten_2@0 null))) (and (= Mask@2 (PolymorphicMapType_9111 (store (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@1) __flatten_2@0 Fib__input (+ (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@1) __flatten_2@0 Fib__input) FullPerm)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@1) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@1) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@1) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@1) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@1) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@1) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@1) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@1) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@1))) (state Heap@@36 Mask@2))) (=> (and (and (and (not (= __flatten_2@0 null)) (= Mask@3 (PolymorphicMapType_9111 (store (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@2) __flatten_2@0 Fib__output (+ (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@2) __flatten_2@0 Fib__output) FullPerm)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@2) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@2) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@2) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@2) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@2) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@2) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@2) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@2) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@2)))) (and (state Heap@@36 Mask@3) (= (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@36) __flatten_2@0 Fib__input) arg_n@0))) (and (and (state Heap@@36 Mask@3) (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@36) __flatten_2@0 $allocated)) (and (state Heap@@36 Mask@3) (state Heap@@36 Mask@3)))) (and (=> (= (ControlFlow 0 50) (- 0 55)) (HasDirectPerm_4568_1204 Mask@3 diz@@5 Fib__input)) (=> (HasDirectPerm_4568_1204 Mask@3 diz@@5 Fib__input) (=> (= arg_n_1@0 (- (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@36) diz@@5 Fib__input) 2)) (and (=> (= (ControlFlow 0 50) (- 0 54)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (=> (and (and (not (= __flatten_3@0 null)) (not (= __flatten_3@0 null))) (and (= Mask@4 (PolymorphicMapType_9111 (store (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@3) __flatten_3@0 Fib__input (+ (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@3) __flatten_3@0 Fib__input) FullPerm)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@3) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@3) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@3) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@3) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@3) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@3) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@3) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@3) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@3))) (state Heap@@36 Mask@4))) (=> (and (and (and (not (= __flatten_3@0 null)) (= Mask@5 (PolymorphicMapType_9111 (store (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@4) __flatten_3@0 Fib__output (+ (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@4) __flatten_3@0 Fib__output) FullPerm)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@4) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@4) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@4) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@4) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@4) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@4) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@4) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@4) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@4)))) (and (state Heap@@36 Mask@5) (= (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@36) __flatten_3@0 Fib__input) arg_n_1@0))) (and (and (state Heap@@36 Mask@5) (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@36) __flatten_3@0 $allocated)) (and (state Heap@@36 Mask@5) (state Heap@@36 Mask@5)))) (and (=> (= (ControlFlow 0 50) (- 0 53)) (not (= __flatten_2@0 null))) (=> (not (= __flatten_2@0 null)) (and (=> (= (ControlFlow 0 50) (- 0 52)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (=> (= perm@2 (/ (to_real 1) (to_real 10))) (and (=> (= (ControlFlow 0 50) (- 0 51)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (and (=> (= (ControlFlow 0 50) 47) anon27_Then_correct) (=> (= (ControlFlow 0 50) 49) anon27_Else_correct))))))))))))))))))))))))))
(let ((anon26_Then_correct  (=> (< (select (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@36) diz@@5 Fib__input) 2) (=> (and (state Heap@@36 Mask@1) (state Heap@@36 Mask@1)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (= FullPerm (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@1) diz@@5 Fib__output))) (=> (= FullPerm (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@1) diz@@5 Fib__output)) (=> (= Heap@0 (PolymorphicMapType_9090 (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@36) (|PolymorphicMapType_9090_4441_4442#PolymorphicMapType_9090| Heap@@36) (store (|PolymorphicMapType_9090_4568_1204#PolymorphicMapType_9090| Heap@@36) diz@@5 Fib__output 1) (|PolymorphicMapType_9090_4568_13224#PolymorphicMapType_9090| Heap@@36) (|PolymorphicMapType_9090_4568_29104#PolymorphicMapType_9090| Heap@@36) (|PolymorphicMapType_9090_13223_1204#PolymorphicMapType_9090| Heap@@36) (|PolymorphicMapType_9090_13223_53#PolymorphicMapType_9090| Heap@@36) (|PolymorphicMapType_9090_13223_9164#PolymorphicMapType_9090| Heap@@36) (|PolymorphicMapType_9090_13223_13224#PolymorphicMapType_9090| Heap@@36) (|PolymorphicMapType_9090_13223_30282#PolymorphicMapType_9090| Heap@@36))) (=> (and (and (state Heap@0 Mask@1) (= Mask@18 Mask@1)) (and (= Heap@2 Heap@0) (= (ControlFlow 0 12) 10))) anon19_correct))))))))
(let ((anon24_Else_correct  (=> (and (and (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@36) f2 $allocated) (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@36) f1 $allocated)) (and (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@36) __flatten_2 $allocated) (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@36) __flatten_3 $allocated))) (and (=> (= (ControlFlow 0 58) (- 0 59)) (HasDirectPerm_4568_1204 Mask@1 diz@@5 Fib__input)) (=> (HasDirectPerm_4568_1204 Mask@1 diz@@5 Fib__input) (and (=> (= (ControlFlow 0 58) 12) anon26_Then_correct) (=> (= (ControlFlow 0 58) 50) anon26_Else_correct)))))))
(let ((anon0_correct  (=> (state Heap@@36 ZeroMask) (=> (and (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_9090_4438_53#PolymorphicMapType_9090| Heap@@36) diz@@5 $allocated) (not (= diz@@5 null)))) (and (and (state Heap@@36 ZeroMask) (>= current_thread_id 0)) (and (state Heap@@36 ZeroMask) (= perm@0 (/ (to_real 1) (to_real 10)))))) (and (=> (= (ControlFlow 0 66) (- 0 67)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (and (and (=> (> perm@0 NoPerm) (not (= diz@@5 null))) (= Mask@0 (PolymorphicMapType_9111 (store (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| ZeroMask) diz@@5 Fib__input (+ (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| ZeroMask) diz@@5 Fib__input) perm@0)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| ZeroMask) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| ZeroMask) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| ZeroMask) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| ZeroMask) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| ZeroMask) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| ZeroMask) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| ZeroMask) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| ZeroMask) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| ZeroMask)))) (and (state Heap@@36 Mask@0) (state Heap@@36 Mask@0))) (and (and (not (= diz@@5 null)) (= Mask@1 (PolymorphicMapType_9111 (store (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@0) diz@@5 Fib__output (+ (select (|PolymorphicMapType_9111_4566_1189#PolymorphicMapType_9111| Mask@0) diz@@5 Fib__output) FullPerm)) (|PolymorphicMapType_9111_4581_4582#PolymorphicMapType_9111| Mask@0) (|PolymorphicMapType_9111_4566_4582#PolymorphicMapType_9111| Mask@0) (|PolymorphicMapType_9111_4566_53#PolymorphicMapType_9111| Mask@0) (|PolymorphicMapType_9111_4566_9164#PolymorphicMapType_9111| Mask@0) (|PolymorphicMapType_9111_4566_38454#PolymorphicMapType_9111| Mask@0) (|PolymorphicMapType_9111_4581_1189#PolymorphicMapType_9111| Mask@0) (|PolymorphicMapType_9111_4581_53#PolymorphicMapType_9111| Mask@0) (|PolymorphicMapType_9111_4581_9164#PolymorphicMapType_9111| Mask@0) (|PolymorphicMapType_9111_4581_38865#PolymorphicMapType_9111| Mask@0)))) (and (state Heap@@36 Mask@1) (state Heap@@36 Mask@1)))) (and (=> (= (ControlFlow 0 66) 62) anon24_Then_correct) (=> (= (ControlFlow 0 66) 58) anon24_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 68) 66) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
