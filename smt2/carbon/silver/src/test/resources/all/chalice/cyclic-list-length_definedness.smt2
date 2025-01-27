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
(declare-sort T@Field_8370_53 0)
(declare-sort T@Field_8383_8384 0)
(declare-sort T@Field_12131_12132 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_11697_1189 0)
(declare-sort T@Field_14987_14992 0)
(declare-sort T@Field_4317_4385 0)
(declare-sort T@Field_4317_14992 0)
(declare-sort T@Field_4384_4318 0)
(declare-sort T@Field_4384_1189 0)
(declare-sort T@Field_4384_53 0)
(declare-datatypes ((T@PolymorphicMapType_8331 0)) (((PolymorphicMapType_8331 (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| (Array T@Ref T@Field_12131_12132 Real)) (|PolymorphicMapType_8331_4315_1189#PolymorphicMapType_8331| (Array T@Ref T@Field_11697_1189 Real)) (|PolymorphicMapType_8331_4317_4318#PolymorphicMapType_8331| (Array T@Ref T@Field_8383_8384 Real)) (|PolymorphicMapType_8331_4384_1189#PolymorphicMapType_8331| (Array T@Ref T@Field_4384_1189 Real)) (|PolymorphicMapType_8331_4384_4318#PolymorphicMapType_8331| (Array T@Ref T@Field_4384_4318 Real)) (|PolymorphicMapType_8331_4384_53#PolymorphicMapType_8331| (Array T@Ref T@Field_4384_53 Real)) (|PolymorphicMapType_8331_4384_37252#PolymorphicMapType_8331| (Array T@Ref T@Field_14987_14992 Real)) (|PolymorphicMapType_8331_4315_4385#PolymorphicMapType_8331| (Array T@Ref T@Field_4317_4385 Real)) (|PolymorphicMapType_8331_4315_53#PolymorphicMapType_8331| (Array T@Ref T@Field_8370_53 Real)) (|PolymorphicMapType_8331_4315_37651#PolymorphicMapType_8331| (Array T@Ref T@Field_4317_14992 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8859 0)) (((PolymorphicMapType_8859 (|PolymorphicMapType_8859_4315_1189#PolymorphicMapType_8859| (Array T@Ref T@Field_11697_1189 Bool)) (|PolymorphicMapType_8859_4317_4318#PolymorphicMapType_8859| (Array T@Ref T@Field_8383_8384 Bool)) (|PolymorphicMapType_8859_4315_53#PolymorphicMapType_8859| (Array T@Ref T@Field_8370_53 Bool)) (|PolymorphicMapType_8859_4315_12132#PolymorphicMapType_8859| (Array T@Ref T@Field_4317_4385 Bool)) (|PolymorphicMapType_8859_4315_30813#PolymorphicMapType_8859| (Array T@Ref T@Field_4317_14992 Bool)) (|PolymorphicMapType_8859_12131_1189#PolymorphicMapType_8859| (Array T@Ref T@Field_4384_1189 Bool)) (|PolymorphicMapType_8859_12131_4318#PolymorphicMapType_8859| (Array T@Ref T@Field_4384_4318 Bool)) (|PolymorphicMapType_8859_12131_53#PolymorphicMapType_8859| (Array T@Ref T@Field_4384_53 Bool)) (|PolymorphicMapType_8859_12131_12132#PolymorphicMapType_8859| (Array T@Ref T@Field_12131_12132 Bool)) (|PolymorphicMapType_8859_12131_31861#PolymorphicMapType_8859| (Array T@Ref T@Field_14987_14992 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8310 0)) (((PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| (Array T@Ref T@Field_8370_53 Bool)) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| (Array T@Ref T@Field_8383_8384 T@Ref)) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| (Array T@Ref T@Field_12131_12132 T@FrameType)) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| (Array T@Ref T@Field_11697_1189 Int)) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| (Array T@Ref T@Field_14987_14992 T@PolymorphicMapType_8859)) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| (Array T@Ref T@Field_4317_4385 T@FrameType)) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| (Array T@Ref T@Field_4317_14992 T@PolymorphicMapType_8859)) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| (Array T@Ref T@Field_4384_4318 T@Ref)) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| (Array T@Ref T@Field_4384_1189 Int)) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| (Array T@Ref T@Field_4384_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_8370_53)
(declare-fun value_1 () T@Field_11697_1189)
(declare-fun next () T@Field_8383_8384)
(declare-fun succHeap (T@PolymorphicMapType_8310 T@PolymorphicMapType_8310) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8310 T@PolymorphicMapType_8310) Bool)
(declare-fun state (T@PolymorphicMapType_8310 T@PolymorphicMapType_8331) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8331) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8859)
(declare-fun |itemAt'| (T@PolymorphicMapType_8310 T@Ref Int) Int)
(declare-fun dummyFunction_1479 (Int) Bool)
(declare-fun |itemAt#triggerStateless| (T@Ref Int) Int)
(declare-fun valid (T@Ref) T@Field_12131_12132)
(declare-fun IsPredicateField_4384_4385 (T@Field_12131_12132) Bool)
(declare-fun |length'| (T@PolymorphicMapType_8310 T@Ref) Int)
(declare-fun |length#triggerStateless| (T@Ref) Int)
(declare-fun |valid#trigger_4384| (T@PolymorphicMapType_8310 T@Field_12131_12132) Bool)
(declare-fun |valid#everUsed_4384| (T@Field_12131_12132) Bool)
(declare-fun itemAt (T@PolymorphicMapType_8310 T@Ref Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun length_1 (T@PolymorphicMapType_8310 T@Ref) Int)
(declare-fun null () T@Ref)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8310 T@PolymorphicMapType_8310 T@PolymorphicMapType_8331) Bool)
(declare-fun PredicateMaskField_4384 (T@Field_12131_12132) T@Field_14987_14992)
(declare-fun HasDirectPerm_4384_4385 (T@PolymorphicMapType_8331 T@Ref T@Field_12131_12132) Bool)
(declare-fun IsPredicateField_4317_29356 (T@Field_4317_4385) Bool)
(declare-fun PredicateMaskField_4317 (T@Field_4317_4385) T@Field_4317_14992)
(declare-fun HasDirectPerm_4317_4385 (T@PolymorphicMapType_8331 T@Ref T@Field_4317_4385) Bool)
(declare-fun IsWandField_4384_33026 (T@Field_12131_12132) Bool)
(declare-fun WandMaskField_4384 (T@Field_12131_12132) T@Field_14987_14992)
(declare-fun IsWandField_4317_32669 (T@Field_4317_4385) Bool)
(declare-fun WandMaskField_4317 (T@Field_4317_4385) T@Field_4317_14992)
(declare-fun |valid#sm| (T@Ref) T@Field_14987_14992)
(declare-fun dummyHeap () T@PolymorphicMapType_8310)
(declare-fun ZeroMask () T@PolymorphicMapType_8331)
(declare-fun InsidePredicate_8370_8370 (T@Field_4317_4385 T@FrameType T@Field_4317_4385 T@FrameType) Bool)
(declare-fun InsidePredicate_4384_4384 (T@Field_12131_12132 T@FrameType T@Field_12131_12132 T@FrameType) Bool)
(declare-fun IsPredicateField_4315_1189 (T@Field_11697_1189) Bool)
(declare-fun IsWandField_4315_1189 (T@Field_11697_1189) Bool)
(declare-fun IsPredicateField_4317_4318 (T@Field_8383_8384) Bool)
(declare-fun IsWandField_4317_4318 (T@Field_8383_8384) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4315_39929 (T@Field_4317_14992) Bool)
(declare-fun IsWandField_4315_39945 (T@Field_4317_14992) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4315_53 (T@Field_8370_53) Bool)
(declare-fun IsWandField_4315_53 (T@Field_8370_53) Bool)
(declare-fun IsPredicateField_4384_39126 (T@Field_14987_14992) Bool)
(declare-fun IsWandField_4384_39142 (T@Field_14987_14992) Bool)
(declare-fun IsPredicateField_4384_53 (T@Field_4384_53) Bool)
(declare-fun IsWandField_4384_53 (T@Field_4384_53) Bool)
(declare-fun IsPredicateField_4384_4318 (T@Field_4384_4318) Bool)
(declare-fun IsWandField_4384_4318 (T@Field_4384_4318) Bool)
(declare-fun IsPredicateField_4384_1189 (T@Field_4384_1189) Bool)
(declare-fun IsWandField_4384_1189 (T@Field_4384_1189) Bool)
(declare-fun HasDirectPerm_4384_29111 (T@PolymorphicMapType_8331 T@Ref T@Field_14987_14992) Bool)
(declare-fun HasDirectPerm_4384_53 (T@PolymorphicMapType_8331 T@Ref T@Field_4384_53) Bool)
(declare-fun HasDirectPerm_4384_1189 (T@PolymorphicMapType_8331 T@Ref T@Field_4384_1189) Bool)
(declare-fun HasDirectPerm_4384_4318 (T@PolymorphicMapType_8331 T@Ref T@Field_4384_4318) Bool)
(declare-fun HasDirectPerm_4317_27970 (T@PolymorphicMapType_8331 T@Ref T@Field_4317_14992) Bool)
(declare-fun HasDirectPerm_4317_53 (T@PolymorphicMapType_8331 T@Ref T@Field_8370_53) Bool)
(declare-fun HasDirectPerm_4315_1189 (T@PolymorphicMapType_8331 T@Ref T@Field_11697_1189) Bool)
(declare-fun HasDirectPerm_4317_4318 (T@PolymorphicMapType_8331 T@Ref T@Field_8383_8384) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8331 T@PolymorphicMapType_8331 T@PolymorphicMapType_8331) Bool)
(declare-fun |itemAt#frame| (T@FrameType T@Ref Int) Int)
(declare-fun |length#frame| (T@FrameType T@Ref) Int)
(declare-fun |length#trigger| (T@FrameType T@Ref) Bool)
(declare-fun getPredWandId_4384_4385 (T@Field_12131_12132) Int)
(declare-fun InsidePredicate_8370_4384 (T@Field_4317_4385 T@FrameType T@Field_12131_12132 T@FrameType) Bool)
(declare-fun InsidePredicate_4384_8370 (T@Field_12131_12132 T@FrameType T@Field_4317_4385 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_8310) (Heap1 T@PolymorphicMapType_8310) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8310) (Mask T@PolymorphicMapType_8331) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8310) (Heap1@@0 T@PolymorphicMapType_8310) (Heap2 T@PolymorphicMapType_8310) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_14987_14992) ) (!  (not (select (|PolymorphicMapType_8859_12131_31861#PolymorphicMapType_8859| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8859_12131_31861#PolymorphicMapType_8859| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12131_12132) ) (!  (not (select (|PolymorphicMapType_8859_12131_12132#PolymorphicMapType_8859| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8859_12131_12132#PolymorphicMapType_8859| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4384_53) ) (!  (not (select (|PolymorphicMapType_8859_12131_53#PolymorphicMapType_8859| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8859_12131_53#PolymorphicMapType_8859| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4384_4318) ) (!  (not (select (|PolymorphicMapType_8859_12131_4318#PolymorphicMapType_8859| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8859_12131_4318#PolymorphicMapType_8859| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4384_1189) ) (!  (not (select (|PolymorphicMapType_8859_12131_1189#PolymorphicMapType_8859| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8859_12131_1189#PolymorphicMapType_8859| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4317_14992) ) (!  (not (select (|PolymorphicMapType_8859_4315_30813#PolymorphicMapType_8859| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8859_4315_30813#PolymorphicMapType_8859| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4317_4385) ) (!  (not (select (|PolymorphicMapType_8859_4315_12132#PolymorphicMapType_8859| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8859_4315_12132#PolymorphicMapType_8859| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8370_53) ) (!  (not (select (|PolymorphicMapType_8859_4315_53#PolymorphicMapType_8859| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8859_4315_53#PolymorphicMapType_8859| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8383_8384) ) (!  (not (select (|PolymorphicMapType_8859_4317_4318#PolymorphicMapType_8859| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8859_4317_4318#PolymorphicMapType_8859| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11697_1189) ) (!  (not (select (|PolymorphicMapType_8859_4315_1189#PolymorphicMapType_8859| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8859_4315_1189#PolymorphicMapType_8859| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8310) (this T@Ref) (i Int) ) (! (dummyFunction_1479 (|itemAt#triggerStateless| this i))
 :qid |stdinbpl.345:15|
 :skolemid |29|
 :pattern ( (|itemAt'| Heap@@0 this i))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_4384_4385 (valid this@@0))
 :qid |stdinbpl.505:15|
 :skolemid |34|
 :pattern ( (valid this@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8310) (this@@1 T@Ref) ) (! (dummyFunction_1479 (|length#triggerStateless| this@@1))
 :qid |stdinbpl.202:15|
 :skolemid |23|
 :pattern ( (|length'| Heap@@1 this@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8310) (this@@2 T@Ref) ) (! (|valid#everUsed_4384| (valid this@@2))
 :qid |stdinbpl.524:15|
 :skolemid |38|
 :pattern ( (|valid#trigger_4384| Heap@@2 (valid this@@2)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8310) (Mask@@0 T@PolymorphicMapType_8331) (this@@3 T@Ref) (i@@0 Int) ) (!  (=> (and (state Heap@@3 Mask@@0) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 i@@0) (< i@@0 (length_1 Heap@@3 this@@3))) (= (itemAt Heap@@3 this@@3 i@@0) (ite  (or (= i@@0 0) (= (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@3) this@@3 next) null)) (select (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@3) this@@3 value_1) (|itemAt'| Heap@@3 (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@3) this@@3 next) (- i@@0 1))))))
 :qid |stdinbpl.351:15|
 :skolemid |30|
 :pattern ( (state Heap@@3 Mask@@0) (itemAt Heap@@3 this@@3 i@@0))
 :pattern ( (state Heap@@3 Mask@@0) (|itemAt#triggerStateless| this@@3 i@@0) (|valid#trigger_4384| Heap@@3 (valid this@@3)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8310) (this@@4 T@Ref) ) (!  (and (= (length_1 Heap@@4 this@@4) (|length'| Heap@@4 this@@4)) (dummyFunction_1479 (|length#triggerStateless| this@@4)))
 :qid |stdinbpl.198:15|
 :skolemid |22|
 :pattern ( (length_1 Heap@@4 this@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8310) (ExhaleHeap T@PolymorphicMapType_8310) (Mask@@1 T@PolymorphicMapType_8331) (pm_f_19 T@Field_12131_12132) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_4384_4385 Mask@@1 null pm_f_19) (IsPredicateField_4384_4385 pm_f_19)) (= (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@5) null (PredicateMaskField_4384 pm_f_19)) (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| ExhaleHeap) null (PredicateMaskField_4384 pm_f_19)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (IsPredicateField_4384_4385 pm_f_19) (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| ExhaleHeap) null (PredicateMaskField_4384 pm_f_19)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8310) (ExhaleHeap@@0 T@PolymorphicMapType_8310) (Mask@@2 T@PolymorphicMapType_8331) (pm_f_19@@0 T@Field_4317_4385) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_4317_4385 Mask@@2 null pm_f_19@@0) (IsPredicateField_4317_29356 pm_f_19@@0)) (= (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@6) null (PredicateMaskField_4317 pm_f_19@@0)) (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| ExhaleHeap@@0) null (PredicateMaskField_4317 pm_f_19@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (IsPredicateField_4317_29356 pm_f_19@@0) (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| ExhaleHeap@@0) null (PredicateMaskField_4317 pm_f_19@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8310) (ExhaleHeap@@1 T@PolymorphicMapType_8310) (Mask@@3 T@PolymorphicMapType_8331) (pm_f_19@@1 T@Field_12131_12132) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_4384_4385 Mask@@3 null pm_f_19@@1) (IsWandField_4384_33026 pm_f_19@@1)) (= (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@7) null (WandMaskField_4384 pm_f_19@@1)) (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| ExhaleHeap@@1) null (WandMaskField_4384 pm_f_19@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (IsWandField_4384_33026 pm_f_19@@1) (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| ExhaleHeap@@1) null (WandMaskField_4384 pm_f_19@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8310) (ExhaleHeap@@2 T@PolymorphicMapType_8310) (Mask@@4 T@PolymorphicMapType_8331) (pm_f_19@@2 T@Field_4317_4385) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_4317_4385 Mask@@4 null pm_f_19@@2) (IsWandField_4317_32669 pm_f_19@@2)) (= (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@8) null (WandMaskField_4317 pm_f_19@@2)) (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| ExhaleHeap@@2) null (WandMaskField_4317 pm_f_19@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (IsWandField_4317_32669 pm_f_19@@2) (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| ExhaleHeap@@2) null (WandMaskField_4317 pm_f_19@@2)))
)))
(assert (forall ((this@@5 T@Ref) (this2 T@Ref) ) (!  (=> (= (valid this@@5) (valid this2)) (= this@@5 this2))
 :qid |stdinbpl.515:15|
 :skolemid |36|
 :pattern ( (valid this@@5) (valid this2))
)))
(assert (forall ((this@@6 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|valid#sm| this@@6) (|valid#sm| this2@@0)) (= this@@6 this2@@0))
 :qid |stdinbpl.519:15|
 :skolemid |37|
 :pattern ( (|valid#sm| this@@6) (|valid#sm| this2@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8310) (ExhaleHeap@@3 T@PolymorphicMapType_8310) (Mask@@5 T@PolymorphicMapType_8331) (pm_f_19@@3 T@Field_12131_12132) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_4384_4385 Mask@@5 null pm_f_19@@3) (IsPredicateField_4384_4385 pm_f_19@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_19 T@Ref) (f_19 T@Field_11697_1189) ) (!  (=> (select (|PolymorphicMapType_8859_4315_1189#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@9) null (PredicateMaskField_4384 pm_f_19@@3))) o2_19 f_19) (= (select (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@9) o2_19 f_19) (select (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19 f_19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19 f_19))
)) (forall ((o2_19@@0 T@Ref) (f_19@@0 T@Field_8383_8384) ) (!  (=> (select (|PolymorphicMapType_8859_4317_4318#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@9) null (PredicateMaskField_4384 pm_f_19@@3))) o2_19@@0 f_19@@0) (= (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@9) o2_19@@0 f_19@@0) (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19@@0 f_19@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19@@0 f_19@@0))
))) (forall ((o2_19@@1 T@Ref) (f_19@@1 T@Field_8370_53) ) (!  (=> (select (|PolymorphicMapType_8859_4315_53#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@9) null (PredicateMaskField_4384 pm_f_19@@3))) o2_19@@1 f_19@@1) (= (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@9) o2_19@@1 f_19@@1) (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19@@1 f_19@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19@@1 f_19@@1))
))) (forall ((o2_19@@2 T@Ref) (f_19@@2 T@Field_4317_4385) ) (!  (=> (select (|PolymorphicMapType_8859_4315_12132#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@9) null (PredicateMaskField_4384 pm_f_19@@3))) o2_19@@2 f_19@@2) (= (select (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@9) o2_19@@2 f_19@@2) (select (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19@@2 f_19@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19@@2 f_19@@2))
))) (forall ((o2_19@@3 T@Ref) (f_19@@3 T@Field_4317_14992) ) (!  (=> (select (|PolymorphicMapType_8859_4315_30813#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@9) null (PredicateMaskField_4384 pm_f_19@@3))) o2_19@@3 f_19@@3) (= (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@9) o2_19@@3 f_19@@3) (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19@@3 f_19@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19@@3 f_19@@3))
))) (forall ((o2_19@@4 T@Ref) (f_19@@4 T@Field_4384_1189) ) (!  (=> (select (|PolymorphicMapType_8859_12131_1189#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@9) null (PredicateMaskField_4384 pm_f_19@@3))) o2_19@@4 f_19@@4) (= (select (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@9) o2_19@@4 f_19@@4) (select (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19@@4 f_19@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19@@4 f_19@@4))
))) (forall ((o2_19@@5 T@Ref) (f_19@@5 T@Field_4384_4318) ) (!  (=> (select (|PolymorphicMapType_8859_12131_4318#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@9) null (PredicateMaskField_4384 pm_f_19@@3))) o2_19@@5 f_19@@5) (= (select (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@9) o2_19@@5 f_19@@5) (select (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19@@5 f_19@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19@@5 f_19@@5))
))) (forall ((o2_19@@6 T@Ref) (f_19@@6 T@Field_4384_53) ) (!  (=> (select (|PolymorphicMapType_8859_12131_53#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@9) null (PredicateMaskField_4384 pm_f_19@@3))) o2_19@@6 f_19@@6) (= (select (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@9) o2_19@@6 f_19@@6) (select (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19@@6 f_19@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19@@6 f_19@@6))
))) (forall ((o2_19@@7 T@Ref) (f_19@@7 T@Field_12131_12132) ) (!  (=> (select (|PolymorphicMapType_8859_12131_12132#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@9) null (PredicateMaskField_4384 pm_f_19@@3))) o2_19@@7 f_19@@7) (= (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@9) o2_19@@7 f_19@@7) (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19@@7 f_19@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19@@7 f_19@@7))
))) (forall ((o2_19@@8 T@Ref) (f_19@@8 T@Field_14987_14992) ) (!  (=> (select (|PolymorphicMapType_8859_12131_31861#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@9) null (PredicateMaskField_4384 pm_f_19@@3))) o2_19@@8 f_19@@8) (= (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@9) o2_19@@8 f_19@@8) (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19@@8 f_19@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| ExhaleHeap@@3) o2_19@@8 f_19@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (IsPredicateField_4384_4385 pm_f_19@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8310) (ExhaleHeap@@4 T@PolymorphicMapType_8310) (Mask@@6 T@PolymorphicMapType_8331) (pm_f_19@@4 T@Field_4317_4385) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_4317_4385 Mask@@6 null pm_f_19@@4) (IsPredicateField_4317_29356 pm_f_19@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_19@@9 T@Ref) (f_19@@9 T@Field_11697_1189) ) (!  (=> (select (|PolymorphicMapType_8859_4315_1189#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@10) null (PredicateMaskField_4317 pm_f_19@@4))) o2_19@@9 f_19@@9) (= (select (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@10) o2_19@@9 f_19@@9) (select (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@9 f_19@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@9 f_19@@9))
)) (forall ((o2_19@@10 T@Ref) (f_19@@10 T@Field_8383_8384) ) (!  (=> (select (|PolymorphicMapType_8859_4317_4318#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@10) null (PredicateMaskField_4317 pm_f_19@@4))) o2_19@@10 f_19@@10) (= (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@10) o2_19@@10 f_19@@10) (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@10 f_19@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@10 f_19@@10))
))) (forall ((o2_19@@11 T@Ref) (f_19@@11 T@Field_8370_53) ) (!  (=> (select (|PolymorphicMapType_8859_4315_53#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@10) null (PredicateMaskField_4317 pm_f_19@@4))) o2_19@@11 f_19@@11) (= (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@10) o2_19@@11 f_19@@11) (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@11 f_19@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@11 f_19@@11))
))) (forall ((o2_19@@12 T@Ref) (f_19@@12 T@Field_4317_4385) ) (!  (=> (select (|PolymorphicMapType_8859_4315_12132#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@10) null (PredicateMaskField_4317 pm_f_19@@4))) o2_19@@12 f_19@@12) (= (select (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@10) o2_19@@12 f_19@@12) (select (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@12 f_19@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@12 f_19@@12))
))) (forall ((o2_19@@13 T@Ref) (f_19@@13 T@Field_4317_14992) ) (!  (=> (select (|PolymorphicMapType_8859_4315_30813#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@10) null (PredicateMaskField_4317 pm_f_19@@4))) o2_19@@13 f_19@@13) (= (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@10) o2_19@@13 f_19@@13) (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@13 f_19@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@13 f_19@@13))
))) (forall ((o2_19@@14 T@Ref) (f_19@@14 T@Field_4384_1189) ) (!  (=> (select (|PolymorphicMapType_8859_12131_1189#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@10) null (PredicateMaskField_4317 pm_f_19@@4))) o2_19@@14 f_19@@14) (= (select (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@10) o2_19@@14 f_19@@14) (select (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@14 f_19@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@14 f_19@@14))
))) (forall ((o2_19@@15 T@Ref) (f_19@@15 T@Field_4384_4318) ) (!  (=> (select (|PolymorphicMapType_8859_12131_4318#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@10) null (PredicateMaskField_4317 pm_f_19@@4))) o2_19@@15 f_19@@15) (= (select (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@10) o2_19@@15 f_19@@15) (select (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@15 f_19@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@15 f_19@@15))
))) (forall ((o2_19@@16 T@Ref) (f_19@@16 T@Field_4384_53) ) (!  (=> (select (|PolymorphicMapType_8859_12131_53#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@10) null (PredicateMaskField_4317 pm_f_19@@4))) o2_19@@16 f_19@@16) (= (select (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@10) o2_19@@16 f_19@@16) (select (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@16 f_19@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@16 f_19@@16))
))) (forall ((o2_19@@17 T@Ref) (f_19@@17 T@Field_12131_12132) ) (!  (=> (select (|PolymorphicMapType_8859_12131_12132#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@10) null (PredicateMaskField_4317 pm_f_19@@4))) o2_19@@17 f_19@@17) (= (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@10) o2_19@@17 f_19@@17) (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@17 f_19@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@17 f_19@@17))
))) (forall ((o2_19@@18 T@Ref) (f_19@@18 T@Field_14987_14992) ) (!  (=> (select (|PolymorphicMapType_8859_12131_31861#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@10) null (PredicateMaskField_4317 pm_f_19@@4))) o2_19@@18 f_19@@18) (= (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@10) o2_19@@18 f_19@@18) (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@18 f_19@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| ExhaleHeap@@4) o2_19@@18 f_19@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (IsPredicateField_4317_29356 pm_f_19@@4))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8310) (ExhaleHeap@@5 T@PolymorphicMapType_8310) (Mask@@7 T@PolymorphicMapType_8331) (pm_f_19@@5 T@Field_12131_12132) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_4384_4385 Mask@@7 null pm_f_19@@5) (IsWandField_4384_33026 pm_f_19@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_19@@19 T@Ref) (f_19@@19 T@Field_11697_1189) ) (!  (=> (select (|PolymorphicMapType_8859_4315_1189#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@11) null (WandMaskField_4384 pm_f_19@@5))) o2_19@@19 f_19@@19) (= (select (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@11) o2_19@@19 f_19@@19) (select (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@19 f_19@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@19 f_19@@19))
)) (forall ((o2_19@@20 T@Ref) (f_19@@20 T@Field_8383_8384) ) (!  (=> (select (|PolymorphicMapType_8859_4317_4318#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@11) null (WandMaskField_4384 pm_f_19@@5))) o2_19@@20 f_19@@20) (= (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@11) o2_19@@20 f_19@@20) (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@20 f_19@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@20 f_19@@20))
))) (forall ((o2_19@@21 T@Ref) (f_19@@21 T@Field_8370_53) ) (!  (=> (select (|PolymorphicMapType_8859_4315_53#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@11) null (WandMaskField_4384 pm_f_19@@5))) o2_19@@21 f_19@@21) (= (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@11) o2_19@@21 f_19@@21) (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@21 f_19@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@21 f_19@@21))
))) (forall ((o2_19@@22 T@Ref) (f_19@@22 T@Field_4317_4385) ) (!  (=> (select (|PolymorphicMapType_8859_4315_12132#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@11) null (WandMaskField_4384 pm_f_19@@5))) o2_19@@22 f_19@@22) (= (select (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@11) o2_19@@22 f_19@@22) (select (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@22 f_19@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@22 f_19@@22))
))) (forall ((o2_19@@23 T@Ref) (f_19@@23 T@Field_4317_14992) ) (!  (=> (select (|PolymorphicMapType_8859_4315_30813#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@11) null (WandMaskField_4384 pm_f_19@@5))) o2_19@@23 f_19@@23) (= (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@11) o2_19@@23 f_19@@23) (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@23 f_19@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@23 f_19@@23))
))) (forall ((o2_19@@24 T@Ref) (f_19@@24 T@Field_4384_1189) ) (!  (=> (select (|PolymorphicMapType_8859_12131_1189#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@11) null (WandMaskField_4384 pm_f_19@@5))) o2_19@@24 f_19@@24) (= (select (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@11) o2_19@@24 f_19@@24) (select (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@24 f_19@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@24 f_19@@24))
))) (forall ((o2_19@@25 T@Ref) (f_19@@25 T@Field_4384_4318) ) (!  (=> (select (|PolymorphicMapType_8859_12131_4318#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@11) null (WandMaskField_4384 pm_f_19@@5))) o2_19@@25 f_19@@25) (= (select (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@11) o2_19@@25 f_19@@25) (select (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@25 f_19@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@25 f_19@@25))
))) (forall ((o2_19@@26 T@Ref) (f_19@@26 T@Field_4384_53) ) (!  (=> (select (|PolymorphicMapType_8859_12131_53#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@11) null (WandMaskField_4384 pm_f_19@@5))) o2_19@@26 f_19@@26) (= (select (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@11) o2_19@@26 f_19@@26) (select (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@26 f_19@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@26 f_19@@26))
))) (forall ((o2_19@@27 T@Ref) (f_19@@27 T@Field_12131_12132) ) (!  (=> (select (|PolymorphicMapType_8859_12131_12132#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@11) null (WandMaskField_4384 pm_f_19@@5))) o2_19@@27 f_19@@27) (= (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@11) o2_19@@27 f_19@@27) (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@27 f_19@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@27 f_19@@27))
))) (forall ((o2_19@@28 T@Ref) (f_19@@28 T@Field_14987_14992) ) (!  (=> (select (|PolymorphicMapType_8859_12131_31861#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@11) null (WandMaskField_4384 pm_f_19@@5))) o2_19@@28 f_19@@28) (= (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@11) o2_19@@28 f_19@@28) (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@28 f_19@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| ExhaleHeap@@5) o2_19@@28 f_19@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (IsWandField_4384_33026 pm_f_19@@5))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8310) (ExhaleHeap@@6 T@PolymorphicMapType_8310) (Mask@@8 T@PolymorphicMapType_8331) (pm_f_19@@6 T@Field_4317_4385) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_4317_4385 Mask@@8 null pm_f_19@@6) (IsWandField_4317_32669 pm_f_19@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_19@@29 T@Ref) (f_19@@29 T@Field_11697_1189) ) (!  (=> (select (|PolymorphicMapType_8859_4315_1189#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@12) null (WandMaskField_4317 pm_f_19@@6))) o2_19@@29 f_19@@29) (= (select (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@12) o2_19@@29 f_19@@29) (select (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@29 f_19@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@29 f_19@@29))
)) (forall ((o2_19@@30 T@Ref) (f_19@@30 T@Field_8383_8384) ) (!  (=> (select (|PolymorphicMapType_8859_4317_4318#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@12) null (WandMaskField_4317 pm_f_19@@6))) o2_19@@30 f_19@@30) (= (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@12) o2_19@@30 f_19@@30) (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@30 f_19@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@30 f_19@@30))
))) (forall ((o2_19@@31 T@Ref) (f_19@@31 T@Field_8370_53) ) (!  (=> (select (|PolymorphicMapType_8859_4315_53#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@12) null (WandMaskField_4317 pm_f_19@@6))) o2_19@@31 f_19@@31) (= (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@12) o2_19@@31 f_19@@31) (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@31 f_19@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@31 f_19@@31))
))) (forall ((o2_19@@32 T@Ref) (f_19@@32 T@Field_4317_4385) ) (!  (=> (select (|PolymorphicMapType_8859_4315_12132#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@12) null (WandMaskField_4317 pm_f_19@@6))) o2_19@@32 f_19@@32) (= (select (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@12) o2_19@@32 f_19@@32) (select (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@32 f_19@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@32 f_19@@32))
))) (forall ((o2_19@@33 T@Ref) (f_19@@33 T@Field_4317_14992) ) (!  (=> (select (|PolymorphicMapType_8859_4315_30813#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@12) null (WandMaskField_4317 pm_f_19@@6))) o2_19@@33 f_19@@33) (= (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@12) o2_19@@33 f_19@@33) (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@33 f_19@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@33 f_19@@33))
))) (forall ((o2_19@@34 T@Ref) (f_19@@34 T@Field_4384_1189) ) (!  (=> (select (|PolymorphicMapType_8859_12131_1189#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@12) null (WandMaskField_4317 pm_f_19@@6))) o2_19@@34 f_19@@34) (= (select (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@12) o2_19@@34 f_19@@34) (select (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@34 f_19@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@34 f_19@@34))
))) (forall ((o2_19@@35 T@Ref) (f_19@@35 T@Field_4384_4318) ) (!  (=> (select (|PolymorphicMapType_8859_12131_4318#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@12) null (WandMaskField_4317 pm_f_19@@6))) o2_19@@35 f_19@@35) (= (select (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@12) o2_19@@35 f_19@@35) (select (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@35 f_19@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@35 f_19@@35))
))) (forall ((o2_19@@36 T@Ref) (f_19@@36 T@Field_4384_53) ) (!  (=> (select (|PolymorphicMapType_8859_12131_53#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@12) null (WandMaskField_4317 pm_f_19@@6))) o2_19@@36 f_19@@36) (= (select (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@12) o2_19@@36 f_19@@36) (select (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@36 f_19@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@36 f_19@@36))
))) (forall ((o2_19@@37 T@Ref) (f_19@@37 T@Field_12131_12132) ) (!  (=> (select (|PolymorphicMapType_8859_12131_12132#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@12) null (WandMaskField_4317 pm_f_19@@6))) o2_19@@37 f_19@@37) (= (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@12) o2_19@@37 f_19@@37) (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@37 f_19@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@37 f_19@@37))
))) (forall ((o2_19@@38 T@Ref) (f_19@@38 T@Field_14987_14992) ) (!  (=> (select (|PolymorphicMapType_8859_12131_31861#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@12) null (WandMaskField_4317 pm_f_19@@6))) o2_19@@38 f_19@@38) (= (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@12) o2_19@@38 f_19@@38) (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@38 f_19@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| ExhaleHeap@@6) o2_19@@38 f_19@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (IsWandField_4317_32669 pm_f_19@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8310) (ExhaleHeap@@7 T@PolymorphicMapType_8310) (Mask@@9 T@PolymorphicMapType_8331) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@13) o_12 $allocated) (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| ExhaleHeap@@7) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| ExhaleHeap@@7) o_12 $allocated))
)))
(assert (forall ((p T@Field_4317_4385) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8370_8370 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8370_8370 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_12131_12132) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4384_4384 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4384_4384 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4315_1189 value_1)))
(assert  (not (IsWandField_4315_1189 value_1)))
(assert  (not (IsPredicateField_4317_4318 next)))
(assert  (not (IsWandField_4317_4318 next)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8310) (ExhaleHeap@@8 T@PolymorphicMapType_8310) (Mask@@10 T@PolymorphicMapType_8331) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@14 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8331) (o_2@@9 T@Ref) (f_4@@9 T@Field_4317_14992) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8331_4315_37651#PolymorphicMapType_8331| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4315_39929 f_4@@9))) (not (IsWandField_4315_39945 f_4@@9))) (<= (select (|PolymorphicMapType_8331_4315_37651#PolymorphicMapType_8331| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8331_4315_37651#PolymorphicMapType_8331| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8331) (o_2@@10 T@Ref) (f_4@@10 T@Field_8370_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8331_4315_53#PolymorphicMapType_8331| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4315_53 f_4@@10))) (not (IsWandField_4315_53 f_4@@10))) (<= (select (|PolymorphicMapType_8331_4315_53#PolymorphicMapType_8331| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8331_4315_53#PolymorphicMapType_8331| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8331) (o_2@@11 T@Ref) (f_4@@11 T@Field_8383_8384) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8331_4317_4318#PolymorphicMapType_8331| Mask@@13) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4317_4318 f_4@@11))) (not (IsWandField_4317_4318 f_4@@11))) (<= (select (|PolymorphicMapType_8331_4317_4318#PolymorphicMapType_8331| Mask@@13) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8331_4317_4318#PolymorphicMapType_8331| Mask@@13) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8331) (o_2@@12 T@Ref) (f_4@@12 T@Field_11697_1189) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8331_4315_1189#PolymorphicMapType_8331| Mask@@14) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4315_1189 f_4@@12))) (not (IsWandField_4315_1189 f_4@@12))) (<= (select (|PolymorphicMapType_8331_4315_1189#PolymorphicMapType_8331| Mask@@14) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8331_4315_1189#PolymorphicMapType_8331| Mask@@14) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8331) (o_2@@13 T@Ref) (f_4@@13 T@Field_4317_4385) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8331_4315_4385#PolymorphicMapType_8331| Mask@@15) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4317_29356 f_4@@13))) (not (IsWandField_4317_32669 f_4@@13))) (<= (select (|PolymorphicMapType_8331_4315_4385#PolymorphicMapType_8331| Mask@@15) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8331_4315_4385#PolymorphicMapType_8331| Mask@@15) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8331) (o_2@@14 T@Ref) (f_4@@14 T@Field_14987_14992) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8331_4384_37252#PolymorphicMapType_8331| Mask@@16) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4384_39126 f_4@@14))) (not (IsWandField_4384_39142 f_4@@14))) (<= (select (|PolymorphicMapType_8331_4384_37252#PolymorphicMapType_8331| Mask@@16) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8331_4384_37252#PolymorphicMapType_8331| Mask@@16) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8331) (o_2@@15 T@Ref) (f_4@@15 T@Field_4384_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8331_4384_53#PolymorphicMapType_8331| Mask@@17) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4384_53 f_4@@15))) (not (IsWandField_4384_53 f_4@@15))) (<= (select (|PolymorphicMapType_8331_4384_53#PolymorphicMapType_8331| Mask@@17) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8331_4384_53#PolymorphicMapType_8331| Mask@@17) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8331) (o_2@@16 T@Ref) (f_4@@16 T@Field_4384_4318) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8331_4384_4318#PolymorphicMapType_8331| Mask@@18) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4384_4318 f_4@@16))) (not (IsWandField_4384_4318 f_4@@16))) (<= (select (|PolymorphicMapType_8331_4384_4318#PolymorphicMapType_8331| Mask@@18) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8331_4384_4318#PolymorphicMapType_8331| Mask@@18) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8331) (o_2@@17 T@Ref) (f_4@@17 T@Field_4384_1189) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8331_4384_1189#PolymorphicMapType_8331| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4384_1189 f_4@@17))) (not (IsWandField_4384_1189 f_4@@17))) (<= (select (|PolymorphicMapType_8331_4384_1189#PolymorphicMapType_8331| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8331_4384_1189#PolymorphicMapType_8331| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8331) (o_2@@18 T@Ref) (f_4@@18 T@Field_12131_12132) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_4384_4385 f_4@@18))) (not (IsWandField_4384_33026 f_4@@18))) (<= (select (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8331) (o_2@@19 T@Ref) (f_4@@19 T@Field_14987_14992) ) (! (= (HasDirectPerm_4384_29111 Mask@@21 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_8331_4384_37252#PolymorphicMapType_8331| Mask@@21) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4384_29111 Mask@@21 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8331) (o_2@@20 T@Ref) (f_4@@20 T@Field_4384_53) ) (! (= (HasDirectPerm_4384_53 Mask@@22 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_8331_4384_53#PolymorphicMapType_8331| Mask@@22) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4384_53 Mask@@22 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8331) (o_2@@21 T@Ref) (f_4@@21 T@Field_12131_12132) ) (! (= (HasDirectPerm_4384_4385 Mask@@23 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| Mask@@23) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4384_4385 Mask@@23 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8331) (o_2@@22 T@Ref) (f_4@@22 T@Field_4384_1189) ) (! (= (HasDirectPerm_4384_1189 Mask@@24 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_8331_4384_1189#PolymorphicMapType_8331| Mask@@24) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4384_1189 Mask@@24 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8331) (o_2@@23 T@Ref) (f_4@@23 T@Field_4384_4318) ) (! (= (HasDirectPerm_4384_4318 Mask@@25 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_8331_4384_4318#PolymorphicMapType_8331| Mask@@25) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4384_4318 Mask@@25 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8331) (o_2@@24 T@Ref) (f_4@@24 T@Field_4317_14992) ) (! (= (HasDirectPerm_4317_27970 Mask@@26 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_8331_4315_37651#PolymorphicMapType_8331| Mask@@26) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4317_27970 Mask@@26 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8331) (o_2@@25 T@Ref) (f_4@@25 T@Field_8370_53) ) (! (= (HasDirectPerm_4317_53 Mask@@27 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_8331_4315_53#PolymorphicMapType_8331| Mask@@27) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4317_53 Mask@@27 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8331) (o_2@@26 T@Ref) (f_4@@26 T@Field_4317_4385) ) (! (= (HasDirectPerm_4317_4385 Mask@@28 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_8331_4315_4385#PolymorphicMapType_8331| Mask@@28) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4317_4385 Mask@@28 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8331) (o_2@@27 T@Ref) (f_4@@27 T@Field_11697_1189) ) (! (= (HasDirectPerm_4315_1189 Mask@@29 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_8331_4315_1189#PolymorphicMapType_8331| Mask@@29) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4315_1189 Mask@@29 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_8331) (o_2@@28 T@Ref) (f_4@@28 T@Field_8383_8384) ) (! (= (HasDirectPerm_4317_4318 Mask@@30 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_8331_4317_4318#PolymorphicMapType_8331| Mask@@30) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4317_4318 Mask@@30 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8310) (ExhaleHeap@@9 T@PolymorphicMapType_8310) (Mask@@31 T@PolymorphicMapType_8331) (o_12@@0 T@Ref) (f_19@@39 T@Field_14987_14992) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_4384_29111 Mask@@31 o_12@@0 f_19@@39) (= (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@15) o_12@@0 f_19@@39) (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| ExhaleHeap@@9) o_12@@0 f_19@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| ExhaleHeap@@9) o_12@@0 f_19@@39))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8310) (ExhaleHeap@@10 T@PolymorphicMapType_8310) (Mask@@32 T@PolymorphicMapType_8331) (o_12@@1 T@Ref) (f_19@@40 T@Field_4384_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_4384_53 Mask@@32 o_12@@1 f_19@@40) (= (select (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@16) o_12@@1 f_19@@40) (select (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| ExhaleHeap@@10) o_12@@1 f_19@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| ExhaleHeap@@10) o_12@@1 f_19@@40))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8310) (ExhaleHeap@@11 T@PolymorphicMapType_8310) (Mask@@33 T@PolymorphicMapType_8331) (o_12@@2 T@Ref) (f_19@@41 T@Field_12131_12132) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_4384_4385 Mask@@33 o_12@@2 f_19@@41) (= (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@17) o_12@@2 f_19@@41) (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| ExhaleHeap@@11) o_12@@2 f_19@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| ExhaleHeap@@11) o_12@@2 f_19@@41))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8310) (ExhaleHeap@@12 T@PolymorphicMapType_8310) (Mask@@34 T@PolymorphicMapType_8331) (o_12@@3 T@Ref) (f_19@@42 T@Field_4384_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_4384_1189 Mask@@34 o_12@@3 f_19@@42) (= (select (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@18) o_12@@3 f_19@@42) (select (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| ExhaleHeap@@12) o_12@@3 f_19@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| ExhaleHeap@@12) o_12@@3 f_19@@42))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8310) (ExhaleHeap@@13 T@PolymorphicMapType_8310) (Mask@@35 T@PolymorphicMapType_8331) (o_12@@4 T@Ref) (f_19@@43 T@Field_4384_4318) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_4384_4318 Mask@@35 o_12@@4 f_19@@43) (= (select (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@19) o_12@@4 f_19@@43) (select (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| ExhaleHeap@@13) o_12@@4 f_19@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| ExhaleHeap@@13) o_12@@4 f_19@@43))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8310) (ExhaleHeap@@14 T@PolymorphicMapType_8310) (Mask@@36 T@PolymorphicMapType_8331) (o_12@@5 T@Ref) (f_19@@44 T@Field_4317_14992) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_4317_27970 Mask@@36 o_12@@5 f_19@@44) (= (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@20) o_12@@5 f_19@@44) (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| ExhaleHeap@@14) o_12@@5 f_19@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| ExhaleHeap@@14) o_12@@5 f_19@@44))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8310) (ExhaleHeap@@15 T@PolymorphicMapType_8310) (Mask@@37 T@PolymorphicMapType_8331) (o_12@@6 T@Ref) (f_19@@45 T@Field_8370_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_4317_53 Mask@@37 o_12@@6 f_19@@45) (= (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@21) o_12@@6 f_19@@45) (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| ExhaleHeap@@15) o_12@@6 f_19@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| ExhaleHeap@@15) o_12@@6 f_19@@45))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8310) (ExhaleHeap@@16 T@PolymorphicMapType_8310) (Mask@@38 T@PolymorphicMapType_8331) (o_12@@7 T@Ref) (f_19@@46 T@Field_4317_4385) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_4317_4385 Mask@@38 o_12@@7 f_19@@46) (= (select (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@22) o_12@@7 f_19@@46) (select (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| ExhaleHeap@@16) o_12@@7 f_19@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| ExhaleHeap@@16) o_12@@7 f_19@@46))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8310) (ExhaleHeap@@17 T@PolymorphicMapType_8310) (Mask@@39 T@PolymorphicMapType_8331) (o_12@@8 T@Ref) (f_19@@47 T@Field_11697_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_4315_1189 Mask@@39 o_12@@8 f_19@@47) (= (select (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@23) o_12@@8 f_19@@47) (select (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| ExhaleHeap@@17) o_12@@8 f_19@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| ExhaleHeap@@17) o_12@@8 f_19@@47))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8310) (ExhaleHeap@@18 T@PolymorphicMapType_8310) (Mask@@40 T@PolymorphicMapType_8331) (o_12@@9 T@Ref) (f_19@@48 T@Field_8383_8384) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_4317_4318 Mask@@40 o_12@@9 f_19@@48) (= (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@24) o_12@@9 f_19@@48) (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| ExhaleHeap@@18) o_12@@9 f_19@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| ExhaleHeap@@18) o_12@@9 f_19@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_4317_14992) ) (! (= (select (|PolymorphicMapType_8331_4315_37651#PolymorphicMapType_8331| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8331_4315_37651#PolymorphicMapType_8331| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_8370_53) ) (! (= (select (|PolymorphicMapType_8331_4315_53#PolymorphicMapType_8331| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8331_4315_53#PolymorphicMapType_8331| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_8383_8384) ) (! (= (select (|PolymorphicMapType_8331_4317_4318#PolymorphicMapType_8331| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8331_4317_4318#PolymorphicMapType_8331| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_11697_1189) ) (! (= (select (|PolymorphicMapType_8331_4315_1189#PolymorphicMapType_8331| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8331_4315_1189#PolymorphicMapType_8331| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_4317_4385) ) (! (= (select (|PolymorphicMapType_8331_4315_4385#PolymorphicMapType_8331| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8331_4315_4385#PolymorphicMapType_8331| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_14987_14992) ) (! (= (select (|PolymorphicMapType_8331_4384_37252#PolymorphicMapType_8331| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8331_4384_37252#PolymorphicMapType_8331| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_4384_53) ) (! (= (select (|PolymorphicMapType_8331_4384_53#PolymorphicMapType_8331| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8331_4384_53#PolymorphicMapType_8331| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_4384_4318) ) (! (= (select (|PolymorphicMapType_8331_4384_4318#PolymorphicMapType_8331| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8331_4384_4318#PolymorphicMapType_8331| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_4384_1189) ) (! (= (select (|PolymorphicMapType_8331_4384_1189#PolymorphicMapType_8331| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8331_4384_1189#PolymorphicMapType_8331| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_12131_12132) ) (! (= (select (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8310) (this@@7 T@Ref) (i@@1 Int) ) (!  (and (= (itemAt Heap@@25 this@@7 i@@1) (|itemAt'| Heap@@25 this@@7 i@@1)) (dummyFunction_1479 (|itemAt#triggerStateless| this@@7 i@@1)))
 :qid |stdinbpl.341:15|
 :skolemid |28|
 :pattern ( (itemAt Heap@@25 this@@7 i@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8331) (SummandMask1 T@PolymorphicMapType_8331) (SummandMask2 T@PolymorphicMapType_8331) (o_2@@39 T@Ref) (f_4@@39 T@Field_4317_14992) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8331_4315_37651#PolymorphicMapType_8331| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_8331_4315_37651#PolymorphicMapType_8331| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_8331_4315_37651#PolymorphicMapType_8331| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8331_4315_37651#PolymorphicMapType_8331| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8331_4315_37651#PolymorphicMapType_8331| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8331_4315_37651#PolymorphicMapType_8331| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8331) (SummandMask1@@0 T@PolymorphicMapType_8331) (SummandMask2@@0 T@PolymorphicMapType_8331) (o_2@@40 T@Ref) (f_4@@40 T@Field_8370_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8331_4315_53#PolymorphicMapType_8331| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_8331_4315_53#PolymorphicMapType_8331| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_8331_4315_53#PolymorphicMapType_8331| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8331_4315_53#PolymorphicMapType_8331| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8331_4315_53#PolymorphicMapType_8331| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8331_4315_53#PolymorphicMapType_8331| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8331) (SummandMask1@@1 T@PolymorphicMapType_8331) (SummandMask2@@1 T@PolymorphicMapType_8331) (o_2@@41 T@Ref) (f_4@@41 T@Field_8383_8384) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8331_4317_4318#PolymorphicMapType_8331| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_8331_4317_4318#PolymorphicMapType_8331| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_8331_4317_4318#PolymorphicMapType_8331| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8331_4317_4318#PolymorphicMapType_8331| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8331_4317_4318#PolymorphicMapType_8331| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8331_4317_4318#PolymorphicMapType_8331| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8331) (SummandMask1@@2 T@PolymorphicMapType_8331) (SummandMask2@@2 T@PolymorphicMapType_8331) (o_2@@42 T@Ref) (f_4@@42 T@Field_11697_1189) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8331_4315_1189#PolymorphicMapType_8331| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_8331_4315_1189#PolymorphicMapType_8331| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_8331_4315_1189#PolymorphicMapType_8331| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8331_4315_1189#PolymorphicMapType_8331| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8331_4315_1189#PolymorphicMapType_8331| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8331_4315_1189#PolymorphicMapType_8331| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8331) (SummandMask1@@3 T@PolymorphicMapType_8331) (SummandMask2@@3 T@PolymorphicMapType_8331) (o_2@@43 T@Ref) (f_4@@43 T@Field_4317_4385) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8331_4315_4385#PolymorphicMapType_8331| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_8331_4315_4385#PolymorphicMapType_8331| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_8331_4315_4385#PolymorphicMapType_8331| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8331_4315_4385#PolymorphicMapType_8331| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8331_4315_4385#PolymorphicMapType_8331| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8331_4315_4385#PolymorphicMapType_8331| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8331) (SummandMask1@@4 T@PolymorphicMapType_8331) (SummandMask2@@4 T@PolymorphicMapType_8331) (o_2@@44 T@Ref) (f_4@@44 T@Field_14987_14992) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8331_4384_37252#PolymorphicMapType_8331| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_8331_4384_37252#PolymorphicMapType_8331| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_8331_4384_37252#PolymorphicMapType_8331| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8331_4384_37252#PolymorphicMapType_8331| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8331_4384_37252#PolymorphicMapType_8331| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8331_4384_37252#PolymorphicMapType_8331| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8331) (SummandMask1@@5 T@PolymorphicMapType_8331) (SummandMask2@@5 T@PolymorphicMapType_8331) (o_2@@45 T@Ref) (f_4@@45 T@Field_4384_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8331_4384_53#PolymorphicMapType_8331| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_8331_4384_53#PolymorphicMapType_8331| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_8331_4384_53#PolymorphicMapType_8331| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8331_4384_53#PolymorphicMapType_8331| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8331_4384_53#PolymorphicMapType_8331| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8331_4384_53#PolymorphicMapType_8331| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8331) (SummandMask1@@6 T@PolymorphicMapType_8331) (SummandMask2@@6 T@PolymorphicMapType_8331) (o_2@@46 T@Ref) (f_4@@46 T@Field_4384_4318) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8331_4384_4318#PolymorphicMapType_8331| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_8331_4384_4318#PolymorphicMapType_8331| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_8331_4384_4318#PolymorphicMapType_8331| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8331_4384_4318#PolymorphicMapType_8331| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8331_4384_4318#PolymorphicMapType_8331| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8331_4384_4318#PolymorphicMapType_8331| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8331) (SummandMask1@@7 T@PolymorphicMapType_8331) (SummandMask2@@7 T@PolymorphicMapType_8331) (o_2@@47 T@Ref) (f_4@@47 T@Field_4384_1189) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8331_4384_1189#PolymorphicMapType_8331| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_8331_4384_1189#PolymorphicMapType_8331| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_8331_4384_1189#PolymorphicMapType_8331| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8331_4384_1189#PolymorphicMapType_8331| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8331_4384_1189#PolymorphicMapType_8331| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8331_4384_1189#PolymorphicMapType_8331| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8331) (SummandMask1@@8 T@PolymorphicMapType_8331) (SummandMask2@@8 T@PolymorphicMapType_8331) (o_2@@48 T@Ref) (f_4@@48 T@Field_12131_12132) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8310) (Mask@@41 T@PolymorphicMapType_8331) (this@@8 T@Ref) (i@@2 Int) ) (!  (=> (state Heap@@26 Mask@@41) (= (|itemAt'| Heap@@26 this@@8 i@@2) (|itemAt#frame| (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@26) null (valid this@@8)) this@@8 i@@2)))
 :qid |stdinbpl.358:15|
 :skolemid |31|
 :pattern ( (state Heap@@26 Mask@@41) (|itemAt'| Heap@@26 this@@8 i@@2))
 :pattern ( (state Heap@@26 Mask@@41) (|itemAt#triggerStateless| this@@8 i@@2) (|valid#trigger_4384| Heap@@26 (valid this@@8)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8310) (Mask@@42 T@PolymorphicMapType_8331) (this@@9 T@Ref) ) (!  (=> (and (state Heap@@27 Mask@@42) (< AssumeFunctionsAbove 1)) (= (length_1 Heap@@27 this@@9) (ite (= (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@27) this@@9 next) null) 1 (+ 1 (|length'| Heap@@27 (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@27) this@@9 next))))))
 :qid |stdinbpl.208:15|
 :skolemid |24|
 :pattern ( (state Heap@@27 Mask@@42) (length_1 Heap@@27 this@@9))
 :pattern ( (state Heap@@27 Mask@@42) (|length#triggerStateless| this@@9) (|valid#trigger_4384| Heap@@27 (valid this@@9)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8310) (Mask@@43 T@PolymorphicMapType_8331) (this@@10 T@Ref) ) (!  (=> (state Heap@@28 Mask@@43) (= (|length'| Heap@@28 this@@10) (|length#frame| (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@28) null (valid this@@10)) this@@10)))
 :qid |stdinbpl.215:15|
 :skolemid |25|
 :pattern ( (state Heap@@28 Mask@@43) (|length'| Heap@@28 this@@10))
 :pattern ( (state Heap@@28 Mask@@43) (|length#triggerStateless| this@@10) (|valid#trigger_4384| Heap@@28 (valid this@@10)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8310) (Mask@@44 T@PolymorphicMapType_8331) (this@@11 T@Ref) ) (!  (=> (and (state Heap@@29 Mask@@44) (or (< AssumeFunctionsAbove 1) (|length#trigger| (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@29) null (valid this@@11)) this@@11))) (> (|length'| Heap@@29 this@@11) 0))
 :qid |stdinbpl.221:15|
 :skolemid |26|
 :pattern ( (state Heap@@29 Mask@@44) (|length'| Heap@@29 this@@11))
)))
(assert (forall ((this@@12 T@Ref) ) (! (= (getPredWandId_4384_4385 (valid this@@12)) 0)
 :qid |stdinbpl.509:15|
 :skolemid |35|
 :pattern ( (valid this@@12))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8310) (o_1 T@Ref) (f_51 T@Field_14987_14992) (v T@PolymorphicMapType_8859) ) (! (succHeap Heap@@30 (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@30) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@30) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@30) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@30) (store (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@30) o_1 f_51 v) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@30) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@30) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@30) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@30) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@30) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@30) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@30) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@30) (store (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@30) o_1 f_51 v) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@30) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@30) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@30) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@30) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8310) (o_1@@0 T@Ref) (f_51@@0 T@Field_4384_1189) (v@@0 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@31) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@31) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@31) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@31) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@31) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@31) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@31) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@31) (store (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@31) o_1@@0 f_51@@0 v@@0) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@31) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@31) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@31) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@31) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@31) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@31) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@31) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@31) (store (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@31) o_1@@0 f_51@@0 v@@0) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8310) (o_1@@1 T@Ref) (f_51@@1 T@Field_12131_12132) (v@@1 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@32) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@32) (store (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@32) o_1@@1 f_51@@1 v@@1) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@32) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@32) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@32) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@32) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@32) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@32) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@32) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@32) (store (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@32) o_1@@1 f_51@@1 v@@1) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@32) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@32) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@32) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@32) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@32) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@32) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8310) (o_1@@2 T@Ref) (f_51@@2 T@Field_4384_4318) (v@@2 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@33) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@33) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@33) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@33) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@33) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@33) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@33) (store (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@33) o_1@@2 f_51@@2 v@@2) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@33) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@33) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@33) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@33) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@33) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@33) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@33) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@33) (store (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@33) o_1@@2 f_51@@2 v@@2) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@33) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_8310) (o_1@@3 T@Ref) (f_51@@3 T@Field_4384_53) (v@@3 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@34) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@34) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@34) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@34) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@34) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@34) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@34) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@34) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@34) (store (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@34) o_1@@3 f_51@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@34) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@34) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@34) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@34) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@34) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@34) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@34) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@34) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@34) (store (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@34) o_1@@3 f_51@@3 v@@3)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_8310) (o_1@@4 T@Ref) (f_51@@4 T@Field_4317_14992) (v@@4 T@PolymorphicMapType_8859) ) (! (succHeap Heap@@35 (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@35) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@35) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@35) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@35) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@35) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@35) (store (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@35) o_1@@4 f_51@@4 v@@4) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@35) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@35) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@35) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@35) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@35) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@35) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@35) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@35) (store (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@35) o_1@@4 f_51@@4 v@@4) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@35) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@35) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_8310) (o_1@@5 T@Ref) (f_51@@5 T@Field_11697_1189) (v@@5 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@36) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@36) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@36) (store (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@36) o_1@@5 f_51@@5 v@@5) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@36) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@36) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@36) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@36) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@36) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@36) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@36) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@36) (store (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@36) o_1@@5 f_51@@5 v@@5) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@36) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@36) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@36) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@36) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@36) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_8310) (o_1@@6 T@Ref) (f_51@@6 T@Field_4317_4385) (v@@6 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@37) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@37) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@37) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@37) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@37) (store (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@37) o_1@@6 f_51@@6 v@@6) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@37) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@37) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@37) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@37) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@37) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@37) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@37) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@37) (store (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@37) o_1@@6 f_51@@6 v@@6) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@37) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@37) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@37) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_8310) (o_1@@7 T@Ref) (f_51@@7 T@Field_8383_8384) (v@@7 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@38) (store (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@38) o_1@@7 f_51@@7 v@@7) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@38) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@38) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@38) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@38) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@38) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@38) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@38) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@38) (store (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@38) o_1@@7 f_51@@7 v@@7) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@38) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@38) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@38) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@38) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@38) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@38) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@38) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_8310) (o_1@@8 T@Ref) (f_51@@8 T@Field_8370_53) (v@@8 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_8310 (store (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@39) o_1@@8 f_51@@8 v@@8) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@39) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@39) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@39) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@39) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@39) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@39) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@39) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@39) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8310 (store (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@39) o_1@@8 f_51@@8 v@@8) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@39) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@39) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@39) (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@39) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@39) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@39) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@39) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@39) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@39)))
)))
(assert (forall ((this@@13 T@Ref) ) (! (= (PredicateMaskField_4384 (valid this@@13)) (|valid#sm| this@@13))
 :qid |stdinbpl.501:15|
 :skolemid |33|
 :pattern ( (PredicateMaskField_4384 (valid this@@13)))
)))
(assert (forall ((o_1@@9 T@Ref) (f_2 T@Field_8383_8384) (Heap@@40 T@PolymorphicMapType_8310) ) (!  (=> (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@40) o_1@@9 $allocated) (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@40) (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@40) o_1@@9 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@40) o_1@@9 f_2))
)))
(assert (forall ((p@@2 T@Field_4317_4385) (v_1@@1 T@FrameType) (q T@Field_4317_4385) (w@@1 T@FrameType) (r T@Field_4317_4385) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8370_8370 p@@2 v_1@@1 q w@@1) (InsidePredicate_8370_8370 q w@@1 r u)) (InsidePredicate_8370_8370 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8370_8370 p@@2 v_1@@1 q w@@1) (InsidePredicate_8370_8370 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_4317_4385) (v_1@@2 T@FrameType) (q@@0 T@Field_4317_4385) (w@@2 T@FrameType) (r@@0 T@Field_12131_12132) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_8370_8370 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8370_4384 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_8370_4384 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8370_8370 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8370_4384 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_4317_4385) (v_1@@3 T@FrameType) (q@@1 T@Field_12131_12132) (w@@3 T@FrameType) (r@@1 T@Field_4317_4385) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_8370_4384 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4384_8370 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_8370_8370 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8370_4384 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4384_8370 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_4317_4385) (v_1@@4 T@FrameType) (q@@2 T@Field_12131_12132) (w@@4 T@FrameType) (r@@2 T@Field_12131_12132) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_8370_4384 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4384_4384 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_8370_4384 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8370_4384 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4384_4384 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_12131_12132) (v_1@@5 T@FrameType) (q@@3 T@Field_4317_4385) (w@@5 T@FrameType) (r@@3 T@Field_4317_4385) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_4384_8370 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8370_8370 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_4384_8370 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4384_8370 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8370_8370 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_12131_12132) (v_1@@6 T@FrameType) (q@@4 T@Field_4317_4385) (w@@6 T@FrameType) (r@@4 T@Field_12131_12132) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_4384_8370 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8370_4384 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_4384_4384 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4384_8370 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8370_4384 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_12131_12132) (v_1@@7 T@FrameType) (q@@5 T@Field_12131_12132) (w@@7 T@FrameType) (r@@5 T@Field_4317_4385) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_4384_4384 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4384_8370 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_4384_8370 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4384_4384 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4384_8370 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_12131_12132) (v_1@@8 T@FrameType) (q@@6 T@Field_12131_12132) (w@@8 T@FrameType) (r@@6 T@Field_12131_12132) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_4384_4384 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4384_4384 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_4384_4384 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4384_4384 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4384_4384 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@3 () T@PolymorphicMapType_8310)
(declare-fun Mask@0 () T@PolymorphicMapType_8331)
(declare-fun Result@0 () Int)
(declare-fun this@@14 () T@Ref)
(declare-fun Heap@1 () T@PolymorphicMapType_8310)
(declare-fun newPMask@0 () T@PolymorphicMapType_8859)
(declare-fun Heap@2 () T@PolymorphicMapType_8310)
(declare-fun Heap@0 () T@PolymorphicMapType_8310)
(declare-fun Heap@@41 () T@PolymorphicMapType_8310)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_8331)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_8331)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_8331)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun FrameFragment_4318 (T@Ref) T@FrameType)
(declare-fun FrameFragment_4385 (T@FrameType) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_8331)
(set-info :boogie-vc-id |length#definedness|)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon9_correct  (=> (state Heap@3 Mask@0) (=> (and (= Result@0 (ite (= (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@3) this@@14 next) null) 1 (+ 1 (length_1 Heap@3 (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@3) this@@14 next))))) (= (ControlFlow 0 4) (- 0 3))) (> Result@0 0)))))
(let ((anon13_Else_correct  (=> (= (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@1) this@@14 next) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 6) 4)) anon9_correct))))
(let ((anon13_Then_correct  (=> (not (= (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@1) this@@14 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_5 T@Ref) (f_11 T@Field_11697_1189) ) (!  (=> (or (select (|PolymorphicMapType_8859_4315_1189#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| this@@14))) o_5 f_11) (select (|PolymorphicMapType_8859_4315_1189#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@1) this@@14 next)))) o_5 f_11)) (select (|PolymorphicMapType_8859_4315_1189#PolymorphicMapType_8859| newPMask@0) o_5 f_11))
 :qid |stdinbpl.316:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_8859_4315_1189#PolymorphicMapType_8859| newPMask@0) o_5 f_11))
)) (forall ((o_5@@0 T@Ref) (f_11@@0 T@Field_8383_8384) ) (!  (=> (or (select (|PolymorphicMapType_8859_4317_4318#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| this@@14))) o_5@@0 f_11@@0) (select (|PolymorphicMapType_8859_4317_4318#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@1) this@@14 next)))) o_5@@0 f_11@@0)) (select (|PolymorphicMapType_8859_4317_4318#PolymorphicMapType_8859| newPMask@0) o_5@@0 f_11@@0))
 :qid |stdinbpl.316:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_8859_4317_4318#PolymorphicMapType_8859| newPMask@0) o_5@@0 f_11@@0))
))) (forall ((o_5@@1 T@Ref) (f_11@@1 T@Field_8370_53) ) (!  (=> (or (select (|PolymorphicMapType_8859_4315_53#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| this@@14))) o_5@@1 f_11@@1) (select (|PolymorphicMapType_8859_4315_53#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@1) this@@14 next)))) o_5@@1 f_11@@1)) (select (|PolymorphicMapType_8859_4315_53#PolymorphicMapType_8859| newPMask@0) o_5@@1 f_11@@1))
 :qid |stdinbpl.316:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_8859_4315_53#PolymorphicMapType_8859| newPMask@0) o_5@@1 f_11@@1))
))) (forall ((o_5@@2 T@Ref) (f_11@@2 T@Field_4317_4385) ) (!  (=> (or (select (|PolymorphicMapType_8859_4315_12132#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| this@@14))) o_5@@2 f_11@@2) (select (|PolymorphicMapType_8859_4315_12132#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@1) this@@14 next)))) o_5@@2 f_11@@2)) (select (|PolymorphicMapType_8859_4315_12132#PolymorphicMapType_8859| newPMask@0) o_5@@2 f_11@@2))
 :qid |stdinbpl.316:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_8859_4315_12132#PolymorphicMapType_8859| newPMask@0) o_5@@2 f_11@@2))
))) (forall ((o_5@@3 T@Ref) (f_11@@3 T@Field_4317_14992) ) (!  (=> (or (select (|PolymorphicMapType_8859_4315_30813#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| this@@14))) o_5@@3 f_11@@3) (select (|PolymorphicMapType_8859_4315_30813#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@1) this@@14 next)))) o_5@@3 f_11@@3)) (select (|PolymorphicMapType_8859_4315_30813#PolymorphicMapType_8859| newPMask@0) o_5@@3 f_11@@3))
 :qid |stdinbpl.316:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_8859_4315_30813#PolymorphicMapType_8859| newPMask@0) o_5@@3 f_11@@3))
))) (forall ((o_5@@4 T@Ref) (f_11@@4 T@Field_4384_1189) ) (!  (=> (or (select (|PolymorphicMapType_8859_12131_1189#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| this@@14))) o_5@@4 f_11@@4) (select (|PolymorphicMapType_8859_12131_1189#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@1) this@@14 next)))) o_5@@4 f_11@@4)) (select (|PolymorphicMapType_8859_12131_1189#PolymorphicMapType_8859| newPMask@0) o_5@@4 f_11@@4))
 :qid |stdinbpl.316:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_8859_12131_1189#PolymorphicMapType_8859| newPMask@0) o_5@@4 f_11@@4))
))) (forall ((o_5@@5 T@Ref) (f_11@@5 T@Field_4384_4318) ) (!  (=> (or (select (|PolymorphicMapType_8859_12131_4318#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| this@@14))) o_5@@5 f_11@@5) (select (|PolymorphicMapType_8859_12131_4318#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@1) this@@14 next)))) o_5@@5 f_11@@5)) (select (|PolymorphicMapType_8859_12131_4318#PolymorphicMapType_8859| newPMask@0) o_5@@5 f_11@@5))
 :qid |stdinbpl.316:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_8859_12131_4318#PolymorphicMapType_8859| newPMask@0) o_5@@5 f_11@@5))
))) (forall ((o_5@@6 T@Ref) (f_11@@6 T@Field_4384_53) ) (!  (=> (or (select (|PolymorphicMapType_8859_12131_53#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| this@@14))) o_5@@6 f_11@@6) (select (|PolymorphicMapType_8859_12131_53#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@1) this@@14 next)))) o_5@@6 f_11@@6)) (select (|PolymorphicMapType_8859_12131_53#PolymorphicMapType_8859| newPMask@0) o_5@@6 f_11@@6))
 :qid |stdinbpl.316:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_8859_12131_53#PolymorphicMapType_8859| newPMask@0) o_5@@6 f_11@@6))
))) (forall ((o_5@@7 T@Ref) (f_11@@7 T@Field_12131_12132) ) (!  (=> (or (select (|PolymorphicMapType_8859_12131_12132#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| this@@14))) o_5@@7 f_11@@7) (select (|PolymorphicMapType_8859_12131_12132#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@1) this@@14 next)))) o_5@@7 f_11@@7)) (select (|PolymorphicMapType_8859_12131_12132#PolymorphicMapType_8859| newPMask@0) o_5@@7 f_11@@7))
 :qid |stdinbpl.316:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_8859_12131_12132#PolymorphicMapType_8859| newPMask@0) o_5@@7 f_11@@7))
))) (forall ((o_5@@8 T@Ref) (f_11@@8 T@Field_14987_14992) ) (!  (=> (or (select (|PolymorphicMapType_8859_12131_31861#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| this@@14))) o_5@@8 f_11@@8) (select (|PolymorphicMapType_8859_12131_31861#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@1) this@@14 next)))) o_5@@8 f_11@@8)) (select (|PolymorphicMapType_8859_12131_31861#PolymorphicMapType_8859| newPMask@0) o_5@@8 f_11@@8))
 :qid |stdinbpl.316:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_8859_12131_31861#PolymorphicMapType_8859| newPMask@0) o_5@@8 f_11@@8))
))) (= Heap@2 (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@1) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@1) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@1) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@1) (store (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@1) null (|valid#sm| this@@14) newPMask@0) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@1) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@1) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@1) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@1) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 5) 4))) anon9_correct))))
(let ((anon7_correct  (=> (and (= Heap@0 (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@41) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@41) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@41) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@41) (store (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@41) null (|valid#sm| this@@14) (PolymorphicMapType_8859 (store (|PolymorphicMapType_8859_4315_1189#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@41) null (|valid#sm| this@@14))) this@@14 value_1 true) (|PolymorphicMapType_8859_4317_4318#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@41) null (|valid#sm| this@@14))) (|PolymorphicMapType_8859_4315_53#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@41) null (|valid#sm| this@@14))) (|PolymorphicMapType_8859_4315_12132#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@41) null (|valid#sm| this@@14))) (|PolymorphicMapType_8859_4315_30813#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@41) null (|valid#sm| this@@14))) (|PolymorphicMapType_8859_12131_1189#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@41) null (|valid#sm| this@@14))) (|PolymorphicMapType_8859_12131_4318#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@41) null (|valid#sm| this@@14))) (|PolymorphicMapType_8859_12131_53#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@41) null (|valid#sm| this@@14))) (|PolymorphicMapType_8859_12131_12132#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@41) null (|valid#sm| this@@14))) (|PolymorphicMapType_8859_12131_31861#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@@41) null (|valid#sm| this@@14))))) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@@41) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@@41) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@@41) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@@41) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@@41))) (= Heap@1 (PolymorphicMapType_8310 (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@0) (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@0) (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@0) (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@0) (store (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@0) null (|valid#sm| this@@14) (PolymorphicMapType_8859 (|PolymorphicMapType_8859_4315_1189#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@0) null (|valid#sm| this@@14))) (store (|PolymorphicMapType_8859_4317_4318#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@0) null (|valid#sm| this@@14))) this@@14 next true) (|PolymorphicMapType_8859_4315_53#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@0) null (|valid#sm| this@@14))) (|PolymorphicMapType_8859_4315_12132#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@0) null (|valid#sm| this@@14))) (|PolymorphicMapType_8859_4315_30813#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@0) null (|valid#sm| this@@14))) (|PolymorphicMapType_8859_12131_1189#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@0) null (|valid#sm| this@@14))) (|PolymorphicMapType_8859_12131_4318#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@0) null (|valid#sm| this@@14))) (|PolymorphicMapType_8859_12131_53#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@0) null (|valid#sm| this@@14))) (|PolymorphicMapType_8859_12131_12132#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@0) null (|valid#sm| this@@14))) (|PolymorphicMapType_8859_12131_31861#PolymorphicMapType_8859| (select (|PolymorphicMapType_8310_4388_15079#PolymorphicMapType_8310| Heap@0) null (|valid#sm| this@@14))))) (|PolymorphicMapType_8310_4317_4385#PolymorphicMapType_8310| Heap@0) (|PolymorphicMapType_8310_4317_28012#PolymorphicMapType_8310| Heap@0) (|PolymorphicMapType_8310_4384_4318#PolymorphicMapType_8310| Heap@0) (|PolymorphicMapType_8310_4384_1189#PolymorphicMapType_8310| Heap@0) (|PolymorphicMapType_8310_4384_53#PolymorphicMapType_8310| Heap@0)))) (and (=> (= (ControlFlow 0 7) 5) anon13_Then_correct) (=> (= (ControlFlow 0 7) 6) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (|length#trigger| (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@41) null (valid (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@41) this@@14 next))) (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@41) this@@14 next)) (= (ControlFlow 0 9) 7)) anon7_correct)))
(let ((anon11_Then_correct  (=> (and (= (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@41) this@@14 next) null) (= (ControlFlow 0 8) 7)) anon7_correct)))
(let ((anon12_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| UnfoldingMask@3) null (valid (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@41) this@@14 next))))))))
(let ((anon11_Else_correct  (=> (not (= (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@41) this@@14 next) null)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (HasDirectPerm_4317_4318 UnfoldingMask@3 this@@14 next)) (=> (HasDirectPerm_4317_4318 UnfoldingMask@3 this@@14 next) (and (=> (= (ControlFlow 0 10) 2) anon12_Then_correct) (=> (= (ControlFlow 0 10) 9) anon12_Else_correct)))))))
(let ((anon2_correct  (=> (state Heap@@41 UnfoldingMask@3) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_4317_4318 UnfoldingMask@3 this@@14 next)) (=> (HasDirectPerm_4317_4318 UnfoldingMask@3 this@@14 next) (and (=> (= (ControlFlow 0 12) 8) anon11_Then_correct) (=> (= (ControlFlow 0 12) 10) anon11_Else_correct)))))))
(let ((anon10_Else_correct  (=> (= (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@41) this@@14 next) null) (=> (and (= UnfoldingMask@3 UnfoldingMask@1) (= (ControlFlow 0 15) 12)) anon2_correct))))
(let ((anon10_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@41) this@@14 next) null)) (= UnfoldingMask@2 (PolymorphicMapType_8331 (store (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| UnfoldingMask@1) null (valid (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@41) this@@14 next)) (+ (select (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| UnfoldingMask@1) null (valid (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@41) this@@14 next))) FullPerm)) (|PolymorphicMapType_8331_4315_1189#PolymorphicMapType_8331| UnfoldingMask@1) (|PolymorphicMapType_8331_4317_4318#PolymorphicMapType_8331| UnfoldingMask@1) (|PolymorphicMapType_8331_4384_1189#PolymorphicMapType_8331| UnfoldingMask@1) (|PolymorphicMapType_8331_4384_4318#PolymorphicMapType_8331| UnfoldingMask@1) (|PolymorphicMapType_8331_4384_53#PolymorphicMapType_8331| UnfoldingMask@1) (|PolymorphicMapType_8331_4384_37252#PolymorphicMapType_8331| UnfoldingMask@1) (|PolymorphicMapType_8331_4315_4385#PolymorphicMapType_8331| UnfoldingMask@1) (|PolymorphicMapType_8331_4315_53#PolymorphicMapType_8331| UnfoldingMask@1) (|PolymorphicMapType_8331_4315_37651#PolymorphicMapType_8331| UnfoldingMask@1)))) (=> (and (and (InsidePredicate_4384_4384 (valid this@@14) (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@41) null (valid this@@14)) (valid (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@41) this@@14 next)) (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@41) null (valid (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@41) this@@14 next)))) (state Heap@@41 UnfoldingMask@2)) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 14) 12))) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@41 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_8310_4187_53#PolymorphicMapType_8310| Heap@@41) this@@14 $allocated)) (and (= AssumeFunctionsAbove 1) (= Mask@0 (PolymorphicMapType_8331 (store (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| ZeroMask) null (valid this@@14) (+ (select (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| ZeroMask) null (valid this@@14)) FullPerm)) (|PolymorphicMapType_8331_4315_1189#PolymorphicMapType_8331| ZeroMask) (|PolymorphicMapType_8331_4317_4318#PolymorphicMapType_8331| ZeroMask) (|PolymorphicMapType_8331_4384_1189#PolymorphicMapType_8331| ZeroMask) (|PolymorphicMapType_8331_4384_4318#PolymorphicMapType_8331| ZeroMask) (|PolymorphicMapType_8331_4384_53#PolymorphicMapType_8331| ZeroMask) (|PolymorphicMapType_8331_4384_37252#PolymorphicMapType_8331| ZeroMask) (|PolymorphicMapType_8331_4315_4385#PolymorphicMapType_8331| ZeroMask) (|PolymorphicMapType_8331_4315_53#PolymorphicMapType_8331| ZeroMask) (|PolymorphicMapType_8331_4315_37651#PolymorphicMapType_8331| ZeroMask))))) (and (and (state Heap@@41 Mask@0) (state Heap@@41 Mask@0)) (and (|valid#trigger_4384| Heap@@41 (valid this@@14)) (= (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@41) null (valid this@@14)) (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_8310_4315_1189#PolymorphicMapType_8310| Heap@@41) this@@14 value_1)) (CombineFrames (FrameFragment_4318 (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@41) this@@14 next)) (FrameFragment_4385 (ite (not (= (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@41) this@@14 next) null)) (select (|PolymorphicMapType_8310_4384_4385#PolymorphicMapType_8310| Heap@@41) null (valid (select (|PolymorphicMapType_8310_4190_4191#PolymorphicMapType_8310| Heap@@41) this@@14 next))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| Mask@0) null (valid this@@14))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| Mask@0) null (valid this@@14)))) (=> (and (not (= this@@14 null)) (= UnfoldingMask@0 (PolymorphicMapType_8331 (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| Mask@0) (store (|PolymorphicMapType_8331_4315_1189#PolymorphicMapType_8331| Mask@0) this@@14 value_1 (+ (select (|PolymorphicMapType_8331_4315_1189#PolymorphicMapType_8331| Mask@0) this@@14 value_1) FullPerm)) (|PolymorphicMapType_8331_4317_4318#PolymorphicMapType_8331| Mask@0) (|PolymorphicMapType_8331_4384_1189#PolymorphicMapType_8331| Mask@0) (|PolymorphicMapType_8331_4384_4318#PolymorphicMapType_8331| Mask@0) (|PolymorphicMapType_8331_4384_53#PolymorphicMapType_8331| Mask@0) (|PolymorphicMapType_8331_4384_37252#PolymorphicMapType_8331| Mask@0) (|PolymorphicMapType_8331_4315_4385#PolymorphicMapType_8331| Mask@0) (|PolymorphicMapType_8331_4315_53#PolymorphicMapType_8331| Mask@0) (|PolymorphicMapType_8331_4315_37651#PolymorphicMapType_8331| Mask@0)))) (=> (and (and (state Heap@@41 UnfoldingMask@0) (not (= this@@14 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_8331 (|PolymorphicMapType_8331_4384_4385#PolymorphicMapType_8331| UnfoldingMask@0) (|PolymorphicMapType_8331_4315_1189#PolymorphicMapType_8331| UnfoldingMask@0) (store (|PolymorphicMapType_8331_4317_4318#PolymorphicMapType_8331| UnfoldingMask@0) this@@14 next (+ (select (|PolymorphicMapType_8331_4317_4318#PolymorphicMapType_8331| UnfoldingMask@0) this@@14 next) FullPerm)) (|PolymorphicMapType_8331_4384_1189#PolymorphicMapType_8331| UnfoldingMask@0) (|PolymorphicMapType_8331_4384_4318#PolymorphicMapType_8331| UnfoldingMask@0) (|PolymorphicMapType_8331_4384_53#PolymorphicMapType_8331| UnfoldingMask@0) (|PolymorphicMapType_8331_4384_37252#PolymorphicMapType_8331| UnfoldingMask@0) (|PolymorphicMapType_8331_4315_4385#PolymorphicMapType_8331| UnfoldingMask@0) (|PolymorphicMapType_8331_4315_53#PolymorphicMapType_8331| UnfoldingMask@0) (|PolymorphicMapType_8331_4315_37651#PolymorphicMapType_8331| UnfoldingMask@0))) (state Heap@@41 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 16) 14) anon10_Then_correct) (=> (= (ControlFlow 0 16) 15) anon10_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18) 16) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
