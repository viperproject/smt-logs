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
(declare-sort T@Field_19193_53 0)
(declare-sort T@Field_19206_19207 0)
(declare-sort T@Field_23398_1682 0)
(declare-sort T@Field_23865_23866 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_26602_26607 0)
(declare-sort T@Field_22539_22544 0)
(declare-sort T@Field_10393_10430 0)
(declare-sort T@Field_10393_22544 0)
(declare-sort T@Field_10429_1682 0)
(declare-sort T@Field_10429_10396 0)
(declare-sort T@Field_10429_53 0)
(declare-sort T@Field_22524_1218 0)
(declare-sort T@Field_22524_10396 0)
(declare-sort T@Field_22557_22558 0)
(declare-sort T@Field_22524_53 0)
(declare-datatypes ((T@PolymorphicMapType_19154 0)) (((PolymorphicMapType_19154 (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| (Array T@Ref T@Field_23865_23866 Real)) (|PolymorphicMapType_19154_10393_1682#PolymorphicMapType_19154| (Array T@Ref T@Field_23398_1682 Real)) (|PolymorphicMapType_19154_10395_10396#PolymorphicMapType_19154| (Array T@Ref T@Field_19206_19207 Real)) (|PolymorphicMapType_19154_10345_1218#PolymorphicMapType_19154| (Array T@Ref T@Field_22524_1218 Real)) (|PolymorphicMapType_19154_10429_1682#PolymorphicMapType_19154| (Array T@Ref T@Field_10429_1682 Real)) (|PolymorphicMapType_19154_10429_10396#PolymorphicMapType_19154| (Array T@Ref T@Field_10429_10396 Real)) (|PolymorphicMapType_19154_10429_53#PolymorphicMapType_19154| (Array T@Ref T@Field_10429_53 Real)) (|PolymorphicMapType_19154_10429_77774#PolymorphicMapType_19154| (Array T@Ref T@Field_26602_26607 Real)) (|PolymorphicMapType_19154_10393_10430#PolymorphicMapType_19154| (Array T@Ref T@Field_10393_10430 Real)) (|PolymorphicMapType_19154_10393_53#PolymorphicMapType_19154| (Array T@Ref T@Field_19193_53 Real)) (|PolymorphicMapType_19154_10393_78173#PolymorphicMapType_19154| (Array T@Ref T@Field_10393_22544 Real)) (|PolymorphicMapType_19154_10345_10430#PolymorphicMapType_19154| (Array T@Ref T@Field_22557_22558 Real)) (|PolymorphicMapType_19154_10345_10396#PolymorphicMapType_19154| (Array T@Ref T@Field_22524_10396 Real)) (|PolymorphicMapType_19154_10345_53#PolymorphicMapType_19154| (Array T@Ref T@Field_22524_53 Real)) (|PolymorphicMapType_19154_10345_78587#PolymorphicMapType_19154| (Array T@Ref T@Field_22539_22544 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19682 0)) (((PolymorphicMapType_19682 (|PolymorphicMapType_19682_10393_1682#PolymorphicMapType_19682| (Array T@Ref T@Field_23398_1682 Bool)) (|PolymorphicMapType_19682_10395_10396#PolymorphicMapType_19682| (Array T@Ref T@Field_19206_19207 Bool)) (|PolymorphicMapType_19682_10393_53#PolymorphicMapType_19682| (Array T@Ref T@Field_19193_53 Bool)) (|PolymorphicMapType_19682_10393_67665#PolymorphicMapType_19682| (Array T@Ref T@Field_10393_22544 Bool)) (|PolymorphicMapType_19682_10393_22558#PolymorphicMapType_19682| (Array T@Ref T@Field_10393_10430 Bool)) (|PolymorphicMapType_19682_22524_1682#PolymorphicMapType_19682| (Array T@Ref T@Field_22524_1218 Bool)) (|PolymorphicMapType_19682_22524_10396#PolymorphicMapType_19682| (Array T@Ref T@Field_22524_10396 Bool)) (|PolymorphicMapType_19682_22524_53#PolymorphicMapType_19682| (Array T@Ref T@Field_22524_53 Bool)) (|PolymorphicMapType_19682_22524_68713#PolymorphicMapType_19682| (Array T@Ref T@Field_22539_22544 Bool)) (|PolymorphicMapType_19682_22524_22558#PolymorphicMapType_19682| (Array T@Ref T@Field_22557_22558 Bool)) (|PolymorphicMapType_19682_23865_1682#PolymorphicMapType_19682| (Array T@Ref T@Field_10429_1682 Bool)) (|PolymorphicMapType_19682_23865_10396#PolymorphicMapType_19682| (Array T@Ref T@Field_10429_10396 Bool)) (|PolymorphicMapType_19682_23865_53#PolymorphicMapType_19682| (Array T@Ref T@Field_10429_53 Bool)) (|PolymorphicMapType_19682_23865_69761#PolymorphicMapType_19682| (Array T@Ref T@Field_26602_26607 Bool)) (|PolymorphicMapType_19682_23865_22558#PolymorphicMapType_19682| (Array T@Ref T@Field_23865_23866 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19133 0)) (((PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| (Array T@Ref T@Field_19193_53 Bool)) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| (Array T@Ref T@Field_19206_19207 T@Ref)) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| (Array T@Ref T@Field_23398_1682 Int)) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| (Array T@Ref T@Field_23865_23866 T@FrameType)) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| (Array T@Ref T@Field_26602_26607 T@PolymorphicMapType_19682)) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| (Array T@Ref T@Field_22539_22544 T@PolymorphicMapType_19682)) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| (Array T@Ref T@Field_10393_10430 T@FrameType)) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| (Array T@Ref T@Field_10393_22544 T@PolymorphicMapType_19682)) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| (Array T@Ref T@Field_10429_1682 Int)) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| (Array T@Ref T@Field_10429_10396 T@Ref)) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| (Array T@Ref T@Field_10429_53 Bool)) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| (Array T@Ref T@Field_22524_1218 Int)) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| (Array T@Ref T@Field_22524_10396 T@Ref)) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| (Array T@Ref T@Field_22557_22558 T@FrameType)) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| (Array T@Ref T@Field_22524_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_19193_53)
(declare-fun v_35 () T@Field_23398_1682)
(declare-fun n_85 () T@Field_19206_19207)
(declare-fun succHeap (T@PolymorphicMapType_19133 T@PolymorphicMapType_19133) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_19133 T@PolymorphicMapType_19133) Bool)
(declare-fun state (T@PolymorphicMapType_19133 T@PolymorphicMapType_19154) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_19154) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_19682)
(declare-fun List (T@Ref) T@Field_23865_23866)
(declare-fun IsPredicateField_10429_10430 (T@Field_23865_23866) Bool)
(declare-fun |sum_rec'| (T@PolymorphicMapType_19133 T@Ref) Int)
(declare-fun dummyFunction_1930 (Int) Bool)
(declare-fun |sum_rec#triggerStateless| (T@Ref) Int)
(declare-fun |List#trigger_10429| (T@PolymorphicMapType_19133 T@Field_23865_23866) Bool)
(declare-fun |List#everUsed_10429| (T@Field_23865_23866) Bool)
(declare-fun sum_rec (T@PolymorphicMapType_19133 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_19133 T@PolymorphicMapType_19133 T@PolymorphicMapType_19154) Bool)
(declare-fun IsPredicateField_10358_10359 (T@Field_22557_22558) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_22524 (T@Field_22557_22558) T@Field_22539_22544)
(declare-fun HasDirectPerm_22524_10430 (T@PolymorphicMapType_19154 T@Ref T@Field_22557_22558) Bool)
(declare-fun PredicateMaskField_10429 (T@Field_23865_23866) T@Field_26602_26607)
(declare-fun HasDirectPerm_10429_10430 (T@PolymorphicMapType_19154 T@Ref T@Field_23865_23866) Bool)
(declare-fun IsPredicateField_10393_66062 (T@Field_10393_10430) Bool)
(declare-fun PredicateMaskField_10393 (T@Field_10393_10430) T@Field_10393_22544)
(declare-fun HasDirectPerm_10393_10430 (T@PolymorphicMapType_19154 T@Ref T@Field_10393_10430) Bool)
(declare-fun IsWandField_10358_10359 (T@Field_22557_22558) Bool)
(declare-fun WandMaskField_10358 (T@Field_22557_22558) T@Field_22539_22544)
(declare-fun IsWandField_10429_71411 (T@Field_23865_23866) Bool)
(declare-fun WandMaskField_10429 (T@Field_23865_23866) T@Field_26602_26607)
(declare-fun IsWandField_10393_71054 (T@Field_10393_10430) Bool)
(declare-fun WandMaskField_10393 (T@Field_10393_10430) T@Field_10393_22544)
(declare-fun |List#sm| (T@Ref) T@Field_26602_26607)
(declare-fun dummyHeap () T@PolymorphicMapType_19133)
(declare-fun ZeroMask () T@PolymorphicMapType_19154)
(declare-fun InsidePredicate_22524_22524 (T@Field_22557_22558 T@FrameType T@Field_22557_22558 T@FrameType) Bool)
(declare-fun InsidePredicate_19193_19193 (T@Field_10393_10430 T@FrameType T@Field_10393_10430 T@FrameType) Bool)
(declare-fun InsidePredicate_10429_10429 (T@Field_23865_23866 T@FrameType T@Field_23865_23866 T@FrameType) Bool)
(declare-fun IsPredicateField_10393_1682 (T@Field_23398_1682) Bool)
(declare-fun IsWandField_10393_1682 (T@Field_23398_1682) Bool)
(declare-fun IsPredicateField_10395_10396 (T@Field_19206_19207) Bool)
(declare-fun IsWandField_10395_10396 (T@Field_19206_19207) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_10345_82014 (T@Field_22539_22544) Bool)
(declare-fun IsWandField_10345_82030 (T@Field_22539_22544) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_10345_53 (T@Field_22524_53) Bool)
(declare-fun IsWandField_10345_53 (T@Field_22524_53) Bool)
(declare-fun IsPredicateField_10345_10396 (T@Field_22524_10396) Bool)
(declare-fun IsWandField_10345_10396 (T@Field_22524_10396) Bool)
(declare-fun IsPredicateField_10345_1218 (T@Field_22524_1218) Bool)
(declare-fun IsWandField_10345_1218 (T@Field_22524_1218) Bool)
(declare-fun IsPredicateField_10393_81197 (T@Field_10393_22544) Bool)
(declare-fun IsWandField_10393_81213 (T@Field_10393_22544) Bool)
(declare-fun IsPredicateField_10393_53 (T@Field_19193_53) Bool)
(declare-fun IsWandField_10393_53 (T@Field_19193_53) Bool)
(declare-fun IsPredicateField_10429_80394 (T@Field_26602_26607) Bool)
(declare-fun IsWandField_10429_80410 (T@Field_26602_26607) Bool)
(declare-fun IsPredicateField_10429_53 (T@Field_10429_53) Bool)
(declare-fun IsWandField_10429_53 (T@Field_10429_53) Bool)
(declare-fun IsPredicateField_10429_10396 (T@Field_10429_10396) Bool)
(declare-fun IsWandField_10429_10396 (T@Field_10429_10396) Bool)
(declare-fun IsPredicateField_10429_1682 (T@Field_10429_1682) Bool)
(declare-fun IsWandField_10429_1682 (T@Field_10429_1682) Bool)
(declare-fun HasDirectPerm_22524_65817 (T@PolymorphicMapType_19154 T@Ref T@Field_22539_22544) Bool)
(declare-fun HasDirectPerm_22524_53 (T@PolymorphicMapType_19154 T@Ref T@Field_22524_53) Bool)
(declare-fun HasDirectPerm_22524_10396 (T@PolymorphicMapType_19154 T@Ref T@Field_22524_10396) Bool)
(declare-fun HasDirectPerm_22524_1682 (T@PolymorphicMapType_19154 T@Ref T@Field_22524_1218) Bool)
(declare-fun HasDirectPerm_10429_64683 (T@PolymorphicMapType_19154 T@Ref T@Field_26602_26607) Bool)
(declare-fun HasDirectPerm_10429_53 (T@PolymorphicMapType_19154 T@Ref T@Field_10429_53) Bool)
(declare-fun HasDirectPerm_10429_10396 (T@PolymorphicMapType_19154 T@Ref T@Field_10429_10396) Bool)
(declare-fun HasDirectPerm_10429_1682 (T@PolymorphicMapType_19154 T@Ref T@Field_10429_1682) Bool)
(declare-fun HasDirectPerm_10393_63542 (T@PolymorphicMapType_19154 T@Ref T@Field_10393_22544) Bool)
(declare-fun HasDirectPerm_10393_53 (T@PolymorphicMapType_19154 T@Ref T@Field_19193_53) Bool)
(declare-fun HasDirectPerm_10395_10396 (T@PolymorphicMapType_19154 T@Ref T@Field_19206_19207) Bool)
(declare-fun HasDirectPerm_10393_1682 (T@PolymorphicMapType_19154 T@Ref T@Field_23398_1682) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_19154 T@PolymorphicMapType_19154 T@PolymorphicMapType_19154) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun wand (Bool T@Ref T@Ref Int T@Ref T@Ref Int) T@Field_22524_1218)
(declare-fun |sum_rec#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_10429_10430 (T@Field_23865_23866) Int)
(declare-fun |wand#ft| (Bool T@Ref T@Ref Int T@Ref T@Ref Int) T@Field_22557_22558)
(declare-fun |wand#sm| (Bool T@Ref T@Ref Int T@Ref T@Ref Int) T@Field_22539_22544)
(declare-fun InsidePredicate_22524_19193 (T@Field_22557_22558 T@FrameType T@Field_10393_10430 T@FrameType) Bool)
(declare-fun InsidePredicate_22524_10429 (T@Field_22557_22558 T@FrameType T@Field_23865_23866 T@FrameType) Bool)
(declare-fun InsidePredicate_19193_22524 (T@Field_10393_10430 T@FrameType T@Field_22557_22558 T@FrameType) Bool)
(declare-fun InsidePredicate_19193_10429 (T@Field_10393_10430 T@FrameType T@Field_23865_23866 T@FrameType) Bool)
(declare-fun InsidePredicate_10429_22524 (T@Field_23865_23866 T@FrameType T@Field_22557_22558 T@FrameType) Bool)
(declare-fun InsidePredicate_10429_19193 (T@Field_23865_23866 T@FrameType T@Field_10393_10430 T@FrameType) Bool)
(declare-fun getPredWandId_10345_1218 (T@Field_22524_1218) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_19133) (Heap1 T@PolymorphicMapType_19133) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_19133) (Mask T@PolymorphicMapType_19154) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_19133) (Heap1@@0 T@PolymorphicMapType_19133) (Heap2 T@PolymorphicMapType_19133) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_23865_23866) ) (!  (not (select (|PolymorphicMapType_19682_23865_22558#PolymorphicMapType_19682| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19682_23865_22558#PolymorphicMapType_19682| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_26602_26607) ) (!  (not (select (|PolymorphicMapType_19682_23865_69761#PolymorphicMapType_19682| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19682_23865_69761#PolymorphicMapType_19682| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10429_53) ) (!  (not (select (|PolymorphicMapType_19682_23865_53#PolymorphicMapType_19682| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19682_23865_53#PolymorphicMapType_19682| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10429_10396) ) (!  (not (select (|PolymorphicMapType_19682_23865_10396#PolymorphicMapType_19682| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19682_23865_10396#PolymorphicMapType_19682| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10429_1682) ) (!  (not (select (|PolymorphicMapType_19682_23865_1682#PolymorphicMapType_19682| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19682_23865_1682#PolymorphicMapType_19682| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_22557_22558) ) (!  (not (select (|PolymorphicMapType_19682_22524_22558#PolymorphicMapType_19682| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19682_22524_22558#PolymorphicMapType_19682| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_22539_22544) ) (!  (not (select (|PolymorphicMapType_19682_22524_68713#PolymorphicMapType_19682| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19682_22524_68713#PolymorphicMapType_19682| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_22524_53) ) (!  (not (select (|PolymorphicMapType_19682_22524_53#PolymorphicMapType_19682| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19682_22524_53#PolymorphicMapType_19682| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_22524_10396) ) (!  (not (select (|PolymorphicMapType_19682_22524_10396#PolymorphicMapType_19682| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19682_22524_10396#PolymorphicMapType_19682| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_22524_1218) ) (!  (not (select (|PolymorphicMapType_19682_22524_1682#PolymorphicMapType_19682| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19682_22524_1682#PolymorphicMapType_19682| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_10393_10430) ) (!  (not (select (|PolymorphicMapType_19682_10393_22558#PolymorphicMapType_19682| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19682_10393_22558#PolymorphicMapType_19682| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_10393_22544) ) (!  (not (select (|PolymorphicMapType_19682_10393_67665#PolymorphicMapType_19682| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19682_10393_67665#PolymorphicMapType_19682| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_19193_53) ) (!  (not (select (|PolymorphicMapType_19682_10393_53#PolymorphicMapType_19682| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19682_10393_53#PolymorphicMapType_19682| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_19206_19207) ) (!  (not (select (|PolymorphicMapType_19682_10395_10396#PolymorphicMapType_19682| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19682_10395_10396#PolymorphicMapType_19682| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_23398_1682) ) (!  (not (select (|PolymorphicMapType_19682_10393_1682#PolymorphicMapType_19682| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19682_10393_1682#PolymorphicMapType_19682| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_10429_10430 (List this))
 :qid |stdinbpl.371:15|
 :skolemid |35|
 :pattern ( (List this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_19133) (this@@0 T@Ref) ) (! (dummyFunction_1930 (|sum_rec#triggerStateless| this@@0))
 :qid |stdinbpl.238:15|
 :skolemid |30|
 :pattern ( (|sum_rec'| Heap@@0 this@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_19133) (this@@1 T@Ref) ) (! (|List#everUsed_10429| (List this@@1))
 :qid |stdinbpl.390:15|
 :skolemid |39|
 :pattern ( (|List#trigger_10429| Heap@@1 (List this@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_19133) (this@@2 T@Ref) ) (!  (and (= (sum_rec Heap@@2 this@@2) (|sum_rec'| Heap@@2 this@@2)) (dummyFunction_1930 (|sum_rec#triggerStateless| this@@2)))
 :qid |stdinbpl.234:15|
 :skolemid |29|
 :pattern ( (sum_rec Heap@@2 this@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_19133) (ExhaleHeap T@PolymorphicMapType_19133) (Mask@@0 T@PolymorphicMapType_19154) (pm_f_4 T@Field_22557_22558) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_22524_10430 Mask@@0 null pm_f_4) (IsPredicateField_10358_10359 pm_f_4)) (= (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@3) null (PredicateMaskField_22524 pm_f_4)) (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| ExhaleHeap) null (PredicateMaskField_22524 pm_f_4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_10358_10359 pm_f_4) (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| ExhaleHeap) null (PredicateMaskField_22524 pm_f_4)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_19133) (ExhaleHeap@@0 T@PolymorphicMapType_19133) (Mask@@1 T@PolymorphicMapType_19154) (pm_f_4@@0 T@Field_23865_23866) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10429_10430 Mask@@1 null pm_f_4@@0) (IsPredicateField_10429_10430 pm_f_4@@0)) (= (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@4) null (PredicateMaskField_10429 pm_f_4@@0)) (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| ExhaleHeap@@0) null (PredicateMaskField_10429 pm_f_4@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_10429_10430 pm_f_4@@0) (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| ExhaleHeap@@0) null (PredicateMaskField_10429 pm_f_4@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_19133) (ExhaleHeap@@1 T@PolymorphicMapType_19133) (Mask@@2 T@PolymorphicMapType_19154) (pm_f_4@@1 T@Field_10393_10430) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_10393_10430 Mask@@2 null pm_f_4@@1) (IsPredicateField_10393_66062 pm_f_4@@1)) (= (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@5) null (PredicateMaskField_10393 pm_f_4@@1)) (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| ExhaleHeap@@1) null (PredicateMaskField_10393 pm_f_4@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsPredicateField_10393_66062 pm_f_4@@1) (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| ExhaleHeap@@1) null (PredicateMaskField_10393 pm_f_4@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_19133) (ExhaleHeap@@2 T@PolymorphicMapType_19133) (Mask@@3 T@PolymorphicMapType_19154) (pm_f_4@@2 T@Field_22557_22558) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_22524_10430 Mask@@3 null pm_f_4@@2) (IsWandField_10358_10359 pm_f_4@@2)) (= (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@6) null (WandMaskField_10358 pm_f_4@@2)) (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| ExhaleHeap@@2) null (WandMaskField_10358 pm_f_4@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_10358_10359 pm_f_4@@2) (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| ExhaleHeap@@2) null (WandMaskField_10358 pm_f_4@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_19133) (ExhaleHeap@@3 T@PolymorphicMapType_19133) (Mask@@4 T@PolymorphicMapType_19154) (pm_f_4@@3 T@Field_23865_23866) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_10429_10430 Mask@@4 null pm_f_4@@3) (IsWandField_10429_71411 pm_f_4@@3)) (= (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@7) null (WandMaskField_10429 pm_f_4@@3)) (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| ExhaleHeap@@3) null (WandMaskField_10429 pm_f_4@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsWandField_10429_71411 pm_f_4@@3) (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| ExhaleHeap@@3) null (WandMaskField_10429 pm_f_4@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_19133) (ExhaleHeap@@4 T@PolymorphicMapType_19133) (Mask@@5 T@PolymorphicMapType_19154) (pm_f_4@@4 T@Field_10393_10430) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_10393_10430 Mask@@5 null pm_f_4@@4) (IsWandField_10393_71054 pm_f_4@@4)) (= (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@8) null (WandMaskField_10393 pm_f_4@@4)) (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| ExhaleHeap@@4) null (WandMaskField_10393 pm_f_4@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsWandField_10393_71054 pm_f_4@@4) (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| ExhaleHeap@@4) null (WandMaskField_10393 pm_f_4@@4)))
)))
(assert (forall ((this@@3 T@Ref) (this2 T@Ref) ) (!  (=> (= (List this@@3) (List this2)) (= this@@3 this2))
 :qid |stdinbpl.381:15|
 :skolemid |37|
 :pattern ( (List this@@3) (List this2))
)))
(assert (forall ((this@@4 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|List#sm| this@@4) (|List#sm| this2@@0)) (= this@@4 this2@@0))
 :qid |stdinbpl.385:15|
 :skolemid |38|
 :pattern ( (|List#sm| this@@4) (|List#sm| this2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_19133) (ExhaleHeap@@5 T@PolymorphicMapType_19133) (Mask@@6 T@PolymorphicMapType_19154) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@9) o_13 $allocated) (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| ExhaleHeap@@5) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| ExhaleHeap@@5) o_13 $allocated))
)))
(assert (forall ((p T@Field_22557_22558) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_22524_22524 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22524_22524 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_10393_10430) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_19193_19193 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19193_19193 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_23865_23866) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_10429_10429 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10429_10429 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_10393_1682 v_35)))
(assert  (not (IsWandField_10393_1682 v_35)))
(assert  (not (IsPredicateField_10395_10396 n_85)))
(assert  (not (IsWandField_10395_10396 n_85)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_19133) (ExhaleHeap@@6 T@PolymorphicMapType_19133) (Mask@@7 T@PolymorphicMapType_19154) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@10 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_19154) (o_2@@14 T@Ref) (f_4@@14 T@Field_22539_22544) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_19154_10345_78587#PolymorphicMapType_19154| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_10345_82014 f_4@@14))) (not (IsWandField_10345_82030 f_4@@14))) (<= (select (|PolymorphicMapType_19154_10345_78587#PolymorphicMapType_19154| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_19154_10345_78587#PolymorphicMapType_19154| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_19154) (o_2@@15 T@Ref) (f_4@@15 T@Field_22524_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_19154_10345_53#PolymorphicMapType_19154| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_10345_53 f_4@@15))) (not (IsWandField_10345_53 f_4@@15))) (<= (select (|PolymorphicMapType_19154_10345_53#PolymorphicMapType_19154| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_19154_10345_53#PolymorphicMapType_19154| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_19154) (o_2@@16 T@Ref) (f_4@@16 T@Field_22524_10396) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_19154_10345_10396#PolymorphicMapType_19154| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_10345_10396 f_4@@16))) (not (IsWandField_10345_10396 f_4@@16))) (<= (select (|PolymorphicMapType_19154_10345_10396#PolymorphicMapType_19154| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_19154_10345_10396#PolymorphicMapType_19154| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_19154) (o_2@@17 T@Ref) (f_4@@17 T@Field_22524_1218) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_19154_10345_1218#PolymorphicMapType_19154| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_10345_1218 f_4@@17))) (not (IsWandField_10345_1218 f_4@@17))) (<= (select (|PolymorphicMapType_19154_10345_1218#PolymorphicMapType_19154| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_19154_10345_1218#PolymorphicMapType_19154| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_19154) (o_2@@18 T@Ref) (f_4@@18 T@Field_22557_22558) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_19154_10345_10430#PolymorphicMapType_19154| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_10358_10359 f_4@@18))) (not (IsWandField_10358_10359 f_4@@18))) (<= (select (|PolymorphicMapType_19154_10345_10430#PolymorphicMapType_19154| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_19154_10345_10430#PolymorphicMapType_19154| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_19154) (o_2@@19 T@Ref) (f_4@@19 T@Field_10393_22544) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_19154_10393_78173#PolymorphicMapType_19154| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_10393_81197 f_4@@19))) (not (IsWandField_10393_81213 f_4@@19))) (<= (select (|PolymorphicMapType_19154_10393_78173#PolymorphicMapType_19154| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_19154_10393_78173#PolymorphicMapType_19154| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_19154) (o_2@@20 T@Ref) (f_4@@20 T@Field_19193_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_19154_10393_53#PolymorphicMapType_19154| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_10393_53 f_4@@20))) (not (IsWandField_10393_53 f_4@@20))) (<= (select (|PolymorphicMapType_19154_10393_53#PolymorphicMapType_19154| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_19154_10393_53#PolymorphicMapType_19154| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_19154) (o_2@@21 T@Ref) (f_4@@21 T@Field_19206_19207) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_19154_10395_10396#PolymorphicMapType_19154| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_10395_10396 f_4@@21))) (not (IsWandField_10395_10396 f_4@@21))) (<= (select (|PolymorphicMapType_19154_10395_10396#PolymorphicMapType_19154| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_19154_10395_10396#PolymorphicMapType_19154| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_19154) (o_2@@22 T@Ref) (f_4@@22 T@Field_23398_1682) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_19154_10393_1682#PolymorphicMapType_19154| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_10393_1682 f_4@@22))) (not (IsWandField_10393_1682 f_4@@22))) (<= (select (|PolymorphicMapType_19154_10393_1682#PolymorphicMapType_19154| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_19154_10393_1682#PolymorphicMapType_19154| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_19154) (o_2@@23 T@Ref) (f_4@@23 T@Field_10393_10430) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_19154_10393_10430#PolymorphicMapType_19154| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_10393_66062 f_4@@23))) (not (IsWandField_10393_71054 f_4@@23))) (<= (select (|PolymorphicMapType_19154_10393_10430#PolymorphicMapType_19154| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_19154_10393_10430#PolymorphicMapType_19154| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_19154) (o_2@@24 T@Ref) (f_4@@24 T@Field_26602_26607) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_19154_10429_77774#PolymorphicMapType_19154| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_10429_80394 f_4@@24))) (not (IsWandField_10429_80410 f_4@@24))) (<= (select (|PolymorphicMapType_19154_10429_77774#PolymorphicMapType_19154| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_19154_10429_77774#PolymorphicMapType_19154| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_19154) (o_2@@25 T@Ref) (f_4@@25 T@Field_10429_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_19154_10429_53#PolymorphicMapType_19154| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_10429_53 f_4@@25))) (not (IsWandField_10429_53 f_4@@25))) (<= (select (|PolymorphicMapType_19154_10429_53#PolymorphicMapType_19154| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_19154_10429_53#PolymorphicMapType_19154| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_19154) (o_2@@26 T@Ref) (f_4@@26 T@Field_10429_10396) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_19154_10429_10396#PolymorphicMapType_19154| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_10429_10396 f_4@@26))) (not (IsWandField_10429_10396 f_4@@26))) (<= (select (|PolymorphicMapType_19154_10429_10396#PolymorphicMapType_19154| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_19154_10429_10396#PolymorphicMapType_19154| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_19154) (o_2@@27 T@Ref) (f_4@@27 T@Field_10429_1682) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_19154_10429_1682#PolymorphicMapType_19154| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_10429_1682 f_4@@27))) (not (IsWandField_10429_1682 f_4@@27))) (<= (select (|PolymorphicMapType_19154_10429_1682#PolymorphicMapType_19154| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_19154_10429_1682#PolymorphicMapType_19154| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_19154) (o_2@@28 T@Ref) (f_4@@28 T@Field_23865_23866) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_10429_10430 f_4@@28))) (not (IsWandField_10429_71411 f_4@@28))) (<= (select (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_19154) (o_2@@29 T@Ref) (f_4@@29 T@Field_22539_22544) ) (! (= (HasDirectPerm_22524_65817 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_19154_10345_78587#PolymorphicMapType_19154| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22524_65817 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_19154) (o_2@@30 T@Ref) (f_4@@30 T@Field_22524_53) ) (! (= (HasDirectPerm_22524_53 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_19154_10345_53#PolymorphicMapType_19154| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22524_53 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_19154) (o_2@@31 T@Ref) (f_4@@31 T@Field_22557_22558) ) (! (= (HasDirectPerm_22524_10430 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_19154_10345_10430#PolymorphicMapType_19154| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22524_10430 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_19154) (o_2@@32 T@Ref) (f_4@@32 T@Field_22524_10396) ) (! (= (HasDirectPerm_22524_10396 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_19154_10345_10396#PolymorphicMapType_19154| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22524_10396 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_19154) (o_2@@33 T@Ref) (f_4@@33 T@Field_22524_1218) ) (! (= (HasDirectPerm_22524_1682 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_19154_10345_1218#PolymorphicMapType_19154| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22524_1682 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_19154) (o_2@@34 T@Ref) (f_4@@34 T@Field_26602_26607) ) (! (= (HasDirectPerm_10429_64683 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_19154_10429_77774#PolymorphicMapType_19154| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10429_64683 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_19154) (o_2@@35 T@Ref) (f_4@@35 T@Field_10429_53) ) (! (= (HasDirectPerm_10429_53 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_19154_10429_53#PolymorphicMapType_19154| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10429_53 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_19154) (o_2@@36 T@Ref) (f_4@@36 T@Field_23865_23866) ) (! (= (HasDirectPerm_10429_10430 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10429_10430 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_19154) (o_2@@37 T@Ref) (f_4@@37 T@Field_10429_10396) ) (! (= (HasDirectPerm_10429_10396 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_19154_10429_10396#PolymorphicMapType_19154| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10429_10396 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_19154) (o_2@@38 T@Ref) (f_4@@38 T@Field_10429_1682) ) (! (= (HasDirectPerm_10429_1682 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_19154_10429_1682#PolymorphicMapType_19154| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10429_1682 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_19154) (o_2@@39 T@Ref) (f_4@@39 T@Field_10393_22544) ) (! (= (HasDirectPerm_10393_63542 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_19154_10393_78173#PolymorphicMapType_19154| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10393_63542 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_19154) (o_2@@40 T@Ref) (f_4@@40 T@Field_19193_53) ) (! (= (HasDirectPerm_10393_53 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_19154_10393_53#PolymorphicMapType_19154| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10393_53 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_19154) (o_2@@41 T@Ref) (f_4@@41 T@Field_10393_10430) ) (! (= (HasDirectPerm_10393_10430 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_19154_10393_10430#PolymorphicMapType_19154| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10393_10430 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_19154) (o_2@@42 T@Ref) (f_4@@42 T@Field_19206_19207) ) (! (= (HasDirectPerm_10395_10396 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_19154_10395_10396#PolymorphicMapType_19154| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10395_10396 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_19154) (o_2@@43 T@Ref) (f_4@@43 T@Field_23398_1682) ) (! (= (HasDirectPerm_10393_1682 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_19154_10393_1682#PolymorphicMapType_19154| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10393_1682 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_19133) (ExhaleHeap@@7 T@PolymorphicMapType_19133) (Mask@@38 T@PolymorphicMapType_19154) (o_13@@0 T@Ref) (f_20 T@Field_22539_22544) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_22524_65817 Mask@@38 o_13@@0 f_20) (= (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@11) o_13@@0 f_20) (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| ExhaleHeap@@7) o_13@@0 f_20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| ExhaleHeap@@7) o_13@@0 f_20))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_19133) (ExhaleHeap@@8 T@PolymorphicMapType_19133) (Mask@@39 T@PolymorphicMapType_19154) (o_13@@1 T@Ref) (f_20@@0 T@Field_22524_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_22524_53 Mask@@39 o_13@@1 f_20@@0) (= (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@12) o_13@@1 f_20@@0) (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| ExhaleHeap@@8) o_13@@1 f_20@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| ExhaleHeap@@8) o_13@@1 f_20@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_19133) (ExhaleHeap@@9 T@PolymorphicMapType_19133) (Mask@@40 T@PolymorphicMapType_19154) (o_13@@2 T@Ref) (f_20@@1 T@Field_22557_22558) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_22524_10430 Mask@@40 o_13@@2 f_20@@1) (= (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@13) o_13@@2 f_20@@1) (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| ExhaleHeap@@9) o_13@@2 f_20@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| ExhaleHeap@@9) o_13@@2 f_20@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_19133) (ExhaleHeap@@10 T@PolymorphicMapType_19133) (Mask@@41 T@PolymorphicMapType_19154) (o_13@@3 T@Ref) (f_20@@2 T@Field_22524_10396) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_22524_10396 Mask@@41 o_13@@3 f_20@@2) (= (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@14) o_13@@3 f_20@@2) (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| ExhaleHeap@@10) o_13@@3 f_20@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| ExhaleHeap@@10) o_13@@3 f_20@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_19133) (ExhaleHeap@@11 T@PolymorphicMapType_19133) (Mask@@42 T@PolymorphicMapType_19154) (o_13@@4 T@Ref) (f_20@@3 T@Field_22524_1218) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_22524_1682 Mask@@42 o_13@@4 f_20@@3) (= (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@15) o_13@@4 f_20@@3) (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| ExhaleHeap@@11) o_13@@4 f_20@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| ExhaleHeap@@11) o_13@@4 f_20@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_19133) (ExhaleHeap@@12 T@PolymorphicMapType_19133) (Mask@@43 T@PolymorphicMapType_19154) (o_13@@5 T@Ref) (f_20@@4 T@Field_26602_26607) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_10429_64683 Mask@@43 o_13@@5 f_20@@4) (= (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@16) o_13@@5 f_20@@4) (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| ExhaleHeap@@12) o_13@@5 f_20@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| ExhaleHeap@@12) o_13@@5 f_20@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_19133) (ExhaleHeap@@13 T@PolymorphicMapType_19133) (Mask@@44 T@PolymorphicMapType_19154) (o_13@@6 T@Ref) (f_20@@5 T@Field_10429_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_10429_53 Mask@@44 o_13@@6 f_20@@5) (= (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@17) o_13@@6 f_20@@5) (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| ExhaleHeap@@13) o_13@@6 f_20@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| ExhaleHeap@@13) o_13@@6 f_20@@5))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_19133) (ExhaleHeap@@14 T@PolymorphicMapType_19133) (Mask@@45 T@PolymorphicMapType_19154) (o_13@@7 T@Ref) (f_20@@6 T@Field_23865_23866) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_10429_10430 Mask@@45 o_13@@7 f_20@@6) (= (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@18) o_13@@7 f_20@@6) (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| ExhaleHeap@@14) o_13@@7 f_20@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| ExhaleHeap@@14) o_13@@7 f_20@@6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_19133) (ExhaleHeap@@15 T@PolymorphicMapType_19133) (Mask@@46 T@PolymorphicMapType_19154) (o_13@@8 T@Ref) (f_20@@7 T@Field_10429_10396) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_10429_10396 Mask@@46 o_13@@8 f_20@@7) (= (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@19) o_13@@8 f_20@@7) (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| ExhaleHeap@@15) o_13@@8 f_20@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| ExhaleHeap@@15) o_13@@8 f_20@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_19133) (ExhaleHeap@@16 T@PolymorphicMapType_19133) (Mask@@47 T@PolymorphicMapType_19154) (o_13@@9 T@Ref) (f_20@@8 T@Field_10429_1682) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_10429_1682 Mask@@47 o_13@@9 f_20@@8) (= (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@20) o_13@@9 f_20@@8) (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| ExhaleHeap@@16) o_13@@9 f_20@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| ExhaleHeap@@16) o_13@@9 f_20@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_19133) (ExhaleHeap@@17 T@PolymorphicMapType_19133) (Mask@@48 T@PolymorphicMapType_19154) (o_13@@10 T@Ref) (f_20@@9 T@Field_10393_22544) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_10393_63542 Mask@@48 o_13@@10 f_20@@9) (= (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@21) o_13@@10 f_20@@9) (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| ExhaleHeap@@17) o_13@@10 f_20@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| ExhaleHeap@@17) o_13@@10 f_20@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_19133) (ExhaleHeap@@18 T@PolymorphicMapType_19133) (Mask@@49 T@PolymorphicMapType_19154) (o_13@@11 T@Ref) (f_20@@10 T@Field_19193_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_10393_53 Mask@@49 o_13@@11 f_20@@10) (= (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@22) o_13@@11 f_20@@10) (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| ExhaleHeap@@18) o_13@@11 f_20@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| ExhaleHeap@@18) o_13@@11 f_20@@10))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_19133) (ExhaleHeap@@19 T@PolymorphicMapType_19133) (Mask@@50 T@PolymorphicMapType_19154) (o_13@@12 T@Ref) (f_20@@11 T@Field_10393_10430) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_10393_10430 Mask@@50 o_13@@12 f_20@@11) (= (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@23) o_13@@12 f_20@@11) (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| ExhaleHeap@@19) o_13@@12 f_20@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| ExhaleHeap@@19) o_13@@12 f_20@@11))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_19133) (ExhaleHeap@@20 T@PolymorphicMapType_19133) (Mask@@51 T@PolymorphicMapType_19154) (o_13@@13 T@Ref) (f_20@@12 T@Field_19206_19207) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_10395_10396 Mask@@51 o_13@@13 f_20@@12) (= (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@24) o_13@@13 f_20@@12) (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| ExhaleHeap@@20) o_13@@13 f_20@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| ExhaleHeap@@20) o_13@@13 f_20@@12))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_19133) (ExhaleHeap@@21 T@PolymorphicMapType_19133) (Mask@@52 T@PolymorphicMapType_19154) (o_13@@14 T@Ref) (f_20@@13 T@Field_23398_1682) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_10393_1682 Mask@@52 o_13@@14 f_20@@13) (= (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@25) o_13@@14 f_20@@13) (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| ExhaleHeap@@21) o_13@@14 f_20@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| ExhaleHeap@@21) o_13@@14 f_20@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_22539_22544) ) (! (= (select (|PolymorphicMapType_19154_10345_78587#PolymorphicMapType_19154| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19154_10345_78587#PolymorphicMapType_19154| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_22524_53) ) (! (= (select (|PolymorphicMapType_19154_10345_53#PolymorphicMapType_19154| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19154_10345_53#PolymorphicMapType_19154| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_22524_10396) ) (! (= (select (|PolymorphicMapType_19154_10345_10396#PolymorphicMapType_19154| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19154_10345_10396#PolymorphicMapType_19154| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_22524_1218) ) (! (= (select (|PolymorphicMapType_19154_10345_1218#PolymorphicMapType_19154| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19154_10345_1218#PolymorphicMapType_19154| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_22557_22558) ) (! (= (select (|PolymorphicMapType_19154_10345_10430#PolymorphicMapType_19154| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19154_10345_10430#PolymorphicMapType_19154| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_10393_22544) ) (! (= (select (|PolymorphicMapType_19154_10393_78173#PolymorphicMapType_19154| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19154_10393_78173#PolymorphicMapType_19154| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_19193_53) ) (! (= (select (|PolymorphicMapType_19154_10393_53#PolymorphicMapType_19154| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19154_10393_53#PolymorphicMapType_19154| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_19206_19207) ) (! (= (select (|PolymorphicMapType_19154_10395_10396#PolymorphicMapType_19154| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19154_10395_10396#PolymorphicMapType_19154| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_23398_1682) ) (! (= (select (|PolymorphicMapType_19154_10393_1682#PolymorphicMapType_19154| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19154_10393_1682#PolymorphicMapType_19154| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_10393_10430) ) (! (= (select (|PolymorphicMapType_19154_10393_10430#PolymorphicMapType_19154| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19154_10393_10430#PolymorphicMapType_19154| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_26602_26607) ) (! (= (select (|PolymorphicMapType_19154_10429_77774#PolymorphicMapType_19154| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19154_10429_77774#PolymorphicMapType_19154| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_10429_53) ) (! (= (select (|PolymorphicMapType_19154_10429_53#PolymorphicMapType_19154| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19154_10429_53#PolymorphicMapType_19154| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_10429_10396) ) (! (= (select (|PolymorphicMapType_19154_10429_10396#PolymorphicMapType_19154| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19154_10429_10396#PolymorphicMapType_19154| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_10429_1682) ) (! (= (select (|PolymorphicMapType_19154_10429_1682#PolymorphicMapType_19154| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19154_10429_1682#PolymorphicMapType_19154| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_23865_23866) ) (! (= (select (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_19154) (SummandMask1 T@PolymorphicMapType_19154) (SummandMask2 T@PolymorphicMapType_19154) (o_2@@59 T@Ref) (f_4@@59 T@Field_22539_22544) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_19154_10345_78587#PolymorphicMapType_19154| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_19154_10345_78587#PolymorphicMapType_19154| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_19154_10345_78587#PolymorphicMapType_19154| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19154_10345_78587#PolymorphicMapType_19154| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19154_10345_78587#PolymorphicMapType_19154| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19154_10345_78587#PolymorphicMapType_19154| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_19154) (SummandMask1@@0 T@PolymorphicMapType_19154) (SummandMask2@@0 T@PolymorphicMapType_19154) (o_2@@60 T@Ref) (f_4@@60 T@Field_22524_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_19154_10345_53#PolymorphicMapType_19154| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_19154_10345_53#PolymorphicMapType_19154| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_19154_10345_53#PolymorphicMapType_19154| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19154_10345_53#PolymorphicMapType_19154| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19154_10345_53#PolymorphicMapType_19154| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19154_10345_53#PolymorphicMapType_19154| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_19154) (SummandMask1@@1 T@PolymorphicMapType_19154) (SummandMask2@@1 T@PolymorphicMapType_19154) (o_2@@61 T@Ref) (f_4@@61 T@Field_22524_10396) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_19154_10345_10396#PolymorphicMapType_19154| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_19154_10345_10396#PolymorphicMapType_19154| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_19154_10345_10396#PolymorphicMapType_19154| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19154_10345_10396#PolymorphicMapType_19154| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19154_10345_10396#PolymorphicMapType_19154| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19154_10345_10396#PolymorphicMapType_19154| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_19154) (SummandMask1@@2 T@PolymorphicMapType_19154) (SummandMask2@@2 T@PolymorphicMapType_19154) (o_2@@62 T@Ref) (f_4@@62 T@Field_22524_1218) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_19154_10345_1218#PolymorphicMapType_19154| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_19154_10345_1218#PolymorphicMapType_19154| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_19154_10345_1218#PolymorphicMapType_19154| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19154_10345_1218#PolymorphicMapType_19154| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19154_10345_1218#PolymorphicMapType_19154| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19154_10345_1218#PolymorphicMapType_19154| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_19154) (SummandMask1@@3 T@PolymorphicMapType_19154) (SummandMask2@@3 T@PolymorphicMapType_19154) (o_2@@63 T@Ref) (f_4@@63 T@Field_22557_22558) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_19154_10345_10430#PolymorphicMapType_19154| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_19154_10345_10430#PolymorphicMapType_19154| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_19154_10345_10430#PolymorphicMapType_19154| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19154_10345_10430#PolymorphicMapType_19154| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19154_10345_10430#PolymorphicMapType_19154| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19154_10345_10430#PolymorphicMapType_19154| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_19154) (SummandMask1@@4 T@PolymorphicMapType_19154) (SummandMask2@@4 T@PolymorphicMapType_19154) (o_2@@64 T@Ref) (f_4@@64 T@Field_10393_22544) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_19154_10393_78173#PolymorphicMapType_19154| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_19154_10393_78173#PolymorphicMapType_19154| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_19154_10393_78173#PolymorphicMapType_19154| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19154_10393_78173#PolymorphicMapType_19154| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19154_10393_78173#PolymorphicMapType_19154| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19154_10393_78173#PolymorphicMapType_19154| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_19154) (SummandMask1@@5 T@PolymorphicMapType_19154) (SummandMask2@@5 T@PolymorphicMapType_19154) (o_2@@65 T@Ref) (f_4@@65 T@Field_19193_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_19154_10393_53#PolymorphicMapType_19154| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_19154_10393_53#PolymorphicMapType_19154| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_19154_10393_53#PolymorphicMapType_19154| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19154_10393_53#PolymorphicMapType_19154| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19154_10393_53#PolymorphicMapType_19154| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19154_10393_53#PolymorphicMapType_19154| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_19154) (SummandMask1@@6 T@PolymorphicMapType_19154) (SummandMask2@@6 T@PolymorphicMapType_19154) (o_2@@66 T@Ref) (f_4@@66 T@Field_19206_19207) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_19154_10395_10396#PolymorphicMapType_19154| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_19154_10395_10396#PolymorphicMapType_19154| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_19154_10395_10396#PolymorphicMapType_19154| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19154_10395_10396#PolymorphicMapType_19154| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19154_10395_10396#PolymorphicMapType_19154| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19154_10395_10396#PolymorphicMapType_19154| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_19154) (SummandMask1@@7 T@PolymorphicMapType_19154) (SummandMask2@@7 T@PolymorphicMapType_19154) (o_2@@67 T@Ref) (f_4@@67 T@Field_23398_1682) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_19154_10393_1682#PolymorphicMapType_19154| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_19154_10393_1682#PolymorphicMapType_19154| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_19154_10393_1682#PolymorphicMapType_19154| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19154_10393_1682#PolymorphicMapType_19154| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19154_10393_1682#PolymorphicMapType_19154| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19154_10393_1682#PolymorphicMapType_19154| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_19154) (SummandMask1@@8 T@PolymorphicMapType_19154) (SummandMask2@@8 T@PolymorphicMapType_19154) (o_2@@68 T@Ref) (f_4@@68 T@Field_10393_10430) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_19154_10393_10430#PolymorphicMapType_19154| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_19154_10393_10430#PolymorphicMapType_19154| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_19154_10393_10430#PolymorphicMapType_19154| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19154_10393_10430#PolymorphicMapType_19154| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19154_10393_10430#PolymorphicMapType_19154| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19154_10393_10430#PolymorphicMapType_19154| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_19154) (SummandMask1@@9 T@PolymorphicMapType_19154) (SummandMask2@@9 T@PolymorphicMapType_19154) (o_2@@69 T@Ref) (f_4@@69 T@Field_26602_26607) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_19154_10429_77774#PolymorphicMapType_19154| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_19154_10429_77774#PolymorphicMapType_19154| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_19154_10429_77774#PolymorphicMapType_19154| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_19154_10429_77774#PolymorphicMapType_19154| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_19154_10429_77774#PolymorphicMapType_19154| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_19154_10429_77774#PolymorphicMapType_19154| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_19154) (SummandMask1@@10 T@PolymorphicMapType_19154) (SummandMask2@@10 T@PolymorphicMapType_19154) (o_2@@70 T@Ref) (f_4@@70 T@Field_10429_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_19154_10429_53#PolymorphicMapType_19154| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_19154_10429_53#PolymorphicMapType_19154| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_19154_10429_53#PolymorphicMapType_19154| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_19154_10429_53#PolymorphicMapType_19154| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_19154_10429_53#PolymorphicMapType_19154| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_19154_10429_53#PolymorphicMapType_19154| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_19154) (SummandMask1@@11 T@PolymorphicMapType_19154) (SummandMask2@@11 T@PolymorphicMapType_19154) (o_2@@71 T@Ref) (f_4@@71 T@Field_10429_10396) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_19154_10429_10396#PolymorphicMapType_19154| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_19154_10429_10396#PolymorphicMapType_19154| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_19154_10429_10396#PolymorphicMapType_19154| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_19154_10429_10396#PolymorphicMapType_19154| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_19154_10429_10396#PolymorphicMapType_19154| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_19154_10429_10396#PolymorphicMapType_19154| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_19154) (SummandMask1@@12 T@PolymorphicMapType_19154) (SummandMask2@@12 T@PolymorphicMapType_19154) (o_2@@72 T@Ref) (f_4@@72 T@Field_10429_1682) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_19154_10429_1682#PolymorphicMapType_19154| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_19154_10429_1682#PolymorphicMapType_19154| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_19154_10429_1682#PolymorphicMapType_19154| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_19154_10429_1682#PolymorphicMapType_19154| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_19154_10429_1682#PolymorphicMapType_19154| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_19154_10429_1682#PolymorphicMapType_19154| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_19154) (SummandMask1@@13 T@PolymorphicMapType_19154) (SummandMask2@@13 T@PolymorphicMapType_19154) (o_2@@73 T@Ref) (f_4@@73 T@Field_23865_23866) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_19133) (ExhaleHeap@@22 T@PolymorphicMapType_19133) (Mask@@53 T@PolymorphicMapType_19154) (pm_f_4@@5 T@Field_22557_22558) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_22524_10430 Mask@@53 null pm_f_4@@5) (IsPredicateField_10358_10359 pm_f_4@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4 T@Ref) (f_20@@14 T@Field_23398_1682) ) (!  (=> (select (|PolymorphicMapType_19682_10393_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@26) null (PredicateMaskField_22524 pm_f_4@@5))) o2_4 f_20@@14) (= (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@26) o2_4 f_20@@14) (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4 f_20@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4 f_20@@14))
)) (forall ((o2_4@@0 T@Ref) (f_20@@15 T@Field_19206_19207) ) (!  (=> (select (|PolymorphicMapType_19682_10395_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@26) null (PredicateMaskField_22524 pm_f_4@@5))) o2_4@@0 f_20@@15) (= (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@26) o2_4@@0 f_20@@15) (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@0 f_20@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@0 f_20@@15))
))) (forall ((o2_4@@1 T@Ref) (f_20@@16 T@Field_19193_53) ) (!  (=> (select (|PolymorphicMapType_19682_10393_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@26) null (PredicateMaskField_22524 pm_f_4@@5))) o2_4@@1 f_20@@16) (= (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@26) o2_4@@1 f_20@@16) (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@1 f_20@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@1 f_20@@16))
))) (forall ((o2_4@@2 T@Ref) (f_20@@17 T@Field_10393_22544) ) (!  (=> (select (|PolymorphicMapType_19682_10393_67665#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@26) null (PredicateMaskField_22524 pm_f_4@@5))) o2_4@@2 f_20@@17) (= (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@26) o2_4@@2 f_20@@17) (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@2 f_20@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@2 f_20@@17))
))) (forall ((o2_4@@3 T@Ref) (f_20@@18 T@Field_10393_10430) ) (!  (=> (select (|PolymorphicMapType_19682_10393_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@26) null (PredicateMaskField_22524 pm_f_4@@5))) o2_4@@3 f_20@@18) (= (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@26) o2_4@@3 f_20@@18) (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@3 f_20@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@3 f_20@@18))
))) (forall ((o2_4@@4 T@Ref) (f_20@@19 T@Field_22524_1218) ) (!  (=> (select (|PolymorphicMapType_19682_22524_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@26) null (PredicateMaskField_22524 pm_f_4@@5))) o2_4@@4 f_20@@19) (= (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@26) o2_4@@4 f_20@@19) (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@4 f_20@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@4 f_20@@19))
))) (forall ((o2_4@@5 T@Ref) (f_20@@20 T@Field_22524_10396) ) (!  (=> (select (|PolymorphicMapType_19682_22524_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@26) null (PredicateMaskField_22524 pm_f_4@@5))) o2_4@@5 f_20@@20) (= (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@26) o2_4@@5 f_20@@20) (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@5 f_20@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@5 f_20@@20))
))) (forall ((o2_4@@6 T@Ref) (f_20@@21 T@Field_22524_53) ) (!  (=> (select (|PolymorphicMapType_19682_22524_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@26) null (PredicateMaskField_22524 pm_f_4@@5))) o2_4@@6 f_20@@21) (= (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@26) o2_4@@6 f_20@@21) (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@6 f_20@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@6 f_20@@21))
))) (forall ((o2_4@@7 T@Ref) (f_20@@22 T@Field_22539_22544) ) (!  (=> (select (|PolymorphicMapType_19682_22524_68713#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@26) null (PredicateMaskField_22524 pm_f_4@@5))) o2_4@@7 f_20@@22) (= (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@26) o2_4@@7 f_20@@22) (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@7 f_20@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@7 f_20@@22))
))) (forall ((o2_4@@8 T@Ref) (f_20@@23 T@Field_22557_22558) ) (!  (=> (select (|PolymorphicMapType_19682_22524_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@26) null (PredicateMaskField_22524 pm_f_4@@5))) o2_4@@8 f_20@@23) (= (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@26) o2_4@@8 f_20@@23) (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@8 f_20@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@8 f_20@@23))
))) (forall ((o2_4@@9 T@Ref) (f_20@@24 T@Field_10429_1682) ) (!  (=> (select (|PolymorphicMapType_19682_23865_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@26) null (PredicateMaskField_22524 pm_f_4@@5))) o2_4@@9 f_20@@24) (= (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@26) o2_4@@9 f_20@@24) (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@9 f_20@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@9 f_20@@24))
))) (forall ((o2_4@@10 T@Ref) (f_20@@25 T@Field_10429_10396) ) (!  (=> (select (|PolymorphicMapType_19682_23865_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@26) null (PredicateMaskField_22524 pm_f_4@@5))) o2_4@@10 f_20@@25) (= (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@26) o2_4@@10 f_20@@25) (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@10 f_20@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@10 f_20@@25))
))) (forall ((o2_4@@11 T@Ref) (f_20@@26 T@Field_10429_53) ) (!  (=> (select (|PolymorphicMapType_19682_23865_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@26) null (PredicateMaskField_22524 pm_f_4@@5))) o2_4@@11 f_20@@26) (= (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@26) o2_4@@11 f_20@@26) (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@11 f_20@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@11 f_20@@26))
))) (forall ((o2_4@@12 T@Ref) (f_20@@27 T@Field_26602_26607) ) (!  (=> (select (|PolymorphicMapType_19682_23865_69761#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@26) null (PredicateMaskField_22524 pm_f_4@@5))) o2_4@@12 f_20@@27) (= (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@26) o2_4@@12 f_20@@27) (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@12 f_20@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@12 f_20@@27))
))) (forall ((o2_4@@13 T@Ref) (f_20@@28 T@Field_23865_23866) ) (!  (=> (select (|PolymorphicMapType_19682_23865_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@26) null (PredicateMaskField_22524 pm_f_4@@5))) o2_4@@13 f_20@@28) (= (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@26) o2_4@@13 f_20@@28) (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@13 f_20@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| ExhaleHeap@@22) o2_4@@13 f_20@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@53) (IsPredicateField_10358_10359 pm_f_4@@5))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_19133) (ExhaleHeap@@23 T@PolymorphicMapType_19133) (Mask@@54 T@PolymorphicMapType_19154) (pm_f_4@@6 T@Field_23865_23866) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_10429_10430 Mask@@54 null pm_f_4@@6) (IsPredicateField_10429_10430 pm_f_4@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@14 T@Ref) (f_20@@29 T@Field_23398_1682) ) (!  (=> (select (|PolymorphicMapType_19682_10393_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@27) null (PredicateMaskField_10429 pm_f_4@@6))) o2_4@@14 f_20@@29) (= (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@27) o2_4@@14 f_20@@29) (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@14 f_20@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@14 f_20@@29))
)) (forall ((o2_4@@15 T@Ref) (f_20@@30 T@Field_19206_19207) ) (!  (=> (select (|PolymorphicMapType_19682_10395_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@27) null (PredicateMaskField_10429 pm_f_4@@6))) o2_4@@15 f_20@@30) (= (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@27) o2_4@@15 f_20@@30) (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@15 f_20@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@15 f_20@@30))
))) (forall ((o2_4@@16 T@Ref) (f_20@@31 T@Field_19193_53) ) (!  (=> (select (|PolymorphicMapType_19682_10393_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@27) null (PredicateMaskField_10429 pm_f_4@@6))) o2_4@@16 f_20@@31) (= (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@27) o2_4@@16 f_20@@31) (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@16 f_20@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@16 f_20@@31))
))) (forall ((o2_4@@17 T@Ref) (f_20@@32 T@Field_10393_22544) ) (!  (=> (select (|PolymorphicMapType_19682_10393_67665#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@27) null (PredicateMaskField_10429 pm_f_4@@6))) o2_4@@17 f_20@@32) (= (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@27) o2_4@@17 f_20@@32) (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@17 f_20@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@17 f_20@@32))
))) (forall ((o2_4@@18 T@Ref) (f_20@@33 T@Field_10393_10430) ) (!  (=> (select (|PolymorphicMapType_19682_10393_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@27) null (PredicateMaskField_10429 pm_f_4@@6))) o2_4@@18 f_20@@33) (= (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@27) o2_4@@18 f_20@@33) (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@18 f_20@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@18 f_20@@33))
))) (forall ((o2_4@@19 T@Ref) (f_20@@34 T@Field_22524_1218) ) (!  (=> (select (|PolymorphicMapType_19682_22524_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@27) null (PredicateMaskField_10429 pm_f_4@@6))) o2_4@@19 f_20@@34) (= (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@27) o2_4@@19 f_20@@34) (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@19 f_20@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@19 f_20@@34))
))) (forall ((o2_4@@20 T@Ref) (f_20@@35 T@Field_22524_10396) ) (!  (=> (select (|PolymorphicMapType_19682_22524_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@27) null (PredicateMaskField_10429 pm_f_4@@6))) o2_4@@20 f_20@@35) (= (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@27) o2_4@@20 f_20@@35) (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@20 f_20@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@20 f_20@@35))
))) (forall ((o2_4@@21 T@Ref) (f_20@@36 T@Field_22524_53) ) (!  (=> (select (|PolymorphicMapType_19682_22524_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@27) null (PredicateMaskField_10429 pm_f_4@@6))) o2_4@@21 f_20@@36) (= (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@27) o2_4@@21 f_20@@36) (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@21 f_20@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@21 f_20@@36))
))) (forall ((o2_4@@22 T@Ref) (f_20@@37 T@Field_22539_22544) ) (!  (=> (select (|PolymorphicMapType_19682_22524_68713#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@27) null (PredicateMaskField_10429 pm_f_4@@6))) o2_4@@22 f_20@@37) (= (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@27) o2_4@@22 f_20@@37) (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@22 f_20@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@22 f_20@@37))
))) (forall ((o2_4@@23 T@Ref) (f_20@@38 T@Field_22557_22558) ) (!  (=> (select (|PolymorphicMapType_19682_22524_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@27) null (PredicateMaskField_10429 pm_f_4@@6))) o2_4@@23 f_20@@38) (= (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@27) o2_4@@23 f_20@@38) (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@23 f_20@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@23 f_20@@38))
))) (forall ((o2_4@@24 T@Ref) (f_20@@39 T@Field_10429_1682) ) (!  (=> (select (|PolymorphicMapType_19682_23865_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@27) null (PredicateMaskField_10429 pm_f_4@@6))) o2_4@@24 f_20@@39) (= (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@27) o2_4@@24 f_20@@39) (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@24 f_20@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@24 f_20@@39))
))) (forall ((o2_4@@25 T@Ref) (f_20@@40 T@Field_10429_10396) ) (!  (=> (select (|PolymorphicMapType_19682_23865_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@27) null (PredicateMaskField_10429 pm_f_4@@6))) o2_4@@25 f_20@@40) (= (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@27) o2_4@@25 f_20@@40) (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@25 f_20@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@25 f_20@@40))
))) (forall ((o2_4@@26 T@Ref) (f_20@@41 T@Field_10429_53) ) (!  (=> (select (|PolymorphicMapType_19682_23865_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@27) null (PredicateMaskField_10429 pm_f_4@@6))) o2_4@@26 f_20@@41) (= (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@27) o2_4@@26 f_20@@41) (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@26 f_20@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@26 f_20@@41))
))) (forall ((o2_4@@27 T@Ref) (f_20@@42 T@Field_26602_26607) ) (!  (=> (select (|PolymorphicMapType_19682_23865_69761#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@27) null (PredicateMaskField_10429 pm_f_4@@6))) o2_4@@27 f_20@@42) (= (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@27) o2_4@@27 f_20@@42) (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@27 f_20@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@27 f_20@@42))
))) (forall ((o2_4@@28 T@Ref) (f_20@@43 T@Field_23865_23866) ) (!  (=> (select (|PolymorphicMapType_19682_23865_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@27) null (PredicateMaskField_10429 pm_f_4@@6))) o2_4@@28 f_20@@43) (= (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@27) o2_4@@28 f_20@@43) (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@28 f_20@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| ExhaleHeap@@23) o2_4@@28 f_20@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@54) (IsPredicateField_10429_10430 pm_f_4@@6))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_19133) (ExhaleHeap@@24 T@PolymorphicMapType_19133) (Mask@@55 T@PolymorphicMapType_19154) (pm_f_4@@7 T@Field_10393_10430) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_10393_10430 Mask@@55 null pm_f_4@@7) (IsPredicateField_10393_66062 pm_f_4@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@29 T@Ref) (f_20@@44 T@Field_23398_1682) ) (!  (=> (select (|PolymorphicMapType_19682_10393_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@28) null (PredicateMaskField_10393 pm_f_4@@7))) o2_4@@29 f_20@@44) (= (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@28) o2_4@@29 f_20@@44) (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@29 f_20@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@29 f_20@@44))
)) (forall ((o2_4@@30 T@Ref) (f_20@@45 T@Field_19206_19207) ) (!  (=> (select (|PolymorphicMapType_19682_10395_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@28) null (PredicateMaskField_10393 pm_f_4@@7))) o2_4@@30 f_20@@45) (= (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@28) o2_4@@30 f_20@@45) (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@30 f_20@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@30 f_20@@45))
))) (forall ((o2_4@@31 T@Ref) (f_20@@46 T@Field_19193_53) ) (!  (=> (select (|PolymorphicMapType_19682_10393_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@28) null (PredicateMaskField_10393 pm_f_4@@7))) o2_4@@31 f_20@@46) (= (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@28) o2_4@@31 f_20@@46) (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@31 f_20@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@31 f_20@@46))
))) (forall ((o2_4@@32 T@Ref) (f_20@@47 T@Field_10393_22544) ) (!  (=> (select (|PolymorphicMapType_19682_10393_67665#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@28) null (PredicateMaskField_10393 pm_f_4@@7))) o2_4@@32 f_20@@47) (= (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@28) o2_4@@32 f_20@@47) (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@32 f_20@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@32 f_20@@47))
))) (forall ((o2_4@@33 T@Ref) (f_20@@48 T@Field_10393_10430) ) (!  (=> (select (|PolymorphicMapType_19682_10393_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@28) null (PredicateMaskField_10393 pm_f_4@@7))) o2_4@@33 f_20@@48) (= (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@28) o2_4@@33 f_20@@48) (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@33 f_20@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@33 f_20@@48))
))) (forall ((o2_4@@34 T@Ref) (f_20@@49 T@Field_22524_1218) ) (!  (=> (select (|PolymorphicMapType_19682_22524_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@28) null (PredicateMaskField_10393 pm_f_4@@7))) o2_4@@34 f_20@@49) (= (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@28) o2_4@@34 f_20@@49) (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@34 f_20@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@34 f_20@@49))
))) (forall ((o2_4@@35 T@Ref) (f_20@@50 T@Field_22524_10396) ) (!  (=> (select (|PolymorphicMapType_19682_22524_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@28) null (PredicateMaskField_10393 pm_f_4@@7))) o2_4@@35 f_20@@50) (= (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@28) o2_4@@35 f_20@@50) (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@35 f_20@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@35 f_20@@50))
))) (forall ((o2_4@@36 T@Ref) (f_20@@51 T@Field_22524_53) ) (!  (=> (select (|PolymorphicMapType_19682_22524_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@28) null (PredicateMaskField_10393 pm_f_4@@7))) o2_4@@36 f_20@@51) (= (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@28) o2_4@@36 f_20@@51) (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@36 f_20@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@36 f_20@@51))
))) (forall ((o2_4@@37 T@Ref) (f_20@@52 T@Field_22539_22544) ) (!  (=> (select (|PolymorphicMapType_19682_22524_68713#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@28) null (PredicateMaskField_10393 pm_f_4@@7))) o2_4@@37 f_20@@52) (= (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@28) o2_4@@37 f_20@@52) (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@37 f_20@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@37 f_20@@52))
))) (forall ((o2_4@@38 T@Ref) (f_20@@53 T@Field_22557_22558) ) (!  (=> (select (|PolymorphicMapType_19682_22524_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@28) null (PredicateMaskField_10393 pm_f_4@@7))) o2_4@@38 f_20@@53) (= (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@28) o2_4@@38 f_20@@53) (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@38 f_20@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@38 f_20@@53))
))) (forall ((o2_4@@39 T@Ref) (f_20@@54 T@Field_10429_1682) ) (!  (=> (select (|PolymorphicMapType_19682_23865_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@28) null (PredicateMaskField_10393 pm_f_4@@7))) o2_4@@39 f_20@@54) (= (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@28) o2_4@@39 f_20@@54) (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@39 f_20@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@39 f_20@@54))
))) (forall ((o2_4@@40 T@Ref) (f_20@@55 T@Field_10429_10396) ) (!  (=> (select (|PolymorphicMapType_19682_23865_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@28) null (PredicateMaskField_10393 pm_f_4@@7))) o2_4@@40 f_20@@55) (= (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@28) o2_4@@40 f_20@@55) (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@40 f_20@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@40 f_20@@55))
))) (forall ((o2_4@@41 T@Ref) (f_20@@56 T@Field_10429_53) ) (!  (=> (select (|PolymorphicMapType_19682_23865_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@28) null (PredicateMaskField_10393 pm_f_4@@7))) o2_4@@41 f_20@@56) (= (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@28) o2_4@@41 f_20@@56) (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@41 f_20@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@41 f_20@@56))
))) (forall ((o2_4@@42 T@Ref) (f_20@@57 T@Field_26602_26607) ) (!  (=> (select (|PolymorphicMapType_19682_23865_69761#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@28) null (PredicateMaskField_10393 pm_f_4@@7))) o2_4@@42 f_20@@57) (= (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@28) o2_4@@42 f_20@@57) (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@42 f_20@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@42 f_20@@57))
))) (forall ((o2_4@@43 T@Ref) (f_20@@58 T@Field_23865_23866) ) (!  (=> (select (|PolymorphicMapType_19682_23865_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@28) null (PredicateMaskField_10393 pm_f_4@@7))) o2_4@@43 f_20@@58) (= (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@28) o2_4@@43 f_20@@58) (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@43 f_20@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| ExhaleHeap@@24) o2_4@@43 f_20@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@55) (IsPredicateField_10393_66062 pm_f_4@@7))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_19133) (ExhaleHeap@@25 T@PolymorphicMapType_19133) (Mask@@56 T@PolymorphicMapType_19154) (pm_f_4@@8 T@Field_22557_22558) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_22524_10430 Mask@@56 null pm_f_4@@8) (IsWandField_10358_10359 pm_f_4@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@44 T@Ref) (f_20@@59 T@Field_23398_1682) ) (!  (=> (select (|PolymorphicMapType_19682_10393_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@29) null (WandMaskField_10358 pm_f_4@@8))) o2_4@@44 f_20@@59) (= (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@29) o2_4@@44 f_20@@59) (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@44 f_20@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@44 f_20@@59))
)) (forall ((o2_4@@45 T@Ref) (f_20@@60 T@Field_19206_19207) ) (!  (=> (select (|PolymorphicMapType_19682_10395_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@29) null (WandMaskField_10358 pm_f_4@@8))) o2_4@@45 f_20@@60) (= (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@29) o2_4@@45 f_20@@60) (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@45 f_20@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@45 f_20@@60))
))) (forall ((o2_4@@46 T@Ref) (f_20@@61 T@Field_19193_53) ) (!  (=> (select (|PolymorphicMapType_19682_10393_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@29) null (WandMaskField_10358 pm_f_4@@8))) o2_4@@46 f_20@@61) (= (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@29) o2_4@@46 f_20@@61) (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@46 f_20@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@46 f_20@@61))
))) (forall ((o2_4@@47 T@Ref) (f_20@@62 T@Field_10393_22544) ) (!  (=> (select (|PolymorphicMapType_19682_10393_67665#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@29) null (WandMaskField_10358 pm_f_4@@8))) o2_4@@47 f_20@@62) (= (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@29) o2_4@@47 f_20@@62) (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@47 f_20@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@47 f_20@@62))
))) (forall ((o2_4@@48 T@Ref) (f_20@@63 T@Field_10393_10430) ) (!  (=> (select (|PolymorphicMapType_19682_10393_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@29) null (WandMaskField_10358 pm_f_4@@8))) o2_4@@48 f_20@@63) (= (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@29) o2_4@@48 f_20@@63) (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@48 f_20@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@48 f_20@@63))
))) (forall ((o2_4@@49 T@Ref) (f_20@@64 T@Field_22524_1218) ) (!  (=> (select (|PolymorphicMapType_19682_22524_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@29) null (WandMaskField_10358 pm_f_4@@8))) o2_4@@49 f_20@@64) (= (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@29) o2_4@@49 f_20@@64) (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@49 f_20@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@49 f_20@@64))
))) (forall ((o2_4@@50 T@Ref) (f_20@@65 T@Field_22524_10396) ) (!  (=> (select (|PolymorphicMapType_19682_22524_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@29) null (WandMaskField_10358 pm_f_4@@8))) o2_4@@50 f_20@@65) (= (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@29) o2_4@@50 f_20@@65) (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@50 f_20@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@50 f_20@@65))
))) (forall ((o2_4@@51 T@Ref) (f_20@@66 T@Field_22524_53) ) (!  (=> (select (|PolymorphicMapType_19682_22524_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@29) null (WandMaskField_10358 pm_f_4@@8))) o2_4@@51 f_20@@66) (= (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@29) o2_4@@51 f_20@@66) (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@51 f_20@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@51 f_20@@66))
))) (forall ((o2_4@@52 T@Ref) (f_20@@67 T@Field_22539_22544) ) (!  (=> (select (|PolymorphicMapType_19682_22524_68713#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@29) null (WandMaskField_10358 pm_f_4@@8))) o2_4@@52 f_20@@67) (= (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@29) o2_4@@52 f_20@@67) (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@52 f_20@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@52 f_20@@67))
))) (forall ((o2_4@@53 T@Ref) (f_20@@68 T@Field_22557_22558) ) (!  (=> (select (|PolymorphicMapType_19682_22524_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@29) null (WandMaskField_10358 pm_f_4@@8))) o2_4@@53 f_20@@68) (= (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@29) o2_4@@53 f_20@@68) (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@53 f_20@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@53 f_20@@68))
))) (forall ((o2_4@@54 T@Ref) (f_20@@69 T@Field_10429_1682) ) (!  (=> (select (|PolymorphicMapType_19682_23865_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@29) null (WandMaskField_10358 pm_f_4@@8))) o2_4@@54 f_20@@69) (= (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@29) o2_4@@54 f_20@@69) (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@54 f_20@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@54 f_20@@69))
))) (forall ((o2_4@@55 T@Ref) (f_20@@70 T@Field_10429_10396) ) (!  (=> (select (|PolymorphicMapType_19682_23865_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@29) null (WandMaskField_10358 pm_f_4@@8))) o2_4@@55 f_20@@70) (= (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@29) o2_4@@55 f_20@@70) (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@55 f_20@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@55 f_20@@70))
))) (forall ((o2_4@@56 T@Ref) (f_20@@71 T@Field_10429_53) ) (!  (=> (select (|PolymorphicMapType_19682_23865_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@29) null (WandMaskField_10358 pm_f_4@@8))) o2_4@@56 f_20@@71) (= (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@29) o2_4@@56 f_20@@71) (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@56 f_20@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@56 f_20@@71))
))) (forall ((o2_4@@57 T@Ref) (f_20@@72 T@Field_26602_26607) ) (!  (=> (select (|PolymorphicMapType_19682_23865_69761#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@29) null (WandMaskField_10358 pm_f_4@@8))) o2_4@@57 f_20@@72) (= (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@29) o2_4@@57 f_20@@72) (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@57 f_20@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@57 f_20@@72))
))) (forall ((o2_4@@58 T@Ref) (f_20@@73 T@Field_23865_23866) ) (!  (=> (select (|PolymorphicMapType_19682_23865_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@29) null (WandMaskField_10358 pm_f_4@@8))) o2_4@@58 f_20@@73) (= (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@29) o2_4@@58 f_20@@73) (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@58 f_20@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| ExhaleHeap@@25) o2_4@@58 f_20@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@25 Mask@@56) (IsWandField_10358_10359 pm_f_4@@8))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_19133) (ExhaleHeap@@26 T@PolymorphicMapType_19133) (Mask@@57 T@PolymorphicMapType_19154) (pm_f_4@@9 T@Field_23865_23866) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_10429_10430 Mask@@57 null pm_f_4@@9) (IsWandField_10429_71411 pm_f_4@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@59 T@Ref) (f_20@@74 T@Field_23398_1682) ) (!  (=> (select (|PolymorphicMapType_19682_10393_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@30) null (WandMaskField_10429 pm_f_4@@9))) o2_4@@59 f_20@@74) (= (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@30) o2_4@@59 f_20@@74) (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@59 f_20@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@59 f_20@@74))
)) (forall ((o2_4@@60 T@Ref) (f_20@@75 T@Field_19206_19207) ) (!  (=> (select (|PolymorphicMapType_19682_10395_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@30) null (WandMaskField_10429 pm_f_4@@9))) o2_4@@60 f_20@@75) (= (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@30) o2_4@@60 f_20@@75) (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@60 f_20@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@60 f_20@@75))
))) (forall ((o2_4@@61 T@Ref) (f_20@@76 T@Field_19193_53) ) (!  (=> (select (|PolymorphicMapType_19682_10393_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@30) null (WandMaskField_10429 pm_f_4@@9))) o2_4@@61 f_20@@76) (= (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@30) o2_4@@61 f_20@@76) (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@61 f_20@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@61 f_20@@76))
))) (forall ((o2_4@@62 T@Ref) (f_20@@77 T@Field_10393_22544) ) (!  (=> (select (|PolymorphicMapType_19682_10393_67665#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@30) null (WandMaskField_10429 pm_f_4@@9))) o2_4@@62 f_20@@77) (= (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@30) o2_4@@62 f_20@@77) (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@62 f_20@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@62 f_20@@77))
))) (forall ((o2_4@@63 T@Ref) (f_20@@78 T@Field_10393_10430) ) (!  (=> (select (|PolymorphicMapType_19682_10393_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@30) null (WandMaskField_10429 pm_f_4@@9))) o2_4@@63 f_20@@78) (= (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@30) o2_4@@63 f_20@@78) (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@63 f_20@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@63 f_20@@78))
))) (forall ((o2_4@@64 T@Ref) (f_20@@79 T@Field_22524_1218) ) (!  (=> (select (|PolymorphicMapType_19682_22524_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@30) null (WandMaskField_10429 pm_f_4@@9))) o2_4@@64 f_20@@79) (= (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@30) o2_4@@64 f_20@@79) (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@64 f_20@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@64 f_20@@79))
))) (forall ((o2_4@@65 T@Ref) (f_20@@80 T@Field_22524_10396) ) (!  (=> (select (|PolymorphicMapType_19682_22524_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@30) null (WandMaskField_10429 pm_f_4@@9))) o2_4@@65 f_20@@80) (= (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@30) o2_4@@65 f_20@@80) (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@65 f_20@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@65 f_20@@80))
))) (forall ((o2_4@@66 T@Ref) (f_20@@81 T@Field_22524_53) ) (!  (=> (select (|PolymorphicMapType_19682_22524_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@30) null (WandMaskField_10429 pm_f_4@@9))) o2_4@@66 f_20@@81) (= (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@30) o2_4@@66 f_20@@81) (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@66 f_20@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@66 f_20@@81))
))) (forall ((o2_4@@67 T@Ref) (f_20@@82 T@Field_22539_22544) ) (!  (=> (select (|PolymorphicMapType_19682_22524_68713#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@30) null (WandMaskField_10429 pm_f_4@@9))) o2_4@@67 f_20@@82) (= (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@30) o2_4@@67 f_20@@82) (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@67 f_20@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@67 f_20@@82))
))) (forall ((o2_4@@68 T@Ref) (f_20@@83 T@Field_22557_22558) ) (!  (=> (select (|PolymorphicMapType_19682_22524_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@30) null (WandMaskField_10429 pm_f_4@@9))) o2_4@@68 f_20@@83) (= (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@30) o2_4@@68 f_20@@83) (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@68 f_20@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@68 f_20@@83))
))) (forall ((o2_4@@69 T@Ref) (f_20@@84 T@Field_10429_1682) ) (!  (=> (select (|PolymorphicMapType_19682_23865_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@30) null (WandMaskField_10429 pm_f_4@@9))) o2_4@@69 f_20@@84) (= (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@30) o2_4@@69 f_20@@84) (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@69 f_20@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@69 f_20@@84))
))) (forall ((o2_4@@70 T@Ref) (f_20@@85 T@Field_10429_10396) ) (!  (=> (select (|PolymorphicMapType_19682_23865_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@30) null (WandMaskField_10429 pm_f_4@@9))) o2_4@@70 f_20@@85) (= (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@30) o2_4@@70 f_20@@85) (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@70 f_20@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@70 f_20@@85))
))) (forall ((o2_4@@71 T@Ref) (f_20@@86 T@Field_10429_53) ) (!  (=> (select (|PolymorphicMapType_19682_23865_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@30) null (WandMaskField_10429 pm_f_4@@9))) o2_4@@71 f_20@@86) (= (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@30) o2_4@@71 f_20@@86) (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@71 f_20@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@71 f_20@@86))
))) (forall ((o2_4@@72 T@Ref) (f_20@@87 T@Field_26602_26607) ) (!  (=> (select (|PolymorphicMapType_19682_23865_69761#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@30) null (WandMaskField_10429 pm_f_4@@9))) o2_4@@72 f_20@@87) (= (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@30) o2_4@@72 f_20@@87) (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@72 f_20@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@72 f_20@@87))
))) (forall ((o2_4@@73 T@Ref) (f_20@@88 T@Field_23865_23866) ) (!  (=> (select (|PolymorphicMapType_19682_23865_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@30) null (WandMaskField_10429 pm_f_4@@9))) o2_4@@73 f_20@@88) (= (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@30) o2_4@@73 f_20@@88) (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@73 f_20@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| ExhaleHeap@@26) o2_4@@73 f_20@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@26 Mask@@57) (IsWandField_10429_71411 pm_f_4@@9))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_19133) (ExhaleHeap@@27 T@PolymorphicMapType_19133) (Mask@@58 T@PolymorphicMapType_19154) (pm_f_4@@10 T@Field_10393_10430) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_10393_10430 Mask@@58 null pm_f_4@@10) (IsWandField_10393_71054 pm_f_4@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@74 T@Ref) (f_20@@89 T@Field_23398_1682) ) (!  (=> (select (|PolymorphicMapType_19682_10393_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@31) null (WandMaskField_10393 pm_f_4@@10))) o2_4@@74 f_20@@89) (= (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@31) o2_4@@74 f_20@@89) (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@74 f_20@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@74 f_20@@89))
)) (forall ((o2_4@@75 T@Ref) (f_20@@90 T@Field_19206_19207) ) (!  (=> (select (|PolymorphicMapType_19682_10395_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@31) null (WandMaskField_10393 pm_f_4@@10))) o2_4@@75 f_20@@90) (= (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@31) o2_4@@75 f_20@@90) (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@75 f_20@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@75 f_20@@90))
))) (forall ((o2_4@@76 T@Ref) (f_20@@91 T@Field_19193_53) ) (!  (=> (select (|PolymorphicMapType_19682_10393_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@31) null (WandMaskField_10393 pm_f_4@@10))) o2_4@@76 f_20@@91) (= (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@31) o2_4@@76 f_20@@91) (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@76 f_20@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@76 f_20@@91))
))) (forall ((o2_4@@77 T@Ref) (f_20@@92 T@Field_10393_22544) ) (!  (=> (select (|PolymorphicMapType_19682_10393_67665#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@31) null (WandMaskField_10393 pm_f_4@@10))) o2_4@@77 f_20@@92) (= (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@31) o2_4@@77 f_20@@92) (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@77 f_20@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@77 f_20@@92))
))) (forall ((o2_4@@78 T@Ref) (f_20@@93 T@Field_10393_10430) ) (!  (=> (select (|PolymorphicMapType_19682_10393_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@31) null (WandMaskField_10393 pm_f_4@@10))) o2_4@@78 f_20@@93) (= (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@31) o2_4@@78 f_20@@93) (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@78 f_20@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@78 f_20@@93))
))) (forall ((o2_4@@79 T@Ref) (f_20@@94 T@Field_22524_1218) ) (!  (=> (select (|PolymorphicMapType_19682_22524_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@31) null (WandMaskField_10393 pm_f_4@@10))) o2_4@@79 f_20@@94) (= (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@31) o2_4@@79 f_20@@94) (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@79 f_20@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@79 f_20@@94))
))) (forall ((o2_4@@80 T@Ref) (f_20@@95 T@Field_22524_10396) ) (!  (=> (select (|PolymorphicMapType_19682_22524_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@31) null (WandMaskField_10393 pm_f_4@@10))) o2_4@@80 f_20@@95) (= (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@31) o2_4@@80 f_20@@95) (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@80 f_20@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@80 f_20@@95))
))) (forall ((o2_4@@81 T@Ref) (f_20@@96 T@Field_22524_53) ) (!  (=> (select (|PolymorphicMapType_19682_22524_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@31) null (WandMaskField_10393 pm_f_4@@10))) o2_4@@81 f_20@@96) (= (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@31) o2_4@@81 f_20@@96) (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@81 f_20@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@81 f_20@@96))
))) (forall ((o2_4@@82 T@Ref) (f_20@@97 T@Field_22539_22544) ) (!  (=> (select (|PolymorphicMapType_19682_22524_68713#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@31) null (WandMaskField_10393 pm_f_4@@10))) o2_4@@82 f_20@@97) (= (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@31) o2_4@@82 f_20@@97) (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@82 f_20@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@82 f_20@@97))
))) (forall ((o2_4@@83 T@Ref) (f_20@@98 T@Field_22557_22558) ) (!  (=> (select (|PolymorphicMapType_19682_22524_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@31) null (WandMaskField_10393 pm_f_4@@10))) o2_4@@83 f_20@@98) (= (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@31) o2_4@@83 f_20@@98) (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@83 f_20@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@83 f_20@@98))
))) (forall ((o2_4@@84 T@Ref) (f_20@@99 T@Field_10429_1682) ) (!  (=> (select (|PolymorphicMapType_19682_23865_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@31) null (WandMaskField_10393 pm_f_4@@10))) o2_4@@84 f_20@@99) (= (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@31) o2_4@@84 f_20@@99) (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@84 f_20@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@84 f_20@@99))
))) (forall ((o2_4@@85 T@Ref) (f_20@@100 T@Field_10429_10396) ) (!  (=> (select (|PolymorphicMapType_19682_23865_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@31) null (WandMaskField_10393 pm_f_4@@10))) o2_4@@85 f_20@@100) (= (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@31) o2_4@@85 f_20@@100) (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@85 f_20@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@85 f_20@@100))
))) (forall ((o2_4@@86 T@Ref) (f_20@@101 T@Field_10429_53) ) (!  (=> (select (|PolymorphicMapType_19682_23865_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@31) null (WandMaskField_10393 pm_f_4@@10))) o2_4@@86 f_20@@101) (= (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@31) o2_4@@86 f_20@@101) (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@86 f_20@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@86 f_20@@101))
))) (forall ((o2_4@@87 T@Ref) (f_20@@102 T@Field_26602_26607) ) (!  (=> (select (|PolymorphicMapType_19682_23865_69761#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@31) null (WandMaskField_10393 pm_f_4@@10))) o2_4@@87 f_20@@102) (= (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@31) o2_4@@87 f_20@@102) (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@87 f_20@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@87 f_20@@102))
))) (forall ((o2_4@@88 T@Ref) (f_20@@103 T@Field_23865_23866) ) (!  (=> (select (|PolymorphicMapType_19682_23865_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@31) null (WandMaskField_10393 pm_f_4@@10))) o2_4@@88 f_20@@103) (= (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@31) o2_4@@88 f_20@@103) (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@88 f_20@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| ExhaleHeap@@27) o2_4@@88 f_20@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@27 Mask@@58) (IsWandField_10393_71054 pm_f_4@@10))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_19133) (Mask@@59 T@PolymorphicMapType_19154) (this@@5 T@Ref) ) (!  (=> (and (state Heap@@32 Mask@@59) (< AssumeFunctionsAbove 0)) (= (sum_rec Heap@@32 this@@5) (+ (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@32) this@@5 v_35) (ite (= (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@32) this@@5 n_85) null) 0 (|sum_rec'| Heap@@32 (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@32) this@@5 n_85))))))
 :qid |stdinbpl.244:15|
 :skolemid |31|
 :pattern ( (state Heap@@32 Mask@@59) (sum_rec Heap@@32 this@@5))
 :pattern ( (state Heap@@32 Mask@@59) (|sum_rec#triggerStateless| this@@5) (|List#trigger_10429| Heap@@32 (List this@@5)))
)))
(assert (forall ((arg1 Bool) (arg2 T@Ref) (arg3 T@Ref) (arg4 Int) (arg5 T@Ref) (arg6 T@Ref) (arg7 Int) (arg1_2 Bool) (arg2_2 T@Ref) (arg3_2 T@Ref) (arg4_2 Int) (arg5_2 T@Ref) (arg6_2 T@Ref) (arg7_2 Int) ) (!  (=> (= (wand arg1 arg2 arg3 arg4 arg5 arg6 arg7) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2)) (and (= arg1 arg1_2) (and (= arg2 arg2_2) (and (= arg3 arg3_2) (and (= arg4 arg4_2) (and (= arg5 arg5_2) (and (= arg6 arg6_2) (= arg7 arg7_2))))))))
 :qid |stdinbpl.211:15|
 :skolemid |28|
 :pattern ( (wand arg1 arg2 arg3 arg4 arg5 arg6 arg7) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_19133) (Mask@@60 T@PolymorphicMapType_19154) (this@@6 T@Ref) ) (!  (=> (state Heap@@33 Mask@@60) (= (|sum_rec'| Heap@@33 this@@6) (|sum_rec#frame| (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@33) null (List this@@6)) this@@6)))
 :qid |stdinbpl.251:15|
 :skolemid |32|
 :pattern ( (state Heap@@33 Mask@@60) (|sum_rec'| Heap@@33 this@@6))
 :pattern ( (state Heap@@33 Mask@@60) (|sum_rec#triggerStateless| this@@6) (|List#trigger_10429| Heap@@33 (List this@@6)))
)))
(assert (forall ((this@@7 T@Ref) ) (! (= (getPredWandId_10429_10430 (List this@@7)) 0)
 :qid |stdinbpl.375:15|
 :skolemid |36|
 :pattern ( (List this@@7))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_19133) (o_12 T@Ref) (f_21 T@Field_22539_22544) (v T@PolymorphicMapType_19682) ) (! (succHeap Heap@@34 (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@34) (store (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@34) o_12 f_21 v) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@34) (store (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@34) o_12 f_21 v) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@34) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_19133) (o_12@@0 T@Ref) (f_21@@0 T@Field_22557_22558) (v@@0 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@35) (store (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@35) o_12@@0 f_21@@0 v@@0) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@35) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@35) (store (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@35) o_12@@0 f_21@@0 v@@0) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_19133) (o_12@@1 T@Ref) (f_21@@1 T@Field_22524_1218) (v@@1 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@36) (store (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@36) o_12@@1 f_21@@1 v@@1) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@36) (store (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@36) o_12@@1 f_21@@1 v@@1) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@36) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_19133) (o_12@@2 T@Ref) (f_21@@2 T@Field_22524_10396) (v@@2 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@37) (store (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@37) o_12@@2 f_21@@2 v@@2) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@37) (store (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@37) o_12@@2 f_21@@2 v@@2) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@37) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_19133) (o_12@@3 T@Ref) (f_21@@3 T@Field_22524_53) (v@@3 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@38) (store (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@38) o_12@@3 f_21@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@38) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@38) (store (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@38) o_12@@3 f_21@@3 v@@3)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_19133) (o_12@@4 T@Ref) (f_21@@4 T@Field_26602_26607) (v@@4 T@PolymorphicMapType_19682) ) (! (succHeap Heap@@39 (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@39) (store (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@39) o_12@@4 f_21@@4 v@@4) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@39) (store (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@39) o_12@@4 f_21@@4 v@@4) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@39) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_19133) (o_12@@5 T@Ref) (f_21@@5 T@Field_23865_23866) (v@@5 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@40) (store (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@40) o_12@@5 f_21@@5 v@@5) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@40) (store (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@40) o_12@@5 f_21@@5 v@@5) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@40) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_19133) (o_12@@6 T@Ref) (f_21@@6 T@Field_10429_1682) (v@@6 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@41) (store (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@41) o_12@@6 f_21@@6 v@@6) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@41) (store (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@41) o_12@@6 f_21@@6 v@@6) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@41) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_19133) (o_12@@7 T@Ref) (f_21@@7 T@Field_10429_10396) (v@@7 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@42) (store (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@42) o_12@@7 f_21@@7 v@@7) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@42) (store (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@42) o_12@@7 f_21@@7 v@@7) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@42) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_19133) (o_12@@8 T@Ref) (f_21@@8 T@Field_10429_53) (v@@8 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@43) (store (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@43) o_12@@8 f_21@@8 v@@8) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@43) (store (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@43) o_12@@8 f_21@@8 v@@8) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@43) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_19133) (o_12@@9 T@Ref) (f_21@@9 T@Field_10393_22544) (v@@9 T@PolymorphicMapType_19682) ) (! (succHeap Heap@@44 (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@44) (store (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@44) o_12@@9 f_21@@9 v@@9) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@44) (store (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@44) o_12@@9 f_21@@9 v@@9) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@44) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_19133) (o_12@@10 T@Ref) (f_21@@10 T@Field_10393_10430) (v@@10 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@45) (store (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@45) o_12@@10 f_21@@10 v@@10) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@45) (store (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@45) o_12@@10 f_21@@10 v@@10) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@45) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_19133) (o_12@@11 T@Ref) (f_21@@11 T@Field_23398_1682) (v@@11 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@46) (store (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@46) o_12@@11 f_21@@11 v@@11) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@46) (store (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@46) o_12@@11 f_21@@11 v@@11) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@46) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_19133) (o_12@@12 T@Ref) (f_21@@12 T@Field_19206_19207) (v@@12 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@47) (store (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@47) o_12@@12 f_21@@12 v@@12) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@47) (store (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@47) o_12@@12 f_21@@12 v@@12) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@47) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_19133) (o_12@@13 T@Ref) (f_21@@13 T@Field_19193_53) (v@@13 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_19133 (store (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@48) o_12@@13 f_21@@13 v@@13) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19133 (store (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@48) o_12@@13 f_21@@13 v@@13) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@48) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@48)))
)))
(assert (forall ((this@@8 T@Ref) ) (! (= (PredicateMaskField_10429 (List this@@8)) (|List#sm| this@@8))
 :qid |stdinbpl.367:15|
 :skolemid |34|
 :pattern ( (PredicateMaskField_10429 (List this@@8)))
)))
(assert (forall ((arg1@@0 Bool) (arg2@@0 T@Ref) (arg3@@0 T@Ref) (arg4@@0 Int) (arg5@@0 T@Ref) (arg6@@0 T@Ref) (arg7@@0 Int) ) (! (= (|wand#sm| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0) (WandMaskField_10358 (|wand#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0)))
 :qid |stdinbpl.203:15|
 :skolemid |26|
 :pattern ( (WandMaskField_10358 (|wand#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0)))
)))
(assert (forall ((o_12@@14 T@Ref) (f_19 T@Field_19206_19207) (Heap@@49 T@PolymorphicMapType_19133) ) (!  (=> (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@49) o_12@@14 $allocated) (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@49) (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@49) o_12@@14 f_19) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@49) o_12@@14 f_19))
)))
(assert (forall ((p@@3 T@Field_22557_22558) (v_1@@2 T@FrameType) (q T@Field_22557_22558) (w@@2 T@FrameType) (r T@Field_22557_22558) (u T@FrameType) ) (!  (=> (and (InsidePredicate_22524_22524 p@@3 v_1@@2 q w@@2) (InsidePredicate_22524_22524 q w@@2 r u)) (InsidePredicate_22524_22524 p@@3 v_1@@2 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22524_22524 p@@3 v_1@@2 q w@@2) (InsidePredicate_22524_22524 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_22557_22558) (v_1@@3 T@FrameType) (q@@0 T@Field_22557_22558) (w@@3 T@FrameType) (r@@0 T@Field_10393_10430) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_22524_22524 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_22524_19193 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_22524_19193 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22524_22524 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_22524_19193 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_22557_22558) (v_1@@4 T@FrameType) (q@@1 T@Field_22557_22558) (w@@4 T@FrameType) (r@@1 T@Field_23865_23866) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_22524_22524 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_22524_10429 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_22524_10429 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22524_22524 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_22524_10429 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_22557_22558) (v_1@@5 T@FrameType) (q@@2 T@Field_10393_10430) (w@@5 T@FrameType) (r@@2 T@Field_22557_22558) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_22524_19193 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_19193_22524 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_22524_22524 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22524_19193 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_19193_22524 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_22557_22558) (v_1@@6 T@FrameType) (q@@3 T@Field_10393_10430) (w@@6 T@FrameType) (r@@3 T@Field_10393_10430) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_22524_19193 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_19193_19193 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_22524_19193 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22524_19193 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_19193_19193 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_22557_22558) (v_1@@7 T@FrameType) (q@@4 T@Field_10393_10430) (w@@7 T@FrameType) (r@@4 T@Field_23865_23866) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_22524_19193 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_19193_10429 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_22524_10429 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22524_19193 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_19193_10429 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_22557_22558) (v_1@@8 T@FrameType) (q@@5 T@Field_23865_23866) (w@@8 T@FrameType) (r@@5 T@Field_22557_22558) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_22524_10429 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_10429_22524 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_22524_22524 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22524_10429 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_10429_22524 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_22557_22558) (v_1@@9 T@FrameType) (q@@6 T@Field_23865_23866) (w@@9 T@FrameType) (r@@6 T@Field_10393_10430) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_22524_10429 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_10429_19193 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_22524_19193 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22524_10429 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_10429_19193 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_22557_22558) (v_1@@10 T@FrameType) (q@@7 T@Field_23865_23866) (w@@10 T@FrameType) (r@@7 T@Field_23865_23866) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_22524_10429 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_10429_10429 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_22524_10429 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22524_10429 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_10429_10429 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_10393_10430) (v_1@@11 T@FrameType) (q@@8 T@Field_22557_22558) (w@@11 T@FrameType) (r@@8 T@Field_22557_22558) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_19193_22524 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_22524_22524 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_19193_22524 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19193_22524 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_22524_22524 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_10393_10430) (v_1@@12 T@FrameType) (q@@9 T@Field_22557_22558) (w@@12 T@FrameType) (r@@9 T@Field_10393_10430) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_19193_22524 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_22524_19193 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_19193_19193 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19193_22524 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_22524_19193 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_10393_10430) (v_1@@13 T@FrameType) (q@@10 T@Field_22557_22558) (w@@13 T@FrameType) (r@@10 T@Field_23865_23866) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_19193_22524 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_22524_10429 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_19193_10429 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19193_22524 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_22524_10429 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_10393_10430) (v_1@@14 T@FrameType) (q@@11 T@Field_10393_10430) (w@@14 T@FrameType) (r@@11 T@Field_22557_22558) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_19193_19193 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_19193_22524 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_19193_22524 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19193_19193 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_19193_22524 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_10393_10430) (v_1@@15 T@FrameType) (q@@12 T@Field_10393_10430) (w@@15 T@FrameType) (r@@12 T@Field_10393_10430) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_19193_19193 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_19193_19193 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_19193_19193 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19193_19193 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_19193_19193 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_10393_10430) (v_1@@16 T@FrameType) (q@@13 T@Field_10393_10430) (w@@16 T@FrameType) (r@@13 T@Field_23865_23866) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_19193_19193 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_19193_10429 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_19193_10429 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19193_19193 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_19193_10429 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_10393_10430) (v_1@@17 T@FrameType) (q@@14 T@Field_23865_23866) (w@@17 T@FrameType) (r@@14 T@Field_22557_22558) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_19193_10429 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_10429_22524 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_19193_22524 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19193_10429 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_10429_22524 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_10393_10430) (v_1@@18 T@FrameType) (q@@15 T@Field_23865_23866) (w@@18 T@FrameType) (r@@15 T@Field_10393_10430) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_19193_10429 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_10429_19193 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_19193_19193 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19193_10429 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_10429_19193 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_10393_10430) (v_1@@19 T@FrameType) (q@@16 T@Field_23865_23866) (w@@19 T@FrameType) (r@@16 T@Field_23865_23866) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_19193_10429 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_10429_10429 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_19193_10429 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19193_10429 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_10429_10429 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_23865_23866) (v_1@@20 T@FrameType) (q@@17 T@Field_22557_22558) (w@@20 T@FrameType) (r@@17 T@Field_22557_22558) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_10429_22524 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_22524_22524 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_10429_22524 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10429_22524 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_22524_22524 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_23865_23866) (v_1@@21 T@FrameType) (q@@18 T@Field_22557_22558) (w@@21 T@FrameType) (r@@18 T@Field_10393_10430) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_10429_22524 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_22524_19193 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_10429_19193 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10429_22524 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_22524_19193 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_23865_23866) (v_1@@22 T@FrameType) (q@@19 T@Field_22557_22558) (w@@22 T@FrameType) (r@@19 T@Field_23865_23866) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_10429_22524 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_22524_10429 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_10429_10429 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10429_22524 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_22524_10429 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_23865_23866) (v_1@@23 T@FrameType) (q@@20 T@Field_10393_10430) (w@@23 T@FrameType) (r@@20 T@Field_22557_22558) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_10429_19193 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_19193_22524 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_10429_22524 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10429_19193 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_19193_22524 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_23865_23866) (v_1@@24 T@FrameType) (q@@21 T@Field_10393_10430) (w@@24 T@FrameType) (r@@21 T@Field_10393_10430) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_10429_19193 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_19193_19193 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_10429_19193 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10429_19193 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_19193_19193 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_23865_23866) (v_1@@25 T@FrameType) (q@@22 T@Field_10393_10430) (w@@25 T@FrameType) (r@@22 T@Field_23865_23866) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_10429_19193 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_19193_10429 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_10429_10429 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10429_19193 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_19193_10429 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_23865_23866) (v_1@@26 T@FrameType) (q@@23 T@Field_23865_23866) (w@@26 T@FrameType) (r@@23 T@Field_22557_22558) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_10429_10429 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_10429_22524 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_10429_22524 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10429_10429 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_10429_22524 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_23865_23866) (v_1@@27 T@FrameType) (q@@24 T@Field_23865_23866) (w@@27 T@FrameType) (r@@24 T@Field_10393_10430) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_10429_10429 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_10429_19193 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_10429_19193 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10429_10429 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_10429_19193 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_23865_23866) (v_1@@28 T@FrameType) (q@@25 T@Field_23865_23866) (w@@28 T@FrameType) (r@@25 T@Field_23865_23866) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_10429_10429 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_10429_10429 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_10429_10429 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10429_10429 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_10429_10429 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((arg1@@1 Bool) (arg2@@1 T@Ref) (arg3@@1 T@Ref) (arg4@@1 Int) (arg5@@1 T@Ref) (arg6@@1 T@Ref) (arg7@@1 Int) ) (! (IsWandField_10345_1218 (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1))
 :qid |stdinbpl.187:15|
 :skolemid |22|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1))
)))
(assert (forall ((arg1@@2 Bool) (arg2@@2 T@Ref) (arg3@@2 T@Ref) (arg4@@2 Int) (arg5@@2 T@Ref) (arg6@@2 T@Ref) (arg7@@2 Int) ) (! (IsWandField_10358_10359 (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2))
 :qid |stdinbpl.191:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2))
)))
(assert (forall ((arg1@@3 Bool) (arg2@@3 T@Ref) (arg3@@3 T@Ref) (arg4@@3 Int) (arg5@@3 T@Ref) (arg6@@3 T@Ref) (arg7@@3 Int) ) (!  (not (IsPredicateField_10345_1218 (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3)))
 :qid |stdinbpl.195:15|
 :skolemid |24|
 :pattern ( (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3))
)))
(assert (forall ((arg1@@4 Bool) (arg2@@4 T@Ref) (arg3@@4 T@Ref) (arg4@@4 Int) (arg5@@4 T@Ref) (arg6@@4 T@Ref) (arg7@@4 Int) ) (!  (not (IsPredicateField_10358_10359 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4)))
 :qid |stdinbpl.199:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4))
)))
(assert (forall ((arg1@@5 Bool) (arg2@@5 T@Ref) (arg3@@5 T@Ref) (arg4@@5 Int) (arg5@@5 T@Ref) (arg6@@5 T@Ref) (arg7@@5 Int) ) (! (= (getPredWandId_10345_1218 (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5)) 1)
 :qid |stdinbpl.207:15|
 :skolemid |27|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@1 () T@PolymorphicMapType_19133)
(declare-fun this@@9 () T@Ref)
(declare-fun Heap@3 () T@PolymorphicMapType_19133)
(declare-fun newPMask@0 () T@PolymorphicMapType_19682)
(declare-fun Heap@2 () T@PolymorphicMapType_19133)
(declare-fun Heap@0 () T@PolymorphicMapType_19133)
(declare-fun Heap@@50 () T@PolymorphicMapType_19133)
(declare-fun |sum_rec#trigger| (T@FrameType T@Ref) Bool)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_19154)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_19154)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_19154)
(declare-fun Mask@0 () T@PolymorphicMapType_19154)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1682 (Int) T@FrameType)
(declare-fun FrameFragment_10396 (T@Ref) T@FrameType)
(declare-fun FrameFragment_10430 (T@FrameType) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_19154)
(set-info :boogie-vc-id |sum_rec#definedness|)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon9_correct true))
(let ((anon13_Else_correct  (=> (= (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@1) this@@9 n_85) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 5) 3)) anon9_correct))))
(let ((anon13_Then_correct  (=> (not (= (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@1) this@@9 n_85) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_5 T@Ref) (f_11 T@Field_23398_1682) ) (!  (=> (or (select (|PolymorphicMapType_19682_10393_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| this@@9))) o_5 f_11) (select (|PolymorphicMapType_19682_10393_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@1) this@@9 n_85)))) o_5 f_11)) (select (|PolymorphicMapType_19682_10393_1682#PolymorphicMapType_19682| newPMask@0) o_5 f_11))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19682_10393_1682#PolymorphicMapType_19682| newPMask@0) o_5 f_11))
)) (forall ((o_5@@0 T@Ref) (f_11@@0 T@Field_19206_19207) ) (!  (=> (or (select (|PolymorphicMapType_19682_10395_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| this@@9))) o_5@@0 f_11@@0) (select (|PolymorphicMapType_19682_10395_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@1) this@@9 n_85)))) o_5@@0 f_11@@0)) (select (|PolymorphicMapType_19682_10395_10396#PolymorphicMapType_19682| newPMask@0) o_5@@0 f_11@@0))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19682_10395_10396#PolymorphicMapType_19682| newPMask@0) o_5@@0 f_11@@0))
))) (forall ((o_5@@1 T@Ref) (f_11@@1 T@Field_19193_53) ) (!  (=> (or (select (|PolymorphicMapType_19682_10393_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| this@@9))) o_5@@1 f_11@@1) (select (|PolymorphicMapType_19682_10393_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@1) this@@9 n_85)))) o_5@@1 f_11@@1)) (select (|PolymorphicMapType_19682_10393_53#PolymorphicMapType_19682| newPMask@0) o_5@@1 f_11@@1))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19682_10393_53#PolymorphicMapType_19682| newPMask@0) o_5@@1 f_11@@1))
))) (forall ((o_5@@2 T@Ref) (f_11@@2 T@Field_10393_22544) ) (!  (=> (or (select (|PolymorphicMapType_19682_10393_67665#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| this@@9))) o_5@@2 f_11@@2) (select (|PolymorphicMapType_19682_10393_67665#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@1) this@@9 n_85)))) o_5@@2 f_11@@2)) (select (|PolymorphicMapType_19682_10393_67665#PolymorphicMapType_19682| newPMask@0) o_5@@2 f_11@@2))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19682_10393_67665#PolymorphicMapType_19682| newPMask@0) o_5@@2 f_11@@2))
))) (forall ((o_5@@3 T@Ref) (f_11@@3 T@Field_10393_10430) ) (!  (=> (or (select (|PolymorphicMapType_19682_10393_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| this@@9))) o_5@@3 f_11@@3) (select (|PolymorphicMapType_19682_10393_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@1) this@@9 n_85)))) o_5@@3 f_11@@3)) (select (|PolymorphicMapType_19682_10393_22558#PolymorphicMapType_19682| newPMask@0) o_5@@3 f_11@@3))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19682_10393_22558#PolymorphicMapType_19682| newPMask@0) o_5@@3 f_11@@3))
))) (forall ((o_5@@4 T@Ref) (f_11@@4 T@Field_22524_1218) ) (!  (=> (or (select (|PolymorphicMapType_19682_22524_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| this@@9))) o_5@@4 f_11@@4) (select (|PolymorphicMapType_19682_22524_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@1) this@@9 n_85)))) o_5@@4 f_11@@4)) (select (|PolymorphicMapType_19682_22524_1682#PolymorphicMapType_19682| newPMask@0) o_5@@4 f_11@@4))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19682_22524_1682#PolymorphicMapType_19682| newPMask@0) o_5@@4 f_11@@4))
))) (forall ((o_5@@5 T@Ref) (f_11@@5 T@Field_22524_10396) ) (!  (=> (or (select (|PolymorphicMapType_19682_22524_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| this@@9))) o_5@@5 f_11@@5) (select (|PolymorphicMapType_19682_22524_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@1) this@@9 n_85)))) o_5@@5 f_11@@5)) (select (|PolymorphicMapType_19682_22524_10396#PolymorphicMapType_19682| newPMask@0) o_5@@5 f_11@@5))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19682_22524_10396#PolymorphicMapType_19682| newPMask@0) o_5@@5 f_11@@5))
))) (forall ((o_5@@6 T@Ref) (f_11@@6 T@Field_22524_53) ) (!  (=> (or (select (|PolymorphicMapType_19682_22524_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| this@@9))) o_5@@6 f_11@@6) (select (|PolymorphicMapType_19682_22524_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@1) this@@9 n_85)))) o_5@@6 f_11@@6)) (select (|PolymorphicMapType_19682_22524_53#PolymorphicMapType_19682| newPMask@0) o_5@@6 f_11@@6))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19682_22524_53#PolymorphicMapType_19682| newPMask@0) o_5@@6 f_11@@6))
))) (forall ((o_5@@7 T@Ref) (f_11@@7 T@Field_22539_22544) ) (!  (=> (or (select (|PolymorphicMapType_19682_22524_68713#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| this@@9))) o_5@@7 f_11@@7) (select (|PolymorphicMapType_19682_22524_68713#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@1) this@@9 n_85)))) o_5@@7 f_11@@7)) (select (|PolymorphicMapType_19682_22524_68713#PolymorphicMapType_19682| newPMask@0) o_5@@7 f_11@@7))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19682_22524_68713#PolymorphicMapType_19682| newPMask@0) o_5@@7 f_11@@7))
))) (forall ((o_5@@8 T@Ref) (f_11@@8 T@Field_22557_22558) ) (!  (=> (or (select (|PolymorphicMapType_19682_22524_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| this@@9))) o_5@@8 f_11@@8) (select (|PolymorphicMapType_19682_22524_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@1) this@@9 n_85)))) o_5@@8 f_11@@8)) (select (|PolymorphicMapType_19682_22524_22558#PolymorphicMapType_19682| newPMask@0) o_5@@8 f_11@@8))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19682_22524_22558#PolymorphicMapType_19682| newPMask@0) o_5@@8 f_11@@8))
))) (forall ((o_5@@9 T@Ref) (f_11@@9 T@Field_10429_1682) ) (!  (=> (or (select (|PolymorphicMapType_19682_23865_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| this@@9))) o_5@@9 f_11@@9) (select (|PolymorphicMapType_19682_23865_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@1) this@@9 n_85)))) o_5@@9 f_11@@9)) (select (|PolymorphicMapType_19682_23865_1682#PolymorphicMapType_19682| newPMask@0) o_5@@9 f_11@@9))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19682_23865_1682#PolymorphicMapType_19682| newPMask@0) o_5@@9 f_11@@9))
))) (forall ((o_5@@10 T@Ref) (f_11@@10 T@Field_10429_10396) ) (!  (=> (or (select (|PolymorphicMapType_19682_23865_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| this@@9))) o_5@@10 f_11@@10) (select (|PolymorphicMapType_19682_23865_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@1) this@@9 n_85)))) o_5@@10 f_11@@10)) (select (|PolymorphicMapType_19682_23865_10396#PolymorphicMapType_19682| newPMask@0) o_5@@10 f_11@@10))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19682_23865_10396#PolymorphicMapType_19682| newPMask@0) o_5@@10 f_11@@10))
))) (forall ((o_5@@11 T@Ref) (f_11@@11 T@Field_10429_53) ) (!  (=> (or (select (|PolymorphicMapType_19682_23865_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| this@@9))) o_5@@11 f_11@@11) (select (|PolymorphicMapType_19682_23865_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@1) this@@9 n_85)))) o_5@@11 f_11@@11)) (select (|PolymorphicMapType_19682_23865_53#PolymorphicMapType_19682| newPMask@0) o_5@@11 f_11@@11))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19682_23865_53#PolymorphicMapType_19682| newPMask@0) o_5@@11 f_11@@11))
))) (forall ((o_5@@12 T@Ref) (f_11@@12 T@Field_26602_26607) ) (!  (=> (or (select (|PolymorphicMapType_19682_23865_69761#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| this@@9))) o_5@@12 f_11@@12) (select (|PolymorphicMapType_19682_23865_69761#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@1) this@@9 n_85)))) o_5@@12 f_11@@12)) (select (|PolymorphicMapType_19682_23865_69761#PolymorphicMapType_19682| newPMask@0) o_5@@12 f_11@@12))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19682_23865_69761#PolymorphicMapType_19682| newPMask@0) o_5@@12 f_11@@12))
))) (forall ((o_5@@13 T@Ref) (f_11@@13 T@Field_23865_23866) ) (!  (=> (or (select (|PolymorphicMapType_19682_23865_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| this@@9))) o_5@@13 f_11@@13) (select (|PolymorphicMapType_19682_23865_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@1) this@@9 n_85)))) o_5@@13 f_11@@13)) (select (|PolymorphicMapType_19682_23865_22558#PolymorphicMapType_19682| newPMask@0) o_5@@13 f_11@@13))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19682_23865_22558#PolymorphicMapType_19682| newPMask@0) o_5@@13 f_11@@13))
))) (= Heap@2 (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@1) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@1) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@1) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@1) (store (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@1) null (|List#sm| this@@9) newPMask@0) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@1) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@1) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@1) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@1) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@1) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@1) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@1) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@1) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@1) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 4) 3))) anon9_correct))))
(let ((anon7_correct  (=> (and (= Heap@0 (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@50) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@50) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@50) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@50) (store (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@50) null (|List#sm| this@@9) (PolymorphicMapType_19682 (store (|PolymorphicMapType_19682_10393_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@50) null (|List#sm| this@@9))) this@@9 v_35 true) (|PolymorphicMapType_19682_10395_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@50) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_10393_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@50) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_10393_67665#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@50) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_10393_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@50) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_22524_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@50) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_22524_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@50) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_22524_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@50) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_22524_68713#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@50) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_22524_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@50) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_23865_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@50) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_23865_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@50) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_23865_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@50) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_23865_69761#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@50) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_23865_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@@50) null (|List#sm| this@@9))))) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@@50) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@@50) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@@50) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@@50) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@@50) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@@50) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@@50) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@@50) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@@50) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@@50))) (= Heap@1 (PolymorphicMapType_19133 (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@0) (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@0) (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@0) (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@0) (store (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@0) null (|List#sm| this@@9) (PolymorphicMapType_19682 (|PolymorphicMapType_19682_10393_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@0) null (|List#sm| this@@9))) (store (|PolymorphicMapType_19682_10395_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@0) null (|List#sm| this@@9))) this@@9 n_85 true) (|PolymorphicMapType_19682_10393_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@0) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_10393_67665#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@0) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_10393_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@0) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_22524_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@0) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_22524_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@0) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_22524_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@0) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_22524_68713#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@0) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_22524_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@0) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_23865_1682#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@0) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_23865_10396#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@0) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_23865_53#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@0) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_23865_69761#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@0) null (|List#sm| this@@9))) (|PolymorphicMapType_19682_23865_22558#PolymorphicMapType_19682| (select (|PolymorphicMapType_19133_10433_26694#PolymorphicMapType_19133| Heap@0) null (|List#sm| this@@9))))) (|PolymorphicMapType_19133_10351_32931#PolymorphicMapType_19133| Heap@0) (|PolymorphicMapType_19133_10393_10430#PolymorphicMapType_19133| Heap@0) (|PolymorphicMapType_19133_10393_63584#PolymorphicMapType_19133| Heap@0) (|PolymorphicMapType_19133_10429_1682#PolymorphicMapType_19133| Heap@0) (|PolymorphicMapType_19133_10429_10396#PolymorphicMapType_19133| Heap@0) (|PolymorphicMapType_19133_10429_53#PolymorphicMapType_19133| Heap@0) (|PolymorphicMapType_19133_22524_1682#PolymorphicMapType_19133| Heap@0) (|PolymorphicMapType_19133_22524_10396#PolymorphicMapType_19133| Heap@0) (|PolymorphicMapType_19133_22524_10430#PolymorphicMapType_19133| Heap@0) (|PolymorphicMapType_19133_22524_53#PolymorphicMapType_19133| Heap@0)))) (and (=> (= (ControlFlow 0 6) 4) anon13_Then_correct) (=> (= (ControlFlow 0 6) 5) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (|sum_rec#trigger| (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@50) null (List (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@50) this@@9 n_85))) (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@50) this@@9 n_85)) (= (ControlFlow 0 8) 6)) anon7_correct)))
(let ((anon11_Then_correct  (=> (and (= (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@50) this@@9 n_85) null) (= (ControlFlow 0 7) 6)) anon7_correct)))
(let ((anon12_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| UnfoldingMask@3) null (List (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@50) this@@9 n_85))))))))
(let ((anon11_Else_correct  (=> (not (= (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@50) this@@9 n_85) null)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (HasDirectPerm_10395_10396 UnfoldingMask@3 this@@9 n_85)) (=> (HasDirectPerm_10395_10396 UnfoldingMask@3 this@@9 n_85) (and (=> (= (ControlFlow 0 9) 2) anon12_Then_correct) (=> (= (ControlFlow 0 9) 8) anon12_Else_correct)))))))
(let ((anon2_correct  (=> (state Heap@@50 UnfoldingMask@3) (and (=> (= (ControlFlow 0 11) (- 0 13)) (HasDirectPerm_10393_1682 UnfoldingMask@3 this@@9 v_35)) (=> (HasDirectPerm_10393_1682 UnfoldingMask@3 this@@9 v_35) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_10395_10396 UnfoldingMask@3 this@@9 n_85)) (=> (HasDirectPerm_10395_10396 UnfoldingMask@3 this@@9 n_85) (and (=> (= (ControlFlow 0 11) 7) anon11_Then_correct) (=> (= (ControlFlow 0 11) 9) anon11_Else_correct)))))))))
(let ((anon10_Else_correct  (=> (= (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@50) this@@9 n_85) null) (=> (and (= UnfoldingMask@3 UnfoldingMask@1) (= (ControlFlow 0 15) 11)) anon2_correct))))
(let ((anon10_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@50) this@@9 n_85) null)) (= UnfoldingMask@2 (PolymorphicMapType_19154 (store (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| UnfoldingMask@1) null (List (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@50) this@@9 n_85)) (+ (select (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| UnfoldingMask@1) null (List (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@50) this@@9 n_85))) FullPerm)) (|PolymorphicMapType_19154_10393_1682#PolymorphicMapType_19154| UnfoldingMask@1) (|PolymorphicMapType_19154_10395_10396#PolymorphicMapType_19154| UnfoldingMask@1) (|PolymorphicMapType_19154_10345_1218#PolymorphicMapType_19154| UnfoldingMask@1) (|PolymorphicMapType_19154_10429_1682#PolymorphicMapType_19154| UnfoldingMask@1) (|PolymorphicMapType_19154_10429_10396#PolymorphicMapType_19154| UnfoldingMask@1) (|PolymorphicMapType_19154_10429_53#PolymorphicMapType_19154| UnfoldingMask@1) (|PolymorphicMapType_19154_10429_77774#PolymorphicMapType_19154| UnfoldingMask@1) (|PolymorphicMapType_19154_10393_10430#PolymorphicMapType_19154| UnfoldingMask@1) (|PolymorphicMapType_19154_10393_53#PolymorphicMapType_19154| UnfoldingMask@1) (|PolymorphicMapType_19154_10393_78173#PolymorphicMapType_19154| UnfoldingMask@1) (|PolymorphicMapType_19154_10345_10430#PolymorphicMapType_19154| UnfoldingMask@1) (|PolymorphicMapType_19154_10345_10396#PolymorphicMapType_19154| UnfoldingMask@1) (|PolymorphicMapType_19154_10345_53#PolymorphicMapType_19154| UnfoldingMask@1) (|PolymorphicMapType_19154_10345_78587#PolymorphicMapType_19154| UnfoldingMask@1)))) (=> (and (and (InsidePredicate_10429_10429 (List this@@9) (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@50) null (List this@@9)) (List (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@50) this@@9 n_85)) (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@50) null (List (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@50) this@@9 n_85)))) (state Heap@@50 UnfoldingMask@2)) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 14) 11))) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@50 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_19133_10213_53#PolymorphicMapType_19133| Heap@@50) this@@9 $allocated)) (and (= AssumeFunctionsAbove 0) (= Mask@0 (PolymorphicMapType_19154 (store (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| ZeroMask) null (List this@@9) (+ (select (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| ZeroMask) null (List this@@9)) FullPerm)) (|PolymorphicMapType_19154_10393_1682#PolymorphicMapType_19154| ZeroMask) (|PolymorphicMapType_19154_10395_10396#PolymorphicMapType_19154| ZeroMask) (|PolymorphicMapType_19154_10345_1218#PolymorphicMapType_19154| ZeroMask) (|PolymorphicMapType_19154_10429_1682#PolymorphicMapType_19154| ZeroMask) (|PolymorphicMapType_19154_10429_10396#PolymorphicMapType_19154| ZeroMask) (|PolymorphicMapType_19154_10429_53#PolymorphicMapType_19154| ZeroMask) (|PolymorphicMapType_19154_10429_77774#PolymorphicMapType_19154| ZeroMask) (|PolymorphicMapType_19154_10393_10430#PolymorphicMapType_19154| ZeroMask) (|PolymorphicMapType_19154_10393_53#PolymorphicMapType_19154| ZeroMask) (|PolymorphicMapType_19154_10393_78173#PolymorphicMapType_19154| ZeroMask) (|PolymorphicMapType_19154_10345_10430#PolymorphicMapType_19154| ZeroMask) (|PolymorphicMapType_19154_10345_10396#PolymorphicMapType_19154| ZeroMask) (|PolymorphicMapType_19154_10345_53#PolymorphicMapType_19154| ZeroMask) (|PolymorphicMapType_19154_10345_78587#PolymorphicMapType_19154| ZeroMask))))) (and (and (state Heap@@50 Mask@0) (state Heap@@50 Mask@0)) (and (|List#trigger_10429| Heap@@50 (List this@@9)) (= (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@50) null (List this@@9)) (CombineFrames (FrameFragment_1682 (select (|PolymorphicMapType_19133_10393_1682#PolymorphicMapType_19133| Heap@@50) this@@9 v_35)) (CombineFrames (FrameFragment_10396 (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@50) this@@9 n_85)) (FrameFragment_10430 (ite (not (= (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@50) this@@9 n_85) null)) (select (|PolymorphicMapType_19133_10429_10430#PolymorphicMapType_19133| Heap@@50) null (List (select (|PolymorphicMapType_19133_10216_10217#PolymorphicMapType_19133| Heap@@50) this@@9 n_85))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| Mask@0) null (List this@@9))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| Mask@0) null (List this@@9)))) (=> (and (not (= this@@9 null)) (= UnfoldingMask@0 (PolymorphicMapType_19154 (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| Mask@0) (store (|PolymorphicMapType_19154_10393_1682#PolymorphicMapType_19154| Mask@0) this@@9 v_35 (+ (select (|PolymorphicMapType_19154_10393_1682#PolymorphicMapType_19154| Mask@0) this@@9 v_35) FullPerm)) (|PolymorphicMapType_19154_10395_10396#PolymorphicMapType_19154| Mask@0) (|PolymorphicMapType_19154_10345_1218#PolymorphicMapType_19154| Mask@0) (|PolymorphicMapType_19154_10429_1682#PolymorphicMapType_19154| Mask@0) (|PolymorphicMapType_19154_10429_10396#PolymorphicMapType_19154| Mask@0) (|PolymorphicMapType_19154_10429_53#PolymorphicMapType_19154| Mask@0) (|PolymorphicMapType_19154_10429_77774#PolymorphicMapType_19154| Mask@0) (|PolymorphicMapType_19154_10393_10430#PolymorphicMapType_19154| Mask@0) (|PolymorphicMapType_19154_10393_53#PolymorphicMapType_19154| Mask@0) (|PolymorphicMapType_19154_10393_78173#PolymorphicMapType_19154| Mask@0) (|PolymorphicMapType_19154_10345_10430#PolymorphicMapType_19154| Mask@0) (|PolymorphicMapType_19154_10345_10396#PolymorphicMapType_19154| Mask@0) (|PolymorphicMapType_19154_10345_53#PolymorphicMapType_19154| Mask@0) (|PolymorphicMapType_19154_10345_78587#PolymorphicMapType_19154| Mask@0)))) (=> (and (and (state Heap@@50 UnfoldingMask@0) (not (= this@@9 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_19154 (|PolymorphicMapType_19154_10429_10430#PolymorphicMapType_19154| UnfoldingMask@0) (|PolymorphicMapType_19154_10393_1682#PolymorphicMapType_19154| UnfoldingMask@0) (store (|PolymorphicMapType_19154_10395_10396#PolymorphicMapType_19154| UnfoldingMask@0) this@@9 n_85 (+ (select (|PolymorphicMapType_19154_10395_10396#PolymorphicMapType_19154| UnfoldingMask@0) this@@9 n_85) FullPerm)) (|PolymorphicMapType_19154_10345_1218#PolymorphicMapType_19154| UnfoldingMask@0) (|PolymorphicMapType_19154_10429_1682#PolymorphicMapType_19154| UnfoldingMask@0) (|PolymorphicMapType_19154_10429_10396#PolymorphicMapType_19154| UnfoldingMask@0) (|PolymorphicMapType_19154_10429_53#PolymorphicMapType_19154| UnfoldingMask@0) (|PolymorphicMapType_19154_10429_77774#PolymorphicMapType_19154| UnfoldingMask@0) (|PolymorphicMapType_19154_10393_10430#PolymorphicMapType_19154| UnfoldingMask@0) (|PolymorphicMapType_19154_10393_53#PolymorphicMapType_19154| UnfoldingMask@0) (|PolymorphicMapType_19154_10393_78173#PolymorphicMapType_19154| UnfoldingMask@0) (|PolymorphicMapType_19154_10345_10430#PolymorphicMapType_19154| UnfoldingMask@0) (|PolymorphicMapType_19154_10345_10396#PolymorphicMapType_19154| UnfoldingMask@0) (|PolymorphicMapType_19154_10345_53#PolymorphicMapType_19154| UnfoldingMask@0) (|PolymorphicMapType_19154_10345_78587#PolymorphicMapType_19154| UnfoldingMask@0))) (state Heap@@50 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 16) 14) anon10_Then_correct) (=> (= (ControlFlow 0 16) 15) anon10_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18) 16) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
