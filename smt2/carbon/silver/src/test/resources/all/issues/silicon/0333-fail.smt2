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
(declare-fun l_8 () T@Field_6611_6612)
(declare-fun r_6 () T@Field_6611_6612)
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
(declare-fun I_1 (T@Ref) T@Field_10816_10817)
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
(assert (distinct l_8 r_6)
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_6538) (ExhaleHeap T@PolymorphicMapType_6538) (Mask@@0 T@PolymorphicMapType_6559) (pm_f_22 T@Field_10816_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10816_10817 Mask@@0 null pm_f_22) (IsPredicateField_3469_3470 pm_f_22)) (and (and (and (and (and (and (and (forall ((o2_22 T@Ref) (f_37 T@Field_6611_6612) ) (!  (=> (select (|PolymorphicMapType_7087_3417_3418#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@0) null (PredicateMaskField_3469 pm_f_22))) o2_22 f_37) (= (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@0) o2_22 f_37) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap) o2_22 f_37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap) o2_22 f_37))
)) (forall ((o2_22@@0 T@Ref) (f_37@@0 T@Field_6598_53) ) (!  (=> (select (|PolymorphicMapType_7087_3417_53#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@0) null (PredicateMaskField_3469 pm_f_22))) o2_22@@0 f_37@@0) (= (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@0) o2_22@@0 f_37@@0) (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap) o2_22@@0 f_37@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap) o2_22@@0 f_37@@0))
))) (forall ((o2_22@@1 T@Ref) (f_37@@1 T@Field_3414_10817) ) (!  (=> (select (|PolymorphicMapType_7087_3417_10817#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@0) null (PredicateMaskField_3469 pm_f_22))) o2_22@@1 f_37@@1) (= (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@0) o2_22@@1 f_37@@1) (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap) o2_22@@1 f_37@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap) o2_22@@1 f_37@@1))
))) (forall ((o2_22@@2 T@Ref) (f_37@@2 T@Field_3414_15511) ) (!  (=> (select (|PolymorphicMapType_7087_3417_23733#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@0) null (PredicateMaskField_3469 pm_f_22))) o2_22@@2 f_37@@2) (= (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@0) o2_22@@2 f_37@@2) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap) o2_22@@2 f_37@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap) o2_22@@2 f_37@@2))
))) (forall ((o2_22@@3 T@Ref) (f_37@@3 T@Field_10816_3415) ) (!  (=> (select (|PolymorphicMapType_7087_10816_3418#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@0) null (PredicateMaskField_3469 pm_f_22))) o2_22@@3 f_37@@3) (= (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@0) o2_22@@3 f_37@@3) (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap) o2_22@@3 f_37@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap) o2_22@@3 f_37@@3))
))) (forall ((o2_22@@4 T@Ref) (f_37@@4 T@Field_10816_53) ) (!  (=> (select (|PolymorphicMapType_7087_10816_53#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@0) null (PredicateMaskField_3469 pm_f_22))) o2_22@@4 f_37@@4) (= (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@0) o2_22@@4 f_37@@4) (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap) o2_22@@4 f_37@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap) o2_22@@4 f_37@@4))
))) (forall ((o2_22@@5 T@Ref) (f_37@@5 T@Field_10816_10817) ) (!  (=> (select (|PolymorphicMapType_7087_10816_10817#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@0) null (PredicateMaskField_3469 pm_f_22))) o2_22@@5 f_37@@5) (= (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@0) o2_22@@5 f_37@@5) (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap) o2_22@@5 f_37@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap) o2_22@@5 f_37@@5))
))) (forall ((o2_22@@6 T@Ref) (f_37@@6 T@Field_15506_15511) ) (!  (=> (select (|PolymorphicMapType_7087_10816_24583#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@0) null (PredicateMaskField_3469 pm_f_22))) o2_22@@6 f_37@@6) (= (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@0) o2_22@@6 f_37@@6) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap) o2_22@@6 f_37@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap) o2_22@@6 f_37@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3469_3470 pm_f_22))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6538) (ExhaleHeap@@0 T@PolymorphicMapType_6538) (Mask@@1 T@PolymorphicMapType_6559) (pm_f_22@@0 T@Field_3414_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3414_10817 Mask@@1 null pm_f_22@@0) (IsPredicateField_3414_22462 pm_f_22@@0)) (and (and (and (and (and (and (and (forall ((o2_22@@7 T@Ref) (f_37@@7 T@Field_6611_6612) ) (!  (=> (select (|PolymorphicMapType_7087_3417_3418#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@1) null (PredicateMaskField_3414 pm_f_22@@0))) o2_22@@7 f_37@@7) (= (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@1) o2_22@@7 f_37@@7) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap@@0) o2_22@@7 f_37@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap@@0) o2_22@@7 f_37@@7))
)) (forall ((o2_22@@8 T@Ref) (f_37@@8 T@Field_6598_53) ) (!  (=> (select (|PolymorphicMapType_7087_3417_53#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@1) null (PredicateMaskField_3414 pm_f_22@@0))) o2_22@@8 f_37@@8) (= (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@1) o2_22@@8 f_37@@8) (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@0) o2_22@@8 f_37@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@0) o2_22@@8 f_37@@8))
))) (forall ((o2_22@@9 T@Ref) (f_37@@9 T@Field_3414_10817) ) (!  (=> (select (|PolymorphicMapType_7087_3417_10817#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@1) null (PredicateMaskField_3414 pm_f_22@@0))) o2_22@@9 f_37@@9) (= (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@1) o2_22@@9 f_37@@9) (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap@@0) o2_22@@9 f_37@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap@@0) o2_22@@9 f_37@@9))
))) (forall ((o2_22@@10 T@Ref) (f_37@@10 T@Field_3414_15511) ) (!  (=> (select (|PolymorphicMapType_7087_3417_23733#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@1) null (PredicateMaskField_3414 pm_f_22@@0))) o2_22@@10 f_37@@10) (= (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@1) o2_22@@10 f_37@@10) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@0) o2_22@@10 f_37@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@0) o2_22@@10 f_37@@10))
))) (forall ((o2_22@@11 T@Ref) (f_37@@11 T@Field_10816_3415) ) (!  (=> (select (|PolymorphicMapType_7087_10816_3418#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@1) null (PredicateMaskField_3414 pm_f_22@@0))) o2_22@@11 f_37@@11) (= (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@1) o2_22@@11 f_37@@11) (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap@@0) o2_22@@11 f_37@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap@@0) o2_22@@11 f_37@@11))
))) (forall ((o2_22@@12 T@Ref) (f_37@@12 T@Field_10816_53) ) (!  (=> (select (|PolymorphicMapType_7087_10816_53#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@1) null (PredicateMaskField_3414 pm_f_22@@0))) o2_22@@12 f_37@@12) (= (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@1) o2_22@@12 f_37@@12) (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap@@0) o2_22@@12 f_37@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap@@0) o2_22@@12 f_37@@12))
))) (forall ((o2_22@@13 T@Ref) (f_37@@13 T@Field_10816_10817) ) (!  (=> (select (|PolymorphicMapType_7087_10816_10817#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@1) null (PredicateMaskField_3414 pm_f_22@@0))) o2_22@@13 f_37@@13) (= (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@1) o2_22@@13 f_37@@13) (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap@@0) o2_22@@13 f_37@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap@@0) o2_22@@13 f_37@@13))
))) (forall ((o2_22@@14 T@Ref) (f_37@@14 T@Field_15506_15511) ) (!  (=> (select (|PolymorphicMapType_7087_10816_24583#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@1) null (PredicateMaskField_3414 pm_f_22@@0))) o2_22@@14 f_37@@14) (= (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@1) o2_22@@14 f_37@@14) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@0) o2_22@@14 f_37@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@0) o2_22@@14 f_37@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3414_22462 pm_f_22@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6538) (ExhaleHeap@@1 T@PolymorphicMapType_6538) (Mask@@2 T@PolymorphicMapType_6559) (pm_f_22@@1 T@Field_10816_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_10816_10817 Mask@@2 null pm_f_22@@1) (IsWandField_10816_25748 pm_f_22@@1)) (and (and (and (and (and (and (and (forall ((o2_22@@15 T@Ref) (f_37@@15 T@Field_6611_6612) ) (!  (=> (select (|PolymorphicMapType_7087_3417_3418#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@2) null (WandMaskField_10816 pm_f_22@@1))) o2_22@@15 f_37@@15) (= (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@2) o2_22@@15 f_37@@15) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap@@1) o2_22@@15 f_37@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap@@1) o2_22@@15 f_37@@15))
)) (forall ((o2_22@@16 T@Ref) (f_37@@16 T@Field_6598_53) ) (!  (=> (select (|PolymorphicMapType_7087_3417_53#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@2) null (WandMaskField_10816 pm_f_22@@1))) o2_22@@16 f_37@@16) (= (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@2) o2_22@@16 f_37@@16) (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@1) o2_22@@16 f_37@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@1) o2_22@@16 f_37@@16))
))) (forall ((o2_22@@17 T@Ref) (f_37@@17 T@Field_3414_10817) ) (!  (=> (select (|PolymorphicMapType_7087_3417_10817#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@2) null (WandMaskField_10816 pm_f_22@@1))) o2_22@@17 f_37@@17) (= (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@2) o2_22@@17 f_37@@17) (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap@@1) o2_22@@17 f_37@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap@@1) o2_22@@17 f_37@@17))
))) (forall ((o2_22@@18 T@Ref) (f_37@@18 T@Field_3414_15511) ) (!  (=> (select (|PolymorphicMapType_7087_3417_23733#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@2) null (WandMaskField_10816 pm_f_22@@1))) o2_22@@18 f_37@@18) (= (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@2) o2_22@@18 f_37@@18) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@1) o2_22@@18 f_37@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@1) o2_22@@18 f_37@@18))
))) (forall ((o2_22@@19 T@Ref) (f_37@@19 T@Field_10816_3415) ) (!  (=> (select (|PolymorphicMapType_7087_10816_3418#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@2) null (WandMaskField_10816 pm_f_22@@1))) o2_22@@19 f_37@@19) (= (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@2) o2_22@@19 f_37@@19) (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap@@1) o2_22@@19 f_37@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap@@1) o2_22@@19 f_37@@19))
))) (forall ((o2_22@@20 T@Ref) (f_37@@20 T@Field_10816_53) ) (!  (=> (select (|PolymorphicMapType_7087_10816_53#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@2) null (WandMaskField_10816 pm_f_22@@1))) o2_22@@20 f_37@@20) (= (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@2) o2_22@@20 f_37@@20) (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap@@1) o2_22@@20 f_37@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap@@1) o2_22@@20 f_37@@20))
))) (forall ((o2_22@@21 T@Ref) (f_37@@21 T@Field_10816_10817) ) (!  (=> (select (|PolymorphicMapType_7087_10816_10817#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@2) null (WandMaskField_10816 pm_f_22@@1))) o2_22@@21 f_37@@21) (= (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@2) o2_22@@21 f_37@@21) (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap@@1) o2_22@@21 f_37@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap@@1) o2_22@@21 f_37@@21))
))) (forall ((o2_22@@22 T@Ref) (f_37@@22 T@Field_15506_15511) ) (!  (=> (select (|PolymorphicMapType_7087_10816_24583#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@2) null (WandMaskField_10816 pm_f_22@@1))) o2_22@@22 f_37@@22) (= (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@2) o2_22@@22 f_37@@22) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@1) o2_22@@22 f_37@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@1) o2_22@@22 f_37@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_10816_25748 pm_f_22@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6538) (ExhaleHeap@@2 T@PolymorphicMapType_6538) (Mask@@3 T@PolymorphicMapType_6559) (pm_f_22@@2 T@Field_3414_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3414_10817 Mask@@3 null pm_f_22@@2) (IsWandField_3414_25391 pm_f_22@@2)) (and (and (and (and (and (and (and (forall ((o2_22@@23 T@Ref) (f_37@@23 T@Field_6611_6612) ) (!  (=> (select (|PolymorphicMapType_7087_3417_3418#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@3) null (WandMaskField_3414 pm_f_22@@2))) o2_22@@23 f_37@@23) (= (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@3) o2_22@@23 f_37@@23) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap@@2) o2_22@@23 f_37@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap@@2) o2_22@@23 f_37@@23))
)) (forall ((o2_22@@24 T@Ref) (f_37@@24 T@Field_6598_53) ) (!  (=> (select (|PolymorphicMapType_7087_3417_53#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@3) null (WandMaskField_3414 pm_f_22@@2))) o2_22@@24 f_37@@24) (= (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@3) o2_22@@24 f_37@@24) (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@2) o2_22@@24 f_37@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@2) o2_22@@24 f_37@@24))
))) (forall ((o2_22@@25 T@Ref) (f_37@@25 T@Field_3414_10817) ) (!  (=> (select (|PolymorphicMapType_7087_3417_10817#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@3) null (WandMaskField_3414 pm_f_22@@2))) o2_22@@25 f_37@@25) (= (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@3) o2_22@@25 f_37@@25) (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap@@2) o2_22@@25 f_37@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap@@2) o2_22@@25 f_37@@25))
))) (forall ((o2_22@@26 T@Ref) (f_37@@26 T@Field_3414_15511) ) (!  (=> (select (|PolymorphicMapType_7087_3417_23733#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@3) null (WandMaskField_3414 pm_f_22@@2))) o2_22@@26 f_37@@26) (= (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@3) o2_22@@26 f_37@@26) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@2) o2_22@@26 f_37@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@2) o2_22@@26 f_37@@26))
))) (forall ((o2_22@@27 T@Ref) (f_37@@27 T@Field_10816_3415) ) (!  (=> (select (|PolymorphicMapType_7087_10816_3418#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@3) null (WandMaskField_3414 pm_f_22@@2))) o2_22@@27 f_37@@27) (= (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@3) o2_22@@27 f_37@@27) (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap@@2) o2_22@@27 f_37@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap@@2) o2_22@@27 f_37@@27))
))) (forall ((o2_22@@28 T@Ref) (f_37@@28 T@Field_10816_53) ) (!  (=> (select (|PolymorphicMapType_7087_10816_53#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@3) null (WandMaskField_3414 pm_f_22@@2))) o2_22@@28 f_37@@28) (= (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@3) o2_22@@28 f_37@@28) (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap@@2) o2_22@@28 f_37@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap@@2) o2_22@@28 f_37@@28))
))) (forall ((o2_22@@29 T@Ref) (f_37@@29 T@Field_10816_10817) ) (!  (=> (select (|PolymorphicMapType_7087_10816_10817#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@3) null (WandMaskField_3414 pm_f_22@@2))) o2_22@@29 f_37@@29) (= (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@3) o2_22@@29 f_37@@29) (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap@@2) o2_22@@29 f_37@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap@@2) o2_22@@29 f_37@@29))
))) (forall ((o2_22@@30 T@Ref) (f_37@@30 T@Field_15506_15511) ) (!  (=> (select (|PolymorphicMapType_7087_10816_24583#PolymorphicMapType_7087| (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@3) null (WandMaskField_3414 pm_f_22@@2))) o2_22@@30 f_37@@30) (= (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@3) o2_22@@30 f_37@@30) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@2) o2_22@@30 f_37@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@2) o2_22@@30 f_37@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3414_25391 pm_f_22@@2))
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
(assert (forall ((t_2 T@Ref) ) (! (IsPredicateField_3469_3470 (I_1 t_2))
 :qid |stdinbpl.460:15|
 :skolemid |34|
 :pattern ( (I_1 t_2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6538) (t_2@@0 T@Ref) ) (! (dummyFunction_1312 (|I2#triggerStateless| t_2@@0))
 :qid |stdinbpl.243:15|
 :skolemid |26|
 :pattern ( (|I2'| Heap@@4 t_2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6538) (t_2@@1 T@Ref) ) (! (|I#everUsed_3469| (I_1 t_2@@1))
 :qid |stdinbpl.479:15|
 :skolemid |38|
 :pattern ( (|I#trigger_3469| Heap@@5 (I_1 t_2@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6538) (ExhaleHeap@@3 T@PolymorphicMapType_6538) (Mask@@4 T@PolymorphicMapType_6559) (pm_f_22@@3 T@Field_10816_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_10816_10817 Mask@@4 null pm_f_22@@3) (IsPredicateField_3469_3470 pm_f_22@@3)) (= (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@6) null (PredicateMaskField_3469 pm_f_22@@3)) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@3) null (PredicateMaskField_3469 pm_f_22@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsPredicateField_3469_3470 pm_f_22@@3) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@3) null (PredicateMaskField_3469 pm_f_22@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6538) (ExhaleHeap@@4 T@PolymorphicMapType_6538) (Mask@@5 T@PolymorphicMapType_6559) (pm_f_22@@4 T@Field_3414_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3414_10817 Mask@@5 null pm_f_22@@4) (IsPredicateField_3414_22462 pm_f_22@@4)) (= (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@7) null (PredicateMaskField_3414 pm_f_22@@4)) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@4) null (PredicateMaskField_3414 pm_f_22@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3414_22462 pm_f_22@@4) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@4) null (PredicateMaskField_3414 pm_f_22@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6538) (ExhaleHeap@@5 T@PolymorphicMapType_6538) (Mask@@6 T@PolymorphicMapType_6559) (pm_f_22@@5 T@Field_10816_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_10816_10817 Mask@@6 null pm_f_22@@5) (IsWandField_10816_25748 pm_f_22@@5)) (= (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@8) null (WandMaskField_10816 pm_f_22@@5)) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@5) null (WandMaskField_10816 pm_f_22@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_10816_25748 pm_f_22@@5) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@5) null (WandMaskField_10816 pm_f_22@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6538) (ExhaleHeap@@6 T@PolymorphicMapType_6538) (Mask@@7 T@PolymorphicMapType_6559) (pm_f_22@@6 T@Field_3414_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3414_10817 Mask@@7 null pm_f_22@@6) (IsWandField_3414_25391 pm_f_22@@6)) (= (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@9) null (WandMaskField_3414 pm_f_22@@6)) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@6) null (WandMaskField_3414 pm_f_22@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_3414_25391 pm_f_22@@6) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@6) null (WandMaskField_3414 pm_f_22@@6)))
)))
(assert (forall ((t_2@@2 T@Ref) (t2_1 T@Ref) ) (!  (=> (= (I_1 t_2@@2) (I_1 t2_1)) (= t_2@@2 t2_1))
 :qid |stdinbpl.470:15|
 :skolemid |36|
 :pattern ( (I_1 t_2@@2) (I_1 t2_1))
)))
(assert (forall ((t_2@@3 T@Ref) (t2_1@@0 T@Ref) ) (!  (=> (= (|I#sm| t_2@@3) (|I#sm| t2_1@@0)) (= t_2@@3 t2_1@@0))
 :qid |stdinbpl.474:15|
 :skolemid |37|
 :pattern ( (|I#sm| t_2@@3) (|I#sm| t2_1@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6538) (ExhaleHeap@@7 T@PolymorphicMapType_6538) (Mask@@8 T@PolymorphicMapType_6559) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@10) o_46 $allocated) (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@7) o_46 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@7) o_46 $allocated))
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
(assert  (not (IsPredicateField_3414_3415 l_8)))
(assert  (not (IsWandField_3414_3415 l_8)))
(assert  (not (IsPredicateField_3414_3415 r_6)))
(assert  (not (IsWandField_3414_3415 r_6)))
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
(assert (forall ((Heap@@12 T@PolymorphicMapType_6538) (ExhaleHeap@@9 T@PolymorphicMapType_6538) (Mask@@26 T@PolymorphicMapType_6559) (o_46@@0 T@Ref) (f_37@@31 T@Field_15506_15511) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_10816_22217 Mask@@26 o_46@@0 f_37@@31) (= (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@12) o_46@@0 f_37@@31) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@9) o_46@@0 f_37@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| ExhaleHeap@@9) o_46@@0 f_37@@31))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6538) (ExhaleHeap@@10 T@PolymorphicMapType_6538) (Mask@@27 T@PolymorphicMapType_6559) (o_46@@1 T@Ref) (f_37@@32 T@Field_10816_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_10816_10817 Mask@@27 o_46@@1 f_37@@32) (= (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@13) o_46@@1 f_37@@32) (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap@@10) o_46@@1 f_37@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| ExhaleHeap@@10) o_46@@1 f_37@@32))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6538) (ExhaleHeap@@11 T@PolymorphicMapType_6538) (Mask@@28 T@PolymorphicMapType_6559) (o_46@@2 T@Ref) (f_37@@33 T@Field_10816_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_10816_53 Mask@@28 o_46@@2 f_37@@33) (= (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@14) o_46@@2 f_37@@33) (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap@@11) o_46@@2 f_37@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| ExhaleHeap@@11) o_46@@2 f_37@@33))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6538) (ExhaleHeap@@12 T@PolymorphicMapType_6538) (Mask@@29 T@PolymorphicMapType_6559) (o_46@@3 T@Ref) (f_37@@34 T@Field_10816_3415) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_10816_3415 Mask@@29 o_46@@3 f_37@@34) (= (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@15) o_46@@3 f_37@@34) (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap@@12) o_46@@3 f_37@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| ExhaleHeap@@12) o_46@@3 f_37@@34))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6538) (ExhaleHeap@@13 T@PolymorphicMapType_6538) (Mask@@30 T@PolymorphicMapType_6559) (o_46@@4 T@Ref) (f_37@@35 T@Field_3414_15511) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_3414_21277 Mask@@30 o_46@@4 f_37@@35) (= (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@16) o_46@@4 f_37@@35) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@13) o_46@@4 f_37@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| ExhaleHeap@@13) o_46@@4 f_37@@35))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6538) (ExhaleHeap@@14 T@PolymorphicMapType_6538) (Mask@@31 T@PolymorphicMapType_6559) (o_46@@5 T@Ref) (f_37@@36 T@Field_3414_10817) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_3414_10817 Mask@@31 o_46@@5 f_37@@36) (= (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@17) o_46@@5 f_37@@36) (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap@@14) o_46@@5 f_37@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| ExhaleHeap@@14) o_46@@5 f_37@@36))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6538) (ExhaleHeap@@15 T@PolymorphicMapType_6538) (Mask@@32 T@PolymorphicMapType_6559) (o_46@@6 T@Ref) (f_37@@37 T@Field_6598_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_3414_53 Mask@@32 o_46@@6 f_37@@37) (= (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@18) o_46@@6 f_37@@37) (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@15) o_46@@6 f_37@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| ExhaleHeap@@15) o_46@@6 f_37@@37))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6538) (ExhaleHeap@@16 T@PolymorphicMapType_6538) (Mask@@33 T@PolymorphicMapType_6559) (o_46@@7 T@Ref) (f_37@@38 T@Field_6611_6612) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_3414_3415 Mask@@33 o_46@@7 f_37@@38) (= (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@19) o_46@@7 f_37@@38) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap@@16) o_46@@7 f_37@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| ExhaleHeap@@16) o_46@@7 f_37@@38))
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
(assert (forall ((Heap@@20 T@PolymorphicMapType_6538) (Mask@@34 T@PolymorphicMapType_6559) (t_2@@4 T@Ref) ) (!  (=> (state Heap@@20 Mask@@34) (= (|I2'| Heap@@20 t_2@@4) (|I2#frame| (select (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@20) null (I_1 t_2@@4)) t_2@@4)))
 :qid |stdinbpl.256:15|
 :skolemid |28|
 :pattern ( (state Heap@@20 Mask@@34) (|I2'| Heap@@20 t_2@@4))
 :pattern ( (state Heap@@20 Mask@@34) (|I2#triggerStateless| t_2@@4) (|I#trigger_3469| Heap@@20 (I_1 t_2@@4)) (|I#trigger_3469| Heap@@20 (I_1 t_2@@4)))
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
(assert (forall ((t_2@@6 T@Ref) ) (! (= (getPredWandId_3469_3470 (I_1 t_2@@6)) 0)
 :qid |stdinbpl.464:15|
 :skolemid |35|
 :pattern ( (I_1 t_2@@6))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6538) ) (! (dummyFunction_1312 |p#triggerStateless|)
 :qid |stdinbpl.202:15|
 :skolemid |23|
 :pattern ( (|p'| Heap@@23))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6538) (o_12 T@Ref) (f_24 T@Field_15506_15511) (v T@PolymorphicMapType_7087) ) (! (succHeap Heap@@24 (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@24) (store (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@24) o_12 f_24 v) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@24) (store (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@24) o_12 f_24 v) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@24) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6538) (o_12@@0 T@Ref) (f_24@@0 T@Field_10816_10817) (v@@0 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@25) (store (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@25) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@25) (store (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@25) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@25) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6538) (o_12@@1 T@Ref) (f_24@@1 T@Field_10816_3415) (v@@1 T@Ref) ) (! (succHeap Heap@@26 (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@26) (store (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@26) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@26) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@26) (store (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@26) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6538) (o_12@@2 T@Ref) (f_24@@2 T@Field_10816_53) (v@@2 Bool) ) (! (succHeap Heap@@27 (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@27) (store (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@27) o_12@@2 f_24@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@27) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@27) (store (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@27) o_12@@2 f_24@@2 v@@2)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6538) (o_12@@3 T@Ref) (f_24@@3 T@Field_3414_15511) (v@@3 T@PolymorphicMapType_7087) ) (! (succHeap Heap@@28 (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@28) (store (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@28) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@28) (store (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@28) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@28) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6538) (o_12@@4 T@Ref) (f_24@@4 T@Field_3414_10817) (v@@4 T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@29) (store (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@29) o_12@@4 f_24@@4 v@@4) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@29) (store (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@29) o_12@@4 f_24@@4 v@@4) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@29) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6538) (o_12@@5 T@Ref) (f_24@@5 T@Field_6611_6612) (v@@5 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@30) (store (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@30) o_12@@5 f_24@@5 v@@5) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6538 (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@30) (store (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@30) o_12@@5 f_24@@5 v@@5) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@30) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6538) (o_12@@6 T@Ref) (f_24@@6 T@Field_6598_53) (v@@6 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_6538 (store (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@31) o_12@@6 f_24@@6 v@@6) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6538 (store (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@31) o_12@@6 f_24@@6 v@@6) (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_3469_3470#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_3473_15598#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_3414_10817#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_3414_21319#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_10816_3415#PolymorphicMapType_6538| Heap@@31) (|PolymorphicMapType_6538_10816_53#PolymorphicMapType_6538| Heap@@31)))
)))
(assert (forall ((t_2@@7 T@Ref) ) (! (= (PredicateMaskField_3469 (I_1 t_2@@7)) (|I#sm| t_2@@7))
 :qid |stdinbpl.456:15|
 :skolemid |33|
 :pattern ( (PredicateMaskField_3469 (I_1 t_2@@7)))
)))
(assert (forall ((o_12@@7 T@Ref) (f_16 T@Field_6611_6612) (Heap@@32 T@PolymorphicMapType_6538) ) (!  (=> (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@32) o_12@@7 $allocated) (select (|PolymorphicMapType_6538_3286_53#PolymorphicMapType_6538| Heap@@32) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@32) o_12@@7 f_16) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@32) o_12@@7 f_16))
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
(assert (forall ((Heap@@33 T@PolymorphicMapType_6538) (Mask@@36 T@PolymorphicMapType_6559) (t_2@@8 T@Ref) ) (!  (=> (and (state Heap@@33 Mask@@36) (< AssumeFunctionsAbove 0)) (= (I2 Heap@@33 t_2@@8)  (=> (not (= t_2@@8 null)) (and (|I2'| Heap@@33 (ite (p@@10 Heap@@33) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@33) t_2@@8 r_6) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@33) t_2@@8 l_8))) (|I2'| Heap@@33 (ite (p@@10 Heap@@33) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@33) t_2@@8 l_8) (select (|PolymorphicMapType_6538_3289_3290#PolymorphicMapType_6538| Heap@@33) t_2@@8 r_6)))))))
 :qid |stdinbpl.249:15|
 :skolemid |27|
 :pattern ( (state Heap@@33 Mask@@36) (I2 Heap@@33 t_2@@8))
 :pattern ( (state Heap@@33 Mask@@36) (|I2#triggerStateless| t_2@@8) (|I#trigger_3469| Heap@@33 (I_1 t_2@@8)) (|I#trigger_3469| Heap@@33 (I_1 t_2@@8)))
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
