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
(declare-sort T@Field_5601_53 0)
(declare-sort T@Field_5614_5615 0)
(declare-sort T@Field_5601_14701 0)
(declare-sort T@Field_5601_14568 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5562 0)) (((PolymorphicMapType_5562 (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| (Array T@Ref T@Field_5601_53 Real)) (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| (Array T@Ref T@Field_5614_5615 Real)) (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| (Array T@Ref T@Field_5601_14568 Real)) (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| (Array T@Ref T@Field_5601_14701 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6090 0)) (((PolymorphicMapType_6090 (|PolymorphicMapType_6090_5601_53#PolymorphicMapType_6090| (Array T@Ref T@Field_5601_53 Bool)) (|PolymorphicMapType_6090_5601_5615#PolymorphicMapType_6090| (Array T@Ref T@Field_5614_5615 Bool)) (|PolymorphicMapType_6090_5601_14568#PolymorphicMapType_6090| (Array T@Ref T@Field_5601_14568 Bool)) (|PolymorphicMapType_6090_5601_15681#PolymorphicMapType_6090| (Array T@Ref T@Field_5601_14701 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5541 0)) (((PolymorphicMapType_5541 (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| (Array T@Ref T@Field_5601_53 Bool)) (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| (Array T@Ref T@Field_5614_5615 T@Ref)) (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| (Array T@Ref T@Field_5601_14701 T@PolymorphicMapType_6090)) (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| (Array T@Ref T@Field_5601_14568 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_5601_53)
(declare-sort T@PyTypeDomainType 0)
(declare-fun vbool () T@PyTypeDomainType)
(declare-fun vint () T@PyTypeDomainType)
(declare-fun state (T@PolymorphicMapType_5541 T@PolymorphicMapType_5562) Bool)
(declare-fun SO_MANY_GLOBAL_VARS (T@PolymorphicMapType_5541) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun bool___unbox__ (T@PolymorphicMapType_5541 T@Ref) Bool)
(declare-fun ANOTHER_GLOBAL_VAR (T@PolymorphicMapType_5541) T@Ref)
(declare-fun OTHER_GLOBAL_VAR (T@PolymorphicMapType_5541) T@Ref)
(declare-fun __prim__int___box__ (T@PolymorphicMapType_5541 Int) T@Ref)
(declare-fun __prim__bool___box__ (T@PolymorphicMapType_5541 Bool) T@Ref)
(declare-fun succHeap (T@PolymorphicMapType_5541 T@PolymorphicMapType_5541) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5541 T@PolymorphicMapType_5541) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5562) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6090)
(declare-fun |__prim__int___box__'| (T@PolymorphicMapType_5541 Int) T@Ref)
(declare-fun dummyFunction_3090 (T@Ref) Bool)
(declare-fun |__prim__int___box__#triggerStateless| (Int) T@Ref)
(declare-fun |int___unbox__'| (T@PolymorphicMapType_5541 T@Ref) Int)
(declare-fun dummyFunction_2346 (Int) Bool)
(declare-fun |int___unbox__#triggerStateless| (T@Ref) Int)
(declare-fun |__prim__bool___box__'| (T@PolymorphicMapType_5541 Bool) T@Ref)
(declare-fun |__prim__bool___box__#triggerStateless| (Bool) T@Ref)
(declare-fun |bool___unbox__'| (T@PolymorphicMapType_5541 T@Ref) Bool)
(declare-fun dummyFunction_2888 (Bool) Bool)
(declare-fun |bool___unbox__#triggerStateless| (T@Ref) Bool)
(declare-fun |__prim__bool___box__#trigger| (T@FrameType Bool) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun int___unbox__ (T@PolymorphicMapType_5541 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5541 T@PolymorphicMapType_5541 T@PolymorphicMapType_5562) Bool)
(declare-fun IsPredicateField_5601_14659 (T@Field_5601_14568) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5601 (T@Field_5601_14568) T@Field_5601_14701)
(declare-fun HasDirectPerm_5601_14632 (T@PolymorphicMapType_5562 T@Ref T@Field_5601_14568) Bool)
(declare-fun IsWandField_5601_16208 (T@Field_5601_14568) Bool)
(declare-fun WandMaskField_5601 (T@Field_5601_14568) T@Field_5601_14701)
(declare-fun typeof (T@Ref) T@PyTypeDomainType)
(declare-fun |SO_MANY_GLOBAL_VARS'| (T@PolymorphicMapType_5541) T@Ref)
(declare-fun |SO_MANY_GLOBAL_VARS#trigger| (T@FrameType) Bool)
(declare-fun |ANOTHER_GLOBAL_VAR'| (T@PolymorphicMapType_5541) T@Ref)
(declare-fun |ANOTHER_GLOBAL_VAR#trigger| (T@FrameType) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_5541)
(declare-fun ZeroMask () T@PolymorphicMapType_5562)
(declare-fun InsidePredicate_5601_5601 (T@Field_5601_14568 T@FrameType T@Field_5601_14568 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5601_19171 (T@Field_5601_14701) Bool)
(declare-fun IsWandField_5601_19187 (T@Field_5601_14701) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5601_5615 (T@Field_5614_5615) Bool)
(declare-fun IsWandField_5601_5615 (T@Field_5614_5615) Bool)
(declare-fun IsPredicateField_5601_53 (T@Field_5601_53) Bool)
(declare-fun IsWandField_5601_53 (T@Field_5601_53) Bool)
(declare-fun HasDirectPerm_5601_19542 (T@PolymorphicMapType_5562 T@Ref T@Field_5601_14701) Bool)
(declare-fun HasDirectPerm_5601_5615 (T@PolymorphicMapType_5562 T@Ref T@Field_5614_5615) Bool)
(declare-fun HasDirectPerm_5601_53 (T@PolymorphicMapType_5562 T@Ref T@Field_5601_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun |OTHER_GLOBAL_VAR'| (T@PolymorphicMapType_5541) T@Ref)
(declare-fun |OTHER_GLOBAL_VAR#triggerStateless| () T@Ref)
(declare-fun |ANOTHER_GLOBAL_VAR#triggerStateless| () T@Ref)
(declare-fun |SO_MANY_GLOBAL_VARS#triggerStateless| () T@Ref)
(declare-fun sumMask (T@PolymorphicMapType_5562 T@PolymorphicMapType_5562 T@PolymorphicMapType_5562) Bool)
(declare-fun |bool___unbox__#frame| (T@FrameType T@Ref) Bool)
(declare-fun issubtype (T@PyTypeDomainType T@PyTypeDomainType) Bool)
(declare-fun |__prim__int___box__#frame| (T@FrameType Int) T@Ref)
(declare-fun |int___unbox__#frame| (T@FrameType T@Ref) Int)
(declare-fun |__prim__bool___box__#frame| (T@FrameType Bool) T@Ref)
(declare-fun |OTHER_GLOBAL_VAR#frame| (T@FrameType) T@Ref)
(declare-fun |ANOTHER_GLOBAL_VAR#frame| (T@FrameType) T@Ref)
(declare-fun |SO_MANY_GLOBAL_VARS#frame| (T@FrameType) T@Ref)
(assert (distinct vbool vint)
)
(assert (forall ((Heap T@PolymorphicMapType_5541) (Mask T@PolymorphicMapType_5562) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 0)) (= (SO_MANY_GLOBAL_VARS Heap) (ite (bool___unbox__ Heap (ANOTHER_GLOBAL_VAR Heap)) (OTHER_GLOBAL_VAR Heap) (__prim__int___box__ Heap 44))))
 :qid |stdinbpl.346:15|
 :skolemid |33|
 :pattern ( (state Heap Mask) (SO_MANY_GLOBAL_VARS Heap))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5541) (Mask@@0 T@PolymorphicMapType_5562) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 1)) (= (ANOTHER_GLOBAL_VAR Heap@@0) (__prim__bool___box__ Heap@@0 true)))
 :qid |stdinbpl.262:15|
 :skolemid |27|
 :pattern ( (state Heap@@0 Mask@@0) (ANOTHER_GLOBAL_VAR Heap@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_5541) (Heap1 T@PolymorphicMapType_5541) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5541) (Mask@@1 T@PolymorphicMapType_5562) ) (!  (=> (state Heap@@1 Mask@@1) (GoodMask Mask@@1))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@1 Mask@@1))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5541) (Heap1@@0 T@PolymorphicMapType_5541) (Heap2 T@PolymorphicMapType_5541) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5601_14701) ) (!  (not (select (|PolymorphicMapType_6090_5601_15681#PolymorphicMapType_6090| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6090_5601_15681#PolymorphicMapType_6090| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5601_14568) ) (!  (not (select (|PolymorphicMapType_6090_5601_14568#PolymorphicMapType_6090| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6090_5601_14568#PolymorphicMapType_6090| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5614_5615) ) (!  (not (select (|PolymorphicMapType_6090_5601_5615#PolymorphicMapType_6090| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6090_5601_5615#PolymorphicMapType_6090| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5601_53) ) (!  (not (select (|PolymorphicMapType_6090_5601_53#PolymorphicMapType_6090| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6090_5601_53#PolymorphicMapType_6090| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5541) (prim Int) ) (! (dummyFunction_3090 (|__prim__int___box__#triggerStateless| prim))
 :qid |stdinbpl.454:15|
 :skolemid |38|
 :pattern ( (|__prim__int___box__'| Heap@@2 prim))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5541) (box_1 T@Ref) ) (! (dummyFunction_2346 (|int___unbox__#triggerStateless| box_1))
 :qid |stdinbpl.495:15|
 :skolemid |41|
 :pattern ( (|int___unbox__'| Heap@@3 box_1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5541) (prim@@0 Bool) ) (! (dummyFunction_3090 (|__prim__bool___box__#triggerStateless| prim@@0))
 :qid |stdinbpl.537:15|
 :skolemid |44|
 :pattern ( (|__prim__bool___box__'| Heap@@4 prim@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5541) (box_1@@0 T@Ref) ) (! (dummyFunction_2888 (|bool___unbox__#triggerStateless| box_1@@0))
 :qid |stdinbpl.614:15|
 :skolemid |50|
 :pattern ( (|bool___unbox__'| Heap@@5 box_1@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5541) (Mask@@2 T@PolymorphicMapType_5562) (prim@@1 Bool) ) (!  (=> (and (state Heap@@6 Mask@@2) (or (< AssumeFunctionsAbove 4) (|__prim__bool___box__#trigger| EmptyFrame prim@@1))) (= (bool___unbox__ Heap@@6 (|__prim__bool___box__'| Heap@@6 prim@@1)) prim@@1))
 :qid |stdinbpl.554:15|
 :skolemid |47|
 :pattern ( (state Heap@@6 Mask@@2) (|__prim__bool___box__'| Heap@@6 prim@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5541) (prim@@2 Int) ) (!  (and (= (__prim__int___box__ Heap@@7 prim@@2) (|__prim__int___box__'| Heap@@7 prim@@2)) (dummyFunction_3090 (|__prim__int___box__#triggerStateless| prim@@2)))
 :qid |stdinbpl.450:15|
 :skolemid |37|
 :pattern ( (__prim__int___box__ Heap@@7 prim@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5541) (box_1@@1 T@Ref) ) (!  (and (= (int___unbox__ Heap@@8 box_1@@1) (|int___unbox__'| Heap@@8 box_1@@1)) (dummyFunction_2346 (|int___unbox__#triggerStateless| box_1@@1)))
 :qid |stdinbpl.491:15|
 :skolemid |40|
 :pattern ( (int___unbox__ Heap@@8 box_1@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5541) (prim@@3 Bool) ) (!  (and (= (__prim__bool___box__ Heap@@9 prim@@3) (|__prim__bool___box__'| Heap@@9 prim@@3)) (dummyFunction_3090 (|__prim__bool___box__#triggerStateless| prim@@3)))
 :qid |stdinbpl.533:15|
 :skolemid |43|
 :pattern ( (__prim__bool___box__ Heap@@9 prim@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5541) (ExhaleHeap T@PolymorphicMapType_5541) (Mask@@3 T@PolymorphicMapType_5562) (pm_f T@Field_5601_14568) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_5601_14632 Mask@@3 null pm_f) (IsPredicateField_5601_14659 pm_f)) (= (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@10) null (PredicateMaskField_5601 pm_f)) (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap) null (PredicateMaskField_5601 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@3) (IsPredicateField_5601_14659 pm_f) (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap) null (PredicateMaskField_5601 pm_f)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5541) (ExhaleHeap@@0 T@PolymorphicMapType_5541) (Mask@@4 T@PolymorphicMapType_5562) (pm_f@@0 T@Field_5601_14568) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_5601_14632 Mask@@4 null pm_f@@0) (IsWandField_5601_16208 pm_f@@0)) (= (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@11) null (WandMaskField_5601 pm_f@@0)) (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap@@0) null (WandMaskField_5601 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@4) (IsWandField_5601_16208 pm_f@@0) (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap@@0) null (WandMaskField_5601 pm_f@@0)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5541) (Mask@@5 T@PolymorphicMapType_5562) (prim@@4 Bool) ) (!  (=> (and (state Heap@@12 Mask@@5) (or (< AssumeFunctionsAbove 4) (|__prim__bool___box__#trigger| EmptyFrame prim@@4))) (= (typeof (|__prim__bool___box__'| Heap@@12 prim@@4)) vbool))
 :qid |stdinbpl.550:15|
 :skolemid |46|
 :pattern ( (state Heap@@12 Mask@@5) (|__prim__bool___box__'| Heap@@12 prim@@4))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5541) (Mask@@6 T@PolymorphicMapType_5562) ) (!  (=> (and (state Heap@@13 Mask@@6) (or (< AssumeFunctionsAbove 0) (|SO_MANY_GLOBAL_VARS#trigger| EmptyFrame))) (= (|SO_MANY_GLOBAL_VARS'| Heap@@13) (ite (bool___unbox__ Heap@@13 (ANOTHER_GLOBAL_VAR Heap@@13)) (OTHER_GLOBAL_VAR Heap@@13) (__prim__int___box__ Heap@@13 44))))
 :qid |stdinbpl.363:15|
 :skolemid |36|
 :pattern ( (state Heap@@13 Mask@@6) (|SO_MANY_GLOBAL_VARS'| Heap@@13))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5541) (Mask@@7 T@PolymorphicMapType_5562) ) (!  (=> (and (state Heap@@14 Mask@@7) (or (< AssumeFunctionsAbove 1) (|ANOTHER_GLOBAL_VAR#trigger| EmptyFrame))) (= (|ANOTHER_GLOBAL_VAR'| Heap@@14) (__prim__bool___box__ Heap@@14 true)))
 :qid |stdinbpl.279:15|
 :skolemid |30|
 :pattern ( (state Heap@@14 Mask@@7) (|ANOTHER_GLOBAL_VAR'| Heap@@14))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5541) (ExhaleHeap@@1 T@PolymorphicMapType_5541) (Mask@@8 T@PolymorphicMapType_5562) (pm_f@@1 T@Field_5601_14568) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@1 Mask@@8) (=> (and (HasDirectPerm_5601_14632 Mask@@8 null pm_f@@1) (IsPredicateField_5601_14659 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_5601_53) ) (!  (=> (select (|PolymorphicMapType_6090_5601_53#PolymorphicMapType_6090| (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@15) null (PredicateMaskField_5601 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@15) o2 f_2) (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_5614_5615) ) (!  (=> (select (|PolymorphicMapType_6090_5601_5615#PolymorphicMapType_6090| (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@15) null (PredicateMaskField_5601 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@15) o2@@0 f_2@@0) (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_5601_14568) ) (!  (=> (select (|PolymorphicMapType_6090_5601_14568#PolymorphicMapType_6090| (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@15) null (PredicateMaskField_5601 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@15) o2@@1 f_2@@1) (select (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_5601_14701) ) (!  (=> (select (|PolymorphicMapType_6090_5601_15681#PolymorphicMapType_6090| (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@15) null (PredicateMaskField_5601 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@15) o2@@2 f_2@@2) (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@1 Mask@@8) (IsPredicateField_5601_14659 pm_f@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5541) (ExhaleHeap@@2 T@PolymorphicMapType_5541) (Mask@@9 T@PolymorphicMapType_5562) (pm_f@@2 T@Field_5601_14568) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@2 Mask@@9) (=> (and (HasDirectPerm_5601_14632 Mask@@9 null pm_f@@2) (IsWandField_5601_16208 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_5601_53) ) (!  (=> (select (|PolymorphicMapType_6090_5601_53#PolymorphicMapType_6090| (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@16) null (WandMaskField_5601 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@16) o2@@3 f_2@@3) (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_5614_5615) ) (!  (=> (select (|PolymorphicMapType_6090_5601_5615#PolymorphicMapType_6090| (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@16) null (WandMaskField_5601 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@16) o2@@4 f_2@@4) (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_5601_14568) ) (!  (=> (select (|PolymorphicMapType_6090_5601_14568#PolymorphicMapType_6090| (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@16) null (WandMaskField_5601 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@16) o2@@5 f_2@@5) (select (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_5601_14701) ) (!  (=> (select (|PolymorphicMapType_6090_5601_15681#PolymorphicMapType_6090| (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@16) null (WandMaskField_5601 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@16) o2@@6 f_2@@6) (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@2 Mask@@9) (IsWandField_5601_16208 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5541) (ExhaleHeap@@3 T@PolymorphicMapType_5541) (Mask@@10 T@PolymorphicMapType_5562) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@3 Mask@@10) (=> (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@17) o_1 $allocated) (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@3 Mask@@10) (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_5601_14568) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5601_5601 p v_1 p w))
 :qid |stdinbpl.180:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5601_5601 p v_1 p w))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5541) (ExhaleHeap@@4 T@PolymorphicMapType_5541) (Mask@@11 T@PolymorphicMapType_5562) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@4 Mask@@11) (succHeap Heap@@18 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@4 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5562) (o_2@@3 T@Ref) (f_4@@3 T@Field_5601_14701) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| Mask@@12) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5601_19171 f_4@@3))) (not (IsWandField_5601_19187 f_4@@3))) (<= (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| Mask@@12) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| Mask@@12) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5562) (o_2@@4 T@Ref) (f_4@@4 T@Field_5601_14568) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| Mask@@13) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5601_14659 f_4@@4))) (not (IsWandField_5601_16208 f_4@@4))) (<= (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| Mask@@13) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| Mask@@13) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5562) (o_2@@5 T@Ref) (f_4@@5 T@Field_5614_5615) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| Mask@@14) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5601_5615 f_4@@5))) (not (IsWandField_5601_5615 f_4@@5))) (<= (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| Mask@@14) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| Mask@@14) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5562) (o_2@@6 T@Ref) (f_4@@6 T@Field_5601_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| Mask@@15) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5601_53 f_4@@6))) (not (IsWandField_5601_53 f_4@@6))) (<= (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| Mask@@15) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| Mask@@15) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5562) (o_2@@7 T@Ref) (f_4@@7 T@Field_5601_14701) ) (! (= (HasDirectPerm_5601_19542 Mask@@16 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| Mask@@16) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5601_19542 Mask@@16 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5562) (o_2@@8 T@Ref) (f_4@@8 T@Field_5601_14568) ) (! (= (HasDirectPerm_5601_14632 Mask@@17 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| Mask@@17) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5601_14632 Mask@@17 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5562) (o_2@@9 T@Ref) (f_4@@9 T@Field_5614_5615) ) (! (= (HasDirectPerm_5601_5615 Mask@@18 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| Mask@@18) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5601_5615 Mask@@18 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_5562) (o_2@@10 T@Ref) (f_4@@10 T@Field_5601_53) ) (! (= (HasDirectPerm_5601_53 Mask@@19 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| Mask@@19) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5601_53 Mask@@19 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.168:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5541) (ExhaleHeap@@5 T@PolymorphicMapType_5541) (Mask@@20 T@PolymorphicMapType_5562) (o_1@@0 T@Ref) (f_2@@7 T@Field_5601_14701) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_5601_19542 Mask@@20 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@19) o_1@@0 f_2@@7) (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5541) (ExhaleHeap@@6 T@PolymorphicMapType_5541) (Mask@@21 T@PolymorphicMapType_5562) (o_1@@1 T@Ref) (f_2@@8 T@Field_5601_14568) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_5601_14632 Mask@@21 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@20) o_1@@1 f_2@@8) (select (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5541) (ExhaleHeap@@7 T@PolymorphicMapType_5541) (Mask@@22 T@PolymorphicMapType_5562) (o_1@@2 T@Ref) (f_2@@9 T@Field_5614_5615) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_5601_5615 Mask@@22 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@21) o_1@@2 f_2@@9) (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5541) (ExhaleHeap@@8 T@PolymorphicMapType_5541) (Mask@@23 T@PolymorphicMapType_5562) (o_1@@3 T@Ref) (f_2@@10 T@Field_5601_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_5601_53 Mask@@23 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@22) o_1@@3 f_2@@10) (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5541) ) (!  (and (= (OTHER_GLOBAL_VAR Heap@@23) (|OTHER_GLOBAL_VAR'| Heap@@23)) (dummyFunction_3090 |OTHER_GLOBAL_VAR#triggerStateless|))
 :qid |stdinbpl.211:15|
 :skolemid |22|
 :pattern ( (OTHER_GLOBAL_VAR Heap@@23))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5541) ) (!  (and (= (ANOTHER_GLOBAL_VAR Heap@@24) (|ANOTHER_GLOBAL_VAR'| Heap@@24)) (dummyFunction_3090 |ANOTHER_GLOBAL_VAR#triggerStateless|))
 :qid |stdinbpl.252:15|
 :skolemid |25|
 :pattern ( (ANOTHER_GLOBAL_VAR Heap@@24))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5541) ) (!  (and (= (SO_MANY_GLOBAL_VARS Heap@@25) (|SO_MANY_GLOBAL_VARS'| Heap@@25)) (dummyFunction_3090 |SO_MANY_GLOBAL_VARS#triggerStateless|))
 :qid |stdinbpl.336:15|
 :skolemid |31|
 :pattern ( (SO_MANY_GLOBAL_VARS Heap@@25))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5601_14701) ) (! (= (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5601_14568) ) (! (= (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5614_5615) ) (! (= (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5601_53) ) (! (= (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5562) (SummandMask1 T@PolymorphicMapType_5562) (SummandMask2 T@PolymorphicMapType_5562) (o_2@@15 T@Ref) (f_4@@15 T@Field_5601_14701) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5562) (SummandMask1@@0 T@PolymorphicMapType_5562) (SummandMask2@@0 T@PolymorphicMapType_5562) (o_2@@16 T@Ref) (f_4@@16 T@Field_5601_14568) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5562) (SummandMask1@@1 T@PolymorphicMapType_5562) (SummandMask2@@1 T@PolymorphicMapType_5562) (o_2@@17 T@Ref) (f_4@@17 T@Field_5614_5615) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5562) (SummandMask1@@2 T@PolymorphicMapType_5562) (SummandMask2@@2 T@PolymorphicMapType_5562) (o_2@@18 T@Ref) (f_4@@18 T@Field_5601_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5541) (Mask@@24 T@PolymorphicMapType_5562) (box_1@@2 T@Ref) ) (!  (=> (state Heap@@26 Mask@@24) (= (|bool___unbox__'| Heap@@26 box_1@@2) (|bool___unbox__#frame| EmptyFrame box_1@@2)))
 :qid |stdinbpl.621:15|
 :skolemid |51|
 :pattern ( (state Heap@@26 Mask@@24) (|bool___unbox__'| Heap@@26 box_1@@2))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5541) (box_1@@3 T@Ref) ) (!  (and (= (bool___unbox__ Heap@@27 box_1@@3) (|bool___unbox__'| Heap@@27 box_1@@3)) (dummyFunction_2888 (|bool___unbox__#triggerStateless| box_1@@3)))
 :qid |stdinbpl.610:15|
 :skolemid |49|
 :pattern ( (bool___unbox__ Heap@@27 box_1@@3))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5541) (Mask@@25 T@PolymorphicMapType_5562) (prim@@5 Bool) ) (!  (=> (and (state Heap@@28 Mask@@25) (or (< AssumeFunctionsAbove 4) (|__prim__bool___box__#trigger| EmptyFrame prim@@5))) (= (int___unbox__ Heap@@28 (|__prim__bool___box__'| Heap@@28 prim@@5)) (ite prim@@5 1 0)))
 :qid |stdinbpl.558:15|
 :skolemid |48|
 :pattern ( (state Heap@@28 Mask@@25) (|__prim__bool___box__'| Heap@@28 prim@@5))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5541) (Mask@@26 T@PolymorphicMapType_5562) ) (!  (=> (and (state Heap@@29 Mask@@26) (or (< AssumeFunctionsAbove 0) (|SO_MANY_GLOBAL_VARS#trigger| EmptyFrame))) (issubtype (typeof (|SO_MANY_GLOBAL_VARS'| Heap@@29)) vint))
 :qid |stdinbpl.359:15|
 :skolemid |35|
 :pattern ( (state Heap@@29 Mask@@26) (|SO_MANY_GLOBAL_VARS'| Heap@@29))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5541) (Mask@@27 T@PolymorphicMapType_5562) ) (!  (=> (and (state Heap@@30 Mask@@27) (or (< AssumeFunctionsAbove 1) (|ANOTHER_GLOBAL_VAR#trigger| EmptyFrame))) (issubtype (typeof (|ANOTHER_GLOBAL_VAR'| Heap@@30)) vbool))
 :qid |stdinbpl.275:15|
 :skolemid |29|
 :pattern ( (state Heap@@30 Mask@@27) (|ANOTHER_GLOBAL_VAR'| Heap@@30))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_5541) (Mask@@28 T@PolymorphicMapType_5562) (prim@@6 Int) ) (!  (=> (state Heap@@31 Mask@@28) (= (|__prim__int___box__'| Heap@@31 prim@@6) (|__prim__int___box__#frame| EmptyFrame prim@@6)))
 :qid |stdinbpl.461:15|
 :skolemid |39|
 :pattern ( (state Heap@@31 Mask@@28) (|__prim__int___box__'| Heap@@31 prim@@6))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_5541) (Mask@@29 T@PolymorphicMapType_5562) (box_1@@4 T@Ref) ) (!  (=> (state Heap@@32 Mask@@29) (= (|int___unbox__'| Heap@@32 box_1@@4) (|int___unbox__#frame| EmptyFrame box_1@@4)))
 :qid |stdinbpl.502:15|
 :skolemid |42|
 :pattern ( (state Heap@@32 Mask@@29) (|int___unbox__'| Heap@@32 box_1@@4))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_5541) (Mask@@30 T@PolymorphicMapType_5562) (prim@@7 Bool) ) (!  (=> (state Heap@@33 Mask@@30) (= (|__prim__bool___box__'| Heap@@33 prim@@7) (|__prim__bool___box__#frame| EmptyFrame prim@@7)))
 :qid |stdinbpl.544:15|
 :skolemid |45|
 :pattern ( (state Heap@@33 Mask@@30) (|__prim__bool___box__'| Heap@@33 prim@@7))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_5541) ) (! (dummyFunction_3090 |OTHER_GLOBAL_VAR#triggerStateless|)
 :qid |stdinbpl.215:15|
 :skolemid |23|
 :pattern ( (|OTHER_GLOBAL_VAR'| Heap@@34))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_5541) ) (! (dummyFunction_3090 |ANOTHER_GLOBAL_VAR#triggerStateless|)
 :qid |stdinbpl.256:15|
 :skolemid |26|
 :pattern ( (|ANOTHER_GLOBAL_VAR'| Heap@@35))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_5541) ) (! (dummyFunction_3090 |SO_MANY_GLOBAL_VARS#triggerStateless|)
 :qid |stdinbpl.340:15|
 :skolemid |32|
 :pattern ( (|SO_MANY_GLOBAL_VARS'| Heap@@36))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_5541) (Mask@@31 T@PolymorphicMapType_5562) ) (!  (=> (state Heap@@37 Mask@@31) (= (|OTHER_GLOBAL_VAR'| Heap@@37) (|OTHER_GLOBAL_VAR#frame| EmptyFrame)))
 :qid |stdinbpl.222:15|
 :skolemid |24|
 :pattern ( (state Heap@@37 Mask@@31) (|OTHER_GLOBAL_VAR'| Heap@@37))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_5541) (Mask@@32 T@PolymorphicMapType_5562) ) (!  (=> (state Heap@@38 Mask@@32) (= (|ANOTHER_GLOBAL_VAR'| Heap@@38) (|ANOTHER_GLOBAL_VAR#frame| EmptyFrame)))
 :qid |stdinbpl.269:15|
 :skolemid |28|
 :pattern ( (state Heap@@38 Mask@@32) (|ANOTHER_GLOBAL_VAR'| Heap@@38))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_5541) (Mask@@33 T@PolymorphicMapType_5562) ) (!  (=> (state Heap@@39 Mask@@33) (= (|SO_MANY_GLOBAL_VARS'| Heap@@39) (|SO_MANY_GLOBAL_VARS#frame| EmptyFrame)))
 :qid |stdinbpl.353:15|
 :skolemid |34|
 :pattern ( (state Heap@@39 Mask@@33) (|SO_MANY_GLOBAL_VARS'| Heap@@39))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_5541) (o T@Ref) (f_3 T@Field_5601_14568) (v T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_5541 (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@40) (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@40) (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@40) (store (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@40) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5541 (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@40) (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@40) (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@40) (store (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@40) o f_3 v)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_5541) (o@@0 T@Ref) (f_3@@0 T@Field_5601_14701) (v@@0 T@PolymorphicMapType_6090) ) (! (succHeap Heap@@41 (PolymorphicMapType_5541 (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@41) (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@41) (store (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@41) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5541 (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@41) (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@41) (store (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@41) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_5541) (o@@1 T@Ref) (f_3@@1 T@Field_5614_5615) (v@@1 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_5541 (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@42) (store (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@42) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@42) (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5541 (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@42) (store (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@42) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@42) (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_5541) (o@@2 T@Ref) (f_3@@2 T@Field_5601_53) (v@@2 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_5541 (store (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@43) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@43) (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@43) (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5541 (store (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@43) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@43) (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@43) (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@43)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_5614_5615) (Heap@@44 T@PolymorphicMapType_5541) ) (!  (=> (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@44) o@@3 $allocated) (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@44) (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@44) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@44) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_5601_14568) (v_1@@0 T@FrameType) (q T@Field_5601_14568) (w@@0 T@FrameType) (r T@Field_5601_14568) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5601_5601 p@@1 v_1@@0 q w@@0) (InsidePredicate_5601_5601 q w@@0 r u)) (InsidePredicate_5601_5601 p@@1 v_1@@0 r u))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5601_5601 p@@1 v_1@@0 q w@@0) (InsidePredicate_5601_5601 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Result@0 () T@Ref)
(declare-fun Heap@@45 () T@PolymorphicMapType_5541)
(set-info :boogie-vc-id |ANOTHER_GLOBAL_VAR#definedness|)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon6_Else_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (= Result@0 (__prim__bool___box__ Heap@@45 true)))))
(let ((anon6_Then_correct true))
(let ((anon5_Else_correct  (=> (= Result@0 (__prim__bool___box__ Heap@@45 true)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (issubtype (typeof Result@0) vbool)) (=> (issubtype (typeof Result@0) vbool) (and (=> (= (ControlFlow 0 5) 2) anon6_Then_correct) (=> (= (ControlFlow 0 5) 4) anon6_Else_correct)))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@45 ZeroMask) (=> (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 1)) (and (=> (= (ControlFlow 0 7) 1) anon5_Then_correct) (=> (= (ControlFlow 0 7) 5) anon5_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 6))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
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
(declare-sort T@Field_5601_53 0)
(declare-sort T@Field_5614_5615 0)
(declare-sort T@Field_5601_14701 0)
(declare-sort T@Field_5601_14568 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5562 0)) (((PolymorphicMapType_5562 (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| (Array T@Ref T@Field_5601_53 Real)) (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| (Array T@Ref T@Field_5614_5615 Real)) (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| (Array T@Ref T@Field_5601_14568 Real)) (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| (Array T@Ref T@Field_5601_14701 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6090 0)) (((PolymorphicMapType_6090 (|PolymorphicMapType_6090_5601_53#PolymorphicMapType_6090| (Array T@Ref T@Field_5601_53 Bool)) (|PolymorphicMapType_6090_5601_5615#PolymorphicMapType_6090| (Array T@Ref T@Field_5614_5615 Bool)) (|PolymorphicMapType_6090_5601_14568#PolymorphicMapType_6090| (Array T@Ref T@Field_5601_14568 Bool)) (|PolymorphicMapType_6090_5601_15681#PolymorphicMapType_6090| (Array T@Ref T@Field_5601_14701 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5541 0)) (((PolymorphicMapType_5541 (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| (Array T@Ref T@Field_5601_53 Bool)) (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| (Array T@Ref T@Field_5614_5615 T@Ref)) (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| (Array T@Ref T@Field_5601_14701 T@PolymorphicMapType_6090)) (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| (Array T@Ref T@Field_5601_14568 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_5601_53)
(declare-sort T@PyTypeDomainType 0)
(declare-fun vbool () T@PyTypeDomainType)
(declare-fun vint () T@PyTypeDomainType)
(declare-fun state (T@PolymorphicMapType_5541 T@PolymorphicMapType_5562) Bool)
(declare-fun SO_MANY_GLOBAL_VARS (T@PolymorphicMapType_5541) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun bool___unbox__ (T@PolymorphicMapType_5541 T@Ref) Bool)
(declare-fun ANOTHER_GLOBAL_VAR (T@PolymorphicMapType_5541) T@Ref)
(declare-fun OTHER_GLOBAL_VAR (T@PolymorphicMapType_5541) T@Ref)
(declare-fun __prim__int___box__ (T@PolymorphicMapType_5541 Int) T@Ref)
(declare-fun __prim__bool___box__ (T@PolymorphicMapType_5541 Bool) T@Ref)
(declare-fun succHeap (T@PolymorphicMapType_5541 T@PolymorphicMapType_5541) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5541 T@PolymorphicMapType_5541) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5562) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6090)
(declare-fun |__prim__int___box__'| (T@PolymorphicMapType_5541 Int) T@Ref)
(declare-fun dummyFunction_3090 (T@Ref) Bool)
(declare-fun |__prim__int___box__#triggerStateless| (Int) T@Ref)
(declare-fun |int___unbox__'| (T@PolymorphicMapType_5541 T@Ref) Int)
(declare-fun dummyFunction_2346 (Int) Bool)
(declare-fun |int___unbox__#triggerStateless| (T@Ref) Int)
(declare-fun |__prim__bool___box__'| (T@PolymorphicMapType_5541 Bool) T@Ref)
(declare-fun |__prim__bool___box__#triggerStateless| (Bool) T@Ref)
(declare-fun |bool___unbox__'| (T@PolymorphicMapType_5541 T@Ref) Bool)
(declare-fun dummyFunction_2888 (Bool) Bool)
(declare-fun |bool___unbox__#triggerStateless| (T@Ref) Bool)
(declare-fun |__prim__bool___box__#trigger| (T@FrameType Bool) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun int___unbox__ (T@PolymorphicMapType_5541 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5541 T@PolymorphicMapType_5541 T@PolymorphicMapType_5562) Bool)
(declare-fun IsPredicateField_5601_14659 (T@Field_5601_14568) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5601 (T@Field_5601_14568) T@Field_5601_14701)
(declare-fun HasDirectPerm_5601_14632 (T@PolymorphicMapType_5562 T@Ref T@Field_5601_14568) Bool)
(declare-fun IsWandField_5601_16208 (T@Field_5601_14568) Bool)
(declare-fun WandMaskField_5601 (T@Field_5601_14568) T@Field_5601_14701)
(declare-fun typeof (T@Ref) T@PyTypeDomainType)
(declare-fun |SO_MANY_GLOBAL_VARS'| (T@PolymorphicMapType_5541) T@Ref)
(declare-fun |SO_MANY_GLOBAL_VARS#trigger| (T@FrameType) Bool)
(declare-fun |ANOTHER_GLOBAL_VAR'| (T@PolymorphicMapType_5541) T@Ref)
(declare-fun |ANOTHER_GLOBAL_VAR#trigger| (T@FrameType) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_5541)
(declare-fun ZeroMask () T@PolymorphicMapType_5562)
(declare-fun InsidePredicate_5601_5601 (T@Field_5601_14568 T@FrameType T@Field_5601_14568 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5601_19171 (T@Field_5601_14701) Bool)
(declare-fun IsWandField_5601_19187 (T@Field_5601_14701) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5601_5615 (T@Field_5614_5615) Bool)
(declare-fun IsWandField_5601_5615 (T@Field_5614_5615) Bool)
(declare-fun IsPredicateField_5601_53 (T@Field_5601_53) Bool)
(declare-fun IsWandField_5601_53 (T@Field_5601_53) Bool)
(declare-fun HasDirectPerm_5601_19542 (T@PolymorphicMapType_5562 T@Ref T@Field_5601_14701) Bool)
(declare-fun HasDirectPerm_5601_5615 (T@PolymorphicMapType_5562 T@Ref T@Field_5614_5615) Bool)
(declare-fun HasDirectPerm_5601_53 (T@PolymorphicMapType_5562 T@Ref T@Field_5601_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun |OTHER_GLOBAL_VAR'| (T@PolymorphicMapType_5541) T@Ref)
(declare-fun |OTHER_GLOBAL_VAR#triggerStateless| () T@Ref)
(declare-fun |ANOTHER_GLOBAL_VAR#triggerStateless| () T@Ref)
(declare-fun |SO_MANY_GLOBAL_VARS#triggerStateless| () T@Ref)
(declare-fun sumMask (T@PolymorphicMapType_5562 T@PolymorphicMapType_5562 T@PolymorphicMapType_5562) Bool)
(declare-fun |bool___unbox__#frame| (T@FrameType T@Ref) Bool)
(declare-fun issubtype (T@PyTypeDomainType T@PyTypeDomainType) Bool)
(declare-fun |__prim__int___box__#frame| (T@FrameType Int) T@Ref)
(declare-fun |int___unbox__#frame| (T@FrameType T@Ref) Int)
(declare-fun |__prim__bool___box__#frame| (T@FrameType Bool) T@Ref)
(declare-fun |OTHER_GLOBAL_VAR#frame| (T@FrameType) T@Ref)
(declare-fun |ANOTHER_GLOBAL_VAR#frame| (T@FrameType) T@Ref)
(declare-fun |SO_MANY_GLOBAL_VARS#frame| (T@FrameType) T@Ref)
(assert (distinct vbool vint)
)
(assert (forall ((Heap T@PolymorphicMapType_5541) (Mask T@PolymorphicMapType_5562) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 0)) (= (SO_MANY_GLOBAL_VARS Heap) (ite (bool___unbox__ Heap (ANOTHER_GLOBAL_VAR Heap)) (OTHER_GLOBAL_VAR Heap) (__prim__int___box__ Heap 44))))
 :qid |stdinbpl.346:15|
 :skolemid |33|
 :pattern ( (state Heap Mask) (SO_MANY_GLOBAL_VARS Heap))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5541) (Mask@@0 T@PolymorphicMapType_5562) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 1)) (= (ANOTHER_GLOBAL_VAR Heap@@0) (__prim__bool___box__ Heap@@0 true)))
 :qid |stdinbpl.262:15|
 :skolemid |27|
 :pattern ( (state Heap@@0 Mask@@0) (ANOTHER_GLOBAL_VAR Heap@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_5541) (Heap1 T@PolymorphicMapType_5541) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5541) (Mask@@1 T@PolymorphicMapType_5562) ) (!  (=> (state Heap@@1 Mask@@1) (GoodMask Mask@@1))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@1 Mask@@1))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5541) (Heap1@@0 T@PolymorphicMapType_5541) (Heap2 T@PolymorphicMapType_5541) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5601_14701) ) (!  (not (select (|PolymorphicMapType_6090_5601_15681#PolymorphicMapType_6090| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6090_5601_15681#PolymorphicMapType_6090| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5601_14568) ) (!  (not (select (|PolymorphicMapType_6090_5601_14568#PolymorphicMapType_6090| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6090_5601_14568#PolymorphicMapType_6090| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5614_5615) ) (!  (not (select (|PolymorphicMapType_6090_5601_5615#PolymorphicMapType_6090| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6090_5601_5615#PolymorphicMapType_6090| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5601_53) ) (!  (not (select (|PolymorphicMapType_6090_5601_53#PolymorphicMapType_6090| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6090_5601_53#PolymorphicMapType_6090| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5541) (prim Int) ) (! (dummyFunction_3090 (|__prim__int___box__#triggerStateless| prim))
 :qid |stdinbpl.454:15|
 :skolemid |38|
 :pattern ( (|__prim__int___box__'| Heap@@2 prim))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5541) (box_1 T@Ref) ) (! (dummyFunction_2346 (|int___unbox__#triggerStateless| box_1))
 :qid |stdinbpl.495:15|
 :skolemid |41|
 :pattern ( (|int___unbox__'| Heap@@3 box_1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5541) (prim@@0 Bool) ) (! (dummyFunction_3090 (|__prim__bool___box__#triggerStateless| prim@@0))
 :qid |stdinbpl.537:15|
 :skolemid |44|
 :pattern ( (|__prim__bool___box__'| Heap@@4 prim@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5541) (box_1@@0 T@Ref) ) (! (dummyFunction_2888 (|bool___unbox__#triggerStateless| box_1@@0))
 :qid |stdinbpl.614:15|
 :skolemid |50|
 :pattern ( (|bool___unbox__'| Heap@@5 box_1@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5541) (Mask@@2 T@PolymorphicMapType_5562) (prim@@1 Bool) ) (!  (=> (and (state Heap@@6 Mask@@2) (or (< AssumeFunctionsAbove 4) (|__prim__bool___box__#trigger| EmptyFrame prim@@1))) (= (bool___unbox__ Heap@@6 (|__prim__bool___box__'| Heap@@6 prim@@1)) prim@@1))
 :qid |stdinbpl.554:15|
 :skolemid |47|
 :pattern ( (state Heap@@6 Mask@@2) (|__prim__bool___box__'| Heap@@6 prim@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5541) (prim@@2 Int) ) (!  (and (= (__prim__int___box__ Heap@@7 prim@@2) (|__prim__int___box__'| Heap@@7 prim@@2)) (dummyFunction_3090 (|__prim__int___box__#triggerStateless| prim@@2)))
 :qid |stdinbpl.450:15|
 :skolemid |37|
 :pattern ( (__prim__int___box__ Heap@@7 prim@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5541) (box_1@@1 T@Ref) ) (!  (and (= (int___unbox__ Heap@@8 box_1@@1) (|int___unbox__'| Heap@@8 box_1@@1)) (dummyFunction_2346 (|int___unbox__#triggerStateless| box_1@@1)))
 :qid |stdinbpl.491:15|
 :skolemid |40|
 :pattern ( (int___unbox__ Heap@@8 box_1@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5541) (prim@@3 Bool) ) (!  (and (= (__prim__bool___box__ Heap@@9 prim@@3) (|__prim__bool___box__'| Heap@@9 prim@@3)) (dummyFunction_3090 (|__prim__bool___box__#triggerStateless| prim@@3)))
 :qid |stdinbpl.533:15|
 :skolemid |43|
 :pattern ( (__prim__bool___box__ Heap@@9 prim@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5541) (ExhaleHeap T@PolymorphicMapType_5541) (Mask@@3 T@PolymorphicMapType_5562) (pm_f T@Field_5601_14568) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_5601_14632 Mask@@3 null pm_f) (IsPredicateField_5601_14659 pm_f)) (= (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@10) null (PredicateMaskField_5601 pm_f)) (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap) null (PredicateMaskField_5601 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@3) (IsPredicateField_5601_14659 pm_f) (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap) null (PredicateMaskField_5601 pm_f)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5541) (ExhaleHeap@@0 T@PolymorphicMapType_5541) (Mask@@4 T@PolymorphicMapType_5562) (pm_f@@0 T@Field_5601_14568) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_5601_14632 Mask@@4 null pm_f@@0) (IsWandField_5601_16208 pm_f@@0)) (= (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@11) null (WandMaskField_5601 pm_f@@0)) (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap@@0) null (WandMaskField_5601 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@4) (IsWandField_5601_16208 pm_f@@0) (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap@@0) null (WandMaskField_5601 pm_f@@0)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5541) (Mask@@5 T@PolymorphicMapType_5562) (prim@@4 Bool) ) (!  (=> (and (state Heap@@12 Mask@@5) (or (< AssumeFunctionsAbove 4) (|__prim__bool___box__#trigger| EmptyFrame prim@@4))) (= (typeof (|__prim__bool___box__'| Heap@@12 prim@@4)) vbool))
 :qid |stdinbpl.550:15|
 :skolemid |46|
 :pattern ( (state Heap@@12 Mask@@5) (|__prim__bool___box__'| Heap@@12 prim@@4))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5541) (Mask@@6 T@PolymorphicMapType_5562) ) (!  (=> (and (state Heap@@13 Mask@@6) (or (< AssumeFunctionsAbove 0) (|SO_MANY_GLOBAL_VARS#trigger| EmptyFrame))) (= (|SO_MANY_GLOBAL_VARS'| Heap@@13) (ite (bool___unbox__ Heap@@13 (ANOTHER_GLOBAL_VAR Heap@@13)) (OTHER_GLOBAL_VAR Heap@@13) (__prim__int___box__ Heap@@13 44))))
 :qid |stdinbpl.363:15|
 :skolemid |36|
 :pattern ( (state Heap@@13 Mask@@6) (|SO_MANY_GLOBAL_VARS'| Heap@@13))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5541) (Mask@@7 T@PolymorphicMapType_5562) ) (!  (=> (and (state Heap@@14 Mask@@7) (or (< AssumeFunctionsAbove 1) (|ANOTHER_GLOBAL_VAR#trigger| EmptyFrame))) (= (|ANOTHER_GLOBAL_VAR'| Heap@@14) (__prim__bool___box__ Heap@@14 true)))
 :qid |stdinbpl.279:15|
 :skolemid |30|
 :pattern ( (state Heap@@14 Mask@@7) (|ANOTHER_GLOBAL_VAR'| Heap@@14))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5541) (ExhaleHeap@@1 T@PolymorphicMapType_5541) (Mask@@8 T@PolymorphicMapType_5562) (pm_f@@1 T@Field_5601_14568) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@1 Mask@@8) (=> (and (HasDirectPerm_5601_14632 Mask@@8 null pm_f@@1) (IsPredicateField_5601_14659 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_5601_53) ) (!  (=> (select (|PolymorphicMapType_6090_5601_53#PolymorphicMapType_6090| (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@15) null (PredicateMaskField_5601 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@15) o2 f_2) (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_5614_5615) ) (!  (=> (select (|PolymorphicMapType_6090_5601_5615#PolymorphicMapType_6090| (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@15) null (PredicateMaskField_5601 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@15) o2@@0 f_2@@0) (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_5601_14568) ) (!  (=> (select (|PolymorphicMapType_6090_5601_14568#PolymorphicMapType_6090| (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@15) null (PredicateMaskField_5601 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@15) o2@@1 f_2@@1) (select (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_5601_14701) ) (!  (=> (select (|PolymorphicMapType_6090_5601_15681#PolymorphicMapType_6090| (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@15) null (PredicateMaskField_5601 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@15) o2@@2 f_2@@2) (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@1 Mask@@8) (IsPredicateField_5601_14659 pm_f@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5541) (ExhaleHeap@@2 T@PolymorphicMapType_5541) (Mask@@9 T@PolymorphicMapType_5562) (pm_f@@2 T@Field_5601_14568) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@2 Mask@@9) (=> (and (HasDirectPerm_5601_14632 Mask@@9 null pm_f@@2) (IsWandField_5601_16208 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_5601_53) ) (!  (=> (select (|PolymorphicMapType_6090_5601_53#PolymorphicMapType_6090| (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@16) null (WandMaskField_5601 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@16) o2@@3 f_2@@3) (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_5614_5615) ) (!  (=> (select (|PolymorphicMapType_6090_5601_5615#PolymorphicMapType_6090| (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@16) null (WandMaskField_5601 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@16) o2@@4 f_2@@4) (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_5601_14568) ) (!  (=> (select (|PolymorphicMapType_6090_5601_14568#PolymorphicMapType_6090| (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@16) null (WandMaskField_5601 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@16) o2@@5 f_2@@5) (select (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_5601_14701) ) (!  (=> (select (|PolymorphicMapType_6090_5601_15681#PolymorphicMapType_6090| (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@16) null (WandMaskField_5601 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@16) o2@@6 f_2@@6) (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@2 Mask@@9) (IsWandField_5601_16208 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5541) (ExhaleHeap@@3 T@PolymorphicMapType_5541) (Mask@@10 T@PolymorphicMapType_5562) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@3 Mask@@10) (=> (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@17) o_1 $allocated) (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@3 Mask@@10) (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_5601_14568) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5601_5601 p v_1 p w))
 :qid |stdinbpl.180:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5601_5601 p v_1 p w))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5541) (ExhaleHeap@@4 T@PolymorphicMapType_5541) (Mask@@11 T@PolymorphicMapType_5562) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@4 Mask@@11) (succHeap Heap@@18 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@4 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5562) (o_2@@3 T@Ref) (f_4@@3 T@Field_5601_14701) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| Mask@@12) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5601_19171 f_4@@3))) (not (IsWandField_5601_19187 f_4@@3))) (<= (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| Mask@@12) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| Mask@@12) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5562) (o_2@@4 T@Ref) (f_4@@4 T@Field_5601_14568) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| Mask@@13) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5601_14659 f_4@@4))) (not (IsWandField_5601_16208 f_4@@4))) (<= (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| Mask@@13) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| Mask@@13) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5562) (o_2@@5 T@Ref) (f_4@@5 T@Field_5614_5615) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| Mask@@14) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5601_5615 f_4@@5))) (not (IsWandField_5601_5615 f_4@@5))) (<= (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| Mask@@14) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| Mask@@14) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5562) (o_2@@6 T@Ref) (f_4@@6 T@Field_5601_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| Mask@@15) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5601_53 f_4@@6))) (not (IsWandField_5601_53 f_4@@6))) (<= (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| Mask@@15) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| Mask@@15) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5562) (o_2@@7 T@Ref) (f_4@@7 T@Field_5601_14701) ) (! (= (HasDirectPerm_5601_19542 Mask@@16 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| Mask@@16) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5601_19542 Mask@@16 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5562) (o_2@@8 T@Ref) (f_4@@8 T@Field_5601_14568) ) (! (= (HasDirectPerm_5601_14632 Mask@@17 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| Mask@@17) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5601_14632 Mask@@17 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5562) (o_2@@9 T@Ref) (f_4@@9 T@Field_5614_5615) ) (! (= (HasDirectPerm_5601_5615 Mask@@18 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| Mask@@18) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5601_5615 Mask@@18 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_5562) (o_2@@10 T@Ref) (f_4@@10 T@Field_5601_53) ) (! (= (HasDirectPerm_5601_53 Mask@@19 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| Mask@@19) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5601_53 Mask@@19 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.168:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5541) (ExhaleHeap@@5 T@PolymorphicMapType_5541) (Mask@@20 T@PolymorphicMapType_5562) (o_1@@0 T@Ref) (f_2@@7 T@Field_5601_14701) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_5601_19542 Mask@@20 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@19) o_1@@0 f_2@@7) (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5541) (ExhaleHeap@@6 T@PolymorphicMapType_5541) (Mask@@21 T@PolymorphicMapType_5562) (o_1@@1 T@Ref) (f_2@@8 T@Field_5601_14568) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_5601_14632 Mask@@21 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@20) o_1@@1 f_2@@8) (select (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5541) (ExhaleHeap@@7 T@PolymorphicMapType_5541) (Mask@@22 T@PolymorphicMapType_5562) (o_1@@2 T@Ref) (f_2@@9 T@Field_5614_5615) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_5601_5615 Mask@@22 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@21) o_1@@2 f_2@@9) (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5541) (ExhaleHeap@@8 T@PolymorphicMapType_5541) (Mask@@23 T@PolymorphicMapType_5562) (o_1@@3 T@Ref) (f_2@@10 T@Field_5601_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_5601_53 Mask@@23 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@22) o_1@@3 f_2@@10) (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5541) ) (!  (and (= (OTHER_GLOBAL_VAR Heap@@23) (|OTHER_GLOBAL_VAR'| Heap@@23)) (dummyFunction_3090 |OTHER_GLOBAL_VAR#triggerStateless|))
 :qid |stdinbpl.211:15|
 :skolemid |22|
 :pattern ( (OTHER_GLOBAL_VAR Heap@@23))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5541) ) (!  (and (= (ANOTHER_GLOBAL_VAR Heap@@24) (|ANOTHER_GLOBAL_VAR'| Heap@@24)) (dummyFunction_3090 |ANOTHER_GLOBAL_VAR#triggerStateless|))
 :qid |stdinbpl.252:15|
 :skolemid |25|
 :pattern ( (ANOTHER_GLOBAL_VAR Heap@@24))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5541) ) (!  (and (= (SO_MANY_GLOBAL_VARS Heap@@25) (|SO_MANY_GLOBAL_VARS'| Heap@@25)) (dummyFunction_3090 |SO_MANY_GLOBAL_VARS#triggerStateless|))
 :qid |stdinbpl.336:15|
 :skolemid |31|
 :pattern ( (SO_MANY_GLOBAL_VARS Heap@@25))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5601_14701) ) (! (= (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5601_14568) ) (! (= (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5614_5615) ) (! (= (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5601_53) ) (! (= (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5562) (SummandMask1 T@PolymorphicMapType_5562) (SummandMask2 T@PolymorphicMapType_5562) (o_2@@15 T@Ref) (f_4@@15 T@Field_5601_14701) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5562_5601_18262#PolymorphicMapType_5562| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5562) (SummandMask1@@0 T@PolymorphicMapType_5562) (SummandMask2@@0 T@PolymorphicMapType_5562) (o_2@@16 T@Ref) (f_4@@16 T@Field_5601_14568) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5562_5601_14568#PolymorphicMapType_5562| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5562) (SummandMask1@@1 T@PolymorphicMapType_5562) (SummandMask2@@1 T@PolymorphicMapType_5562) (o_2@@17 T@Ref) (f_4@@17 T@Field_5614_5615) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5562_5601_5615#PolymorphicMapType_5562| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5562) (SummandMask1@@2 T@PolymorphicMapType_5562) (SummandMask2@@2 T@PolymorphicMapType_5562) (o_2@@18 T@Ref) (f_4@@18 T@Field_5601_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5562_5601_53#PolymorphicMapType_5562| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5541) (Mask@@24 T@PolymorphicMapType_5562) (box_1@@2 T@Ref) ) (!  (=> (state Heap@@26 Mask@@24) (= (|bool___unbox__'| Heap@@26 box_1@@2) (|bool___unbox__#frame| EmptyFrame box_1@@2)))
 :qid |stdinbpl.621:15|
 :skolemid |51|
 :pattern ( (state Heap@@26 Mask@@24) (|bool___unbox__'| Heap@@26 box_1@@2))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5541) (box_1@@3 T@Ref) ) (!  (and (= (bool___unbox__ Heap@@27 box_1@@3) (|bool___unbox__'| Heap@@27 box_1@@3)) (dummyFunction_2888 (|bool___unbox__#triggerStateless| box_1@@3)))
 :qid |stdinbpl.610:15|
 :skolemid |49|
 :pattern ( (bool___unbox__ Heap@@27 box_1@@3))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5541) (Mask@@25 T@PolymorphicMapType_5562) (prim@@5 Bool) ) (!  (=> (and (state Heap@@28 Mask@@25) (or (< AssumeFunctionsAbove 4) (|__prim__bool___box__#trigger| EmptyFrame prim@@5))) (= (int___unbox__ Heap@@28 (|__prim__bool___box__'| Heap@@28 prim@@5)) (ite prim@@5 1 0)))
 :qid |stdinbpl.558:15|
 :skolemid |48|
 :pattern ( (state Heap@@28 Mask@@25) (|__prim__bool___box__'| Heap@@28 prim@@5))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5541) (Mask@@26 T@PolymorphicMapType_5562) ) (!  (=> (and (state Heap@@29 Mask@@26) (or (< AssumeFunctionsAbove 0) (|SO_MANY_GLOBAL_VARS#trigger| EmptyFrame))) (issubtype (typeof (|SO_MANY_GLOBAL_VARS'| Heap@@29)) vint))
 :qid |stdinbpl.359:15|
 :skolemid |35|
 :pattern ( (state Heap@@29 Mask@@26) (|SO_MANY_GLOBAL_VARS'| Heap@@29))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5541) (Mask@@27 T@PolymorphicMapType_5562) ) (!  (=> (and (state Heap@@30 Mask@@27) (or (< AssumeFunctionsAbove 1) (|ANOTHER_GLOBAL_VAR#trigger| EmptyFrame))) (issubtype (typeof (|ANOTHER_GLOBAL_VAR'| Heap@@30)) vbool))
 :qid |stdinbpl.275:15|
 :skolemid |29|
 :pattern ( (state Heap@@30 Mask@@27) (|ANOTHER_GLOBAL_VAR'| Heap@@30))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_5541) (Mask@@28 T@PolymorphicMapType_5562) (prim@@6 Int) ) (!  (=> (state Heap@@31 Mask@@28) (= (|__prim__int___box__'| Heap@@31 prim@@6) (|__prim__int___box__#frame| EmptyFrame prim@@6)))
 :qid |stdinbpl.461:15|
 :skolemid |39|
 :pattern ( (state Heap@@31 Mask@@28) (|__prim__int___box__'| Heap@@31 prim@@6))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_5541) (Mask@@29 T@PolymorphicMapType_5562) (box_1@@4 T@Ref) ) (!  (=> (state Heap@@32 Mask@@29) (= (|int___unbox__'| Heap@@32 box_1@@4) (|int___unbox__#frame| EmptyFrame box_1@@4)))
 :qid |stdinbpl.502:15|
 :skolemid |42|
 :pattern ( (state Heap@@32 Mask@@29) (|int___unbox__'| Heap@@32 box_1@@4))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_5541) (Mask@@30 T@PolymorphicMapType_5562) (prim@@7 Bool) ) (!  (=> (state Heap@@33 Mask@@30) (= (|__prim__bool___box__'| Heap@@33 prim@@7) (|__prim__bool___box__#frame| EmptyFrame prim@@7)))
 :qid |stdinbpl.544:15|
 :skolemid |45|
 :pattern ( (state Heap@@33 Mask@@30) (|__prim__bool___box__'| Heap@@33 prim@@7))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_5541) ) (! (dummyFunction_3090 |OTHER_GLOBAL_VAR#triggerStateless|)
 :qid |stdinbpl.215:15|
 :skolemid |23|
 :pattern ( (|OTHER_GLOBAL_VAR'| Heap@@34))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_5541) ) (! (dummyFunction_3090 |ANOTHER_GLOBAL_VAR#triggerStateless|)
 :qid |stdinbpl.256:15|
 :skolemid |26|
 :pattern ( (|ANOTHER_GLOBAL_VAR'| Heap@@35))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_5541) ) (! (dummyFunction_3090 |SO_MANY_GLOBAL_VARS#triggerStateless|)
 :qid |stdinbpl.340:15|
 :skolemid |32|
 :pattern ( (|SO_MANY_GLOBAL_VARS'| Heap@@36))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_5541) (Mask@@31 T@PolymorphicMapType_5562) ) (!  (=> (state Heap@@37 Mask@@31) (= (|OTHER_GLOBAL_VAR'| Heap@@37) (|OTHER_GLOBAL_VAR#frame| EmptyFrame)))
 :qid |stdinbpl.222:15|
 :skolemid |24|
 :pattern ( (state Heap@@37 Mask@@31) (|OTHER_GLOBAL_VAR'| Heap@@37))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_5541) (Mask@@32 T@PolymorphicMapType_5562) ) (!  (=> (state Heap@@38 Mask@@32) (= (|ANOTHER_GLOBAL_VAR'| Heap@@38) (|ANOTHER_GLOBAL_VAR#frame| EmptyFrame)))
 :qid |stdinbpl.269:15|
 :skolemid |28|
 :pattern ( (state Heap@@38 Mask@@32) (|ANOTHER_GLOBAL_VAR'| Heap@@38))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_5541) (Mask@@33 T@PolymorphicMapType_5562) ) (!  (=> (state Heap@@39 Mask@@33) (= (|SO_MANY_GLOBAL_VARS'| Heap@@39) (|SO_MANY_GLOBAL_VARS#frame| EmptyFrame)))
 :qid |stdinbpl.353:15|
 :skolemid |34|
 :pattern ( (state Heap@@39 Mask@@33) (|SO_MANY_GLOBAL_VARS'| Heap@@39))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_5541) (o T@Ref) (f_3 T@Field_5601_14568) (v T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_5541 (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@40) (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@40) (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@40) (store (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@40) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5541 (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@40) (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@40) (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@40) (store (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@40) o f_3 v)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_5541) (o@@0 T@Ref) (f_3@@0 T@Field_5601_14701) (v@@0 T@PolymorphicMapType_6090) ) (! (succHeap Heap@@41 (PolymorphicMapType_5541 (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@41) (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@41) (store (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@41) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5541 (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@41) (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@41) (store (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@41) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_5541) (o@@1 T@Ref) (f_3@@1 T@Field_5614_5615) (v@@1 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_5541 (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@42) (store (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@42) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@42) (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5541 (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@42) (store (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@42) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@42) (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_5541) (o@@2 T@Ref) (f_3@@2 T@Field_5601_53) (v@@2 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_5541 (store (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@43) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@43) (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@43) (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5541 (store (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@43) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@43) (|PolymorphicMapType_5541_5601_14745#PolymorphicMapType_5541| Heap@@43) (|PolymorphicMapType_5541_5601_14568#PolymorphicMapType_5541| Heap@@43)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_5614_5615) (Heap@@44 T@PolymorphicMapType_5541) ) (!  (=> (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@44) o@@3 $allocated) (select (|PolymorphicMapType_5541_2945_53#PolymorphicMapType_5541| Heap@@44) (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@44) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5541_2948_2949#PolymorphicMapType_5541| Heap@@44) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_5601_14568) (v_1@@0 T@FrameType) (q T@Field_5601_14568) (w@@0 T@FrameType) (r T@Field_5601_14568) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5601_5601 p@@1 v_1@@0 q w@@0) (InsidePredicate_5601_5601 q w@@0 r u)) (InsidePredicate_5601_5601 p@@1 v_1@@0 r u))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5601_5601 p@@1 v_1@@0 q w@@0) (InsidePredicate_5601_5601 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Invalid

