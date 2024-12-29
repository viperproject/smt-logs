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
(declare-sort T@Field_6769_53 0)
(declare-sort T@Field_6782_6783 0)
(declare-sort T@Field_6769_18614 0)
(declare-sort T@Field_6769_18481 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6730 0)) (((PolymorphicMapType_6730 (|PolymorphicMapType_6730_6769_53#PolymorphicMapType_6730| (Array T@Ref T@Field_6769_53 Real)) (|PolymorphicMapType_6730_6769_6783#PolymorphicMapType_6730| (Array T@Ref T@Field_6782_6783 Real)) (|PolymorphicMapType_6730_6769_18481#PolymorphicMapType_6730| (Array T@Ref T@Field_6769_18481 Real)) (|PolymorphicMapType_6730_6769_22175#PolymorphicMapType_6730| (Array T@Ref T@Field_6769_18614 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7258 0)) (((PolymorphicMapType_7258 (|PolymorphicMapType_7258_6769_53#PolymorphicMapType_7258| (Array T@Ref T@Field_6769_53 Bool)) (|PolymorphicMapType_7258_6769_6783#PolymorphicMapType_7258| (Array T@Ref T@Field_6782_6783 Bool)) (|PolymorphicMapType_7258_6769_18481#PolymorphicMapType_7258| (Array T@Ref T@Field_6769_18481 Bool)) (|PolymorphicMapType_7258_6769_19594#PolymorphicMapType_7258| (Array T@Ref T@Field_6769_18614 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6709 0)) (((PolymorphicMapType_6709 (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| (Array T@Ref T@Field_6769_53 Bool)) (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| (Array T@Ref T@Field_6782_6783 T@Ref)) (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| (Array T@Ref T@Field_6769_18614 T@PolymorphicMapType_7258)) (|PolymorphicMapType_6709_6769_18481#PolymorphicMapType_6709| (Array T@Ref T@Field_6769_18481 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_6709 T@PolymorphicMapType_6709) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6709 T@PolymorphicMapType_6709) Bool)
(declare-fun state (T@PolymorphicMapType_6709 T@PolymorphicMapType_6730) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6730) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7258)
(declare-fun |f1'| (T@PolymorphicMapType_6709 Int) Int)
(declare-fun dummyFunction_1450 (Int) Bool)
(declare-fun |f1#triggerStateless| (Int) Int)
(declare-fun |f2'| (T@PolymorphicMapType_6709 Int) Int)
(declare-fun |f2#triggerStateless| (Int) Int)
(declare-fun |g'| (T@PolymorphicMapType_6709 Int) Int)
(declare-fun |g#triggerStateless| (Int) Int)
(declare-fun |f1_e'| (T@PolymorphicMapType_6709 Int) Int)
(declare-fun |f1_e#triggerStateless| (Int) Int)
(declare-fun |f2_e'| (T@PolymorphicMapType_6709 Int) Int)
(declare-fun |f2_e#triggerStateless| (Int) Int)
(declare-fun f1_e (T@PolymorphicMapType_6709 Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun g_3 (T@PolymorphicMapType_6709 Int) Int)
(declare-fun f1_3 (T@PolymorphicMapType_6709 Int) Int)
(declare-fun f2_3 (T@PolymorphicMapType_6709 Int) Int)
(declare-fun f2_e (T@PolymorphicMapType_6709 Int) Int)
(declare-fun decreasing_1189 (Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6709 T@PolymorphicMapType_6709 T@PolymorphicMapType_6730) Bool)
(declare-fun IsPredicateField_6769_18572 (T@Field_6769_18481) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6769 (T@Field_6769_18481) T@Field_6769_18614)
(declare-fun HasDirectPerm_6769_18545 (T@PolymorphicMapType_6730 T@Ref T@Field_6769_18481) Bool)
(declare-fun IsWandField_6769_20121 (T@Field_6769_18481) Bool)
(declare-fun WandMaskField_6769 (T@Field_6769_18481) T@Field_6769_18614)
(declare-fun dummyHeap () T@PolymorphicMapType_6709)
(declare-fun ZeroMask () T@PolymorphicMapType_6730)
(declare-fun $allocated () T@Field_6769_53)
(declare-fun InsidePredicate_6769_6769 (T@Field_6769_18481 T@FrameType T@Field_6769_18481 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6769_23084 (T@Field_6769_18614) Bool)
(declare-fun IsWandField_6769_23100 (T@Field_6769_18614) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6769_6783 (T@Field_6782_6783) Bool)
(declare-fun IsWandField_6769_6783 (T@Field_6782_6783) Bool)
(declare-fun IsPredicateField_6769_53 (T@Field_6769_53) Bool)
(declare-fun IsWandField_6769_53 (T@Field_6769_53) Bool)
(declare-fun HasDirectPerm_6769_23455 (T@PolymorphicMapType_6730 T@Ref T@Field_6769_18614) Bool)
(declare-fun HasDirectPerm_6769_6783 (T@PolymorphicMapType_6730 T@Ref T@Field_6782_6783) Bool)
(declare-fun HasDirectPerm_6769_53 (T@PolymorphicMapType_6730 T@Ref T@Field_6769_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6730 T@PolymorphicMapType_6730 T@PolymorphicMapType_6730) Bool)
(declare-fun bounded_1214 (Int) Bool)
(declare-fun |f1#frame| (T@FrameType Int) Int)
(declare-fun |f2#frame| (T@FrameType Int) Int)
(declare-fun |g#frame| (T@FrameType Int) Int)
(declare-fun |f1_e#frame| (T@FrameType Int) Int)
(declare-fun |f2_e#frame| (T@FrameType Int) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_6709) (Heap1 T@PolymorphicMapType_6709) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6709) (Mask T@PolymorphicMapType_6730) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6709) (Heap1@@0 T@PolymorphicMapType_6709) (Heap2 T@PolymorphicMapType_6709) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6769_18614) ) (!  (not (select (|PolymorphicMapType_7258_6769_19594#PolymorphicMapType_7258| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7258_6769_19594#PolymorphicMapType_7258| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6769_18481) ) (!  (not (select (|PolymorphicMapType_7258_6769_18481#PolymorphicMapType_7258| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7258_6769_18481#PolymorphicMapType_7258| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6782_6783) ) (!  (not (select (|PolymorphicMapType_7258_6769_6783#PolymorphicMapType_7258| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7258_6769_6783#PolymorphicMapType_7258| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6769_53) ) (!  (not (select (|PolymorphicMapType_7258_6769_53#PolymorphicMapType_7258| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7258_6769_53#PolymorphicMapType_7258| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6709) (x Int) ) (! (dummyFunction_1450 (|f1#triggerStateless| x))
 :qid |stdinbpl.224:15|
 :skolemid |25|
 :pattern ( (|f1'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6709) (x@@0 Int) ) (! (dummyFunction_1450 (|f2#triggerStateless| x@@0))
 :qid |stdinbpl.300:15|
 :skolemid |29|
 :pattern ( (|f2'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6709) (y Int) ) (! (dummyFunction_1450 (|g#triggerStateless| y))
 :qid |stdinbpl.376:15|
 :skolemid |33|
 :pattern ( (|g'| Heap@@2 y))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6709) (x@@1 Int) ) (! (dummyFunction_1450 (|f1_e#triggerStateless| x@@1))
 :qid |stdinbpl.417:15|
 :skolemid |36|
 :pattern ( (|f1_e'| Heap@@3 x@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6709) (x@@2 Int) ) (! (dummyFunction_1450 (|f2_e#triggerStateless| x@@2))
 :qid |stdinbpl.493:15|
 :skolemid |40|
 :pattern ( (|f2_e'| Heap@@4 x@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6709) (Mask@@0 T@PolymorphicMapType_6730) (x@@3 Int) ) (!  (=> (and (state Heap@@5 Mask@@0) (< AssumeFunctionsAbove 0)) (= (f1_e Heap@@5 x@@3) (ite (= x@@3 0) (g_3 Heap@@5 x@@3) (+ (+ (|f1_e'| Heap@@5 (- x@@3 1)) (|f2_e'| Heap@@5 (- x@@3 1))) (g_3 Heap@@5 x@@3)))))
 :qid |stdinbpl.423:15|
 :skolemid |37|
 :pattern ( (state Heap@@5 Mask@@0) (f1_e Heap@@5 x@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6709) (x@@4 Int) ) (!  (and (= (f1_3 Heap@@6 x@@4) (|f1'| Heap@@6 x@@4)) (dummyFunction_1450 (|f1#triggerStateless| x@@4)))
 :qid |stdinbpl.220:15|
 :skolemid |24|
 :pattern ( (f1_3 Heap@@6 x@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6709) (x@@5 Int) ) (!  (and (= (f2_3 Heap@@7 x@@5) (|f2'| Heap@@7 x@@5)) (dummyFunction_1450 (|f2#triggerStateless| x@@5)))
 :qid |stdinbpl.296:15|
 :skolemid |28|
 :pattern ( (f2_3 Heap@@7 x@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6709) (y@@0 Int) ) (!  (and (= (g_3 Heap@@8 y@@0) (|g'| Heap@@8 y@@0)) (dummyFunction_1450 (|g#triggerStateless| y@@0)))
 :qid |stdinbpl.372:15|
 :skolemid |32|
 :pattern ( (g_3 Heap@@8 y@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6709) (x@@6 Int) ) (!  (and (= (f1_e Heap@@9 x@@6) (|f1_e'| Heap@@9 x@@6)) (dummyFunction_1450 (|f1_e#triggerStateless| x@@6)))
 :qid |stdinbpl.413:15|
 :skolemid |35|
 :pattern ( (f1_e Heap@@9 x@@6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6709) (x@@7 Int) ) (!  (and (= (f2_e Heap@@10 x@@7) (|f2_e'| Heap@@10 x@@7)) (dummyFunction_1450 (|f2_e#triggerStateless| x@@7)))
 :qid |stdinbpl.489:15|
 :skolemid |39|
 :pattern ( (f2_e Heap@@10 x@@7))
)))
(assert (forall ((int1 Int) (int2 Int) ) (!  (=> (< int1 int2) (decreasing_1189 int1 int2))
 :qid |stdinbpl.189:15|
 :skolemid |22|
 :pattern ( (decreasing_1189 int1 int2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6709) (ExhaleHeap T@PolymorphicMapType_6709) (Mask@@1 T@PolymorphicMapType_6730) (pm_f T@Field_6769_18481) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_6769_18545 Mask@@1 null pm_f) (IsPredicateField_6769_18572 pm_f)) (= (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@11) null (PredicateMaskField_6769 pm_f)) (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| ExhaleHeap) null (PredicateMaskField_6769 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap Mask@@1) (IsPredicateField_6769_18572 pm_f) (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| ExhaleHeap) null (PredicateMaskField_6769 pm_f)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6709) (ExhaleHeap@@0 T@PolymorphicMapType_6709) (Mask@@2 T@PolymorphicMapType_6730) (pm_f@@0 T@Field_6769_18481) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_6769_18545 Mask@@2 null pm_f@@0) (IsWandField_6769_20121 pm_f@@0)) (= (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@12) null (WandMaskField_6769 pm_f@@0)) (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| ExhaleHeap@@0) null (WandMaskField_6769 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@0 Mask@@2) (IsWandField_6769_20121 pm_f@@0) (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| ExhaleHeap@@0) null (WandMaskField_6769 pm_f@@0)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6709) (ExhaleHeap@@1 T@PolymorphicMapType_6709) (Mask@@3 T@PolymorphicMapType_6730) (pm_f@@1 T@Field_6769_18481) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_6769_18545 Mask@@3 null pm_f@@1) (IsPredicateField_6769_18572 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6769_53) ) (!  (=> (select (|PolymorphicMapType_7258_6769_53#PolymorphicMapType_7258| (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@13) null (PredicateMaskField_6769 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| Heap@@13) o2 f_2) (select (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6782_6783) ) (!  (=> (select (|PolymorphicMapType_7258_6769_6783#PolymorphicMapType_7258| (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@13) null (PredicateMaskField_6769 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| Heap@@13) o2@@0 f_2@@0) (select (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_6769_18481) ) (!  (=> (select (|PolymorphicMapType_7258_6769_18481#PolymorphicMapType_7258| (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@13) null (PredicateMaskField_6769 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6709_6769_18481#PolymorphicMapType_6709| Heap@@13) o2@@1 f_2@@1) (select (|PolymorphicMapType_6709_6769_18481#PolymorphicMapType_6709| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6709_6769_18481#PolymorphicMapType_6709| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_6769_18614) ) (!  (=> (select (|PolymorphicMapType_7258_6769_19594#PolymorphicMapType_7258| (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@13) null (PredicateMaskField_6769 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@13) o2@@2 f_2@@2) (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@1 Mask@@3) (IsPredicateField_6769_18572 pm_f@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6709) (ExhaleHeap@@2 T@PolymorphicMapType_6709) (Mask@@4 T@PolymorphicMapType_6730) (pm_f@@2 T@Field_6769_18481) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_6769_18545 Mask@@4 null pm_f@@2) (IsWandField_6769_20121 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_6769_53) ) (!  (=> (select (|PolymorphicMapType_7258_6769_53#PolymorphicMapType_7258| (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@14) null (WandMaskField_6769 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| Heap@@14) o2@@3 f_2@@3) (select (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6782_6783) ) (!  (=> (select (|PolymorphicMapType_7258_6769_6783#PolymorphicMapType_7258| (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@14) null (WandMaskField_6769 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| Heap@@14) o2@@4 f_2@@4) (select (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6769_18481) ) (!  (=> (select (|PolymorphicMapType_7258_6769_18481#PolymorphicMapType_7258| (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@14) null (WandMaskField_6769 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6709_6769_18481#PolymorphicMapType_6709| Heap@@14) o2@@5 f_2@@5) (select (|PolymorphicMapType_6709_6769_18481#PolymorphicMapType_6709| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6709_6769_18481#PolymorphicMapType_6709| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_6769_18614) ) (!  (=> (select (|PolymorphicMapType_7258_6769_19594#PolymorphicMapType_7258| (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@14) null (WandMaskField_6769 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@14) o2@@6 f_2@@6) (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@2 Mask@@4) (IsWandField_6769_20121 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6709) (ExhaleHeap@@3 T@PolymorphicMapType_6709) (Mask@@5 T@PolymorphicMapType_6730) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@5) (=> (select (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| Heap@@15) o_1 $allocated) (select (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@5) (select (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_6769_18481) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6769_6769 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6769_6769 p v_1 p w))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6709) (ExhaleHeap@@4 T@PolymorphicMapType_6709) (Mask@@6 T@PolymorphicMapType_6730) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@6) (succHeap Heap@@16 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6730) (o_2@@3 T@Ref) (f_4@@3 T@Field_6769_18614) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6730_6769_22175#PolymorphicMapType_6730| Mask@@7) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6769_23084 f_4@@3))) (not (IsWandField_6769_23100 f_4@@3))) (<= (select (|PolymorphicMapType_6730_6769_22175#PolymorphicMapType_6730| Mask@@7) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6730_6769_22175#PolymorphicMapType_6730| Mask@@7) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6730) (o_2@@4 T@Ref) (f_4@@4 T@Field_6769_18481) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6730_6769_18481#PolymorphicMapType_6730| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6769_18572 f_4@@4))) (not (IsWandField_6769_20121 f_4@@4))) (<= (select (|PolymorphicMapType_6730_6769_18481#PolymorphicMapType_6730| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6730_6769_18481#PolymorphicMapType_6730| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6730) (o_2@@5 T@Ref) (f_4@@5 T@Field_6782_6783) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6730_6769_6783#PolymorphicMapType_6730| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6769_6783 f_4@@5))) (not (IsWandField_6769_6783 f_4@@5))) (<= (select (|PolymorphicMapType_6730_6769_6783#PolymorphicMapType_6730| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6730_6769_6783#PolymorphicMapType_6730| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6730) (o_2@@6 T@Ref) (f_4@@6 T@Field_6769_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6730_6769_53#PolymorphicMapType_6730| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6769_53 f_4@@6))) (not (IsWandField_6769_53 f_4@@6))) (<= (select (|PolymorphicMapType_6730_6769_53#PolymorphicMapType_6730| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6730_6769_53#PolymorphicMapType_6730| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6730) (o_2@@7 T@Ref) (f_4@@7 T@Field_6769_18614) ) (! (= (HasDirectPerm_6769_23455 Mask@@11 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_6730_6769_22175#PolymorphicMapType_6730| Mask@@11) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6769_23455 Mask@@11 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6730) (o_2@@8 T@Ref) (f_4@@8 T@Field_6769_18481) ) (! (= (HasDirectPerm_6769_18545 Mask@@12 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_6730_6769_18481#PolymorphicMapType_6730| Mask@@12) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6769_18545 Mask@@12 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6730) (o_2@@9 T@Ref) (f_4@@9 T@Field_6782_6783) ) (! (= (HasDirectPerm_6769_6783 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6730_6769_6783#PolymorphicMapType_6730| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6769_6783 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6730) (o_2@@10 T@Ref) (f_4@@10 T@Field_6769_53) ) (! (= (HasDirectPerm_6769_53 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6730_6769_53#PolymorphicMapType_6730| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6769_53 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6709) (ExhaleHeap@@5 T@PolymorphicMapType_6709) (Mask@@15 T@PolymorphicMapType_6730) (o_1@@0 T@Ref) (f_2@@7 T@Field_6769_18614) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@15) (=> (HasDirectPerm_6769_23455 Mask@@15 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@17) o_1@@0 f_2@@7) (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@15) (select (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6709) (ExhaleHeap@@6 T@PolymorphicMapType_6709) (Mask@@16 T@PolymorphicMapType_6730) (o_1@@1 T@Ref) (f_2@@8 T@Field_6769_18481) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@16) (=> (HasDirectPerm_6769_18545 Mask@@16 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_6709_6769_18481#PolymorphicMapType_6709| Heap@@18) o_1@@1 f_2@@8) (select (|PolymorphicMapType_6709_6769_18481#PolymorphicMapType_6709| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@16) (select (|PolymorphicMapType_6709_6769_18481#PolymorphicMapType_6709| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6709) (ExhaleHeap@@7 T@PolymorphicMapType_6709) (Mask@@17 T@PolymorphicMapType_6730) (o_1@@2 T@Ref) (f_2@@9 T@Field_6782_6783) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@17) (=> (HasDirectPerm_6769_6783 Mask@@17 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| Heap@@19) o_1@@2 f_2@@9) (select (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@17) (select (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6709) (ExhaleHeap@@8 T@PolymorphicMapType_6709) (Mask@@18 T@PolymorphicMapType_6730) (o_1@@3 T@Ref) (f_2@@10 T@Field_6769_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@18) (=> (HasDirectPerm_6769_53 Mask@@18 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| Heap@@20) o_1@@3 f_2@@10) (select (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@18) (select (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6769_18614) ) (! (= (select (|PolymorphicMapType_6730_6769_22175#PolymorphicMapType_6730| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6730_6769_22175#PolymorphicMapType_6730| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6769_18481) ) (! (= (select (|PolymorphicMapType_6730_6769_18481#PolymorphicMapType_6730| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6730_6769_18481#PolymorphicMapType_6730| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6782_6783) ) (! (= (select (|PolymorphicMapType_6730_6769_6783#PolymorphicMapType_6730| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6730_6769_6783#PolymorphicMapType_6730| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6769_53) ) (! (= (select (|PolymorphicMapType_6730_6769_53#PolymorphicMapType_6730| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6730_6769_53#PolymorphicMapType_6730| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6730) (SummandMask1 T@PolymorphicMapType_6730) (SummandMask2 T@PolymorphicMapType_6730) (o_2@@15 T@Ref) (f_4@@15 T@Field_6769_18614) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6730_6769_22175#PolymorphicMapType_6730| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_6730_6769_22175#PolymorphicMapType_6730| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_6730_6769_22175#PolymorphicMapType_6730| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6730_6769_22175#PolymorphicMapType_6730| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6730_6769_22175#PolymorphicMapType_6730| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6730_6769_22175#PolymorphicMapType_6730| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6730) (SummandMask1@@0 T@PolymorphicMapType_6730) (SummandMask2@@0 T@PolymorphicMapType_6730) (o_2@@16 T@Ref) (f_4@@16 T@Field_6769_18481) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6730_6769_18481#PolymorphicMapType_6730| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_6730_6769_18481#PolymorphicMapType_6730| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_6730_6769_18481#PolymorphicMapType_6730| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6730_6769_18481#PolymorphicMapType_6730| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6730_6769_18481#PolymorphicMapType_6730| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6730_6769_18481#PolymorphicMapType_6730| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6730) (SummandMask1@@1 T@PolymorphicMapType_6730) (SummandMask2@@1 T@PolymorphicMapType_6730) (o_2@@17 T@Ref) (f_4@@17 T@Field_6782_6783) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6730_6769_6783#PolymorphicMapType_6730| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_6730_6769_6783#PolymorphicMapType_6730| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_6730_6769_6783#PolymorphicMapType_6730| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6730_6769_6783#PolymorphicMapType_6730| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6730_6769_6783#PolymorphicMapType_6730| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6730_6769_6783#PolymorphicMapType_6730| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6730) (SummandMask1@@2 T@PolymorphicMapType_6730) (SummandMask2@@2 T@PolymorphicMapType_6730) (o_2@@18 T@Ref) (f_4@@18 T@Field_6769_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6730_6769_53#PolymorphicMapType_6730| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_6730_6769_53#PolymorphicMapType_6730| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_6730_6769_53#PolymorphicMapType_6730| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6730_6769_53#PolymorphicMapType_6730| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6730_6769_53#PolymorphicMapType_6730| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6730_6769_53#PolymorphicMapType_6730| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((int1@@0 Int) ) (!  (=> (>= int1@@0 0) (bounded_1214 int1@@0))
 :qid |stdinbpl.195:15|
 :skolemid |23|
 :pattern ( (bounded_1214 int1@@0))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6709) (Mask@@19 T@PolymorphicMapType_6730) (x@@8 Int) ) (!  (=> (state Heap@@21 Mask@@19) (= (|f1'| Heap@@21 x@@8) (|f1#frame| EmptyFrame x@@8)))
 :qid |stdinbpl.237:15|
 :skolemid |27|
 :pattern ( (state Heap@@21 Mask@@19) (|f1'| Heap@@21 x@@8))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6709) (Mask@@20 T@PolymorphicMapType_6730) (x@@9 Int) ) (!  (=> (state Heap@@22 Mask@@20) (= (|f2'| Heap@@22 x@@9) (|f2#frame| EmptyFrame x@@9)))
 :qid |stdinbpl.313:15|
 :skolemid |31|
 :pattern ( (state Heap@@22 Mask@@20) (|f2'| Heap@@22 x@@9))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6709) (Mask@@21 T@PolymorphicMapType_6730) (y@@1 Int) ) (!  (=> (state Heap@@23 Mask@@21) (= (|g'| Heap@@23 y@@1) (|g#frame| EmptyFrame y@@1)))
 :qid |stdinbpl.383:15|
 :skolemid |34|
 :pattern ( (state Heap@@23 Mask@@21) (|g'| Heap@@23 y@@1))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6709) (Mask@@22 T@PolymorphicMapType_6730) (x@@10 Int) ) (!  (=> (state Heap@@24 Mask@@22) (= (|f1_e'| Heap@@24 x@@10) (|f1_e#frame| EmptyFrame x@@10)))
 :qid |stdinbpl.430:15|
 :skolemid |38|
 :pattern ( (state Heap@@24 Mask@@22) (|f1_e'| Heap@@24 x@@10))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6709) (Mask@@23 T@PolymorphicMapType_6730) (x@@11 Int) ) (!  (=> (state Heap@@25 Mask@@23) (= (|f2_e'| Heap@@25 x@@11) (|f2_e#frame| EmptyFrame x@@11)))
 :qid |stdinbpl.506:15|
 :skolemid |42|
 :pattern ( (state Heap@@25 Mask@@23) (|f2_e'| Heap@@25 x@@11))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6709) (Mask@@24 T@PolymorphicMapType_6730) (x@@12 Int) ) (!  (=> (and (state Heap@@26 Mask@@24) (< AssumeFunctionsAbove 1)) (= (f1_3 Heap@@26 x@@12) (ite (= x@@12 0) (g_3 Heap@@26 x@@12) (+ (+ (|f1'| Heap@@26 (- x@@12 1)) (|f2'| Heap@@26 (- 0 (- x@@12 1)))) (g_3 Heap@@26 x@@12)))))
 :qid |stdinbpl.230:15|
 :skolemid |26|
 :pattern ( (state Heap@@26 Mask@@24) (f1_3 Heap@@26 x@@12))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6709) (Mask@@25 T@PolymorphicMapType_6730) (x@@13 Int) ) (!  (=> (and (state Heap@@27 Mask@@25) (< AssumeFunctionsAbove 0)) (= (f2_e Heap@@27 x@@13) (ite (= x@@13 0) (g_3 Heap@@27 x@@13) (+ (+ (|f2_e'| Heap@@27 (+ x@@13 1)) (|f1_e'| Heap@@27 (- 0 (+ x@@13 1)))) (g_3 Heap@@27 x@@13)))))
 :qid |stdinbpl.499:15|
 :skolemid |41|
 :pattern ( (state Heap@@27 Mask@@25) (f2_e Heap@@27 x@@13))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6709) (Mask@@26 T@PolymorphicMapType_6730) (x@@14 Int) ) (!  (=> (and (state Heap@@28 Mask@@26) (< AssumeFunctionsAbove 1)) (= (f2_3 Heap@@28 x@@14) (ite (= x@@14 0) (g_3 Heap@@28 x@@14) (+ (+ (|f2'| Heap@@28 (+ x@@14 1)) (|f1'| Heap@@28 (- 0 (+ x@@14 1)))) (g_3 Heap@@28 (- 0 x@@14))))))
 :qid |stdinbpl.306:15|
 :skolemid |30|
 :pattern ( (state Heap@@28 Mask@@26) (f2_3 Heap@@28 x@@14))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6709) (o T@Ref) (f_3 T@Field_6769_18481) (v T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_6709 (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| Heap@@29) (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| Heap@@29) (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@29) (store (|PolymorphicMapType_6709_6769_18481#PolymorphicMapType_6709| Heap@@29) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6709 (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| Heap@@29) (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| Heap@@29) (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@29) (store (|PolymorphicMapType_6709_6769_18481#PolymorphicMapType_6709| Heap@@29) o f_3 v)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6709) (o@@0 T@Ref) (f_3@@0 T@Field_6769_18614) (v@@0 T@PolymorphicMapType_7258) ) (! (succHeap Heap@@30 (PolymorphicMapType_6709 (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| Heap@@30) (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| Heap@@30) (store (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@30) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6709_6769_18481#PolymorphicMapType_6709| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6709 (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| Heap@@30) (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| Heap@@30) (store (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@30) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6709_6769_18481#PolymorphicMapType_6709| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6709) (o@@1 T@Ref) (f_3@@1 T@Field_6782_6783) (v@@1 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_6709 (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| Heap@@31) (store (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| Heap@@31) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@31) (|PolymorphicMapType_6709_6769_18481#PolymorphicMapType_6709| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6709 (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| Heap@@31) (store (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| Heap@@31) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@31) (|PolymorphicMapType_6709_6769_18481#PolymorphicMapType_6709| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6709) (o@@2 T@Ref) (f_3@@2 T@Field_6769_53) (v@@2 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_6709 (store (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| Heap@@32) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| Heap@@32) (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@32) (|PolymorphicMapType_6709_6769_18481#PolymorphicMapType_6709| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6709 (store (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| Heap@@32) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| Heap@@32) (|PolymorphicMapType_6709_6769_18658#PolymorphicMapType_6709| Heap@@32) (|PolymorphicMapType_6709_6769_18481#PolymorphicMapType_6709| Heap@@32)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_6782_6783) (Heap@@33 T@PolymorphicMapType_6709) ) (!  (=> (select (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| Heap@@33) o@@3 $allocated) (select (|PolymorphicMapType_6709_3757_53#PolymorphicMapType_6709| Heap@@33) (select (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| Heap@@33) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6709_3760_3761#PolymorphicMapType_6709| Heap@@33) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_6769_18481) (v_1@@0 T@FrameType) (q T@Field_6769_18481) (w@@0 T@FrameType) (r T@Field_6769_18481) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6769_6769 p@@1 v_1@@0 q w@@0) (InsidePredicate_6769_6769 q w@@0 r u)) (InsidePredicate_6769_6769 p@@1 v_1@@0 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6769_6769 p@@1 v_1@@0 q w@@0) (InsidePredicate_6769_6769 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |f2_e#definedness|)
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
 (=> (= (ControlFlow 0 0) 10) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
