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
(declare-sort T@Field_4471_53 0)
(declare-sort T@Field_4484_4485 0)
(declare-sort T@Field_4471_11971 0)
(declare-sort T@Field_4471_11838 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4432 0)) (((PolymorphicMapType_4432 (|PolymorphicMapType_4432_4471_53#PolymorphicMapType_4432| (Array T@Ref T@Field_4471_53 Real)) (|PolymorphicMapType_4432_4471_4485#PolymorphicMapType_4432| (Array T@Ref T@Field_4484_4485 Real)) (|PolymorphicMapType_4432_4471_11838#PolymorphicMapType_4432| (Array T@Ref T@Field_4471_11838 Real)) (|PolymorphicMapType_4432_4471_15532#PolymorphicMapType_4432| (Array T@Ref T@Field_4471_11971 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4960 0)) (((PolymorphicMapType_4960 (|PolymorphicMapType_4960_4471_53#PolymorphicMapType_4960| (Array T@Ref T@Field_4471_53 Bool)) (|PolymorphicMapType_4960_4471_4485#PolymorphicMapType_4960| (Array T@Ref T@Field_4484_4485 Bool)) (|PolymorphicMapType_4960_4471_11838#PolymorphicMapType_4960| (Array T@Ref T@Field_4471_11838 Bool)) (|PolymorphicMapType_4960_4471_12951#PolymorphicMapType_4960| (Array T@Ref T@Field_4471_11971 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4411 0)) (((PolymorphicMapType_4411 (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| (Array T@Ref T@Field_4471_53 Bool)) (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| (Array T@Ref T@Field_4484_4485 T@Ref)) (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| (Array T@Ref T@Field_4471_11971 T@PolymorphicMapType_4960)) (|PolymorphicMapType_4411_4471_11838#PolymorphicMapType_4411| (Array T@Ref T@Field_4471_11838 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_4411 T@PolymorphicMapType_4411) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4411 T@PolymorphicMapType_4411) Bool)
(declare-fun state (T@PolymorphicMapType_4411 T@PolymorphicMapType_4432) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4432) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4960)
(declare-fun |f'| (T@PolymorphicMapType_4411 Int) Int)
(declare-fun dummyFunction_1479 (Int) Bool)
(declare-fun |f#triggerStateless| (Int) Int)
(declare-fun |g'| (T@PolymorphicMapType_4411 Int) Int)
(declare-fun |g#triggerStateless| (Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |f#trigger| (T@FrameType Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun f_6 (T@PolymorphicMapType_4411 Int) Int)
(declare-fun g_2 (T@PolymorphicMapType_4411 Int) Int)
(declare-fun decreasing_1189 (Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4411 T@PolymorphicMapType_4411 T@PolymorphicMapType_4432) Bool)
(declare-fun IsPredicateField_4471_11929 (T@Field_4471_11838) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4471 (T@Field_4471_11838) T@Field_4471_11971)
(declare-fun HasDirectPerm_4471_11902 (T@PolymorphicMapType_4432 T@Ref T@Field_4471_11838) Bool)
(declare-fun IsWandField_4471_13478 (T@Field_4471_11838) Bool)
(declare-fun WandMaskField_4471 (T@Field_4471_11838) T@Field_4471_11971)
(declare-fun dummyHeap () T@PolymorphicMapType_4411)
(declare-fun ZeroMask () T@PolymorphicMapType_4432)
(declare-fun $allocated () T@Field_4471_53)
(declare-fun InsidePredicate_4471_4471 (T@Field_4471_11838 T@FrameType T@Field_4471_11838 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4471_16441 (T@Field_4471_11971) Bool)
(declare-fun IsWandField_4471_16457 (T@Field_4471_11971) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4471_4485 (T@Field_4484_4485) Bool)
(declare-fun IsWandField_4471_4485 (T@Field_4484_4485) Bool)
(declare-fun IsPredicateField_4471_53 (T@Field_4471_53) Bool)
(declare-fun IsWandField_4471_53 (T@Field_4471_53) Bool)
(declare-fun HasDirectPerm_4471_16812 (T@PolymorphicMapType_4432 T@Ref T@Field_4471_11971) Bool)
(declare-fun HasDirectPerm_4471_4485 (T@PolymorphicMapType_4432 T@Ref T@Field_4484_4485) Bool)
(declare-fun HasDirectPerm_4471_53 (T@PolymorphicMapType_4432 T@Ref T@Field_4471_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4432 T@PolymorphicMapType_4432 T@PolymorphicMapType_4432) Bool)
(declare-fun bounded_1214 (Int) Bool)
(declare-fun |f#frame| (T@FrameType Int) Int)
(declare-fun |g#frame| (T@FrameType Int) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_4411) (Heap1 T@PolymorphicMapType_4411) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4411) (Mask T@PolymorphicMapType_4432) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4411) (Heap1@@0 T@PolymorphicMapType_4411) (Heap2 T@PolymorphicMapType_4411) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4471_11971) ) (!  (not (select (|PolymorphicMapType_4960_4471_12951#PolymorphicMapType_4960| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4960_4471_12951#PolymorphicMapType_4960| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4471_11838) ) (!  (not (select (|PolymorphicMapType_4960_4471_11838#PolymorphicMapType_4960| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4960_4471_11838#PolymorphicMapType_4960| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4484_4485) ) (!  (not (select (|PolymorphicMapType_4960_4471_4485#PolymorphicMapType_4960| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4960_4471_4485#PolymorphicMapType_4960| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4471_53) ) (!  (not (select (|PolymorphicMapType_4960_4471_53#PolymorphicMapType_4960| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4960_4471_53#PolymorphicMapType_4960| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4411) (x Int) ) (! (dummyFunction_1479 (|f#triggerStateless| x))
 :qid |stdinbpl.223:15|
 :skolemid |25|
 :pattern ( (|f'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4411) (y Int) ) (! (dummyFunction_1479 (|g#triggerStateless| y))
 :qid |stdinbpl.309:15|
 :skolemid |30|
 :pattern ( (|g'| Heap@@1 y))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4411) (Mask@@0 T@PolymorphicMapType_4432) (x@@0 Int) ) (!  (=> (and (state Heap@@2 Mask@@0) (or (< AssumeFunctionsAbove 0) (|f#trigger| EmptyFrame x@@0))) (= (|f'| Heap@@2 x@@0) x@@0))
 :qid |stdinbpl.242:15|
 :skolemid |28|
 :pattern ( (state Heap@@2 Mask@@0) (|f'| Heap@@2 x@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4411) (x@@1 Int) ) (!  (and (= (f_6 Heap@@3 x@@1) (|f'| Heap@@3 x@@1)) (dummyFunction_1479 (|f#triggerStateless| x@@1)))
 :qid |stdinbpl.219:15|
 :skolemid |24|
 :pattern ( (f_6 Heap@@3 x@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4411) (y@@0 Int) ) (!  (and (= (g_2 Heap@@4 y@@0) (|g'| Heap@@4 y@@0)) (dummyFunction_1479 (|g#triggerStateless| y@@0)))
 :qid |stdinbpl.305:15|
 :skolemid |29|
 :pattern ( (g_2 Heap@@4 y@@0))
)))
(assert (forall ((int1 Int) (int2 Int) ) (!  (=> (< int1 int2) (decreasing_1189 int1 int2))
 :qid |stdinbpl.188:15|
 :skolemid |22|
 :pattern ( (decreasing_1189 int1 int2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4411) (ExhaleHeap T@PolymorphicMapType_4411) (Mask@@1 T@PolymorphicMapType_4432) (pm_f T@Field_4471_11838) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_4471_11902 Mask@@1 null pm_f) (IsPredicateField_4471_11929 pm_f)) (= (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@5) null (PredicateMaskField_4471 pm_f)) (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| ExhaleHeap) null (PredicateMaskField_4471 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (IsPredicateField_4471_11929 pm_f) (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| ExhaleHeap) null (PredicateMaskField_4471 pm_f)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4411) (ExhaleHeap@@0 T@PolymorphicMapType_4411) (Mask@@2 T@PolymorphicMapType_4432) (pm_f@@0 T@Field_4471_11838) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_4471_11902 Mask@@2 null pm_f@@0) (IsWandField_4471_13478 pm_f@@0)) (= (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@6) null (WandMaskField_4471 pm_f@@0)) (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| ExhaleHeap@@0) null (WandMaskField_4471 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (IsWandField_4471_13478 pm_f@@0) (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| ExhaleHeap@@0) null (WandMaskField_4471 pm_f@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4411) (Mask@@3 T@PolymorphicMapType_4432) (x@@2 Int) ) (!  (=> (and (state Heap@@7 Mask@@3) (< AssumeFunctionsAbove 0)) (= (f_6 Heap@@7 x@@2) (ite (> x@@2 0) (+ (|f'| Heap@@7 (|f'| Heap@@7 (- x@@2 1))) 1) x@@2)))
 :qid |stdinbpl.229:15|
 :skolemid |26|
 :pattern ( (state Heap@@7 Mask@@3) (f_6 Heap@@7 x@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4411) (ExhaleHeap@@1 T@PolymorphicMapType_4411) (Mask@@4 T@PolymorphicMapType_4432) (pm_f@@1 T@Field_4471_11838) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_4471_11902 Mask@@4 null pm_f@@1) (IsPredicateField_4471_11929 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_4471_53) ) (!  (=> (select (|PolymorphicMapType_4960_4471_53#PolymorphicMapType_4960| (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@8) null (PredicateMaskField_4471 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| Heap@@8) o2 f_2) (select (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_4484_4485) ) (!  (=> (select (|PolymorphicMapType_4960_4471_4485#PolymorphicMapType_4960| (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@8) null (PredicateMaskField_4471 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| Heap@@8) o2@@0 f_2@@0) (select (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_4471_11838) ) (!  (=> (select (|PolymorphicMapType_4960_4471_11838#PolymorphicMapType_4960| (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@8) null (PredicateMaskField_4471 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_4411_4471_11838#PolymorphicMapType_4411| Heap@@8) o2@@1 f_2@@1) (select (|PolymorphicMapType_4411_4471_11838#PolymorphicMapType_4411| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4411_4471_11838#PolymorphicMapType_4411| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_4471_11971) ) (!  (=> (select (|PolymorphicMapType_4960_4471_12951#PolymorphicMapType_4960| (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@8) null (PredicateMaskField_4471 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@8) o2@@2 f_2@@2) (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@4) (IsPredicateField_4471_11929 pm_f@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4411) (ExhaleHeap@@2 T@PolymorphicMapType_4411) (Mask@@5 T@PolymorphicMapType_4432) (pm_f@@2 T@Field_4471_11838) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_4471_11902 Mask@@5 null pm_f@@2) (IsWandField_4471_13478 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_4471_53) ) (!  (=> (select (|PolymorphicMapType_4960_4471_53#PolymorphicMapType_4960| (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@9) null (WandMaskField_4471 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| Heap@@9) o2@@3 f_2@@3) (select (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_4484_4485) ) (!  (=> (select (|PolymorphicMapType_4960_4471_4485#PolymorphicMapType_4960| (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@9) null (WandMaskField_4471 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| Heap@@9) o2@@4 f_2@@4) (select (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_4471_11838) ) (!  (=> (select (|PolymorphicMapType_4960_4471_11838#PolymorphicMapType_4960| (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@9) null (WandMaskField_4471 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_4411_4471_11838#PolymorphicMapType_4411| Heap@@9) o2@@5 f_2@@5) (select (|PolymorphicMapType_4411_4471_11838#PolymorphicMapType_4411| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4411_4471_11838#PolymorphicMapType_4411| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_4471_11971) ) (!  (=> (select (|PolymorphicMapType_4960_4471_12951#PolymorphicMapType_4960| (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@9) null (WandMaskField_4471 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@9) o2@@6 f_2@@6) (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@5) (IsWandField_4471_13478 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4411) (ExhaleHeap@@3 T@PolymorphicMapType_4411) (Mask@@6 T@PolymorphicMapType_4432) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@6) (=> (select (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| Heap@@10) o_1 $allocated) (select (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@6) (select (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_4471_11838) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4471_4471 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4471_4471 p v_1 p w))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4411) (ExhaleHeap@@4 T@PolymorphicMapType_4411) (Mask@@7 T@PolymorphicMapType_4432) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@7) (succHeap Heap@@11 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4432) (o_2@@3 T@Ref) (f_4@@3 T@Field_4471_11971) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4432_4471_15532#PolymorphicMapType_4432| Mask@@8) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4471_16441 f_4@@3))) (not (IsWandField_4471_16457 f_4@@3))) (<= (select (|PolymorphicMapType_4432_4471_15532#PolymorphicMapType_4432| Mask@@8) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4432_4471_15532#PolymorphicMapType_4432| Mask@@8) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4432) (o_2@@4 T@Ref) (f_4@@4 T@Field_4471_11838) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_4432_4471_11838#PolymorphicMapType_4432| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4471_11929 f_4@@4))) (not (IsWandField_4471_13478 f_4@@4))) (<= (select (|PolymorphicMapType_4432_4471_11838#PolymorphicMapType_4432| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_4432_4471_11838#PolymorphicMapType_4432| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4432) (o_2@@5 T@Ref) (f_4@@5 T@Field_4484_4485) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_4432_4471_4485#PolymorphicMapType_4432| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4471_4485 f_4@@5))) (not (IsWandField_4471_4485 f_4@@5))) (<= (select (|PolymorphicMapType_4432_4471_4485#PolymorphicMapType_4432| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_4432_4471_4485#PolymorphicMapType_4432| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4432) (o_2@@6 T@Ref) (f_4@@6 T@Field_4471_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_4432_4471_53#PolymorphicMapType_4432| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4471_53 f_4@@6))) (not (IsWandField_4471_53 f_4@@6))) (<= (select (|PolymorphicMapType_4432_4471_53#PolymorphicMapType_4432| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_4432_4471_53#PolymorphicMapType_4432| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4411) (Mask@@12 T@PolymorphicMapType_4432) (y@@1 Int) ) (!  (=> (and (state Heap@@12 Mask@@12) (< AssumeFunctionsAbove 1)) (= (g_2 Heap@@12 y@@1) (ite (not (= y@@1 0)) (|g'| Heap@@12 (- y@@1 1)) (|g'| Heap@@12 y@@1))))
 :qid |stdinbpl.315:15|
 :skolemid |31|
 :pattern ( (state Heap@@12 Mask@@12) (g_2 Heap@@12 y@@1))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4432) (o_2@@7 T@Ref) (f_4@@7 T@Field_4471_11971) ) (! (= (HasDirectPerm_4471_16812 Mask@@13 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_4432_4471_15532#PolymorphicMapType_4432| Mask@@13) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4471_16812 Mask@@13 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4432) (o_2@@8 T@Ref) (f_4@@8 T@Field_4471_11838) ) (! (= (HasDirectPerm_4471_11902 Mask@@14 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_4432_4471_11838#PolymorphicMapType_4432| Mask@@14) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4471_11902 Mask@@14 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4432) (o_2@@9 T@Ref) (f_4@@9 T@Field_4484_4485) ) (! (= (HasDirectPerm_4471_4485 Mask@@15 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4432_4471_4485#PolymorphicMapType_4432| Mask@@15) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4471_4485 Mask@@15 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_4432) (o_2@@10 T@Ref) (f_4@@10 T@Field_4471_53) ) (! (= (HasDirectPerm_4471_53 Mask@@16 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4432_4471_53#PolymorphicMapType_4432| Mask@@16) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4471_53 Mask@@16 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6@@0 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6@@0) (ite (> p@@0 0.0) f_6@@0 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4411) (ExhaleHeap@@5 T@PolymorphicMapType_4411) (Mask@@17 T@PolymorphicMapType_4432) (o_1@@0 T@Ref) (f_2@@7 T@Field_4471_11971) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_4471_16812 Mask@@17 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@13) o_1@@0 f_2@@7) (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4411) (ExhaleHeap@@6 T@PolymorphicMapType_4411) (Mask@@18 T@PolymorphicMapType_4432) (o_1@@1 T@Ref) (f_2@@8 T@Field_4471_11838) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_4471_11902 Mask@@18 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_4411_4471_11838#PolymorphicMapType_4411| Heap@@14) o_1@@1 f_2@@8) (select (|PolymorphicMapType_4411_4471_11838#PolymorphicMapType_4411| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_4411_4471_11838#PolymorphicMapType_4411| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4411) (ExhaleHeap@@7 T@PolymorphicMapType_4411) (Mask@@19 T@PolymorphicMapType_4432) (o_1@@2 T@Ref) (f_2@@9 T@Field_4484_4485) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_4471_4485 Mask@@19 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| Heap@@15) o_1@@2 f_2@@9) (select (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4411) (ExhaleHeap@@8 T@PolymorphicMapType_4411) (Mask@@20 T@PolymorphicMapType_4432) (o_1@@3 T@Ref) (f_2@@10 T@Field_4471_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_4471_53 Mask@@20 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| Heap@@16) o_1@@3 f_2@@10) (select (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_4471_11971) ) (! (= (select (|PolymorphicMapType_4432_4471_15532#PolymorphicMapType_4432| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4432_4471_15532#PolymorphicMapType_4432| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_4471_11838) ) (! (= (select (|PolymorphicMapType_4432_4471_11838#PolymorphicMapType_4432| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4432_4471_11838#PolymorphicMapType_4432| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_4484_4485) ) (! (= (select (|PolymorphicMapType_4432_4471_4485#PolymorphicMapType_4432| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4432_4471_4485#PolymorphicMapType_4432| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4471_53) ) (! (= (select (|PolymorphicMapType_4432_4471_53#PolymorphicMapType_4432| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4432_4471_53#PolymorphicMapType_4432| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4432) (SummandMask1 T@PolymorphicMapType_4432) (SummandMask2 T@PolymorphicMapType_4432) (o_2@@15 T@Ref) (f_4@@15 T@Field_4471_11971) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4432_4471_15532#PolymorphicMapType_4432| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_4432_4471_15532#PolymorphicMapType_4432| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_4432_4471_15532#PolymorphicMapType_4432| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4432_4471_15532#PolymorphicMapType_4432| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4432_4471_15532#PolymorphicMapType_4432| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4432_4471_15532#PolymorphicMapType_4432| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4432) (SummandMask1@@0 T@PolymorphicMapType_4432) (SummandMask2@@0 T@PolymorphicMapType_4432) (o_2@@16 T@Ref) (f_4@@16 T@Field_4471_11838) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4432_4471_11838#PolymorphicMapType_4432| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_4432_4471_11838#PolymorphicMapType_4432| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_4432_4471_11838#PolymorphicMapType_4432| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4432_4471_11838#PolymorphicMapType_4432| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4432_4471_11838#PolymorphicMapType_4432| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4432_4471_11838#PolymorphicMapType_4432| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4432) (SummandMask1@@1 T@PolymorphicMapType_4432) (SummandMask2@@1 T@PolymorphicMapType_4432) (o_2@@17 T@Ref) (f_4@@17 T@Field_4484_4485) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4432_4471_4485#PolymorphicMapType_4432| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_4432_4471_4485#PolymorphicMapType_4432| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_4432_4471_4485#PolymorphicMapType_4432| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4432_4471_4485#PolymorphicMapType_4432| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4432_4471_4485#PolymorphicMapType_4432| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4432_4471_4485#PolymorphicMapType_4432| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4432) (SummandMask1@@2 T@PolymorphicMapType_4432) (SummandMask2@@2 T@PolymorphicMapType_4432) (o_2@@18 T@Ref) (f_4@@18 T@Field_4471_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4432_4471_53#PolymorphicMapType_4432| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_4432_4471_53#PolymorphicMapType_4432| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_4432_4471_53#PolymorphicMapType_4432| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4432_4471_53#PolymorphicMapType_4432| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4432_4471_53#PolymorphicMapType_4432| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4432_4471_53#PolymorphicMapType_4432| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((int1@@0 Int) ) (!  (=> (>= int1@@0 0) (bounded_1214 int1@@0))
 :qid |stdinbpl.194:15|
 :skolemid |23|
 :pattern ( (bounded_1214 int1@@0))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4411) (Mask@@21 T@PolymorphicMapType_4432) (x@@3 Int) ) (!  (=> (state Heap@@17 Mask@@21) (= (|f'| Heap@@17 x@@3) (|f#frame| EmptyFrame x@@3)))
 :qid |stdinbpl.236:15|
 :skolemid |27|
 :pattern ( (state Heap@@17 Mask@@21) (|f'| Heap@@17 x@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4411) (Mask@@22 T@PolymorphicMapType_4432) (y@@2 Int) ) (!  (=> (state Heap@@18 Mask@@22) (= (|g'| Heap@@18 y@@2) (|g#frame| EmptyFrame y@@2)))
 :qid |stdinbpl.322:15|
 :skolemid |32|
 :pattern ( (state Heap@@18 Mask@@22) (|g'| Heap@@18 y@@2))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4411) (o T@Ref) (f_3 T@Field_4471_11838) (v T@FrameType) ) (! (succHeap Heap@@19 (PolymorphicMapType_4411 (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| Heap@@19) (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| Heap@@19) (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@19) (store (|PolymorphicMapType_4411_4471_11838#PolymorphicMapType_4411| Heap@@19) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4411 (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| Heap@@19) (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| Heap@@19) (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@19) (store (|PolymorphicMapType_4411_4471_11838#PolymorphicMapType_4411| Heap@@19) o f_3 v)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4411) (o@@0 T@Ref) (f_3@@0 T@Field_4471_11971) (v@@0 T@PolymorphicMapType_4960) ) (! (succHeap Heap@@20 (PolymorphicMapType_4411 (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| Heap@@20) (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| Heap@@20) (store (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@20) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4411_4471_11838#PolymorphicMapType_4411| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4411 (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| Heap@@20) (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| Heap@@20) (store (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@20) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4411_4471_11838#PolymorphicMapType_4411| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4411) (o@@1 T@Ref) (f_3@@1 T@Field_4484_4485) (v@@1 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_4411 (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| Heap@@21) (store (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| Heap@@21) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@21) (|PolymorphicMapType_4411_4471_11838#PolymorphicMapType_4411| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4411 (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| Heap@@21) (store (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| Heap@@21) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@21) (|PolymorphicMapType_4411_4471_11838#PolymorphicMapType_4411| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4411) (o@@2 T@Ref) (f_3@@2 T@Field_4471_53) (v@@2 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_4411 (store (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| Heap@@22) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| Heap@@22) (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@22) (|PolymorphicMapType_4411_4471_11838#PolymorphicMapType_4411| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4411 (store (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| Heap@@22) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| Heap@@22) (|PolymorphicMapType_4411_4471_12015#PolymorphicMapType_4411| Heap@@22) (|PolymorphicMapType_4411_4471_11838#PolymorphicMapType_4411| Heap@@22)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_4484_4485) (Heap@@23 T@PolymorphicMapType_4411) ) (!  (=> (select (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| Heap@@23) o@@3 $allocated) (select (|PolymorphicMapType_4411_2373_53#PolymorphicMapType_4411| Heap@@23) (select (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| Heap@@23) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4411_2376_2377#PolymorphicMapType_4411| Heap@@23) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_4471_11838) (v_1@@0 T@FrameType) (q T@Field_4471_11838) (w@@0 T@FrameType) (r T@Field_4471_11838) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4471_4471 p@@1 v_1@@0 q w@@0) (InsidePredicate_4471_4471 q w@@0 r u)) (InsidePredicate_4471_4471 p@@1 v_1@@0 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4471_4471 p@@1 v_1@@0 q w@@0) (InsidePredicate_4471_4471 q w@@0 r u))
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
 (=> (= (ControlFlow 0 0) 9) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
