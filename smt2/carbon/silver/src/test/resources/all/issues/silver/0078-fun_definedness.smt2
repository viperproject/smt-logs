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
(declare-sort T@Field_3163_53 0)
(declare-sort T@Field_3176_3177 0)
(declare-sort T@Field_1699_8397 0)
(declare-sort T@Field_1699_8264 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3124 0)) (((PolymorphicMapType_3124 (|PolymorphicMapType_3124_3163_53#PolymorphicMapType_3124| (Array T@Ref T@Field_3163_53 Real)) (|PolymorphicMapType_3124_3163_3177#PolymorphicMapType_3124| (Array T@Ref T@Field_3176_3177 Real)) (|PolymorphicMapType_3124_3163_8264#PolymorphicMapType_3124| (Array T@Ref T@Field_1699_8264 Real)) (|PolymorphicMapType_3124_3163_11958#PolymorphicMapType_3124| (Array T@Ref T@Field_1699_8397 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3652 0)) (((PolymorphicMapType_3652 (|PolymorphicMapType_3652_3163_53#PolymorphicMapType_3652| (Array T@Ref T@Field_3163_53 Bool)) (|PolymorphicMapType_3652_3163_3177#PolymorphicMapType_3652| (Array T@Ref T@Field_3176_3177 Bool)) (|PolymorphicMapType_3652_3163_8264#PolymorphicMapType_3652| (Array T@Ref T@Field_1699_8264 Bool)) (|PolymorphicMapType_3652_3163_9377#PolymorphicMapType_3652| (Array T@Ref T@Field_1699_8397 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3103 0)) (((PolymorphicMapType_3103 (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| (Array T@Ref T@Field_3163_53 Bool)) (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| (Array T@Ref T@Field_3176_3177 T@Ref)) (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| (Array T@Ref T@Field_1699_8397 T@PolymorphicMapType_3652)) (|PolymorphicMapType_3103_3163_8264#PolymorphicMapType_3103| (Array T@Ref T@Field_1699_8264 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_3163_53)
(declare-fun f_7 () T@Field_3176_3177)
(declare-fun succHeap (T@PolymorphicMapType_3103 T@PolymorphicMapType_3103) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3103 T@PolymorphicMapType_3103) Bool)
(declare-fun state (T@PolymorphicMapType_3103 T@PolymorphicMapType_3124) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3124) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_3652)
(declare-fun |fun'| (T@PolymorphicMapType_3103 T@Ref) Real)
(declare-fun dummyFunction_645 (Real) Bool)
(declare-fun |fun#triggerStateless| (T@Ref) Real)
(declare-fun fun (T@PolymorphicMapType_3103 T@Ref) Real)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3103 T@PolymorphicMapType_3103 T@PolymorphicMapType_3124) Bool)
(declare-fun IsPredicateField_1699_8355 (T@Field_1699_8264) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_1699 (T@Field_1699_8264) T@Field_1699_8397)
(declare-fun HasDirectPerm_1699_8328 (T@PolymorphicMapType_3124 T@Ref T@Field_1699_8264) Bool)
(declare-fun IsWandField_1699_9904 (T@Field_1699_8264) Bool)
(declare-fun WandMaskField_1699 (T@Field_1699_8264) T@Field_1699_8397)
(declare-fun dummyHeap () T@PolymorphicMapType_3103)
(declare-fun ZeroMask () T@PolymorphicMapType_3124)
(declare-fun InsidePredicate_3163_3163 (T@Field_1699_8264 T@FrameType T@Field_1699_8264 T@FrameType) Bool)
(declare-fun IsPredicateField_1699_1700 (T@Field_3176_3177) Bool)
(declare-fun IsWandField_1699_1700 (T@Field_3176_3177) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3163_12853 (T@Field_1699_8397) Bool)
(declare-fun IsWandField_3163_12869 (T@Field_1699_8397) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3163_53 (T@Field_3163_53) Bool)
(declare-fun IsWandField_3163_53 (T@Field_3163_53) Bool)
(declare-fun HasDirectPerm_1699_13224 (T@PolymorphicMapType_3124 T@Ref T@Field_1699_8397) Bool)
(declare-fun HasDirectPerm_1699_53 (T@PolymorphicMapType_3124 T@Ref T@Field_3163_53) Bool)
(declare-fun HasDirectPerm_1699_1700 (T@PolymorphicMapType_3124 T@Ref T@Field_3176_3177) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3124 T@PolymorphicMapType_3124 T@PolymorphicMapType_3124) Bool)
(declare-fun |fun#frame| (T@FrameType T@Ref) Real)
(declare-fun AssumeFunctionsAbove () Int)
(assert (forall ((Heap0 T@PolymorphicMapType_3103) (Heap1 T@PolymorphicMapType_3103) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3103) (Mask T@PolymorphicMapType_3124) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3103) (Heap1@@0 T@PolymorphicMapType_3103) (Heap2 T@PolymorphicMapType_3103) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_1699_8397) ) (!  (not (select (|PolymorphicMapType_3652_3163_9377#PolymorphicMapType_3652| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3652_3163_9377#PolymorphicMapType_3652| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_1699_8264) ) (!  (not (select (|PolymorphicMapType_3652_3163_8264#PolymorphicMapType_3652| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3652_3163_8264#PolymorphicMapType_3652| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3176_3177) ) (!  (not (select (|PolymorphicMapType_3652_3163_3177#PolymorphicMapType_3652| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3652_3163_3177#PolymorphicMapType_3652| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3163_53) ) (!  (not (select (|PolymorphicMapType_3652_3163_53#PolymorphicMapType_3652| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3652_3163_53#PolymorphicMapType_3652| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3103) (x T@Ref) ) (! (dummyFunction_645 (|fun#triggerStateless| x))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (|fun'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3103) (x@@0 T@Ref) ) (!  (and (= (fun Heap@@1 x@@0) (|fun'| Heap@@1 x@@0)) (dummyFunction_645 (|fun#triggerStateless| x@@0)))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (fun Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3103) (ExhaleHeap T@PolymorphicMapType_3103) (Mask@@0 T@PolymorphicMapType_3124) (pm_f T@Field_1699_8264) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_1699_8328 Mask@@0 null pm_f) (IsPredicateField_1699_8355 pm_f)) (= (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@2) null (PredicateMaskField_1699 pm_f)) (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| ExhaleHeap) null (PredicateMaskField_1699 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_1699_8355 pm_f) (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| ExhaleHeap) null (PredicateMaskField_1699 pm_f)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3103) (ExhaleHeap@@0 T@PolymorphicMapType_3103) (Mask@@1 T@PolymorphicMapType_3124) (pm_f@@0 T@Field_1699_8264) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_1699_8328 Mask@@1 null pm_f@@0) (IsWandField_1699_9904 pm_f@@0)) (= (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@3) null (WandMaskField_1699 pm_f@@0)) (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| ExhaleHeap@@0) null (WandMaskField_1699 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_1699_9904 pm_f@@0) (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| ExhaleHeap@@0) null (WandMaskField_1699 pm_f@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3103) (ExhaleHeap@@1 T@PolymorphicMapType_3103) (Mask@@2 T@PolymorphicMapType_3124) (pm_f@@1 T@Field_1699_8264) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_1699_8328 Mask@@2 null pm_f@@1) (IsPredicateField_1699_8355 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3163_53) ) (!  (=> (select (|PolymorphicMapType_3652_3163_53#PolymorphicMapType_3652| (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@4) null (PredicateMaskField_1699 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| Heap@@4) o2 f_2) (select (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3176_3177) ) (!  (=> (select (|PolymorphicMapType_3652_3163_3177#PolymorphicMapType_3652| (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@4) null (PredicateMaskField_1699 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_1699_8264) ) (!  (=> (select (|PolymorphicMapType_3652_3163_8264#PolymorphicMapType_3652| (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@4) null (PredicateMaskField_1699 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3103_3163_8264#PolymorphicMapType_3103| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_3103_3163_8264#PolymorphicMapType_3103| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3103_3163_8264#PolymorphicMapType_3103| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_1699_8397) ) (!  (=> (select (|PolymorphicMapType_3652_3163_9377#PolymorphicMapType_3652| (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@4) null (PredicateMaskField_1699 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_1699_8355 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3103) (ExhaleHeap@@2 T@PolymorphicMapType_3103) (Mask@@3 T@PolymorphicMapType_3124) (pm_f@@2 T@Field_1699_8264) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_1699_8328 Mask@@3 null pm_f@@2) (IsWandField_1699_9904 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3163_53) ) (!  (=> (select (|PolymorphicMapType_3652_3163_53#PolymorphicMapType_3652| (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@5) null (WandMaskField_1699 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| Heap@@5) o2@@3 f_2@@3) (select (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3176_3177) ) (!  (=> (select (|PolymorphicMapType_3652_3163_3177#PolymorphicMapType_3652| (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@5) null (WandMaskField_1699 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_1699_8264) ) (!  (=> (select (|PolymorphicMapType_3652_3163_8264#PolymorphicMapType_3652| (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@5) null (WandMaskField_1699 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3103_3163_8264#PolymorphicMapType_3103| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_3103_3163_8264#PolymorphicMapType_3103| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3103_3163_8264#PolymorphicMapType_3103| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_1699_8397) ) (!  (=> (select (|PolymorphicMapType_3652_3163_9377#PolymorphicMapType_3652| (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@5) null (WandMaskField_1699 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_1699_9904 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3103) (ExhaleHeap@@3 T@PolymorphicMapType_3103) (Mask@@4 T@PolymorphicMapType_3124) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| Heap@@6) o_1 $allocated) (select (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_1699_8264) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3163_3163 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3163_3163 p v_1 p w))
)))
(assert  (not (IsPredicateField_1699_1700 f_7)))
(assert  (not (IsWandField_1699_1700 f_7)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3103) (ExhaleHeap@@4 T@PolymorphicMapType_3103) (Mask@@5 T@PolymorphicMapType_3124) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@7 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3124) (o_2@@3 T@Ref) (f_4@@3 T@Field_1699_8397) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3124_3163_11958#PolymorphicMapType_3124| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3163_12853 f_4@@3))) (not (IsWandField_3163_12869 f_4@@3))) (<= (select (|PolymorphicMapType_3124_3163_11958#PolymorphicMapType_3124| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3124_3163_11958#PolymorphicMapType_3124| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3124) (o_2@@4 T@Ref) (f_4@@4 T@Field_1699_8264) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3124_3163_8264#PolymorphicMapType_3124| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_1699_8355 f_4@@4))) (not (IsWandField_1699_9904 f_4@@4))) (<= (select (|PolymorphicMapType_3124_3163_8264#PolymorphicMapType_3124| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3124_3163_8264#PolymorphicMapType_3124| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3124) (o_2@@5 T@Ref) (f_4@@5 T@Field_3176_3177) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3124_3163_3177#PolymorphicMapType_3124| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_1699_1700 f_4@@5))) (not (IsWandField_1699_1700 f_4@@5))) (<= (select (|PolymorphicMapType_3124_3163_3177#PolymorphicMapType_3124| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3124_3163_3177#PolymorphicMapType_3124| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3124) (o_2@@6 T@Ref) (f_4@@6 T@Field_3163_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3124_3163_53#PolymorphicMapType_3124| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3163_53 f_4@@6))) (not (IsWandField_3163_53 f_4@@6))) (<= (select (|PolymorphicMapType_3124_3163_53#PolymorphicMapType_3124| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3124_3163_53#PolymorphicMapType_3124| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3124) (o_2@@7 T@Ref) (f_4@@7 T@Field_1699_8397) ) (! (= (HasDirectPerm_1699_13224 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3124_3163_11958#PolymorphicMapType_3124| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1699_13224 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3124) (o_2@@8 T@Ref) (f_4@@8 T@Field_1699_8264) ) (! (= (HasDirectPerm_1699_8328 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3124_3163_8264#PolymorphicMapType_3124| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1699_8328 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3124) (o_2@@9 T@Ref) (f_4@@9 T@Field_3163_53) ) (! (= (HasDirectPerm_1699_53 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3124_3163_53#PolymorphicMapType_3124| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1699_53 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3124) (o_2@@10 T@Ref) (f_4@@10 T@Field_3176_3177) ) (! (= (HasDirectPerm_1699_1700 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3124_3163_3177#PolymorphicMapType_3124| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1699_1700 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3103) (ExhaleHeap@@5 T@PolymorphicMapType_3103) (Mask@@14 T@PolymorphicMapType_3124) (o_1@@0 T@Ref) (f_2@@7 T@Field_1699_8397) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_1699_13224 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@8) o_1@@0 f_2@@7) (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3103) (ExhaleHeap@@6 T@PolymorphicMapType_3103) (Mask@@15 T@PolymorphicMapType_3124) (o_1@@1 T@Ref) (f_2@@8 T@Field_1699_8264) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_1699_8328 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_3103_3163_8264#PolymorphicMapType_3103| Heap@@9) o_1@@1 f_2@@8) (select (|PolymorphicMapType_3103_3163_8264#PolymorphicMapType_3103| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_3103_3163_8264#PolymorphicMapType_3103| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3103) (ExhaleHeap@@7 T@PolymorphicMapType_3103) (Mask@@16 T@PolymorphicMapType_3124) (o_1@@2 T@Ref) (f_2@@9 T@Field_3163_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_1699_53 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| Heap@@10) o_1@@2 f_2@@9) (select (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3103) (ExhaleHeap@@8 T@PolymorphicMapType_3103) (Mask@@17 T@PolymorphicMapType_3124) (o_1@@3 T@Ref) (f_2@@10 T@Field_3176_3177) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_1699_1700 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| Heap@@11) o_1@@3 f_2@@10) (select (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_1699_8397) ) (! (= (select (|PolymorphicMapType_3124_3163_11958#PolymorphicMapType_3124| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3124_3163_11958#PolymorphicMapType_3124| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_1699_8264) ) (! (= (select (|PolymorphicMapType_3124_3163_8264#PolymorphicMapType_3124| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3124_3163_8264#PolymorphicMapType_3124| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3176_3177) ) (! (= (select (|PolymorphicMapType_3124_3163_3177#PolymorphicMapType_3124| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3124_3163_3177#PolymorphicMapType_3124| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3163_53) ) (! (= (select (|PolymorphicMapType_3124_3163_53#PolymorphicMapType_3124| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3124_3163_53#PolymorphicMapType_3124| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3124) (SummandMask1 T@PolymorphicMapType_3124) (SummandMask2 T@PolymorphicMapType_3124) (o_2@@15 T@Ref) (f_4@@15 T@Field_1699_8397) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3124_3163_11958#PolymorphicMapType_3124| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3124_3163_11958#PolymorphicMapType_3124| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3124_3163_11958#PolymorphicMapType_3124| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3124_3163_11958#PolymorphicMapType_3124| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3124_3163_11958#PolymorphicMapType_3124| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3124_3163_11958#PolymorphicMapType_3124| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3124) (SummandMask1@@0 T@PolymorphicMapType_3124) (SummandMask2@@0 T@PolymorphicMapType_3124) (o_2@@16 T@Ref) (f_4@@16 T@Field_1699_8264) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3124_3163_8264#PolymorphicMapType_3124| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3124_3163_8264#PolymorphicMapType_3124| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3124_3163_8264#PolymorphicMapType_3124| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3124_3163_8264#PolymorphicMapType_3124| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3124_3163_8264#PolymorphicMapType_3124| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3124_3163_8264#PolymorphicMapType_3124| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3124) (SummandMask1@@1 T@PolymorphicMapType_3124) (SummandMask2@@1 T@PolymorphicMapType_3124) (o_2@@17 T@Ref) (f_4@@17 T@Field_3176_3177) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3124_3163_3177#PolymorphicMapType_3124| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3124_3163_3177#PolymorphicMapType_3124| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3124_3163_3177#PolymorphicMapType_3124| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3124_3163_3177#PolymorphicMapType_3124| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3124_3163_3177#PolymorphicMapType_3124| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3124_3163_3177#PolymorphicMapType_3124| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3124) (SummandMask1@@2 T@PolymorphicMapType_3124) (SummandMask2@@2 T@PolymorphicMapType_3124) (o_2@@18 T@Ref) (f_4@@18 T@Field_3163_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3124_3163_53#PolymorphicMapType_3124| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3124_3163_53#PolymorphicMapType_3124| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3124_3163_53#PolymorphicMapType_3124| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3124_3163_53#PolymorphicMapType_3124| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3124_3163_53#PolymorphicMapType_3124| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3124_3163_53#PolymorphicMapType_3124| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3103) (Mask@@18 T@PolymorphicMapType_3124) (x@@1 T@Ref) ) (!  (=> (state Heap@@12 Mask@@18) (= (|fun'| Heap@@12 x@@1) (|fun#frame| EmptyFrame x@@1)))
 :qid |stdinbpl.211:15|
 :skolemid |25|
 :pattern ( (state Heap@@12 Mask@@18) (|fun'| Heap@@12 x@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3103) (o T@Ref) (f_3 T@Field_1699_8264) (v T@FrameType) ) (! (succHeap Heap@@13 (PolymorphicMapType_3103 (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| Heap@@13) (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| Heap@@13) (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@13) (store (|PolymorphicMapType_3103_3163_8264#PolymorphicMapType_3103| Heap@@13) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3103 (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| Heap@@13) (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| Heap@@13) (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@13) (store (|PolymorphicMapType_3103_3163_8264#PolymorphicMapType_3103| Heap@@13) o f_3 v)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3103) (o@@0 T@Ref) (f_3@@0 T@Field_1699_8397) (v@@0 T@PolymorphicMapType_3652) ) (! (succHeap Heap@@14 (PolymorphicMapType_3103 (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| Heap@@14) (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| Heap@@14) (store (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@14) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3103_3163_8264#PolymorphicMapType_3103| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3103 (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| Heap@@14) (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| Heap@@14) (store (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@14) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3103_3163_8264#PolymorphicMapType_3103| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3103) (o@@1 T@Ref) (f_3@@1 T@Field_3176_3177) (v@@1 T@Ref) ) (! (succHeap Heap@@15 (PolymorphicMapType_3103 (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| Heap@@15) (store (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| Heap@@15) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@15) (|PolymorphicMapType_3103_3163_8264#PolymorphicMapType_3103| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3103 (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| Heap@@15) (store (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| Heap@@15) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@15) (|PolymorphicMapType_3103_3163_8264#PolymorphicMapType_3103| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3103) (o@@2 T@Ref) (f_3@@2 T@Field_3163_53) (v@@2 Bool) ) (! (succHeap Heap@@16 (PolymorphicMapType_3103 (store (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| Heap@@16) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| Heap@@16) (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@16) (|PolymorphicMapType_3103_3163_8264#PolymorphicMapType_3103| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3103 (store (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| Heap@@16) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| Heap@@16) (|PolymorphicMapType_3103_1699_8441#PolymorphicMapType_3103| Heap@@16) (|PolymorphicMapType_3103_3163_8264#PolymorphicMapType_3103| Heap@@16)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_3176_3177) (Heap@@17 T@PolymorphicMapType_3103) ) (!  (=> (select (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| Heap@@17) o@@3 $allocated) (select (|PolymorphicMapType_3103_1571_53#PolymorphicMapType_3103| Heap@@17) (select (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| Heap@@17) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3103_1574_1575#PolymorphicMapType_3103| Heap@@17) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_1699_8264) (v_1@@0 T@FrameType) (q T@Field_1699_8264) (w@@0 T@FrameType) (r T@Field_1699_8264) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3163_3163 p@@1 v_1@@0 q w@@0) (InsidePredicate_3163_3163 q w@@0 r u)) (InsidePredicate_3163_3163 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3163_3163 p@@1 v_1@@0 q w@@0) (InsidePredicate_3163_3163 q w@@0 r u))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3103) (Mask@@19 T@PolymorphicMapType_3124) (x@@2 T@Ref) ) (!  (=> (and (state Heap@@18 Mask@@19) (< AssumeFunctionsAbove 0)) (= (fun Heap@@18 x@@2) FullPerm))
 :qid |stdinbpl.204:15|
 :skolemid |24|
 :pattern ( (state Heap@@18 Mask@@19) (fun Heap@@18 x@@2))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |fun#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
