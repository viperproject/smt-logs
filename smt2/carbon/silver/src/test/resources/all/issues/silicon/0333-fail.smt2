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
(declare-sort T@Field_6598_53 0)
(declare-sort T@Field_6611_6612 0)
(declare-sort T@Field_10816_10817 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_15506_15511 0)
(declare-sort T@Field_3414_10817 0)
(declare-sort T@Field_3414_15511 0)
(declare-sort T@Field_10816_3415 0)
(declare-sort T@Field_10816_53 0)
(declare-datatypes ((T@PolymorphicMapType_6559 0)) (((PolymorphicMapType_6559 (|PolymorphicMapType_6559_3469_3470#PolymorphicMapType_6559| (Array T@Ref T@Field_10816_10817 Real)) (|PolymorphicMapType_6559_3417_3418#PolymorphicMapType_6559| (Array T@Ref T@Field_6611_6612 Real)) (|PolymorphicMapType_6559_3469_3418#PolymorphicMapType_6559| (Array T@Ref T@Field_10816_3415 Real)) (|PolymorphicMapType_6559_3469_53#PolymorphicMapType_6559| (Array T@Ref T@Field_10816_53 Real)) (|PolymorphicMapType_6559_3469_29304#PolymorphicMapType_6559| (Array T@Ref T@Field_15506_15511 Real)) (|PolymorphicMapType_6559_3417_3470#PolymorphicMapType_6559| (Array T@Ref T@Field_3414_10817 Real)) (|PolymorphicMapType_6559_3417_53#PolymorphicMapType_6559| (Array T@Ref T@Field_6598_53 Real)) (|PolymorphicMapType_6559_3417_29635#PolymorphicMapType_6559| (Array T@Ref T@Field_3414_15511 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7087 0)) (((PolymorphicMapType_7087 (|PolymorphicMapType_7087_3417_3418#PolymorphicMapType_7087| (Array T@Ref T@Field_6611_6612 Bool)) (|PolymorphicMapType_7087_3417_53#PolymorphicMapType_7087| (Array T@Ref T@Field_6598_53 Bool)) (|PolymorphicMapType_7087_3417_10817#PolymorphicMapType_7087| (Array T@Ref T@Field_3414_10817 Bool)) (|PolymorphicMapType_7087_3417_23733#PolymorphicMapType_7087| (Array T@Ref T@Field_3414_15511 Bool)) (|PolymorphicMapType_7087_10816_3418#PolymorphicMapType_7087| (Array T@Ref T@Field_10816_3415 Bool)) (|PolymorphicMapType_7087_10816_53#PolymorphicMapType_7087| (Array T@Ref T@Field_10816_53 Bool)) (|PolymorphicMapType_7087_10816_10817#PolymorphicMapType_7087| (Array T@Ref T@Field_10816_10817 Bool)) (|PolymorphicMapType_7087_10816_24583#PolymorphicMapType_7087| (Array T@Ref T@Field_15506_15511 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6538 0)) (((PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| (Array T@Ref T@Field_6598_53 Bool)) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| (Array T@Ref T@Field_6611_6612 T@Ref)) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| (Array T@Ref T@Field_10816_10817 T@FrameType)) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| (Array T@Ref T@Field_15506_15511 T@PolymorphicMapType_7087)) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| (Array T@Ref T@Field_3414_10817 T@FrameType)) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| (Array T@Ref T@Field_3414_15511 T@PolymorphicMapType_7087)) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| (Array T@Ref T@Field_10816_3415 T@Ref)) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| (Array T@Ref T@Field_10816_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_6598_53)
(declare-fun l () T@Field_6611_6612)
(declare-fun r_11 () T@Field_6611_6612)
(declare-fun succHeap (T@PolymorphicMapType_6538 T@PolymorphicMapType_6538) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6538 T@PolymorphicMapType_6538) Bool)
(declare-fun state (T@PolymorphicMapType_6538 T@PolymorphicMapType_6559) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6559) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6538 T@PolymorphicMapType_6538 T@PolymorphicMapType_6559) Bool)
(declare-fun IsPredicateField_3469_3470 (T@Field_10816_10817) Bool)
(declare-fun HasDirectPerm_10816_10817 (T@PolymorphicMapType_6559 T@Ref T@Field_10816_10817) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3469 (T@Field_10816_10817) T@Field_15506_15511)
(declare-fun IsPredicateField_3414_22462 (T@Field_3414_10817) Bool)
(declare-fun HasDirectPerm_3414_10817 (T@PolymorphicMapType_6559 T@Ref T@Field_3414_10817) Bool)
(declare-fun PredicateMaskField_3414 (T@Field_3414_10817) T@Field_3414_15511)
(declare-fun IsWandField_10816_25748 (T@Field_10816_10817) Bool)
(declare-fun WandMaskField_10816 (T@Field_10816_10817) T@Field_15506_15511)
(declare-fun IsWandField_3414_25391 (T@Field_3414_10817) Bool)
(declare-fun WandMaskField_3414 (T@Field_3414_10817) T@Field_3414_15511)
(declare-fun ZeroPMask () T@PolymorphicMapType_7087)
(declare-fun I (T@Ref) T@Field_10816_10817)
(declare-fun |I2'| (T@PolymorphicMapType_6538 T@Ref) Bool)
(declare-fun dummyFunction_1312 (Bool) Bool)
(declare-fun |I2#triggerStateless| (T@Ref) Bool)
(declare-fun |I#trigger_3469| (T@PolymorphicMapType_6538 T@Field_10816_10817) Bool)
(declare-fun |I#everUsed_3469| (T@Field_10816_10817) Bool)
(declare-fun |I#sm| (T@Ref) T@Field_15506_15511)
(declare-fun dummyHeap () T@PolymorphicMapType_6538)
(declare-fun ZeroMask () T@PolymorphicMapType_6559)
(declare-fun InsidePredicate_6598_6598 (T@Field_3414_10817 T@FrameType T@Field_3414_10817 T@FrameType) Bool)
(declare-fun InsidePredicate_3469_3469 (T@Field_10816_10817 T@FrameType T@Field_10816_10817 T@FrameType) Bool)
(declare-fun IsPredicateField_3414_3415 (T@Field_6611_6612) Bool)
(declare-fun IsWandField_3414_3415 (T@Field_6611_6612) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3417_31459 (T@Field_3414_15511) Bool)
(declare-fun IsWandField_3417_31475 (T@Field_3414_15511) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3417_53 (T@Field_6598_53) Bool)
(declare-fun IsWandField_3417_53 (T@Field_6598_53) Bool)
(declare-fun IsPredicateField_3469_30810 (T@Field_15506_15511) Bool)
(declare-fun IsWandField_3469_30826 (T@Field_15506_15511) Bool)
(declare-fun IsPredicateField_3469_53 (T@Field_10816_53) Bool)
(declare-fun IsWandField_3469_53 (T@Field_10816_53) Bool)
(declare-fun IsPredicateField_3469_3418 (T@Field_10816_3415) Bool)
(declare-fun IsWandField_3469_3418 (T@Field_10816_3415) Bool)
(declare-fun HasDirectPerm_10816_22217 (T@PolymorphicMapType_6559 T@Ref T@Field_15506_15511) Bool)
(declare-fun HasDirectPerm_10816_53 (T@PolymorphicMapType_6559 T@Ref T@Field_10816_53) Bool)
(declare-fun HasDirectPerm_10816_3415 (T@PolymorphicMapType_6559 T@Ref T@Field_10816_3415) Bool)
(declare-fun HasDirectPerm_3414_21277 (T@PolymorphicMapType_6559 T@Ref T@Field_3414_15511) Bool)
(declare-fun HasDirectPerm_3414_53 (T@PolymorphicMapType_6559 T@Ref T@Field_6598_53) Bool)
(declare-fun HasDirectPerm_3414_3415 (T@PolymorphicMapType_6559 T@Ref T@Field_6611_6612) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6559 T@PolymorphicMapType_6559 T@PolymorphicMapType_6559) Bool)
(declare-fun |I2#frame| (T@FrameType T@Ref) Bool)
(declare-fun I2 (T@PolymorphicMapType_6538 T@Ref) Bool)
(declare-fun |p'| (T@PolymorphicMapType_6538) Bool)
(declare-fun |p#frame| (T@FrameType) Bool)
(declare-fun getPredWandId_3469_3470 (T@Field_10816_10817) Int)
(declare-fun |p#triggerStateless| () Bool)
(declare-fun InsidePredicate_6598_3469 (T@Field_3414_10817 T@FrameType T@Field_10816_10817 T@FrameType) Bool)
(declare-fun InsidePredicate_3469_6598 (T@Field_10816_10817 T@FrameType T@Field_3414_10817 T@FrameType) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun p@@10 (T@PolymorphicMapType_6538) Bool)
(assert (distinct l r_11)
)
(assert (forall ((Heap0 T@PolymorphicMapType_6538) (Heap1 T@PolymorphicMapType_6538) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6538) (Mask T@PolymorphicMapType_6559) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6538) (ExhaleHeap T@PolymorphicMapType_6538) (Mask@@0 T@PolymorphicMapType_6559) (pm_f_20 T@Field_10816_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10816_10817 Mask@@0 null pm_f_20) (IsPredicateField_3469_3470 pm_f_20)) (and (and (and (and (and (and (and (forall ((o2_20 T@Ref) (f_53 T@Field_6611_6612) ) (!  (=> (select (|PolymorphicMapType_7087_3417_3418#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@0) null (PredicateMaskField_3469 pm_f_20))) o2_20 f_53) (= (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@0) o2_20 f_53) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap) o2_20 f_53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap) o2_20 f_53))
)) (forall ((o2_20@@0 T@Ref) (f_53@@0 T@Field_6598_53) ) (!  (=> (select (|PolymorphicMapType_7087_3417_53#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@0) null (PredicateMaskField_3469 pm_f_20))) o2_20@@0 f_53@@0) (= (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@0) o2_20@@0 f_53@@0) (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap) o2_20@@0 f_53@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap) o2_20@@0 f_53@@0))
))) (forall ((o2_20@@1 T@Ref) (f_53@@1 T@Field_3414_10817) ) (!  (=> (select (|PolymorphicMapType_7087_3417_10817#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@0) null (PredicateMaskField_3469 pm_f_20))) o2_20@@1 f_53@@1) (= (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@0) o2_20@@1 f_53@@1) (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap) o2_20@@1 f_53@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap) o2_20@@1 f_53@@1))
))) (forall ((o2_20@@2 T@Ref) (f_53@@2 T@Field_3414_15511) ) (!  (=> (select (|PolymorphicMapType_7087_3417_23733#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@0) null (PredicateMaskField_3469 pm_f_20))) o2_20@@2 f_53@@2) (= (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@0) o2_20@@2 f_53@@2) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap) o2_20@@2 f_53@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap) o2_20@@2 f_53@@2))
))) (forall ((o2_20@@3 T@Ref) (f_53@@3 T@Field_10816_3415) ) (!  (=> (select (|PolymorphicMapType_7087_10816_3418#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@0) null (PredicateMaskField_3469 pm_f_20))) o2_20@@3 f_53@@3) (= (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@0) o2_20@@3 f_53@@3) (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap) o2_20@@3 f_53@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap) o2_20@@3 f_53@@3))
))) (forall ((o2_20@@4 T@Ref) (f_53@@4 T@Field_10816_53) ) (!  (=> (select (|PolymorphicMapType_7087_10816_53#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@0) null (PredicateMaskField_3469 pm_f_20))) o2_20@@4 f_53@@4) (= (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@0) o2_20@@4 f_53@@4) (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap) o2_20@@4 f_53@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap) o2_20@@4 f_53@@4))
))) (forall ((o2_20@@5 T@Ref) (f_53@@5 T@Field_10816_10817) ) (!  (=> (select (|PolymorphicMapType_7087_10816_10817#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@0) null (PredicateMaskField_3469 pm_f_20))) o2_20@@5 f_53@@5) (= (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@0) o2_20@@5 f_53@@5) (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap) o2_20@@5 f_53@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap) o2_20@@5 f_53@@5))
))) (forall ((o2_20@@6 T@Ref) (f_53@@6 T@Field_15506_15511) ) (!  (=> (select (|PolymorphicMapType_7087_10816_24583#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@0) null (PredicateMaskField_3469 pm_f_20))) o2_20@@6 f_53@@6) (= (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@0) o2_20@@6 f_53@@6) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap) o2_20@@6 f_53@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap) o2_20@@6 f_53@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3469_3470 pm_f_20))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6538) (ExhaleHeap@@0 T@PolymorphicMapType_6538) (Mask@@1 T@PolymorphicMapType_6559) (pm_f_20@@0 T@Field_3414_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3414_10817 Mask@@1 null pm_f_20@@0) (IsPredicateField_3414_22462 pm_f_20@@0)) (and (and (and (and (and (and (and (forall ((o2_20@@7 T@Ref) (f_53@@7 T@Field_6611_6612) ) (!  (=> (select (|PolymorphicMapType_7087_3417_3418#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@1) null (PredicateMaskField_3414 pm_f_20@@0))) o2_20@@7 f_53@@7) (= (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@1) o2_20@@7 f_53@@7) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap@@0) o2_20@@7 f_53@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap@@0) o2_20@@7 f_53@@7))
)) (forall ((o2_20@@8 T@Ref) (f_53@@8 T@Field_6598_53) ) (!  (=> (select (|PolymorphicMapType_7087_3417_53#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@1) null (PredicateMaskField_3414 pm_f_20@@0))) o2_20@@8 f_53@@8) (= (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@1) o2_20@@8 f_53@@8) (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@0) o2_20@@8 f_53@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@0) o2_20@@8 f_53@@8))
))) (forall ((o2_20@@9 T@Ref) (f_53@@9 T@Field_3414_10817) ) (!  (=> (select (|PolymorphicMapType_7087_3417_10817#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@1) null (PredicateMaskField_3414 pm_f_20@@0))) o2_20@@9 f_53@@9) (= (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@1) o2_20@@9 f_53@@9) (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap@@0) o2_20@@9 f_53@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap@@0) o2_20@@9 f_53@@9))
))) (forall ((o2_20@@10 T@Ref) (f_53@@10 T@Field_3414_15511) ) (!  (=> (select (|PolymorphicMapType_7087_3417_23733#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@1) null (PredicateMaskField_3414 pm_f_20@@0))) o2_20@@10 f_53@@10) (= (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@1) o2_20@@10 f_53@@10) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@0) o2_20@@10 f_53@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@0) o2_20@@10 f_53@@10))
))) (forall ((o2_20@@11 T@Ref) (f_53@@11 T@Field_10816_3415) ) (!  (=> (select (|PolymorphicMapType_7087_10816_3418#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@1) null (PredicateMaskField_3414 pm_f_20@@0))) o2_20@@11 f_53@@11) (= (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@1) o2_20@@11 f_53@@11) (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap@@0) o2_20@@11 f_53@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap@@0) o2_20@@11 f_53@@11))
))) (forall ((o2_20@@12 T@Ref) (f_53@@12 T@Field_10816_53) ) (!  (=> (select (|PolymorphicMapType_7087_10816_53#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@1) null (PredicateMaskField_3414 pm_f_20@@0))) o2_20@@12 f_53@@12) (= (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@1) o2_20@@12 f_53@@12) (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap@@0) o2_20@@12 f_53@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap@@0) o2_20@@12 f_53@@12))
))) (forall ((o2_20@@13 T@Ref) (f_53@@13 T@Field_10816_10817) ) (!  (=> (select (|PolymorphicMapType_7087_10816_10817#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@1) null (PredicateMaskField_3414 pm_f_20@@0))) o2_20@@13 f_53@@13) (= (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@1) o2_20@@13 f_53@@13) (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap@@0) o2_20@@13 f_53@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap@@0) o2_20@@13 f_53@@13))
))) (forall ((o2_20@@14 T@Ref) (f_53@@14 T@Field_15506_15511) ) (!  (=> (select (|PolymorphicMapType_7087_10816_24583#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@1) null (PredicateMaskField_3414 pm_f_20@@0))) o2_20@@14 f_53@@14) (= (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@1) o2_20@@14 f_53@@14) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@0) o2_20@@14 f_53@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@0) o2_20@@14 f_53@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3414_22462 pm_f_20@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6538) (ExhaleHeap@@1 T@PolymorphicMapType_6538) (Mask@@2 T@PolymorphicMapType_6559) (pm_f_20@@1 T@Field_10816_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_10816_10817 Mask@@2 null pm_f_20@@1) (IsWandField_10816_25748 pm_f_20@@1)) (and (and (and (and (and (and (and (forall ((o2_20@@15 T@Ref) (f_53@@15 T@Field_6611_6612) ) (!  (=> (select (|PolymorphicMapType_7087_3417_3418#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@2) null (WandMaskField_10816 pm_f_20@@1))) o2_20@@15 f_53@@15) (= (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@2) o2_20@@15 f_53@@15) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap@@1) o2_20@@15 f_53@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap@@1) o2_20@@15 f_53@@15))
)) (forall ((o2_20@@16 T@Ref) (f_53@@16 T@Field_6598_53) ) (!  (=> (select (|PolymorphicMapType_7087_3417_53#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@2) null (WandMaskField_10816 pm_f_20@@1))) o2_20@@16 f_53@@16) (= (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@2) o2_20@@16 f_53@@16) (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@1) o2_20@@16 f_53@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@1) o2_20@@16 f_53@@16))
))) (forall ((o2_20@@17 T@Ref) (f_53@@17 T@Field_3414_10817) ) (!  (=> (select (|PolymorphicMapType_7087_3417_10817#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@2) null (WandMaskField_10816 pm_f_20@@1))) o2_20@@17 f_53@@17) (= (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@2) o2_20@@17 f_53@@17) (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap@@1) o2_20@@17 f_53@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap@@1) o2_20@@17 f_53@@17))
))) (forall ((o2_20@@18 T@Ref) (f_53@@18 T@Field_3414_15511) ) (!  (=> (select (|PolymorphicMapType_7087_3417_23733#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@2) null (WandMaskField_10816 pm_f_20@@1))) o2_20@@18 f_53@@18) (= (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@2) o2_20@@18 f_53@@18) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@1) o2_20@@18 f_53@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@1) o2_20@@18 f_53@@18))
))) (forall ((o2_20@@19 T@Ref) (f_53@@19 T@Field_10816_3415) ) (!  (=> (select (|PolymorphicMapType_7087_10816_3418#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@2) null (WandMaskField_10816 pm_f_20@@1))) o2_20@@19 f_53@@19) (= (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@2) o2_20@@19 f_53@@19) (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap@@1) o2_20@@19 f_53@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap@@1) o2_20@@19 f_53@@19))
))) (forall ((o2_20@@20 T@Ref) (f_53@@20 T@Field_10816_53) ) (!  (=> (select (|PolymorphicMapType_7087_10816_53#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@2) null (WandMaskField_10816 pm_f_20@@1))) o2_20@@20 f_53@@20) (= (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@2) o2_20@@20 f_53@@20) (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap@@1) o2_20@@20 f_53@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap@@1) o2_20@@20 f_53@@20))
))) (forall ((o2_20@@21 T@Ref) (f_53@@21 T@Field_10816_10817) ) (!  (=> (select (|PolymorphicMapType_7087_10816_10817#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@2) null (WandMaskField_10816 pm_f_20@@1))) o2_20@@21 f_53@@21) (= (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@2) o2_20@@21 f_53@@21) (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap@@1) o2_20@@21 f_53@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap@@1) o2_20@@21 f_53@@21))
))) (forall ((o2_20@@22 T@Ref) (f_53@@22 T@Field_15506_15511) ) (!  (=> (select (|PolymorphicMapType_7087_10816_24583#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@2) null (WandMaskField_10816 pm_f_20@@1))) o2_20@@22 f_53@@22) (= (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@2) o2_20@@22 f_53@@22) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@1) o2_20@@22 f_53@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@1) o2_20@@22 f_53@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_10816_25748 pm_f_20@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6538) (ExhaleHeap@@2 T@PolymorphicMapType_6538) (Mask@@3 T@PolymorphicMapType_6559) (pm_f_20@@2 T@Field_3414_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3414_10817 Mask@@3 null pm_f_20@@2) (IsWandField_3414_25391 pm_f_20@@2)) (and (and (and (and (and (and (and (forall ((o2_20@@23 T@Ref) (f_53@@23 T@Field_6611_6612) ) (!  (=> (select (|PolymorphicMapType_7087_3417_3418#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@3) null (WandMaskField_3414 pm_f_20@@2))) o2_20@@23 f_53@@23) (= (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@3) o2_20@@23 f_53@@23) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap@@2) o2_20@@23 f_53@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap@@2) o2_20@@23 f_53@@23))
)) (forall ((o2_20@@24 T@Ref) (f_53@@24 T@Field_6598_53) ) (!  (=> (select (|PolymorphicMapType_7087_3417_53#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@3) null (WandMaskField_3414 pm_f_20@@2))) o2_20@@24 f_53@@24) (= (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@3) o2_20@@24 f_53@@24) (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@2) o2_20@@24 f_53@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@2) o2_20@@24 f_53@@24))
))) (forall ((o2_20@@25 T@Ref) (f_53@@25 T@Field_3414_10817) ) (!  (=> (select (|PolymorphicMapType_7087_3417_10817#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@3) null (WandMaskField_3414 pm_f_20@@2))) o2_20@@25 f_53@@25) (= (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@3) o2_20@@25 f_53@@25) (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap@@2) o2_20@@25 f_53@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap@@2) o2_20@@25 f_53@@25))
))) (forall ((o2_20@@26 T@Ref) (f_53@@26 T@Field_3414_15511) ) (!  (=> (select (|PolymorphicMapType_7087_3417_23733#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@3) null (WandMaskField_3414 pm_f_20@@2))) o2_20@@26 f_53@@26) (= (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@3) o2_20@@26 f_53@@26) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@2) o2_20@@26 f_53@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@2) o2_20@@26 f_53@@26))
))) (forall ((o2_20@@27 T@Ref) (f_53@@27 T@Field_10816_3415) ) (!  (=> (select (|PolymorphicMapType_7087_10816_3418#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@3) null (WandMaskField_3414 pm_f_20@@2))) o2_20@@27 f_53@@27) (= (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@3) o2_20@@27 f_53@@27) (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap@@2) o2_20@@27 f_53@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap@@2) o2_20@@27 f_53@@27))
))) (forall ((o2_20@@28 T@Ref) (f_53@@28 T@Field_10816_53) ) (!  (=> (select (|PolymorphicMapType_7087_10816_53#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@3) null (WandMaskField_3414 pm_f_20@@2))) o2_20@@28 f_53@@28) (= (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@3) o2_20@@28 f_53@@28) (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap@@2) o2_20@@28 f_53@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap@@2) o2_20@@28 f_53@@28))
))) (forall ((o2_20@@29 T@Ref) (f_53@@29 T@Field_10816_10817) ) (!  (=> (select (|PolymorphicMapType_7087_10816_10817#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@3) null (WandMaskField_3414 pm_f_20@@2))) o2_20@@29 f_53@@29) (= (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@3) o2_20@@29 f_53@@29) (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap@@2) o2_20@@29 f_53@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap@@2) o2_20@@29 f_53@@29))
))) (forall ((o2_20@@30 T@Ref) (f_53@@30 T@Field_15506_15511) ) (!  (=> (select (|PolymorphicMapType_7087_10816_24583#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@3) null (WandMaskField_3414 pm_f_20@@2))) o2_20@@30 f_53@@30) (= (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@3) o2_20@@30 f_53@@30) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@2) o2_20@@30 f_53@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@2) o2_20@@30 f_53@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3414_25391 pm_f_20@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6538) (Heap1@@0 T@PolymorphicMapType_6538) (Heap2 T@PolymorphicMapType_6538) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_15506_15511) ) (!  (not (select (|PolymorphicMapType_7087_10816_24583#PolymorphicMapType_7087| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7087_10816_24583#PolymorphicMapType_7087| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10816_10817) ) (!  (not (select (|PolymorphicMapType_7087_10816_10817#PolymorphicMapType_7087| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7087_10816_10817#PolymorphicMapType_7087| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10816_53) ) (!  (not (select (|PolymorphicMapType_7087_10816_53#PolymorphicMapType_7087| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7087_10816_53#PolymorphicMapType_7087| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10816_3415) ) (!  (not (select (|PolymorphicMapType_7087_10816_3418#PolymorphicMapType_7087| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7087_10816_3418#PolymorphicMapType_7087| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3414_15511) ) (!  (not (select (|PolymorphicMapType_7087_3417_23733#PolymorphicMapType_7087| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7087_3417_23733#PolymorphicMapType_7087| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3414_10817) ) (!  (not (select (|PolymorphicMapType_7087_3417_10817#PolymorphicMapType_7087| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7087_3417_10817#PolymorphicMapType_7087| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_6598_53) ) (!  (not (select (|PolymorphicMapType_7087_3417_53#PolymorphicMapType_7087| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7087_3417_53#PolymorphicMapType_7087| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_6611_6612) ) (!  (not (select (|PolymorphicMapType_7087_3417_3418#PolymorphicMapType_7087| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7087_3417_3418#PolymorphicMapType_7087| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((t_2 T@Ref) ) (! (IsPredicateField_3469_3470 (I t_2))
 :qid |stdinbpl.460:15|
 :skolemid |34|
 :pattern ( (I t_2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6538) (t_2@@0 T@Ref) ) (! (dummyFunction_1312 (|I2#triggerStateless| t_2@@0))
 :qid |stdinbpl.243:15|
 :skolemid |26|
 :pattern ( (|I2'| Heap@@4 t_2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6538) (t_2@@1 T@Ref) ) (! (|I#everUsed_3469| (I t_2@@1))
 :qid |stdinbpl.479:15|
 :skolemid |38|
 :pattern ( (|I#trigger_3469| Heap@@5 (I t_2@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6538) (ExhaleHeap@@3 T@PolymorphicMapType_6538) (Mask@@4 T@PolymorphicMapType_6559) (pm_f_20@@3 T@Field_10816_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_10816_10817 Mask@@4 null pm_f_20@@3) (IsPredicateField_3469_3470 pm_f_20@@3)) (= (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@6) null (PredicateMaskField_3469 pm_f_20@@3)) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@3) null (PredicateMaskField_3469 pm_f_20@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsPredicateField_3469_3470 pm_f_20@@3) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@3) null (PredicateMaskField_3469 pm_f_20@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6538) (ExhaleHeap@@4 T@PolymorphicMapType_6538) (Mask@@5 T@PolymorphicMapType_6559) (pm_f_20@@4 T@Field_3414_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3414_10817 Mask@@5 null pm_f_20@@4) (IsPredicateField_3414_22462 pm_f_20@@4)) (= (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@7) null (PredicateMaskField_3414 pm_f_20@@4)) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@4) null (PredicateMaskField_3414 pm_f_20@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3414_22462 pm_f_20@@4) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@4) null (PredicateMaskField_3414 pm_f_20@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6538) (ExhaleHeap@@5 T@PolymorphicMapType_6538) (Mask@@6 T@PolymorphicMapType_6559) (pm_f_20@@5 T@Field_10816_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_10816_10817 Mask@@6 null pm_f_20@@5) (IsWandField_10816_25748 pm_f_20@@5)) (= (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@8) null (WandMaskField_10816 pm_f_20@@5)) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@5) null (WandMaskField_10816 pm_f_20@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_10816_25748 pm_f_20@@5) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@5) null (WandMaskField_10816 pm_f_20@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6538) (ExhaleHeap@@6 T@PolymorphicMapType_6538) (Mask@@7 T@PolymorphicMapType_6559) (pm_f_20@@6 T@Field_3414_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3414_10817 Mask@@7 null pm_f_20@@6) (IsWandField_3414_25391 pm_f_20@@6)) (= (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@9) null (WandMaskField_3414 pm_f_20@@6)) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@6) null (WandMaskField_3414 pm_f_20@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_3414_25391 pm_f_20@@6) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@6) null (WandMaskField_3414 pm_f_20@@6)))
)))
(assert (forall ((t_2@@2 T@Ref) (t2_1 T@Ref) ) (!  (=> (= (I t_2@@2) (I t2_1)) (= t_2@@2 t2_1))
 :qid |stdinbpl.470:15|
 :skolemid |36|
 :pattern ( (I t_2@@2) (I t2_1))
)))
(assert (forall ((t_2@@3 T@Ref) (t2_1@@0 T@Ref) ) (!  (=> (= (|I#sm| t_2@@3) (|I#sm| t2_1@@0)) (= t_2@@3 t2_1@@0))
 :qid |stdinbpl.474:15|
 :skolemid |37|
 :pattern ( (|I#sm| t_2@@3) (|I#sm| t2_1@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6538) (ExhaleHeap@@7 T@PolymorphicMapType_6538) (Mask@@8 T@PolymorphicMapType_6559) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@10) o_41 $allocated) (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@7) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@7) o_41 $allocated))
)))
(assert (forall ((p T@Field_3414_10817) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6598_6598 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6598_6598 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_10816_10817) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_3469_3469 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3469_3469 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3414_3415 l)))
(assert  (not (IsWandField_3414_3415 l)))
(assert  (not (IsPredicateField_3414_3415 r_11)))
(assert  (not (IsWandField_3414_3415 r_11)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6538) (ExhaleHeap@@8 T@PolymorphicMapType_6538) (Mask@@9 T@PolymorphicMapType_6559) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@11 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6559) (o_2@@7 T@Ref) (f_4@@7 T@Field_3414_15511) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6559_3417_29635#PolymorphicMapType_6559| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3417_31459 f_4@@7))) (not (IsWandField_3417_31475 f_4@@7))) (<= (select (|PolymorphicMapType_6559_3417_29635#PolymorphicMapType_6559| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6559_3417_29635#PolymorphicMapType_6559| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6559) (o_2@@8 T@Ref) (f_4@@8 T@Field_6598_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6559_3417_53#PolymorphicMapType_6559| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3417_53 f_4@@8))) (not (IsWandField_3417_53 f_4@@8))) (<= (select (|PolymorphicMapType_6559_3417_53#PolymorphicMapType_6559| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6559_3417_53#PolymorphicMapType_6559| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6559) (o_2@@9 T@Ref) (f_4@@9 T@Field_6611_6612) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6559_3417_3418#PolymorphicMapType_6559| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3414_3415 f_4@@9))) (not (IsWandField_3414_3415 f_4@@9))) (<= (select (|PolymorphicMapType_6559_3417_3418#PolymorphicMapType_6559| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6559_3417_3418#PolymorphicMapType_6559| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6559) (o_2@@10 T@Ref) (f_4@@10 T@Field_3414_10817) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6559_3417_3470#PolymorphicMapType_6559| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3414_22462 f_4@@10))) (not (IsWandField_3414_25391 f_4@@10))) (<= (select (|PolymorphicMapType_6559_3417_3470#PolymorphicMapType_6559| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6559_3417_3470#PolymorphicMapType_6559| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6559) (o_2@@11 T@Ref) (f_4@@11 T@Field_15506_15511) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6559_3469_29304#PolymorphicMapType_6559| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3469_30810 f_4@@11))) (not (IsWandField_3469_30826 f_4@@11))) (<= (select (|PolymorphicMapType_6559_3469_29304#PolymorphicMapType_6559| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6559_3469_29304#PolymorphicMapType_6559| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6559) (o_2@@12 T@Ref) (f_4@@12 T@Field_10816_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6559_3469_53#PolymorphicMapType_6559| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3469_53 f_4@@12))) (not (IsWandField_3469_53 f_4@@12))) (<= (select (|PolymorphicMapType_6559_3469_53#PolymorphicMapType_6559| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6559_3469_53#PolymorphicMapType_6559| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6559) (o_2@@13 T@Ref) (f_4@@13 T@Field_10816_3415) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_6559_3469_3418#PolymorphicMapType_6559| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3469_3418 f_4@@13))) (not (IsWandField_3469_3418 f_4@@13))) (<= (select (|PolymorphicMapType_6559_3469_3418#PolymorphicMapType_6559| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_6559_3469_3418#PolymorphicMapType_6559| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6559) (o_2@@14 T@Ref) (f_4@@14 T@Field_10816_10817) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_6559_3469_3470#PolymorphicMapType_6559| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3469_3470 f_4@@14))) (not (IsWandField_10816_25748 f_4@@14))) (<= (select (|PolymorphicMapType_6559_3469_3470#PolymorphicMapType_6559| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_6559_3469_3470#PolymorphicMapType_6559| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6559) (o_2@@15 T@Ref) (f_4@@15 T@Field_15506_15511) ) (! (= (HasDirectPerm_10816_22217 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_6559_3469_29304#PolymorphicMapType_6559| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10816_22217 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6559) (o_2@@16 T@Ref) (f_4@@16 T@Field_10816_10817) ) (! (= (HasDirectPerm_10816_10817 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_6559_3469_3470#PolymorphicMapType_6559| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10816_10817 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6559) (o_2@@17 T@Ref) (f_4@@17 T@Field_10816_53) ) (! (= (HasDirectPerm_10816_53 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_6559_3469_53#PolymorphicMapType_6559| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10816_53 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_6559) (o_2@@18 T@Ref) (f_4@@18 T@Field_10816_3415) ) (! (= (HasDirectPerm_10816_3415 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_6559_3469_3418#PolymorphicMapType_6559| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10816_3415 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_6559) (o_2@@19 T@Ref) (f_4@@19 T@Field_3414_15511) ) (! (= (HasDirectPerm_3414_21277 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_6559_3417_29635#PolymorphicMapType_6559| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3414_21277 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_6559) (o_2@@20 T@Ref) (f_4@@20 T@Field_3414_10817) ) (! (= (HasDirectPerm_3414_10817 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_6559_3417_3470#PolymorphicMapType_6559| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3414_10817 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_6559) (o_2@@21 T@Ref) (f_4@@21 T@Field_6598_53) ) (! (= (HasDirectPerm_3414_53 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_6559_3417_53#PolymorphicMapType_6559| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3414_53 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_6559) (o_2@@22 T@Ref) (f_4@@22 T@Field_6611_6612) ) (! (= (HasDirectPerm_3414_3415 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_6559_3417_3418#PolymorphicMapType_6559| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3414_3415 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6538) (ExhaleHeap@@9 T@PolymorphicMapType_6538) (Mask@@26 T@PolymorphicMapType_6559) (o_41@@0 T@Ref) (f_53@@31 T@Field_15506_15511) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_10816_22217 Mask@@26 o_41@@0 f_53@@31) (= (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@12) o_41@@0 f_53@@31) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@9) o_41@@0 f_53@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@9) o_41@@0 f_53@@31))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6538) (ExhaleHeap@@10 T@PolymorphicMapType_6538) (Mask@@27 T@PolymorphicMapType_6559) (o_41@@1 T@Ref) (f_53@@32 T@Field_10816_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_10816_10817 Mask@@27 o_41@@1 f_53@@32) (= (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@13) o_41@@1 f_53@@32) (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap@@10) o_41@@1 f_53@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap@@10) o_41@@1 f_53@@32))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6538) (ExhaleHeap@@11 T@PolymorphicMapType_6538) (Mask@@28 T@PolymorphicMapType_6559) (o_41@@2 T@Ref) (f_53@@33 T@Field_10816_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_10816_53 Mask@@28 o_41@@2 f_53@@33) (= (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@14) o_41@@2 f_53@@33) (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap@@11) o_41@@2 f_53@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap@@11) o_41@@2 f_53@@33))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6538) (ExhaleHeap@@12 T@PolymorphicMapType_6538) (Mask@@29 T@PolymorphicMapType_6559) (o_41@@3 T@Ref) (f_53@@34 T@Field_10816_3415) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_10816_3415 Mask@@29 o_41@@3 f_53@@34) (= (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@15) o_41@@3 f_53@@34) (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap@@12) o_41@@3 f_53@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap@@12) o_41@@3 f_53@@34))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6538) (ExhaleHeap@@13 T@PolymorphicMapType_6538) (Mask@@30 T@PolymorphicMapType_6559) (o_41@@4 T@Ref) (f_53@@35 T@Field_3414_15511) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_3414_21277 Mask@@30 o_41@@4 f_53@@35) (= (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@16) o_41@@4 f_53@@35) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@13) o_41@@4 f_53@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@13) o_41@@4 f_53@@35))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6538) (ExhaleHeap@@14 T@PolymorphicMapType_6538) (Mask@@31 T@PolymorphicMapType_6559) (o_41@@5 T@Ref) (f_53@@36 T@Field_3414_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_3414_10817 Mask@@31 o_41@@5 f_53@@36) (= (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@17) o_41@@5 f_53@@36) (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap@@14) o_41@@5 f_53@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap@@14) o_41@@5 f_53@@36))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6538) (ExhaleHeap@@15 T@PolymorphicMapType_6538) (Mask@@32 T@PolymorphicMapType_6559) (o_41@@6 T@Ref) (f_53@@37 T@Field_6598_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_3414_53 Mask@@32 o_41@@6 f_53@@37) (= (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@18) o_41@@6 f_53@@37) (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@15) o_41@@6 f_53@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@15) o_41@@6 f_53@@37))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6538) (ExhaleHeap@@16 T@PolymorphicMapType_6538) (Mask@@33 T@PolymorphicMapType_6559) (o_41@@7 T@Ref) (f_53@@38 T@Field_6611_6612) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_3414_3415 Mask@@33 o_41@@7 f_53@@38) (= (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@19) o_41@@7 f_53@@38) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap@@16) o_41@@7 f_53@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap@@16) o_41@@7 f_53@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_3414_15511) ) (! (= (select (|PolymorphicMapType_6559_3417_29635#PolymorphicMapType_6559| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6559_3417_29635#PolymorphicMapType_6559| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_6598_53) ) (! (= (select (|PolymorphicMapType_6559_3417_53#PolymorphicMapType_6559| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6559_3417_53#PolymorphicMapType_6559| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_6611_6612) ) (! (= (select (|PolymorphicMapType_6559_3417_3418#PolymorphicMapType_6559| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6559_3417_3418#PolymorphicMapType_6559| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_3414_10817) ) (! (= (select (|PolymorphicMapType_6559_3417_3470#PolymorphicMapType_6559| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6559_3417_3470#PolymorphicMapType_6559| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_15506_15511) ) (! (= (select (|PolymorphicMapType_6559_3469_29304#PolymorphicMapType_6559| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6559_3469_29304#PolymorphicMapType_6559| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_10816_53) ) (! (= (select (|PolymorphicMapType_6559_3469_53#PolymorphicMapType_6559| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6559_3469_53#PolymorphicMapType_6559| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_10816_3415) ) (! (= (select (|PolymorphicMapType_6559_3469_3418#PolymorphicMapType_6559| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6559_3469_3418#PolymorphicMapType_6559| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_10816_10817) ) (! (= (select (|PolymorphicMapType_6559_3469_3470#PolymorphicMapType_6559| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6559_3469_3470#PolymorphicMapType_6559| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6559) (SummandMask1 T@PolymorphicMapType_6559) (SummandMask2 T@PolymorphicMapType_6559) (o_2@@31 T@Ref) (f_4@@31 T@Field_3414_15511) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6559_3417_29635#PolymorphicMapType_6559| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_6559_3417_29635#PolymorphicMapType_6559| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_6559_3417_29635#PolymorphicMapType_6559| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6559_3417_29635#PolymorphicMapType_6559| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6559_3417_29635#PolymorphicMapType_6559| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6559_3417_29635#PolymorphicMapType_6559| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6559) (SummandMask1@@0 T@PolymorphicMapType_6559) (SummandMask2@@0 T@PolymorphicMapType_6559) (o_2@@32 T@Ref) (f_4@@32 T@Field_6598_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6559_3417_53#PolymorphicMapType_6559| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_6559_3417_53#PolymorphicMapType_6559| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_6559_3417_53#PolymorphicMapType_6559| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6559_3417_53#PolymorphicMapType_6559| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6559_3417_53#PolymorphicMapType_6559| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6559_3417_53#PolymorphicMapType_6559| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6559) (SummandMask1@@1 T@PolymorphicMapType_6559) (SummandMask2@@1 T@PolymorphicMapType_6559) (o_2@@33 T@Ref) (f_4@@33 T@Field_6611_6612) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6559_3417_3418#PolymorphicMapType_6559| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_6559_3417_3418#PolymorphicMapType_6559| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_6559_3417_3418#PolymorphicMapType_6559| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6559_3417_3418#PolymorphicMapType_6559| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6559_3417_3418#PolymorphicMapType_6559| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6559_3417_3418#PolymorphicMapType_6559| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6559) (SummandMask1@@2 T@PolymorphicMapType_6559) (SummandMask2@@2 T@PolymorphicMapType_6559) (o_2@@34 T@Ref) (f_4@@34 T@Field_3414_10817) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6559_3417_3470#PolymorphicMapType_6559| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_6559_3417_3470#PolymorphicMapType_6559| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_6559_3417_3470#PolymorphicMapType_6559| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6559_3417_3470#PolymorphicMapType_6559| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6559_3417_3470#PolymorphicMapType_6559| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6559_3417_3470#PolymorphicMapType_6559| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6559) (SummandMask1@@3 T@PolymorphicMapType_6559) (SummandMask2@@3 T@PolymorphicMapType_6559) (o_2@@35 T@Ref) (f_4@@35 T@Field_15506_15511) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6559_3469_29304#PolymorphicMapType_6559| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_6559_3469_29304#PolymorphicMapType_6559| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_6559_3469_29304#PolymorphicMapType_6559| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6559_3469_29304#PolymorphicMapType_6559| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6559_3469_29304#PolymorphicMapType_6559| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6559_3469_29304#PolymorphicMapType_6559| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_6559) (SummandMask1@@4 T@PolymorphicMapType_6559) (SummandMask2@@4 T@PolymorphicMapType_6559) (o_2@@36 T@Ref) (f_4@@36 T@Field_10816_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_6559_3469_53#PolymorphicMapType_6559| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_6559_3469_53#PolymorphicMapType_6559| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_6559_3469_53#PolymorphicMapType_6559| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6559_3469_53#PolymorphicMapType_6559| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6559_3469_53#PolymorphicMapType_6559| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6559_3469_53#PolymorphicMapType_6559| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_6559) (SummandMask1@@5 T@PolymorphicMapType_6559) (SummandMask2@@5 T@PolymorphicMapType_6559) (o_2@@37 T@Ref) (f_4@@37 T@Field_10816_3415) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_6559_3469_3418#PolymorphicMapType_6559| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_6559_3469_3418#PolymorphicMapType_6559| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_6559_3469_3418#PolymorphicMapType_6559| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6559_3469_3418#PolymorphicMapType_6559| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6559_3469_3418#PolymorphicMapType_6559| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6559_3469_3418#PolymorphicMapType_6559| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_6559) (SummandMask1@@6 T@PolymorphicMapType_6559) (SummandMask2@@6 T@PolymorphicMapType_6559) (o_2@@38 T@Ref) (f_4@@38 T@Field_10816_10817) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_6559_3469_3470#PolymorphicMapType_6559| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_6559_3469_3470#PolymorphicMapType_6559| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_6559_3469_3470#PolymorphicMapType_6559| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6559_3469_3470#PolymorphicMapType_6559| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6559_3469_3470#PolymorphicMapType_6559| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6559_3469_3470#PolymorphicMapType_6559| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6538) (Mask@@34 T@PolymorphicMapType_6559) (t_2@@4 T@Ref) ) (!  (=> (state Heap@@20 Mask@@34) (= (|I2'| Heap@@20 t_2@@4) (|I2#frame| (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@20) null (I t_2@@4)) t_2@@4)))
 :qid |stdinbpl.256:15|
 :skolemid |28|
 :pattern ( (state Heap@@20 Mask@@34) (|I2'| Heap@@20 t_2@@4))
 :pattern ( (state Heap@@20 Mask@@34) (|I2#triggerStateless| t_2@@4) (|I#trigger_3469| Heap@@20 (I t_2@@4)) (|I#trigger_3469| Heap@@20 (I t_2@@4)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6538) (t_2@@5 T@Ref) ) (!  (and (= (I2 Heap@@21 t_2@@5) (|I2'| Heap@@21 t_2@@5)) (dummyFunction_1312 (|I2#triggerStateless| t_2@@5)))
 :qid |stdinbpl.239:15|
 :skolemid |25|
 :pattern ( (I2 Heap@@21 t_2@@5))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6538) (Mask@@35 T@PolymorphicMapType_6559) ) (!  (=> (state Heap@@22 Mask@@35) (= (|p'| Heap@@22) (|p#frame| EmptyFrame)))
 :qid |stdinbpl.209:15|
 :skolemid |24|
 :pattern ( (state Heap@@22 Mask@@35) (|p'| Heap@@22))
)))
(assert (forall ((t_2@@6 T@Ref) ) (! (= (getPredWandId_3469_3470 (I t_2@@6)) 0)
 :qid |stdinbpl.464:15|
 :skolemid |35|
 :pattern ( (I t_2@@6))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6538) ) (! (dummyFunction_1312 |p#triggerStateless|)
 :qid |stdinbpl.202:15|
 :skolemid |23|
 :pattern ( (|p'| Heap@@23))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6538) (o_15 T@Ref) (f_54 T@Field_15506_15511) (v T@PolymorphicMapType_7087) ) (! (succHeap Heap@@24 (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@24) (store (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@24) o_15 f_54 v) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@24) (store (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@24) o_15 f_54 v) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6538) (o_15@@0 T@Ref) (f_54@@0 T@Field_10816_10817) (v@@0 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@25) (store (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@25) o_15@@0 f_54@@0 v@@0) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@25) (store (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@25) o_15@@0 f_54@@0 v@@0) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6538) (o_15@@1 T@Ref) (f_54@@1 T@Field_10816_3415) (v@@1 T@Ref) ) (! (succHeap Heap@@26 (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@26) (store (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@26) o_15@@1 f_54@@1 v@@1) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@26) (store (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@26) o_15@@1 f_54@@1 v@@1) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6538) (o_15@@2 T@Ref) (f_54@@2 T@Field_10816_53) (v@@2 Bool) ) (! (succHeap Heap@@27 (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@27) (store (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@27) o_15@@2 f_54@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@27) (store (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@27) o_15@@2 f_54@@2 v@@2)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6538) (o_15@@3 T@Ref) (f_54@@3 T@Field_3414_15511) (v@@3 T@PolymorphicMapType_7087) ) (! (succHeap Heap@@28 (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@28) (store (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@28) o_15@@3 f_54@@3 v@@3) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@28) (store (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@28) o_15@@3 f_54@@3 v@@3) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6538) (o_15@@4 T@Ref) (f_54@@4 T@Field_3414_10817) (v@@4 T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@29) (store (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@29) o_15@@4 f_54@@4 v@@4) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@29) (store (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@29) o_15@@4 f_54@@4 v@@4) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6538) (o_15@@5 T@Ref) (f_54@@5 T@Field_6611_6612) (v@@5 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@30) (store (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@30) o_15@@5 f_54@@5 v@@5) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@30) (store (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@30) o_15@@5 f_54@@5 v@@5) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6538) (o_15@@6 T@Ref) (f_54@@6 T@Field_6598_53) (v@@6 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_6538 (store (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@31) o_15@@6 f_54@@6 v@@6) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6538 (store (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@31) o_15@@6 f_54@@6 v@@6) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@31)))
)))
(assert (forall ((t_2@@7 T@Ref) ) (! (= (PredicateMaskField_3469 (I t_2@@7)) (|I#sm| t_2@@7))
 :qid |stdinbpl.456:15|
 :skolemid |33|
 :pattern ( (PredicateMaskField_3469 (I t_2@@7)))
)))
(assert (forall ((o_15@@7 T@Ref) (f_23 T@Field_6611_6612) (Heap@@32 T@PolymorphicMapType_6538) ) (!  (=> (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@32) o_15@@7 $allocated) (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@32) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@32) o_15@@7 f_23) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@32) o_15@@7 f_23))
)))
(assert (forall ((p@@2 T@Field_3414_10817) (v_1@@1 T@FrameType) (q T@Field_3414_10817) (w@@1 T@FrameType) (r T@Field_3414_10817) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6598_6598 p@@2 v_1@@1 q w@@1) (InsidePredicate_6598_6598 q w@@1 r u)) (InsidePredicate_6598_6598 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6598_6598 p@@2 v_1@@1 q w@@1) (InsidePredicate_6598_6598 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_3414_10817) (v_1@@2 T@FrameType) (q@@0 T@Field_3414_10817) (w@@2 T@FrameType) (r@@0 T@Field_10816_10817) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_6598_6598 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_6598_3469 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_6598_3469 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6598_6598 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_6598_3469 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_3414_10817) (v_1@@3 T@FrameType) (q@@1 T@Field_10816_10817) (w@@3 T@FrameType) (r@@1 T@Field_3414_10817) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_6598_3469 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3469_6598 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_6598_6598 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6598_3469 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3469_6598 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_3414_10817) (v_1@@4 T@FrameType) (q@@2 T@Field_10816_10817) (w@@4 T@FrameType) (r@@2 T@Field_10816_10817) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_6598_3469 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3469_3469 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_6598_3469 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6598_3469 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3469_3469 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_10816_10817) (v_1@@5 T@FrameType) (q@@3 T@Field_3414_10817) (w@@5 T@FrameType) (r@@3 T@Field_3414_10817) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_3469_6598 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_6598_6598 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_3469_6598 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3469_6598 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_6598_6598 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_10816_10817) (v_1@@6 T@FrameType) (q@@4 T@Field_3414_10817) (w@@6 T@FrameType) (r@@4 T@Field_10816_10817) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_3469_6598 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_6598_3469 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_3469_3469 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3469_6598 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_6598_3469 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_10816_10817) (v_1@@7 T@FrameType) (q@@5 T@Field_10816_10817) (w@@7 T@FrameType) (r@@5 T@Field_3414_10817) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_3469_3469 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3469_6598 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_3469_6598 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3469_3469 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3469_6598 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_10816_10817) (v_1@@8 T@FrameType) (q@@6 T@Field_10816_10817) (w@@8 T@FrameType) (r@@6 T@Field_10816_10817) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_3469_3469 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3469_3469 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_3469_3469 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3469_3469 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3469_3469 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6538) (Mask@@36 T@PolymorphicMapType_6559) (t_2@@8 T@Ref) ) (!  (=> (and (state Heap@@33 Mask@@36) (< AssumeFunctionsAbove 0)) (= (I2 Heap@@33 t_2@@8)  (=> (not (= t_2@@8 null)) (and (|I2'| Heap@@33 (ite (p@@10 Heap@@33) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@33) t_2@@8 r_11) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@33) t_2@@8 l))) (|I2'| Heap@@33 (ite (p@@10 Heap@@33) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@33) t_2@@8 l) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@33) t_2@@8 r_11)))))))
 :qid |stdinbpl.249:15|
 :skolemid |27|
 :pattern ( (state Heap@@33 Mask@@36) (I2 Heap@@33 t_2@@8))
 :pattern ( (state Heap@@33 Mask@@36) (|I2#triggerStateless| t_2@@8) (|I#trigger_3469| Heap@@33 (I t_2@@8)) (|I#trigger_3469| Heap@@33 (I t_2@@8)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6538) ) (!  (and (= (p@@10 Heap@@34) (|p'| Heap@@34)) (dummyFunction_1312 |p#triggerStateless|))
 :qid |stdinbpl.198:15|
 :skolemid |22|
 :pattern ( (p@@10 Heap@@34))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@35 () T@PolymorphicMapType_6538)
(set-info :boogie-vc-id fail)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) false)))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@35 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 4) 1) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
