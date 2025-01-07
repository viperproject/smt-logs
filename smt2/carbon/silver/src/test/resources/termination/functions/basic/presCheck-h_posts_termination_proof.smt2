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
(declare-sort T@Field_6344_53 0)
(declare-sort T@Field_6357_6358 0)
(declare-sort T@Field_6344_17201 0)
(declare-sort T@Field_6344_17068 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6305 0)) (((PolymorphicMapType_6305 (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| (Array T@Ref T@Field_6344_53 Real)) (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| (Array T@Ref T@Field_6357_6358 Real)) (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| (Array T@Ref T@Field_6344_17068 Real)) (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| (Array T@Ref T@Field_6344_17201 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6833 0)) (((PolymorphicMapType_6833 (|PolymorphicMapType_6833_6344_53#PolymorphicMapType_6833| (Array T@Ref T@Field_6344_53 Bool)) (|PolymorphicMapType_6833_6344_6358#PolymorphicMapType_6833| (Array T@Ref T@Field_6357_6358 Bool)) (|PolymorphicMapType_6833_6344_17068#PolymorphicMapType_6833| (Array T@Ref T@Field_6344_17068 Bool)) (|PolymorphicMapType_6833_6344_18181#PolymorphicMapType_6833| (Array T@Ref T@Field_6344_17201 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6284 0)) (((PolymorphicMapType_6284 (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| (Array T@Ref T@Field_6344_53 Bool)) (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| (Array T@Ref T@Field_6357_6358 T@Ref)) (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| (Array T@Ref T@Field_6344_17201 T@PolymorphicMapType_6833)) (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| (Array T@Ref T@Field_6344_17068 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_6284 T@PolymorphicMapType_6284) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6284 T@PolymorphicMapType_6284) Bool)
(declare-fun state (T@PolymorphicMapType_6284 T@PolymorphicMapType_6305) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6305) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6833)
(declare-fun |f'| (T@PolymorphicMapType_6284 Int) Int)
(declare-fun dummyFunction_1467 (Int) Bool)
(declare-fun |f#triggerStateless| (Int) Int)
(declare-fun |f1'| (T@PolymorphicMapType_6284 Int) Int)
(declare-fun |f1#triggerStateless| (Int) Int)
(declare-fun |h'| (T@PolymorphicMapType_6284 Int) Int)
(declare-fun |h#triggerStateless| (Int) Int)
(declare-fun |h_e'| (T@PolymorphicMapType_6284 Int) Int)
(declare-fun |h_e#triggerStateless| (Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |f#trigger| (T@FrameType Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |f1#trigger| (T@FrameType Int) Bool)
(declare-fun f_6 (T@PolymorphicMapType_6284 Int) Int)
(declare-fun f1_3 (T@PolymorphicMapType_6284 Int) Int)
(declare-fun h_3 (T@PolymorphicMapType_6284 Int) Int)
(declare-fun h_e (T@PolymorphicMapType_6284 Int) Int)
(declare-fun decreasing_1189 (Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6284 T@PolymorphicMapType_6284 T@PolymorphicMapType_6305) Bool)
(declare-fun IsPredicateField_6344_17159 (T@Field_6344_17068) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6344 (T@Field_6344_17068) T@Field_6344_17201)
(declare-fun HasDirectPerm_6344_17132 (T@PolymorphicMapType_6305 T@Ref T@Field_6344_17068) Bool)
(declare-fun IsWandField_6344_18708 (T@Field_6344_17068) Bool)
(declare-fun WandMaskField_6344 (T@Field_6344_17068) T@Field_6344_17201)
(declare-fun dummyHeap () T@PolymorphicMapType_6284)
(declare-fun ZeroMask () T@PolymorphicMapType_6305)
(declare-fun $allocated () T@Field_6344_53)
(declare-fun InsidePredicate_6344_6344 (T@Field_6344_17068 T@FrameType T@Field_6344_17068 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6344_21671 (T@Field_6344_17201) Bool)
(declare-fun IsWandField_6344_21687 (T@Field_6344_17201) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6344_6358 (T@Field_6357_6358) Bool)
(declare-fun IsWandField_6344_6358 (T@Field_6357_6358) Bool)
(declare-fun IsPredicateField_6344_53 (T@Field_6344_53) Bool)
(declare-fun IsWandField_6344_53 (T@Field_6344_53) Bool)
(declare-fun HasDirectPerm_6344_22042 (T@PolymorphicMapType_6305 T@Ref T@Field_6344_17201) Bool)
(declare-fun HasDirectPerm_6344_6358 (T@PolymorphicMapType_6305 T@Ref T@Field_6357_6358) Bool)
(declare-fun HasDirectPerm_6344_53 (T@PolymorphicMapType_6305 T@Ref T@Field_6344_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6305 T@PolymorphicMapType_6305 T@PolymorphicMapType_6305) Bool)
(declare-fun bounded_1214 (Int) Bool)
(declare-fun |f#frame| (T@FrameType Int) Int)
(declare-fun |f1#frame| (T@FrameType Int) Int)
(declare-fun |h#frame| (T@FrameType Int) Int)
(declare-fun |h_e#frame| (T@FrameType Int) Int)
(declare-fun |h#trigger_1| (T@FrameType Int) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6284) (Heap1 T@PolymorphicMapType_6284) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6284) (Mask T@PolymorphicMapType_6305) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6284) (Heap1@@0 T@PolymorphicMapType_6284) (Heap2 T@PolymorphicMapType_6284) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6344_17201) ) (!  (not (select (|PolymorphicMapType_6833_6344_18181#PolymorphicMapType_6833| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6833_6344_18181#PolymorphicMapType_6833| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6344_17068) ) (!  (not (select (|PolymorphicMapType_6833_6344_17068#PolymorphicMapType_6833| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6833_6344_17068#PolymorphicMapType_6833| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6357_6358) ) (!  (not (select (|PolymorphicMapType_6833_6344_6358#PolymorphicMapType_6833| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6833_6344_6358#PolymorphicMapType_6833| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6344_53) ) (!  (not (select (|PolymorphicMapType_6833_6344_53#PolymorphicMapType_6833| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6833_6344_53#PolymorphicMapType_6833| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6284) (x Int) ) (! (dummyFunction_1467 (|f#triggerStateless| x))
 :qid |stdinbpl.225:15|
 :skolemid |25|
 :pattern ( (|f'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6284) (x@@0 Int) ) (! (dummyFunction_1467 (|f1#triggerStateless| x@@0))
 :qid |stdinbpl.300:15|
 :skolemid |30|
 :pattern ( (|f1'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6284) (x@@1 Int) ) (! (dummyFunction_1467 (|h#triggerStateless| x@@1))
 :qid |stdinbpl.375:15|
 :skolemid |35|
 :pattern ( (|h'| Heap@@2 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6284) (x@@2 Int) ) (! (dummyFunction_1467 (|h_e#triggerStateless| x@@2))
 :qid |stdinbpl.506:15|
 :skolemid |41|
 :pattern ( (|h_e'| Heap@@3 x@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6284) (Mask@@0 T@PolymorphicMapType_6305) (x@@3 Int) ) (!  (=> (and (state Heap@@4 Mask@@0) (or (< AssumeFunctionsAbove 2) (|f#trigger| EmptyFrame x@@3))) (= (|f'| Heap@@4 x@@3) x@@3))
 :qid |stdinbpl.244:15|
 :skolemid |28|
 :pattern ( (state Heap@@4 Mask@@0) (|f'| Heap@@4 x@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6284) (Mask@@1 T@PolymorphicMapType_6305) (x@@4 Int) ) (!  (=> (and (state Heap@@5 Mask@@1) (or (< AssumeFunctionsAbove 3) (|f1#trigger| EmptyFrame x@@4))) (= (|f1'| Heap@@5 x@@4) x@@4))
 :qid |stdinbpl.319:15|
 :skolemid |33|
 :pattern ( (state Heap@@5 Mask@@1) (|f1'| Heap@@5 x@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6284) (x@@5 Int) ) (!  (and (= (f_6 Heap@@6 x@@5) (|f'| Heap@@6 x@@5)) (dummyFunction_1467 (|f#triggerStateless| x@@5)))
 :qid |stdinbpl.221:15|
 :skolemid |24|
 :pattern ( (f_6 Heap@@6 x@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6284) (x@@6 Int) ) (!  (and (= (f1_3 Heap@@7 x@@6) (|f1'| Heap@@7 x@@6)) (dummyFunction_1467 (|f1#triggerStateless| x@@6)))
 :qid |stdinbpl.296:15|
 :skolemid |29|
 :pattern ( (f1_3 Heap@@7 x@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6284) (x@@7 Int) ) (!  (and (= (h_3 Heap@@8 x@@7) (|h'| Heap@@8 x@@7)) (dummyFunction_1467 (|h#triggerStateless| x@@7)))
 :qid |stdinbpl.371:15|
 :skolemid |34|
 :pattern ( (h_3 Heap@@8 x@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6284) (x@@8 Int) ) (!  (and (= (h_e Heap@@9 x@@8) (|h_e'| Heap@@9 x@@8)) (dummyFunction_1467 (|h_e#triggerStateless| x@@8)))
 :qid |stdinbpl.502:15|
 :skolemid |40|
 :pattern ( (h_e Heap@@9 x@@8))
)))
(assert (forall ((int1 Int) (int2 Int) ) (!  (=> (< int1 int2) (decreasing_1189 int1 int2))
 :qid |stdinbpl.190:15|
 :skolemid |22|
 :pattern ( (decreasing_1189 int1 int2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6284) (ExhaleHeap T@PolymorphicMapType_6284) (Mask@@2 T@PolymorphicMapType_6305) (pm_f T@Field_6344_17068) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_6344_17132 Mask@@2 null pm_f) (IsPredicateField_6344_17159 pm_f)) (= (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@10) null (PredicateMaskField_6344 pm_f)) (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap) null (PredicateMaskField_6344 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@2) (IsPredicateField_6344_17159 pm_f) (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap) null (PredicateMaskField_6344 pm_f)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6284) (ExhaleHeap@@0 T@PolymorphicMapType_6284) (Mask@@3 T@PolymorphicMapType_6305) (pm_f@@0 T@Field_6344_17068) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_6344_17132 Mask@@3 null pm_f@@0) (IsWandField_6344_18708 pm_f@@0)) (= (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@11) null (WandMaskField_6344 pm_f@@0)) (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap@@0) null (WandMaskField_6344 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@3) (IsWandField_6344_18708 pm_f@@0) (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap@@0) null (WandMaskField_6344 pm_f@@0)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6284) (Mask@@4 T@PolymorphicMapType_6305) (x@@9 Int) ) (!  (=> (and (state Heap@@12 Mask@@4) (< AssumeFunctionsAbove 1)) (=> (= (f1_3 Heap@@12 x@@9) x@@9) (= (h_e Heap@@12 x@@9) (ite (<= x@@9 0) 0 (+ 1 (|h_e'| Heap@@12 (- x@@9 1)))))))
 :qid |stdinbpl.512:15|
 :skolemid |42|
 :pattern ( (state Heap@@12 Mask@@4) (h_e Heap@@12 x@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6284) (ExhaleHeap@@1 T@PolymorphicMapType_6284) (Mask@@5 T@PolymorphicMapType_6305) (pm_f@@1 T@Field_6344_17068) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@1 Mask@@5) (=> (and (HasDirectPerm_6344_17132 Mask@@5 null pm_f@@1) (IsPredicateField_6344_17159 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6344_53) ) (!  (=> (select (|PolymorphicMapType_6833_6344_53#PolymorphicMapType_6833| (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@13) null (PredicateMaskField_6344 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@13) o2 f_2) (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6357_6358) ) (!  (=> (select (|PolymorphicMapType_6833_6344_6358#PolymorphicMapType_6833| (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@13) null (PredicateMaskField_6344 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@13) o2@@0 f_2@@0) (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_6344_17068) ) (!  (=> (select (|PolymorphicMapType_6833_6344_17068#PolymorphicMapType_6833| (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@13) null (PredicateMaskField_6344 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@13) o2@@1 f_2@@1) (select (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_6344_17201) ) (!  (=> (select (|PolymorphicMapType_6833_6344_18181#PolymorphicMapType_6833| (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@13) null (PredicateMaskField_6344 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@13) o2@@2 f_2@@2) (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@1 Mask@@5) (IsPredicateField_6344_17159 pm_f@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6284) (ExhaleHeap@@2 T@PolymorphicMapType_6284) (Mask@@6 T@PolymorphicMapType_6305) (pm_f@@2 T@Field_6344_17068) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@2 Mask@@6) (=> (and (HasDirectPerm_6344_17132 Mask@@6 null pm_f@@2) (IsWandField_6344_18708 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_6344_53) ) (!  (=> (select (|PolymorphicMapType_6833_6344_53#PolymorphicMapType_6833| (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@14) null (WandMaskField_6344 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@14) o2@@3 f_2@@3) (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6357_6358) ) (!  (=> (select (|PolymorphicMapType_6833_6344_6358#PolymorphicMapType_6833| (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@14) null (WandMaskField_6344 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@14) o2@@4 f_2@@4) (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6344_17068) ) (!  (=> (select (|PolymorphicMapType_6833_6344_17068#PolymorphicMapType_6833| (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@14) null (WandMaskField_6344 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@14) o2@@5 f_2@@5) (select (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_6344_17201) ) (!  (=> (select (|PolymorphicMapType_6833_6344_18181#PolymorphicMapType_6833| (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@14) null (WandMaskField_6344 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@14) o2@@6 f_2@@6) (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@2 Mask@@6) (IsWandField_6344_18708 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6284) (ExhaleHeap@@3 T@PolymorphicMapType_6284) (Mask@@7 T@PolymorphicMapType_6305) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@7) (=> (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@15) o_1 $allocated) (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@7) (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_6344_17068) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6344_6344 p v_1 p w))
 :qid |stdinbpl.177:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6344_6344 p v_1 p w))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6284) (ExhaleHeap@@4 T@PolymorphicMapType_6284) (Mask@@8 T@PolymorphicMapType_6305) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@8) (succHeap Heap@@16 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6305) (o_2@@3 T@Ref) (f_4@@3 T@Field_6344_17201) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| Mask@@9) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6344_21671 f_4@@3))) (not (IsWandField_6344_21687 f_4@@3))) (<= (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| Mask@@9) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| Mask@@9) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6305) (o_2@@4 T@Ref) (f_4@@4 T@Field_6344_17068) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| Mask@@10) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6344_17159 f_4@@4))) (not (IsWandField_6344_18708 f_4@@4))) (<= (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| Mask@@10) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| Mask@@10) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6305) (o_2@@5 T@Ref) (f_4@@5 T@Field_6357_6358) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| Mask@@11) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6344_6358 f_4@@5))) (not (IsWandField_6344_6358 f_4@@5))) (<= (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| Mask@@11) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| Mask@@11) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6305) (o_2@@6 T@Ref) (f_4@@6 T@Field_6344_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| Mask@@12) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6344_53 f_4@@6))) (not (IsWandField_6344_53 f_4@@6))) (<= (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| Mask@@12) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| Mask@@12) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6305) (o_2@@7 T@Ref) (f_4@@7 T@Field_6344_17201) ) (! (= (HasDirectPerm_6344_22042 Mask@@13 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| Mask@@13) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6344_22042 Mask@@13 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6305) (o_2@@8 T@Ref) (f_4@@8 T@Field_6344_17068) ) (! (= (HasDirectPerm_6344_17132 Mask@@14 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| Mask@@14) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6344_17132 Mask@@14 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6305) (o_2@@9 T@Ref) (f_4@@9 T@Field_6357_6358) ) (! (= (HasDirectPerm_6344_6358 Mask@@15 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| Mask@@15) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6344_6358 Mask@@15 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6305) (o_2@@10 T@Ref) (f_4@@10 T@Field_6344_53) ) (! (= (HasDirectPerm_6344_53 Mask@@16 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| Mask@@16) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6344_53 Mask@@16 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6@@0 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6@@0) (ite (> p@@0 0.0) f_6@@0 EmptyFrame))
 :qid |stdinbpl.165:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6@@0))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6284) (ExhaleHeap@@5 T@PolymorphicMapType_6284) (Mask@@17 T@PolymorphicMapType_6305) (o_1@@0 T@Ref) (f_2@@7 T@Field_6344_17201) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_6344_22042 Mask@@17 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@17) o_1@@0 f_2@@7) (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6284) (ExhaleHeap@@6 T@PolymorphicMapType_6284) (Mask@@18 T@PolymorphicMapType_6305) (o_1@@1 T@Ref) (f_2@@8 T@Field_6344_17068) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_6344_17132 Mask@@18 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@18) o_1@@1 f_2@@8) (select (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6284) (ExhaleHeap@@7 T@PolymorphicMapType_6284) (Mask@@19 T@PolymorphicMapType_6305) (o_1@@2 T@Ref) (f_2@@9 T@Field_6357_6358) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_6344_6358 Mask@@19 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@19) o_1@@2 f_2@@9) (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6284) (ExhaleHeap@@8 T@PolymorphicMapType_6284) (Mask@@20 T@PolymorphicMapType_6305) (o_1@@3 T@Ref) (f_2@@10 T@Field_6344_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_6344_53 Mask@@20 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@20) o_1@@3 f_2@@10) (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6344_17201) ) (! (= (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6344_17068) ) (! (= (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6357_6358) ) (! (= (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6344_53) ) (! (= (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6305) (SummandMask1 T@PolymorphicMapType_6305) (SummandMask2 T@PolymorphicMapType_6305) (o_2@@15 T@Ref) (f_4@@15 T@Field_6344_17201) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6305) (SummandMask1@@0 T@PolymorphicMapType_6305) (SummandMask2@@0 T@PolymorphicMapType_6305) (o_2@@16 T@Ref) (f_4@@16 T@Field_6344_17068) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6305) (SummandMask1@@1 T@PolymorphicMapType_6305) (SummandMask2@@1 T@PolymorphicMapType_6305) (o_2@@17 T@Ref) (f_4@@17 T@Field_6357_6358) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6305) (SummandMask1@@2 T@PolymorphicMapType_6305) (SummandMask2@@2 T@PolymorphicMapType_6305) (o_2@@18 T@Ref) (f_4@@18 T@Field_6344_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((int1@@0 Int) ) (!  (=> (>= int1@@0 0) (bounded_1214 int1@@0))
 :qid |stdinbpl.196:15|
 :skolemid |23|
 :pattern ( (bounded_1214 int1@@0))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6284) (Mask@@21 T@PolymorphicMapType_6305) (x@@10 Int) ) (!  (=> (state Heap@@21 Mask@@21) (= (|f'| Heap@@21 x@@10) (|f#frame| EmptyFrame x@@10)))
 :qid |stdinbpl.238:15|
 :skolemid |27|
 :pattern ( (state Heap@@21 Mask@@21) (|f'| Heap@@21 x@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6284) (Mask@@22 T@PolymorphicMapType_6305) (x@@11 Int) ) (!  (=> (state Heap@@22 Mask@@22) (= (|f1'| Heap@@22 x@@11) (|f1#frame| EmptyFrame x@@11)))
 :qid |stdinbpl.313:15|
 :skolemid |32|
 :pattern ( (state Heap@@22 Mask@@22) (|f1'| Heap@@22 x@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6284) (Mask@@23 T@PolymorphicMapType_6305) (x@@12 Int) ) (!  (=> (state Heap@@23 Mask@@23) (= (|h'| Heap@@23 x@@12) (|h#frame| EmptyFrame x@@12)))
 :qid |stdinbpl.388:15|
 :skolemid |37|
 :pattern ( (state Heap@@23 Mask@@23) (|h'| Heap@@23 x@@12))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6284) (Mask@@24 T@PolymorphicMapType_6305) (x@@13 Int) ) (!  (=> (state Heap@@24 Mask@@24) (= (|h_e'| Heap@@24 x@@13) (|h_e#frame| EmptyFrame x@@13)))
 :qid |stdinbpl.519:15|
 :skolemid |43|
 :pattern ( (state Heap@@24 Mask@@24) (|h_e'| Heap@@24 x@@13))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6284) (o T@Ref) (f_3 T@Field_6344_17068) (v T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_6284 (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@25) (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@25) (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@25) (store (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@25) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6284 (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@25) (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@25) (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@25) (store (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@25) o f_3 v)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6284) (o@@0 T@Ref) (f_3@@0 T@Field_6344_17201) (v@@0 T@PolymorphicMapType_6833) ) (! (succHeap Heap@@26 (PolymorphicMapType_6284 (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@26) (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@26) (store (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@26) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6284 (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@26) (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@26) (store (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@26) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6284) (o@@1 T@Ref) (f_3@@1 T@Field_6357_6358) (v@@1 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_6284 (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@27) (store (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@27) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@27) (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6284 (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@27) (store (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@27) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@27) (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6284) (o@@2 T@Ref) (f_3@@2 T@Field_6344_53) (v@@2 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_6284 (store (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@28) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@28) (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@28) (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6284 (store (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@28) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@28) (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@28) (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@28)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_6357_6358) (Heap@@29 T@PolymorphicMapType_6284) ) (!  (=> (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@29) o@@3 $allocated) (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@29) (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@29) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@29) o@@3 f))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6284) (Mask@@25 T@PolymorphicMapType_6305) (x@@14 Int) ) (!  (=> (and (state Heap@@30 Mask@@25) (or (< AssumeFunctionsAbove 0) (|h#trigger_1| EmptyFrame x@@14))) (=> (and (= (f_6 Heap@@30 x@@14) 0) (= (f1_3 Heap@@30 x@@14) 0)) (= (|h'| Heap@@30 x@@14) x@@14)))
 :qid |stdinbpl.394:15|
 :skolemid |38|
 :pattern ( (state Heap@@30 Mask@@25) (|h'| Heap@@30 x@@14))
)))
(assert (forall ((p@@1 T@Field_6344_17068) (v_1@@0 T@FrameType) (q T@Field_6344_17068) (w@@0 T@FrameType) (r T@Field_6344_17068) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6344_6344 p@@1 v_1@@0 q w@@0) (InsidePredicate_6344_6344 q w@@0 r u)) (InsidePredicate_6344_6344 p@@1 v_1@@0 r u))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6344_6344 p@@1 v_1@@0 q w@@0) (InsidePredicate_6344_6344 q w@@0 r u))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6284) (Mask@@26 T@PolymorphicMapType_6305) (x@@15 Int) ) (!  (=> (and (state Heap@@31 Mask@@26) (or (< AssumeFunctionsAbove 0) (|h#trigger_1| EmptyFrame x@@15))) (=> (and (= (f_6 Heap@@31 x@@15) 0) (= (f1_3 Heap@@31 x@@15) 0)) (=> (> (|h'| Heap@@31 x@@15) 0) (= (|h'| Heap@@31 x@@15) (+ (|h'| Heap@@31 (- (|h'| Heap@@31 x@@15) 1)) 1)))))
 :qid |stdinbpl.398:15|
 :skolemid |39|
 :pattern ( (state Heap@@31 Mask@@26) (|h'| Heap@@31 x@@15))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6284) (Mask@@27 T@PolymorphicMapType_6305) (x@@16 Int) ) (!  (=> (and (state Heap@@32 Mask@@27) (< AssumeFunctionsAbove 0)) (=> (and (= (f_6 Heap@@32 x@@16) 0) (= (f1_3 Heap@@32 x@@16) 0)) (= (h_3 Heap@@32 x@@16) (ite (= x@@16 0) 0 (+ 1 (|h'| Heap@@32 (- x@@16 1)))))))
 :qid |stdinbpl.381:15|
 :skolemid |36|
 :pattern ( (state Heap@@32 Mask@@27) (h_3 Heap@@32 x@@16))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6284) (Mask@@28 T@PolymorphicMapType_6305) (x@@17 Int) ) (!  (=> (and (state Heap@@33 Mask@@28) (< AssumeFunctionsAbove 2)) (= (f_6 Heap@@33 x@@17) (|f'| Heap@@33 x@@17)))
 :qid |stdinbpl.231:15|
 :skolemid |26|
 :pattern ( (state Heap@@33 Mask@@28) (f_6 Heap@@33 x@@17))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6284) (Mask@@29 T@PolymorphicMapType_6305) (x@@18 Int) ) (!  (=> (and (state Heap@@34 Mask@@29) (< AssumeFunctionsAbove 3)) (= (f1_3 Heap@@34 x@@18) (|f1'| Heap@@34 x@@18)))
 :qid |stdinbpl.306:15|
 :skolemid |31|
 :pattern ( (state Heap@@34 Mask@@29) (f1_3 Heap@@34 x@@18))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@35 () T@PolymorphicMapType_6284)
(declare-fun $result () Int)
(declare-fun x@@19 () Int)
(set-info :boogie-vc-id h_posts_termination_proof)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon8_correct true))
(let ((anon7_correct  (=> (and (state Heap@@35 ZeroMask) (= (ControlFlow 0 5) 3)) anon8_correct)))
(let ((anon12_Else_correct  (=> (and (>= 0 $result) (= (ControlFlow 0 9) 5)) anon7_correct)))
(let ((anon12_Then_correct  (=> (> $result 0) (and (=> (= (ControlFlow 0 6) (- 0 8)) (decreasing_1189 (- $result 1) x@@19)) (=> (decreasing_1189 (- $result 1) x@@19) (and (=> (= (ControlFlow 0 6) (- 0 7)) (bounded_1214 x@@19)) (=> (bounded_1214 x@@19) (=> (and (state Heap@@35 ZeroMask) (= (ControlFlow 0 6) 5)) anon7_correct))))))))
(let ((anon11_Then_correct  (=> (= $result x@@19) (and (=> (= (ControlFlow 0 10) 6) anon12_Then_correct) (=> (= (ControlFlow 0 10) 9) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (and (not (= $result x@@19)) (= (ControlFlow 0 4) 3)) anon8_correct)))
(let ((anon10_Else_correct  (=> (and (= (f1_3 Heap@@35 x@@19) 0) (state Heap@@35 ZeroMask)) (and (=> (= (ControlFlow 0 11) 10) anon11_Then_correct) (=> (= (ControlFlow 0 11) 4) anon11_Else_correct)))))
(let ((anon10_Then_correct true))
(let ((anon9_Else_correct  (=> (= (f_6 Heap@@35 x@@19) 0) (=> (and (state Heap@@35 ZeroMask) (state Heap@@35 ZeroMask)) (and (=> (= (ControlFlow 0 12) 2) anon10_Then_correct) (=> (= (ControlFlow 0 12) 11) anon10_Else_correct))))))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@35 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (state Heap@@35 ZeroMask))) (and (=> (= (ControlFlow 0 13) 1) anon9_Then_correct) (=> (= (ControlFlow 0 13) 12) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 14) 13) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
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
(declare-sort T@Field_6344_53 0)
(declare-sort T@Field_6357_6358 0)
(declare-sort T@Field_6344_17201 0)
(declare-sort T@Field_6344_17068 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6305 0)) (((PolymorphicMapType_6305 (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| (Array T@Ref T@Field_6344_53 Real)) (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| (Array T@Ref T@Field_6357_6358 Real)) (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| (Array T@Ref T@Field_6344_17068 Real)) (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| (Array T@Ref T@Field_6344_17201 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6833 0)) (((PolymorphicMapType_6833 (|PolymorphicMapType_6833_6344_53#PolymorphicMapType_6833| (Array T@Ref T@Field_6344_53 Bool)) (|PolymorphicMapType_6833_6344_6358#PolymorphicMapType_6833| (Array T@Ref T@Field_6357_6358 Bool)) (|PolymorphicMapType_6833_6344_17068#PolymorphicMapType_6833| (Array T@Ref T@Field_6344_17068 Bool)) (|PolymorphicMapType_6833_6344_18181#PolymorphicMapType_6833| (Array T@Ref T@Field_6344_17201 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6284 0)) (((PolymorphicMapType_6284 (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| (Array T@Ref T@Field_6344_53 Bool)) (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| (Array T@Ref T@Field_6357_6358 T@Ref)) (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| (Array T@Ref T@Field_6344_17201 T@PolymorphicMapType_6833)) (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| (Array T@Ref T@Field_6344_17068 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_6284 T@PolymorphicMapType_6284) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6284 T@PolymorphicMapType_6284) Bool)
(declare-fun state (T@PolymorphicMapType_6284 T@PolymorphicMapType_6305) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6305) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6833)
(declare-fun |f'| (T@PolymorphicMapType_6284 Int) Int)
(declare-fun dummyFunction_1467 (Int) Bool)
(declare-fun |f#triggerStateless| (Int) Int)
(declare-fun |f1'| (T@PolymorphicMapType_6284 Int) Int)
(declare-fun |f1#triggerStateless| (Int) Int)
(declare-fun |h'| (T@PolymorphicMapType_6284 Int) Int)
(declare-fun |h#triggerStateless| (Int) Int)
(declare-fun |h_e'| (T@PolymorphicMapType_6284 Int) Int)
(declare-fun |h_e#triggerStateless| (Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |f#trigger| (T@FrameType Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |f1#trigger| (T@FrameType Int) Bool)
(declare-fun f_6 (T@PolymorphicMapType_6284 Int) Int)
(declare-fun f1_3 (T@PolymorphicMapType_6284 Int) Int)
(declare-fun h_3 (T@PolymorphicMapType_6284 Int) Int)
(declare-fun h_e (T@PolymorphicMapType_6284 Int) Int)
(declare-fun decreasing_1189 (Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6284 T@PolymorphicMapType_6284 T@PolymorphicMapType_6305) Bool)
(declare-fun IsPredicateField_6344_17159 (T@Field_6344_17068) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6344 (T@Field_6344_17068) T@Field_6344_17201)
(declare-fun HasDirectPerm_6344_17132 (T@PolymorphicMapType_6305 T@Ref T@Field_6344_17068) Bool)
(declare-fun IsWandField_6344_18708 (T@Field_6344_17068) Bool)
(declare-fun WandMaskField_6344 (T@Field_6344_17068) T@Field_6344_17201)
(declare-fun dummyHeap () T@PolymorphicMapType_6284)
(declare-fun ZeroMask () T@PolymorphicMapType_6305)
(declare-fun $allocated () T@Field_6344_53)
(declare-fun InsidePredicate_6344_6344 (T@Field_6344_17068 T@FrameType T@Field_6344_17068 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6344_21671 (T@Field_6344_17201) Bool)
(declare-fun IsWandField_6344_21687 (T@Field_6344_17201) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6344_6358 (T@Field_6357_6358) Bool)
(declare-fun IsWandField_6344_6358 (T@Field_6357_6358) Bool)
(declare-fun IsPredicateField_6344_53 (T@Field_6344_53) Bool)
(declare-fun IsWandField_6344_53 (T@Field_6344_53) Bool)
(declare-fun HasDirectPerm_6344_22042 (T@PolymorphicMapType_6305 T@Ref T@Field_6344_17201) Bool)
(declare-fun HasDirectPerm_6344_6358 (T@PolymorphicMapType_6305 T@Ref T@Field_6357_6358) Bool)
(declare-fun HasDirectPerm_6344_53 (T@PolymorphicMapType_6305 T@Ref T@Field_6344_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6305 T@PolymorphicMapType_6305 T@PolymorphicMapType_6305) Bool)
(declare-fun bounded_1214 (Int) Bool)
(declare-fun |f#frame| (T@FrameType Int) Int)
(declare-fun |f1#frame| (T@FrameType Int) Int)
(declare-fun |h#frame| (T@FrameType Int) Int)
(declare-fun |h_e#frame| (T@FrameType Int) Int)
(declare-fun |h#trigger_1| (T@FrameType Int) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6284) (Heap1 T@PolymorphicMapType_6284) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6284) (Mask T@PolymorphicMapType_6305) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6284) (Heap1@@0 T@PolymorphicMapType_6284) (Heap2 T@PolymorphicMapType_6284) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6344_17201) ) (!  (not (select (|PolymorphicMapType_6833_6344_18181#PolymorphicMapType_6833| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6833_6344_18181#PolymorphicMapType_6833| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6344_17068) ) (!  (not (select (|PolymorphicMapType_6833_6344_17068#PolymorphicMapType_6833| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6833_6344_17068#PolymorphicMapType_6833| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6357_6358) ) (!  (not (select (|PolymorphicMapType_6833_6344_6358#PolymorphicMapType_6833| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6833_6344_6358#PolymorphicMapType_6833| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6344_53) ) (!  (not (select (|PolymorphicMapType_6833_6344_53#PolymorphicMapType_6833| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6833_6344_53#PolymorphicMapType_6833| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6284) (x Int) ) (! (dummyFunction_1467 (|f#triggerStateless| x))
 :qid |stdinbpl.225:15|
 :skolemid |25|
 :pattern ( (|f'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6284) (x@@0 Int) ) (! (dummyFunction_1467 (|f1#triggerStateless| x@@0))
 :qid |stdinbpl.300:15|
 :skolemid |30|
 :pattern ( (|f1'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6284) (x@@1 Int) ) (! (dummyFunction_1467 (|h#triggerStateless| x@@1))
 :qid |stdinbpl.375:15|
 :skolemid |35|
 :pattern ( (|h'| Heap@@2 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6284) (x@@2 Int) ) (! (dummyFunction_1467 (|h_e#triggerStateless| x@@2))
 :qid |stdinbpl.506:15|
 :skolemid |41|
 :pattern ( (|h_e'| Heap@@3 x@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6284) (Mask@@0 T@PolymorphicMapType_6305) (x@@3 Int) ) (!  (=> (and (state Heap@@4 Mask@@0) (or (< AssumeFunctionsAbove 2) (|f#trigger| EmptyFrame x@@3))) (= (|f'| Heap@@4 x@@3) x@@3))
 :qid |stdinbpl.244:15|
 :skolemid |28|
 :pattern ( (state Heap@@4 Mask@@0) (|f'| Heap@@4 x@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6284) (Mask@@1 T@PolymorphicMapType_6305) (x@@4 Int) ) (!  (=> (and (state Heap@@5 Mask@@1) (or (< AssumeFunctionsAbove 3) (|f1#trigger| EmptyFrame x@@4))) (= (|f1'| Heap@@5 x@@4) x@@4))
 :qid |stdinbpl.319:15|
 :skolemid |33|
 :pattern ( (state Heap@@5 Mask@@1) (|f1'| Heap@@5 x@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6284) (x@@5 Int) ) (!  (and (= (f_6 Heap@@6 x@@5) (|f'| Heap@@6 x@@5)) (dummyFunction_1467 (|f#triggerStateless| x@@5)))
 :qid |stdinbpl.221:15|
 :skolemid |24|
 :pattern ( (f_6 Heap@@6 x@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6284) (x@@6 Int) ) (!  (and (= (f1_3 Heap@@7 x@@6) (|f1'| Heap@@7 x@@6)) (dummyFunction_1467 (|f1#triggerStateless| x@@6)))
 :qid |stdinbpl.296:15|
 :skolemid |29|
 :pattern ( (f1_3 Heap@@7 x@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6284) (x@@7 Int) ) (!  (and (= (h_3 Heap@@8 x@@7) (|h'| Heap@@8 x@@7)) (dummyFunction_1467 (|h#triggerStateless| x@@7)))
 :qid |stdinbpl.371:15|
 :skolemid |34|
 :pattern ( (h_3 Heap@@8 x@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6284) (x@@8 Int) ) (!  (and (= (h_e Heap@@9 x@@8) (|h_e'| Heap@@9 x@@8)) (dummyFunction_1467 (|h_e#triggerStateless| x@@8)))
 :qid |stdinbpl.502:15|
 :skolemid |40|
 :pattern ( (h_e Heap@@9 x@@8))
)))
(assert (forall ((int1 Int) (int2 Int) ) (!  (=> (< int1 int2) (decreasing_1189 int1 int2))
 :qid |stdinbpl.190:15|
 :skolemid |22|
 :pattern ( (decreasing_1189 int1 int2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6284) (ExhaleHeap T@PolymorphicMapType_6284) (Mask@@2 T@PolymorphicMapType_6305) (pm_f T@Field_6344_17068) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_6344_17132 Mask@@2 null pm_f) (IsPredicateField_6344_17159 pm_f)) (= (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@10) null (PredicateMaskField_6344 pm_f)) (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap) null (PredicateMaskField_6344 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@2) (IsPredicateField_6344_17159 pm_f) (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap) null (PredicateMaskField_6344 pm_f)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6284) (ExhaleHeap@@0 T@PolymorphicMapType_6284) (Mask@@3 T@PolymorphicMapType_6305) (pm_f@@0 T@Field_6344_17068) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_6344_17132 Mask@@3 null pm_f@@0) (IsWandField_6344_18708 pm_f@@0)) (= (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@11) null (WandMaskField_6344 pm_f@@0)) (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap@@0) null (WandMaskField_6344 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@3) (IsWandField_6344_18708 pm_f@@0) (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap@@0) null (WandMaskField_6344 pm_f@@0)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6284) (Mask@@4 T@PolymorphicMapType_6305) (x@@9 Int) ) (!  (=> (and (state Heap@@12 Mask@@4) (< AssumeFunctionsAbove 1)) (=> (= (f1_3 Heap@@12 x@@9) x@@9) (= (h_e Heap@@12 x@@9) (ite (<= x@@9 0) 0 (+ 1 (|h_e'| Heap@@12 (- x@@9 1)))))))
 :qid |stdinbpl.512:15|
 :skolemid |42|
 :pattern ( (state Heap@@12 Mask@@4) (h_e Heap@@12 x@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6284) (ExhaleHeap@@1 T@PolymorphicMapType_6284) (Mask@@5 T@PolymorphicMapType_6305) (pm_f@@1 T@Field_6344_17068) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@1 Mask@@5) (=> (and (HasDirectPerm_6344_17132 Mask@@5 null pm_f@@1) (IsPredicateField_6344_17159 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6344_53) ) (!  (=> (select (|PolymorphicMapType_6833_6344_53#PolymorphicMapType_6833| (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@13) null (PredicateMaskField_6344 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@13) o2 f_2) (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6357_6358) ) (!  (=> (select (|PolymorphicMapType_6833_6344_6358#PolymorphicMapType_6833| (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@13) null (PredicateMaskField_6344 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@13) o2@@0 f_2@@0) (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_6344_17068) ) (!  (=> (select (|PolymorphicMapType_6833_6344_17068#PolymorphicMapType_6833| (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@13) null (PredicateMaskField_6344 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@13) o2@@1 f_2@@1) (select (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_6344_17201) ) (!  (=> (select (|PolymorphicMapType_6833_6344_18181#PolymorphicMapType_6833| (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@13) null (PredicateMaskField_6344 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@13) o2@@2 f_2@@2) (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@1 Mask@@5) (IsPredicateField_6344_17159 pm_f@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6284) (ExhaleHeap@@2 T@PolymorphicMapType_6284) (Mask@@6 T@PolymorphicMapType_6305) (pm_f@@2 T@Field_6344_17068) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@2 Mask@@6) (=> (and (HasDirectPerm_6344_17132 Mask@@6 null pm_f@@2) (IsWandField_6344_18708 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_6344_53) ) (!  (=> (select (|PolymorphicMapType_6833_6344_53#PolymorphicMapType_6833| (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@14) null (WandMaskField_6344 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@14) o2@@3 f_2@@3) (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6357_6358) ) (!  (=> (select (|PolymorphicMapType_6833_6344_6358#PolymorphicMapType_6833| (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@14) null (WandMaskField_6344 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@14) o2@@4 f_2@@4) (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6344_17068) ) (!  (=> (select (|PolymorphicMapType_6833_6344_17068#PolymorphicMapType_6833| (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@14) null (WandMaskField_6344 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@14) o2@@5 f_2@@5) (select (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_6344_17201) ) (!  (=> (select (|PolymorphicMapType_6833_6344_18181#PolymorphicMapType_6833| (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@14) null (WandMaskField_6344 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@14) o2@@6 f_2@@6) (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@2 Mask@@6) (IsWandField_6344_18708 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6284) (ExhaleHeap@@3 T@PolymorphicMapType_6284) (Mask@@7 T@PolymorphicMapType_6305) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@7) (=> (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@15) o_1 $allocated) (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@7) (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_6344_17068) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6344_6344 p v_1 p w))
 :qid |stdinbpl.177:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6344_6344 p v_1 p w))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6284) (ExhaleHeap@@4 T@PolymorphicMapType_6284) (Mask@@8 T@PolymorphicMapType_6305) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@8) (succHeap Heap@@16 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6305) (o_2@@3 T@Ref) (f_4@@3 T@Field_6344_17201) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| Mask@@9) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6344_21671 f_4@@3))) (not (IsWandField_6344_21687 f_4@@3))) (<= (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| Mask@@9) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| Mask@@9) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6305) (o_2@@4 T@Ref) (f_4@@4 T@Field_6344_17068) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| Mask@@10) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6344_17159 f_4@@4))) (not (IsWandField_6344_18708 f_4@@4))) (<= (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| Mask@@10) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| Mask@@10) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6305) (o_2@@5 T@Ref) (f_4@@5 T@Field_6357_6358) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| Mask@@11) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6344_6358 f_4@@5))) (not (IsWandField_6344_6358 f_4@@5))) (<= (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| Mask@@11) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| Mask@@11) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6305) (o_2@@6 T@Ref) (f_4@@6 T@Field_6344_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| Mask@@12) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6344_53 f_4@@6))) (not (IsWandField_6344_53 f_4@@6))) (<= (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| Mask@@12) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| Mask@@12) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6305) (o_2@@7 T@Ref) (f_4@@7 T@Field_6344_17201) ) (! (= (HasDirectPerm_6344_22042 Mask@@13 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| Mask@@13) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6344_22042 Mask@@13 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6305) (o_2@@8 T@Ref) (f_4@@8 T@Field_6344_17068) ) (! (= (HasDirectPerm_6344_17132 Mask@@14 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| Mask@@14) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6344_17132 Mask@@14 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6305) (o_2@@9 T@Ref) (f_4@@9 T@Field_6357_6358) ) (! (= (HasDirectPerm_6344_6358 Mask@@15 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| Mask@@15) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6344_6358 Mask@@15 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6305) (o_2@@10 T@Ref) (f_4@@10 T@Field_6344_53) ) (! (= (HasDirectPerm_6344_53 Mask@@16 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| Mask@@16) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6344_53 Mask@@16 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6@@0 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6@@0) (ite (> p@@0 0.0) f_6@@0 EmptyFrame))
 :qid |stdinbpl.165:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6@@0))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6284) (ExhaleHeap@@5 T@PolymorphicMapType_6284) (Mask@@17 T@PolymorphicMapType_6305) (o_1@@0 T@Ref) (f_2@@7 T@Field_6344_17201) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_6344_22042 Mask@@17 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@17) o_1@@0 f_2@@7) (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6284) (ExhaleHeap@@6 T@PolymorphicMapType_6284) (Mask@@18 T@PolymorphicMapType_6305) (o_1@@1 T@Ref) (f_2@@8 T@Field_6344_17068) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_6344_17132 Mask@@18 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@18) o_1@@1 f_2@@8) (select (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6284) (ExhaleHeap@@7 T@PolymorphicMapType_6284) (Mask@@19 T@PolymorphicMapType_6305) (o_1@@2 T@Ref) (f_2@@9 T@Field_6357_6358) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_6344_6358 Mask@@19 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@19) o_1@@2 f_2@@9) (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6284) (ExhaleHeap@@8 T@PolymorphicMapType_6284) (Mask@@20 T@PolymorphicMapType_6305) (o_1@@3 T@Ref) (f_2@@10 T@Field_6344_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_6344_53 Mask@@20 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@20) o_1@@3 f_2@@10) (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6344_17201) ) (! (= (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6344_17068) ) (! (= (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6357_6358) ) (! (= (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6344_53) ) (! (= (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6305) (SummandMask1 T@PolymorphicMapType_6305) (SummandMask2 T@PolymorphicMapType_6305) (o_2@@15 T@Ref) (f_4@@15 T@Field_6344_17201) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6305_6344_20762#PolymorphicMapType_6305| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6305) (SummandMask1@@0 T@PolymorphicMapType_6305) (SummandMask2@@0 T@PolymorphicMapType_6305) (o_2@@16 T@Ref) (f_4@@16 T@Field_6344_17068) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6305_6344_17068#PolymorphicMapType_6305| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6305) (SummandMask1@@1 T@PolymorphicMapType_6305) (SummandMask2@@1 T@PolymorphicMapType_6305) (o_2@@17 T@Ref) (f_4@@17 T@Field_6357_6358) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6305_6344_6358#PolymorphicMapType_6305| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6305) (SummandMask1@@2 T@PolymorphicMapType_6305) (SummandMask2@@2 T@PolymorphicMapType_6305) (o_2@@18 T@Ref) (f_4@@18 T@Field_6344_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6305_6344_53#PolymorphicMapType_6305| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((int1@@0 Int) ) (!  (=> (>= int1@@0 0) (bounded_1214 int1@@0))
 :qid |stdinbpl.196:15|
 :skolemid |23|
 :pattern ( (bounded_1214 int1@@0))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6284) (Mask@@21 T@PolymorphicMapType_6305) (x@@10 Int) ) (!  (=> (state Heap@@21 Mask@@21) (= (|f'| Heap@@21 x@@10) (|f#frame| EmptyFrame x@@10)))
 :qid |stdinbpl.238:15|
 :skolemid |27|
 :pattern ( (state Heap@@21 Mask@@21) (|f'| Heap@@21 x@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6284) (Mask@@22 T@PolymorphicMapType_6305) (x@@11 Int) ) (!  (=> (state Heap@@22 Mask@@22) (= (|f1'| Heap@@22 x@@11) (|f1#frame| EmptyFrame x@@11)))
 :qid |stdinbpl.313:15|
 :skolemid |32|
 :pattern ( (state Heap@@22 Mask@@22) (|f1'| Heap@@22 x@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6284) (Mask@@23 T@PolymorphicMapType_6305) (x@@12 Int) ) (!  (=> (state Heap@@23 Mask@@23) (= (|h'| Heap@@23 x@@12) (|h#frame| EmptyFrame x@@12)))
 :qid |stdinbpl.388:15|
 :skolemid |37|
 :pattern ( (state Heap@@23 Mask@@23) (|h'| Heap@@23 x@@12))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6284) (Mask@@24 T@PolymorphicMapType_6305) (x@@13 Int) ) (!  (=> (state Heap@@24 Mask@@24) (= (|h_e'| Heap@@24 x@@13) (|h_e#frame| EmptyFrame x@@13)))
 :qid |stdinbpl.519:15|
 :skolemid |43|
 :pattern ( (state Heap@@24 Mask@@24) (|h_e'| Heap@@24 x@@13))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6284) (o T@Ref) (f_3 T@Field_6344_17068) (v T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_6284 (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@25) (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@25) (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@25) (store (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@25) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6284 (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@25) (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@25) (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@25) (store (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@25) o f_3 v)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6284) (o@@0 T@Ref) (f_3@@0 T@Field_6344_17201) (v@@0 T@PolymorphicMapType_6833) ) (! (succHeap Heap@@26 (PolymorphicMapType_6284 (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@26) (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@26) (store (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@26) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6284 (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@26) (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@26) (store (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@26) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6284) (o@@1 T@Ref) (f_3@@1 T@Field_6357_6358) (v@@1 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_6284 (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@27) (store (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@27) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@27) (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6284 (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@27) (store (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@27) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@27) (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6284) (o@@2 T@Ref) (f_3@@2 T@Field_6344_53) (v@@2 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_6284 (store (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@28) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@28) (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@28) (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6284 (store (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@28) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@28) (|PolymorphicMapType_6284_6344_17245#PolymorphicMapType_6284| Heap@@28) (|PolymorphicMapType_6284_6344_17068#PolymorphicMapType_6284| Heap@@28)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_6357_6358) (Heap@@29 T@PolymorphicMapType_6284) ) (!  (=> (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@29) o@@3 $allocated) (select (|PolymorphicMapType_6284_3354_53#PolymorphicMapType_6284| Heap@@29) (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@29) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6284_3357_3358#PolymorphicMapType_6284| Heap@@29) o@@3 f))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6284) (Mask@@25 T@PolymorphicMapType_6305) (x@@14 Int) ) (!  (=> (and (state Heap@@30 Mask@@25) (or (< AssumeFunctionsAbove 0) (|h#trigger_1| EmptyFrame x@@14))) (=> (and (= (f_6 Heap@@30 x@@14) 0) (= (f1_3 Heap@@30 x@@14) 0)) (= (|h'| Heap@@30 x@@14) x@@14)))
 :qid |stdinbpl.394:15|
 :skolemid |38|
 :pattern ( (state Heap@@30 Mask@@25) (|h'| Heap@@30 x@@14))
)))
(assert (forall ((p@@1 T@Field_6344_17068) (v_1@@0 T@FrameType) (q T@Field_6344_17068) (w@@0 T@FrameType) (r T@Field_6344_17068) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6344_6344 p@@1 v_1@@0 q w@@0) (InsidePredicate_6344_6344 q w@@0 r u)) (InsidePredicate_6344_6344 p@@1 v_1@@0 r u))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6344_6344 p@@1 v_1@@0 q w@@0) (InsidePredicate_6344_6344 q w@@0 r u))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6284) (Mask@@26 T@PolymorphicMapType_6305) (x@@15 Int) ) (!  (=> (and (state Heap@@31 Mask@@26) (or (< AssumeFunctionsAbove 0) (|h#trigger_1| EmptyFrame x@@15))) (=> (and (= (f_6 Heap@@31 x@@15) 0) (= (f1_3 Heap@@31 x@@15) 0)) (=> (> (|h'| Heap@@31 x@@15) 0) (= (|h'| Heap@@31 x@@15) (+ (|h'| Heap@@31 (- (|h'| Heap@@31 x@@15) 1)) 1)))))
 :qid |stdinbpl.398:15|
 :skolemid |39|
 :pattern ( (state Heap@@31 Mask@@26) (|h'| Heap@@31 x@@15))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6284) (Mask@@27 T@PolymorphicMapType_6305) (x@@16 Int) ) (!  (=> (and (state Heap@@32 Mask@@27) (< AssumeFunctionsAbove 0)) (=> (and (= (f_6 Heap@@32 x@@16) 0) (= (f1_3 Heap@@32 x@@16) 0)) (= (h_3 Heap@@32 x@@16) (ite (= x@@16 0) 0 (+ 1 (|h'| Heap@@32 (- x@@16 1)))))))
 :qid |stdinbpl.381:15|
 :skolemid |36|
 :pattern ( (state Heap@@32 Mask@@27) (h_3 Heap@@32 x@@16))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6284) (Mask@@28 T@PolymorphicMapType_6305) (x@@17 Int) ) (!  (=> (and (state Heap@@33 Mask@@28) (< AssumeFunctionsAbove 2)) (= (f_6 Heap@@33 x@@17) (|f'| Heap@@33 x@@17)))
 :qid |stdinbpl.231:15|
 :skolemid |26|
 :pattern ( (state Heap@@33 Mask@@28) (f_6 Heap@@33 x@@17))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6284) (Mask@@29 T@PolymorphicMapType_6305) (x@@18 Int) ) (!  (=> (and (state Heap@@34 Mask@@29) (< AssumeFunctionsAbove 3)) (= (f1_3 Heap@@34 x@@18) (|f1'| Heap@@34 x@@18)))
 :qid |stdinbpl.306:15|
 :skolemid |31|
 :pattern ( (state Heap@@34 Mask@@29) (f1_3 Heap@@34 x@@18))
)))
; Valid

