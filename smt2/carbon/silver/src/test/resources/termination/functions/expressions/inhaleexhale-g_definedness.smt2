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
(declare-sort T@Field_3689_53 0)
(declare-sort T@Field_3702_3703 0)
(declare-sort T@Field_3689_9636 0)
(declare-sort T@Field_3689_9503 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3650 0)) (((PolymorphicMapType_3650 (|PolymorphicMapType_3650_3689_53#PolymorphicMapType_3650| (Array T@Ref T@Field_3689_53 Real)) (|PolymorphicMapType_3650_3689_3703#PolymorphicMapType_3650| (Array T@Ref T@Field_3702_3703 Real)) (|PolymorphicMapType_3650_3689_9503#PolymorphicMapType_3650| (Array T@Ref T@Field_3689_9503 Real)) (|PolymorphicMapType_3650_3689_13197#PolymorphicMapType_3650| (Array T@Ref T@Field_3689_9636 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4178 0)) (((PolymorphicMapType_4178 (|PolymorphicMapType_4178_3689_53#PolymorphicMapType_4178| (Array T@Ref T@Field_3689_53 Bool)) (|PolymorphicMapType_4178_3689_3703#PolymorphicMapType_4178| (Array T@Ref T@Field_3702_3703 Bool)) (|PolymorphicMapType_4178_3689_9503#PolymorphicMapType_4178| (Array T@Ref T@Field_3689_9503 Bool)) (|PolymorphicMapType_4178_3689_10616#PolymorphicMapType_4178| (Array T@Ref T@Field_3689_9636 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3629 0)) (((PolymorphicMapType_3629 (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| (Array T@Ref T@Field_3689_53 Bool)) (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| (Array T@Ref T@Field_3702_3703 T@Ref)) (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| (Array T@Ref T@Field_3689_9636 T@PolymorphicMapType_4178)) (|PolymorphicMapType_3629_3689_9503#PolymorphicMapType_3629| (Array T@Ref T@Field_3689_9503 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3629 T@PolymorphicMapType_3629) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3629 T@PolymorphicMapType_3629) Bool)
(declare-fun state (T@PolymorphicMapType_3629 T@PolymorphicMapType_3650) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3650) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4178)
(declare-fun |f'| (T@PolymorphicMapType_3629 Int) Bool)
(declare-fun dummyFunction_1431 (Bool) Bool)
(declare-fun |f#triggerStateless| (Int) Bool)
(declare-fun |g'| (T@PolymorphicMapType_3629 Bool) Bool)
(declare-fun |g#triggerStateless| (Bool) Bool)
(declare-fun decreasing_1189 (Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3629 T@PolymorphicMapType_3629 T@PolymorphicMapType_3650) Bool)
(declare-fun IsPredicateField_3689_9594 (T@Field_3689_9503) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3689 (T@Field_3689_9503) T@Field_3689_9636)
(declare-fun HasDirectPerm_3689_9567 (T@PolymorphicMapType_3650 T@Ref T@Field_3689_9503) Bool)
(declare-fun IsWandField_3689_11143 (T@Field_3689_9503) Bool)
(declare-fun WandMaskField_3689 (T@Field_3689_9503) T@Field_3689_9636)
(declare-fun f_6 (T@PolymorphicMapType_3629 Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun g_3 (T@PolymorphicMapType_3629 Bool) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_3629)
(declare-fun ZeroMask () T@PolymorphicMapType_3650)
(declare-fun $allocated () T@Field_3689_53)
(declare-fun InsidePredicate_3689_3689 (T@Field_3689_9503 T@FrameType T@Field_3689_9503 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3689_14106 (T@Field_3689_9636) Bool)
(declare-fun IsWandField_3689_14122 (T@Field_3689_9636) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3689_3703 (T@Field_3702_3703) Bool)
(declare-fun IsWandField_3689_3703 (T@Field_3702_3703) Bool)
(declare-fun IsPredicateField_3689_53 (T@Field_3689_53) Bool)
(declare-fun IsWandField_3689_53 (T@Field_3689_53) Bool)
(declare-fun HasDirectPerm_3689_14477 (T@PolymorphicMapType_3650 T@Ref T@Field_3689_9636) Bool)
(declare-fun HasDirectPerm_3689_3703 (T@PolymorphicMapType_3650 T@Ref T@Field_3702_3703) Bool)
(declare-fun HasDirectPerm_3689_53 (T@PolymorphicMapType_3650 T@Ref T@Field_3689_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3650 T@PolymorphicMapType_3650 T@PolymorphicMapType_3650) Bool)
(declare-fun bounded_1214 (Int) Bool)
(declare-fun |f#frame| (T@FrameType Int) Bool)
(declare-fun |g#frame| (T@FrameType Bool) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3629) (Heap1 T@PolymorphicMapType_3629) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3629) (Mask T@PolymorphicMapType_3650) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3629) (Heap1@@0 T@PolymorphicMapType_3629) (Heap2 T@PolymorphicMapType_3629) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3689_9636) ) (!  (not (select (|PolymorphicMapType_4178_3689_10616#PolymorphicMapType_4178| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4178_3689_10616#PolymorphicMapType_4178| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3689_9503) ) (!  (not (select (|PolymorphicMapType_4178_3689_9503#PolymorphicMapType_4178| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4178_3689_9503#PolymorphicMapType_4178| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3702_3703) ) (!  (not (select (|PolymorphicMapType_4178_3689_3703#PolymorphicMapType_4178| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4178_3689_3703#PolymorphicMapType_4178| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3689_53) ) (!  (not (select (|PolymorphicMapType_4178_3689_53#PolymorphicMapType_4178| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4178_3689_53#PolymorphicMapType_4178| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3629) (x Int) ) (! (dummyFunction_1431 (|f#triggerStateless| x))
 :qid |stdinbpl.223:15|
 :skolemid |25|
 :pattern ( (|f'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3629) (b_24 Bool) ) (! (dummyFunction_1431 (|g#triggerStateless| b_24))
 :qid |stdinbpl.304:15|
 :skolemid |29|
 :pattern ( (|g'| Heap@@1 b_24))
)))
(assert (forall ((int1 Int) (int2 Int) ) (!  (=> (< int1 int2) (decreasing_1189 int1 int2))
 :qid |stdinbpl.188:15|
 :skolemid |22|
 :pattern ( (decreasing_1189 int1 int2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3629) (ExhaleHeap T@PolymorphicMapType_3629) (Mask@@0 T@PolymorphicMapType_3650) (pm_f T@Field_3689_9503) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3689_9567 Mask@@0 null pm_f) (IsPredicateField_3689_9594 pm_f)) (= (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@2) null (PredicateMaskField_3689 pm_f)) (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| ExhaleHeap) null (PredicateMaskField_3689 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_3689_9594 pm_f) (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| ExhaleHeap) null (PredicateMaskField_3689 pm_f)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3629) (ExhaleHeap@@0 T@PolymorphicMapType_3629) (Mask@@1 T@PolymorphicMapType_3650) (pm_f@@0 T@Field_3689_9503) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3689_9567 Mask@@1 null pm_f@@0) (IsWandField_3689_11143 pm_f@@0)) (= (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@3) null (WandMaskField_3689 pm_f@@0)) (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| ExhaleHeap@@0) null (WandMaskField_3689 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_3689_11143 pm_f@@0) (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| ExhaleHeap@@0) null (WandMaskField_3689 pm_f@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3629) (Mask@@2 T@PolymorphicMapType_3650) (x@@0 Int) ) (!  (=> (and (state Heap@@4 Mask@@2) (< AssumeFunctionsAbove 0)) (=> (and (< x@@0 0) (g_3 Heap@@4 false)) (f_6 Heap@@4 x@@0)))
 :qid |stdinbpl.229:15|
 :skolemid |26|
 :pattern ( (state Heap@@4 Mask@@2) (f_6 Heap@@4 x@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3629) (ExhaleHeap@@1 T@PolymorphicMapType_3629) (Mask@@3 T@PolymorphicMapType_3650) (pm_f@@1 T@Field_3689_9503) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_3689_9567 Mask@@3 null pm_f@@1) (IsPredicateField_3689_9594 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3689_53) ) (!  (=> (select (|PolymorphicMapType_4178_3689_53#PolymorphicMapType_4178| (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@5) null (PredicateMaskField_3689 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| Heap@@5) o2 f_2) (select (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3702_3703) ) (!  (=> (select (|PolymorphicMapType_4178_3689_3703#PolymorphicMapType_4178| (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@5) null (PredicateMaskField_3689 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| Heap@@5) o2@@0 f_2@@0) (select (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_3689_9503) ) (!  (=> (select (|PolymorphicMapType_4178_3689_9503#PolymorphicMapType_4178| (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@5) null (PredicateMaskField_3689 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3629_3689_9503#PolymorphicMapType_3629| Heap@@5) o2@@1 f_2@@1) (select (|PolymorphicMapType_3629_3689_9503#PolymorphicMapType_3629| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3629_3689_9503#PolymorphicMapType_3629| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3689_9636) ) (!  (=> (select (|PolymorphicMapType_4178_3689_10616#PolymorphicMapType_4178| (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@5) null (PredicateMaskField_3689 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@5) o2@@2 f_2@@2) (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (IsPredicateField_3689_9594 pm_f@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3629) (ExhaleHeap@@2 T@PolymorphicMapType_3629) (Mask@@4 T@PolymorphicMapType_3650) (pm_f@@2 T@Field_3689_9503) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_3689_9567 Mask@@4 null pm_f@@2) (IsWandField_3689_11143 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3689_53) ) (!  (=> (select (|PolymorphicMapType_4178_3689_53#PolymorphicMapType_4178| (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@6) null (WandMaskField_3689 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| Heap@@6) o2@@3 f_2@@3) (select (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3702_3703) ) (!  (=> (select (|PolymorphicMapType_4178_3689_3703#PolymorphicMapType_4178| (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@6) null (WandMaskField_3689 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| Heap@@6) o2@@4 f_2@@4) (select (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3689_9503) ) (!  (=> (select (|PolymorphicMapType_4178_3689_9503#PolymorphicMapType_4178| (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@6) null (WandMaskField_3689 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3629_3689_9503#PolymorphicMapType_3629| Heap@@6) o2@@5 f_2@@5) (select (|PolymorphicMapType_3629_3689_9503#PolymorphicMapType_3629| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3629_3689_9503#PolymorphicMapType_3629| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_3689_9636) ) (!  (=> (select (|PolymorphicMapType_4178_3689_10616#PolymorphicMapType_4178| (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@6) null (WandMaskField_3689 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@6) o2@@6 f_2@@6) (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (IsWandField_3689_11143 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3629) (ExhaleHeap@@3 T@PolymorphicMapType_3629) (Mask@@5 T@PolymorphicMapType_3650) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (=> (select (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| Heap@@7) o_1 $allocated) (select (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (select (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_3689_9503) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3689_3689 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3689_3689 p v_1 p w))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3629) (ExhaleHeap@@4 T@PolymorphicMapType_3629) (Mask@@6 T@PolymorphicMapType_3650) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (succHeap Heap@@8 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3650) (o_2@@3 T@Ref) (f_4@@3 T@Field_3689_9636) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3650_3689_13197#PolymorphicMapType_3650| Mask@@7) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3689_14106 f_4@@3))) (not (IsWandField_3689_14122 f_4@@3))) (<= (select (|PolymorphicMapType_3650_3689_13197#PolymorphicMapType_3650| Mask@@7) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3650_3689_13197#PolymorphicMapType_3650| Mask@@7) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3650) (o_2@@4 T@Ref) (f_4@@4 T@Field_3689_9503) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3650_3689_9503#PolymorphicMapType_3650| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3689_9594 f_4@@4))) (not (IsWandField_3689_11143 f_4@@4))) (<= (select (|PolymorphicMapType_3650_3689_9503#PolymorphicMapType_3650| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3650_3689_9503#PolymorphicMapType_3650| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3650) (o_2@@5 T@Ref) (f_4@@5 T@Field_3702_3703) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3650_3689_3703#PolymorphicMapType_3650| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3689_3703 f_4@@5))) (not (IsWandField_3689_3703 f_4@@5))) (<= (select (|PolymorphicMapType_3650_3689_3703#PolymorphicMapType_3650| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3650_3689_3703#PolymorphicMapType_3650| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3650) (o_2@@6 T@Ref) (f_4@@6 T@Field_3689_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_3650_3689_53#PolymorphicMapType_3650| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3689_53 f_4@@6))) (not (IsWandField_3689_53 f_4@@6))) (<= (select (|PolymorphicMapType_3650_3689_53#PolymorphicMapType_3650| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_3650_3689_53#PolymorphicMapType_3650| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3650) (o_2@@7 T@Ref) (f_4@@7 T@Field_3689_9636) ) (! (= (HasDirectPerm_3689_14477 Mask@@11 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3650_3689_13197#PolymorphicMapType_3650| Mask@@11) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3689_14477 Mask@@11 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3650) (o_2@@8 T@Ref) (f_4@@8 T@Field_3689_9503) ) (! (= (HasDirectPerm_3689_9567 Mask@@12 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3650_3689_9503#PolymorphicMapType_3650| Mask@@12) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3689_9567 Mask@@12 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3650) (o_2@@9 T@Ref) (f_4@@9 T@Field_3702_3703) ) (! (= (HasDirectPerm_3689_3703 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3650_3689_3703#PolymorphicMapType_3650| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3689_3703 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3650) (o_2@@10 T@Ref) (f_4@@10 T@Field_3689_53) ) (! (= (HasDirectPerm_3689_53 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3650_3689_53#PolymorphicMapType_3650| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3689_53 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6@@0 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6@@0) (ite (> p@@0 0.0) f_6@@0 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3629) (ExhaleHeap@@5 T@PolymorphicMapType_3629) (Mask@@15 T@PolymorphicMapType_3650) (o_1@@0 T@Ref) (f_2@@7 T@Field_3689_9636) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@15) (=> (HasDirectPerm_3689_14477 Mask@@15 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@9) o_1@@0 f_2@@7) (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@15) (select (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3629) (ExhaleHeap@@6 T@PolymorphicMapType_3629) (Mask@@16 T@PolymorphicMapType_3650) (o_1@@1 T@Ref) (f_2@@8 T@Field_3689_9503) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@16) (=> (HasDirectPerm_3689_9567 Mask@@16 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_3629_3689_9503#PolymorphicMapType_3629| Heap@@10) o_1@@1 f_2@@8) (select (|PolymorphicMapType_3629_3689_9503#PolymorphicMapType_3629| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@16) (select (|PolymorphicMapType_3629_3689_9503#PolymorphicMapType_3629| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3629) (ExhaleHeap@@7 T@PolymorphicMapType_3629) (Mask@@17 T@PolymorphicMapType_3650) (o_1@@2 T@Ref) (f_2@@9 T@Field_3702_3703) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@17) (=> (HasDirectPerm_3689_3703 Mask@@17 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| Heap@@11) o_1@@2 f_2@@9) (select (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@17) (select (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3629) (ExhaleHeap@@8 T@PolymorphicMapType_3629) (Mask@@18 T@PolymorphicMapType_3650) (o_1@@3 T@Ref) (f_2@@10 T@Field_3689_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@18) (=> (HasDirectPerm_3689_53 Mask@@18 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| Heap@@12) o_1@@3 f_2@@10) (select (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@18) (select (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3689_9636) ) (! (= (select (|PolymorphicMapType_3650_3689_13197#PolymorphicMapType_3650| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3650_3689_13197#PolymorphicMapType_3650| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3689_9503) ) (! (= (select (|PolymorphicMapType_3650_3689_9503#PolymorphicMapType_3650| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3650_3689_9503#PolymorphicMapType_3650| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3702_3703) ) (! (= (select (|PolymorphicMapType_3650_3689_3703#PolymorphicMapType_3650| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3650_3689_3703#PolymorphicMapType_3650| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3689_53) ) (! (= (select (|PolymorphicMapType_3650_3689_53#PolymorphicMapType_3650| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3650_3689_53#PolymorphicMapType_3650| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3650) (SummandMask1 T@PolymorphicMapType_3650) (SummandMask2 T@PolymorphicMapType_3650) (o_2@@15 T@Ref) (f_4@@15 T@Field_3689_9636) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3650_3689_13197#PolymorphicMapType_3650| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3650_3689_13197#PolymorphicMapType_3650| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3650_3689_13197#PolymorphicMapType_3650| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3650_3689_13197#PolymorphicMapType_3650| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3650_3689_13197#PolymorphicMapType_3650| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3650_3689_13197#PolymorphicMapType_3650| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3650) (SummandMask1@@0 T@PolymorphicMapType_3650) (SummandMask2@@0 T@PolymorphicMapType_3650) (o_2@@16 T@Ref) (f_4@@16 T@Field_3689_9503) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3650_3689_9503#PolymorphicMapType_3650| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3650_3689_9503#PolymorphicMapType_3650| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3650_3689_9503#PolymorphicMapType_3650| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3650_3689_9503#PolymorphicMapType_3650| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3650_3689_9503#PolymorphicMapType_3650| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3650_3689_9503#PolymorphicMapType_3650| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3650) (SummandMask1@@1 T@PolymorphicMapType_3650) (SummandMask2@@1 T@PolymorphicMapType_3650) (o_2@@17 T@Ref) (f_4@@17 T@Field_3702_3703) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3650_3689_3703#PolymorphicMapType_3650| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3650_3689_3703#PolymorphicMapType_3650| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3650_3689_3703#PolymorphicMapType_3650| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3650_3689_3703#PolymorphicMapType_3650| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3650_3689_3703#PolymorphicMapType_3650| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3650_3689_3703#PolymorphicMapType_3650| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3650) (SummandMask1@@2 T@PolymorphicMapType_3650) (SummandMask2@@2 T@PolymorphicMapType_3650) (o_2@@18 T@Ref) (f_4@@18 T@Field_3689_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3650_3689_53#PolymorphicMapType_3650| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3650_3689_53#PolymorphicMapType_3650| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3650_3689_53#PolymorphicMapType_3650| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3650_3689_53#PolymorphicMapType_3650| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3650_3689_53#PolymorphicMapType_3650| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3650_3689_53#PolymorphicMapType_3650| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((int1@@0 Int) ) (!  (=> (>= int1@@0 0) (bounded_1214 int1@@0))
 :qid |stdinbpl.194:15|
 :skolemid |23|
 :pattern ( (bounded_1214 int1@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3629) (Mask@@19 T@PolymorphicMapType_3650) (x@@1 Int) ) (!  (=> (state Heap@@13 Mask@@19) (= (|f'| Heap@@13 x@@1) (|f#frame| EmptyFrame x@@1)))
 :qid |stdinbpl.236:15|
 :skolemid |27|
 :pattern ( (state Heap@@13 Mask@@19) (|f'| Heap@@13 x@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3629) (Mask@@20 T@PolymorphicMapType_3650) (b_24@@0 Bool) ) (!  (=> (state Heap@@14 Mask@@20) (= (|g'| Heap@@14 b_24@@0) (|g#frame| EmptyFrame b_24@@0)))
 :qid |stdinbpl.311:15|
 :skolemid |30|
 :pattern ( (state Heap@@14 Mask@@20) (|g'| Heap@@14 b_24@@0))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3629) (x@@2 Int) ) (!  (and (= (f_6 Heap@@15 x@@2) (|f'| Heap@@15 x@@2)) (dummyFunction_1431 (|f#triggerStateless| x@@2)))
 :qid |stdinbpl.219:15|
 :skolemid |24|
 :pattern ( (f_6 Heap@@15 x@@2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3629) (b_24@@1 Bool) ) (!  (and (= (g_3 Heap@@16 b_24@@1) (|g'| Heap@@16 b_24@@1)) (dummyFunction_1431 (|g#triggerStateless| b_24@@1)))
 :qid |stdinbpl.300:15|
 :skolemid |28|
 :pattern ( (g_3 Heap@@16 b_24@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3629) (o T@Ref) (f_3 T@Field_3689_9503) (v T@FrameType) ) (! (succHeap Heap@@17 (PolymorphicMapType_3629 (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| Heap@@17) (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| Heap@@17) (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@17) (store (|PolymorphicMapType_3629_3689_9503#PolymorphicMapType_3629| Heap@@17) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3629 (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| Heap@@17) (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| Heap@@17) (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@17) (store (|PolymorphicMapType_3629_3689_9503#PolymorphicMapType_3629| Heap@@17) o f_3 v)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3629) (o@@0 T@Ref) (f_3@@0 T@Field_3689_9636) (v@@0 T@PolymorphicMapType_4178) ) (! (succHeap Heap@@18 (PolymorphicMapType_3629 (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| Heap@@18) (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| Heap@@18) (store (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@18) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3629_3689_9503#PolymorphicMapType_3629| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3629 (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| Heap@@18) (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| Heap@@18) (store (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@18) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3629_3689_9503#PolymorphicMapType_3629| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3629) (o@@1 T@Ref) (f_3@@1 T@Field_3702_3703) (v@@1 T@Ref) ) (! (succHeap Heap@@19 (PolymorphicMapType_3629 (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| Heap@@19) (store (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| Heap@@19) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@19) (|PolymorphicMapType_3629_3689_9503#PolymorphicMapType_3629| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3629 (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| Heap@@19) (store (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| Heap@@19) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@19) (|PolymorphicMapType_3629_3689_9503#PolymorphicMapType_3629| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3629) (o@@2 T@Ref) (f_3@@2 T@Field_3689_53) (v@@2 Bool) ) (! (succHeap Heap@@20 (PolymorphicMapType_3629 (store (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| Heap@@20) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| Heap@@20) (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@20) (|PolymorphicMapType_3629_3689_9503#PolymorphicMapType_3629| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3629 (store (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| Heap@@20) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| Heap@@20) (|PolymorphicMapType_3629_3689_9680#PolymorphicMapType_3629| Heap@@20) (|PolymorphicMapType_3629_3689_9503#PolymorphicMapType_3629| Heap@@20)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_3702_3703) (Heap@@21 T@PolymorphicMapType_3629) ) (!  (=> (select (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| Heap@@21) o@@3 $allocated) (select (|PolymorphicMapType_3629_1891_53#PolymorphicMapType_3629| Heap@@21) (select (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| Heap@@21) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3629_1894_1895#PolymorphicMapType_3629| Heap@@21) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_3689_9503) (v_1@@0 T@FrameType) (q T@Field_3689_9503) (w@@0 T@FrameType) (r T@Field_3689_9503) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3689_3689 p@@1 v_1@@0 q w@@0) (InsidePredicate_3689_3689 q w@@0 r u)) (InsidePredicate_3689_3689 p@@1 v_1@@0 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3689_3689 p@@1 v_1@@0 q w@@0) (InsidePredicate_3689_3689 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |g#definedness|)
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
