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
(declare-sort T@Field_4845_53 0)
(declare-sort T@Field_4858_4859 0)
(declare-sort T@Field_8549_8550 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_8222_1204 0)
(declare-sort T@Field_10667_10672 0)
(declare-sort T@Field_2565_8550 0)
(declare-sort T@Field_2565_10672 0)
(declare-sort T@Field_8549_2566 0)
(declare-sort T@Field_8549_53 0)
(declare-sort T@Field_8549_1204 0)
(declare-datatypes ((T@PolymorphicMapType_4806 0)) (((PolymorphicMapType_4806 (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| (Array T@Ref T@Field_8549_8550 Real)) (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| (Array T@Ref T@Field_8222_1204 Real)) (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| (Array T@Ref T@Field_4858_4859 Real)) (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| (Array T@Ref T@Field_8549_1204 Real)) (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| (Array T@Ref T@Field_8549_2566 Real)) (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| (Array T@Ref T@Field_8549_53 Real)) (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| (Array T@Ref T@Field_10667_10672 Real)) (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| (Array T@Ref T@Field_2565_8550 Real)) (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| (Array T@Ref T@Field_4845_53 Real)) (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| (Array T@Ref T@Field_2565_10672 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5334 0)) (((PolymorphicMapType_5334 (|PolymorphicMapType_5334_2568_1204#PolymorphicMapType_5334| (Array T@Ref T@Field_8222_1204 Bool)) (|PolymorphicMapType_5334_2565_2566#PolymorphicMapType_5334| (Array T@Ref T@Field_4858_4859 Bool)) (|PolymorphicMapType_5334_2568_53#PolymorphicMapType_5334| (Array T@Ref T@Field_4845_53 Bool)) (|PolymorphicMapType_5334_2568_8550#PolymorphicMapType_5334| (Array T@Ref T@Field_2565_8550 Bool)) (|PolymorphicMapType_5334_2568_18147#PolymorphicMapType_5334| (Array T@Ref T@Field_2565_10672 Bool)) (|PolymorphicMapType_5334_8549_1204#PolymorphicMapType_5334| (Array T@Ref T@Field_8549_1204 Bool)) (|PolymorphicMapType_5334_8549_2566#PolymorphicMapType_5334| (Array T@Ref T@Field_8549_2566 Bool)) (|PolymorphicMapType_5334_8549_53#PolymorphicMapType_5334| (Array T@Ref T@Field_8549_53 Bool)) (|PolymorphicMapType_5334_8549_8550#PolymorphicMapType_5334| (Array T@Ref T@Field_8549_8550 Bool)) (|PolymorphicMapType_5334_8549_19195#PolymorphicMapType_5334| (Array T@Ref T@Field_10667_10672 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4785 0)) (((PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| (Array T@Ref T@Field_4845_53 Bool)) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| (Array T@Ref T@Field_4858_4859 T@Ref)) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| (Array T@Ref T@Field_8549_8550 T@FrameType)) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| (Array T@Ref T@Field_8222_1204 Int)) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| (Array T@Ref T@Field_10667_10672 T@PolymorphicMapType_5334)) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| (Array T@Ref T@Field_2565_8550 T@FrameType)) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| (Array T@Ref T@Field_2565_10672 T@PolymorphicMapType_5334)) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| (Array T@Ref T@Field_8549_2566 T@Ref)) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| (Array T@Ref T@Field_8549_53 Bool)) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| (Array T@Ref T@Field_8549_1204 Int)) ) ) ))
(declare-fun $allocated () T@Field_4845_53)
(declare-fun next () T@Field_4858_4859)
(declare-fun elem () T@Field_8222_1204)
(declare-fun succHeap (T@PolymorphicMapType_4785 T@PolymorphicMapType_4785) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4785 T@PolymorphicMapType_4785) Bool)
(declare-fun state (T@PolymorphicMapType_4785 T@PolymorphicMapType_4806) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4806) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5334)
(declare-fun |get'| (T@PolymorphicMapType_4785 T@Ref Int) Int)
(declare-fun dummyFunction_1454 (Int) Bool)
(declare-fun |get#triggerStateless| (T@Ref Int) Int)
(declare-fun valid (T@Ref) T@Field_8549_8550)
(declare-fun IsPredicateField_2600_2601 (T@Field_8549_8550) Bool)
(declare-fun |valid#trigger_2600| (T@PolymorphicMapType_4785 T@Field_8549_8550) Bool)
(declare-fun |valid#everUsed_2600| (T@Field_8549_8550) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4785 T@PolymorphicMapType_4785 T@PolymorphicMapType_4806) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2600 (T@Field_8549_8550) T@Field_10667_10672)
(declare-fun HasDirectPerm_8549_8550 (T@PolymorphicMapType_4806 T@Ref T@Field_8549_8550) Bool)
(declare-fun IsPredicateField_2565_16690 (T@Field_2565_8550) Bool)
(declare-fun PredicateMaskField_2565 (T@Field_2565_8550) T@Field_2565_10672)
(declare-fun HasDirectPerm_2565_8550 (T@PolymorphicMapType_4806 T@Ref T@Field_2565_8550) Bool)
(declare-fun IsWandField_8549_20360 (T@Field_8549_8550) Bool)
(declare-fun WandMaskField_8549 (T@Field_8549_8550) T@Field_10667_10672)
(declare-fun IsWandField_2565_20003 (T@Field_2565_8550) Bool)
(declare-fun WandMaskField_2565 (T@Field_2565_8550) T@Field_2565_10672)
(declare-fun |valid#sm| (T@Ref) T@Field_10667_10672)
(declare-fun get (T@PolymorphicMapType_4785 T@Ref Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun dummyHeap () T@PolymorphicMapType_4785)
(declare-fun ZeroMask () T@PolymorphicMapType_4806)
(declare-fun InsidePredicate_4845_4845 (T@Field_2565_8550 T@FrameType T@Field_2565_8550 T@FrameType) Bool)
(declare-fun InsidePredicate_2600_2600 (T@Field_8549_8550 T@FrameType T@Field_8549_8550 T@FrameType) Bool)
(declare-fun IsPredicateField_2565_2566 (T@Field_4858_4859) Bool)
(declare-fun IsWandField_2565_2566 (T@Field_4858_4859) Bool)
(declare-fun IsPredicateField_2568_1204 (T@Field_8222_1204) Bool)
(declare-fun IsWandField_2568_1204 (T@Field_8222_1204) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2568_27263 (T@Field_2565_10672) Bool)
(declare-fun IsWandField_2568_27279 (T@Field_2565_10672) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2568_53 (T@Field_4845_53) Bool)
(declare-fun IsWandField_2568_53 (T@Field_4845_53) Bool)
(declare-fun IsPredicateField_2600_26460 (T@Field_10667_10672) Bool)
(declare-fun IsWandField_2600_26476 (T@Field_10667_10672) Bool)
(declare-fun IsPredicateField_2600_53 (T@Field_8549_53) Bool)
(declare-fun IsWandField_2600_53 (T@Field_8549_53) Bool)
(declare-fun IsPredicateField_2600_2566 (T@Field_8549_2566) Bool)
(declare-fun IsWandField_2600_2566 (T@Field_8549_2566) Bool)
(declare-fun IsPredicateField_2600_1204 (T@Field_8549_1204) Bool)
(declare-fun IsWandField_2600_1204 (T@Field_8549_1204) Bool)
(declare-fun HasDirectPerm_8549_16445 (T@PolymorphicMapType_4806 T@Ref T@Field_10667_10672) Bool)
(declare-fun HasDirectPerm_8549_1204 (T@PolymorphicMapType_4806 T@Ref T@Field_8549_1204) Bool)
(declare-fun HasDirectPerm_8549_53 (T@PolymorphicMapType_4806 T@Ref T@Field_8549_53) Bool)
(declare-fun HasDirectPerm_8549_2566 (T@PolymorphicMapType_4806 T@Ref T@Field_8549_2566) Bool)
(declare-fun HasDirectPerm_2565_15284 (T@PolymorphicMapType_4806 T@Ref T@Field_2565_10672) Bool)
(declare-fun HasDirectPerm_2565_1204 (T@PolymorphicMapType_4806 T@Ref T@Field_8222_1204) Bool)
(declare-fun HasDirectPerm_2565_53 (T@PolymorphicMapType_4806 T@Ref T@Field_4845_53) Bool)
(declare-fun HasDirectPerm_2565_2566 (T@PolymorphicMapType_4806 T@Ref T@Field_4858_4859) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4806 T@PolymorphicMapType_4806 T@PolymorphicMapType_4806) Bool)
(declare-fun |get#frame| (T@FrameType T@Ref Int) Int)
(declare-fun getPredWandId_2600_2601 (T@Field_8549_8550) Int)
(declare-fun InsidePredicate_4845_2600 (T@Field_2565_8550 T@FrameType T@Field_8549_8550 T@FrameType) Bool)
(declare-fun InsidePredicate_2600_4845 (T@Field_8549_8550 T@FrameType T@Field_2565_8550 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_4785) (Heap1 T@PolymorphicMapType_4785) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4785) (Mask T@PolymorphicMapType_4806) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4785) (Heap1@@0 T@PolymorphicMapType_4785) (Heap2 T@PolymorphicMapType_4785) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10667_10672) ) (!  (not (select (|PolymorphicMapType_5334_8549_19195#PolymorphicMapType_5334| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5334_8549_19195#PolymorphicMapType_5334| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8549_8550) ) (!  (not (select (|PolymorphicMapType_5334_8549_8550#PolymorphicMapType_5334| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5334_8549_8550#PolymorphicMapType_5334| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8549_53) ) (!  (not (select (|PolymorphicMapType_5334_8549_53#PolymorphicMapType_5334| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5334_8549_53#PolymorphicMapType_5334| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8549_2566) ) (!  (not (select (|PolymorphicMapType_5334_8549_2566#PolymorphicMapType_5334| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5334_8549_2566#PolymorphicMapType_5334| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8549_1204) ) (!  (not (select (|PolymorphicMapType_5334_8549_1204#PolymorphicMapType_5334| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5334_8549_1204#PolymorphicMapType_5334| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_2565_10672) ) (!  (not (select (|PolymorphicMapType_5334_2568_18147#PolymorphicMapType_5334| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5334_2568_18147#PolymorphicMapType_5334| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_2565_8550) ) (!  (not (select (|PolymorphicMapType_5334_2568_8550#PolymorphicMapType_5334| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5334_2568_8550#PolymorphicMapType_5334| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_4845_53) ) (!  (not (select (|PolymorphicMapType_5334_2568_53#PolymorphicMapType_5334| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5334_2568_53#PolymorphicMapType_5334| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_4858_4859) ) (!  (not (select (|PolymorphicMapType_5334_2565_2566#PolymorphicMapType_5334| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5334_2565_2566#PolymorphicMapType_5334| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_8222_1204) ) (!  (not (select (|PolymorphicMapType_5334_2568_1204#PolymorphicMapType_5334| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5334_2568_1204#PolymorphicMapType_5334| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4785) (this T@Ref) (index Int) ) (! (dummyFunction_1454 (|get#triggerStateless| this index))
 :qid |stdinbpl.201:15|
 :skolemid |23|
 :pattern ( (|get'| Heap@@0 this index))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_2600_2601 (valid this@@0))
 :qid |stdinbpl.332:15|
 :skolemid |28|
 :pattern ( (valid this@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4785) (this@@1 T@Ref) ) (! (|valid#everUsed_2600| (valid this@@1))
 :qid |stdinbpl.351:15|
 :skolemid |32|
 :pattern ( (|valid#trigger_2600| Heap@@1 (valid this@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4785) (ExhaleHeap T@PolymorphicMapType_4785) (Mask@@0 T@PolymorphicMapType_4806) (pm_f_5 T@Field_8549_8550) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8549_8550 Mask@@0 null pm_f_5) (IsPredicateField_2600_2601 pm_f_5)) (= (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@2) null (PredicateMaskField_2600 pm_f_5)) (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| ExhaleHeap) null (PredicateMaskField_2600 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_2600_2601 pm_f_5) (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| ExhaleHeap) null (PredicateMaskField_2600 pm_f_5)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4785) (ExhaleHeap@@0 T@PolymorphicMapType_4785) (Mask@@1 T@PolymorphicMapType_4806) (pm_f_5@@0 T@Field_2565_8550) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2565_8550 Mask@@1 null pm_f_5@@0) (IsPredicateField_2565_16690 pm_f_5@@0)) (= (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@3) null (PredicateMaskField_2565 pm_f_5@@0)) (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| ExhaleHeap@@0) null (PredicateMaskField_2565 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_2565_16690 pm_f_5@@0) (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| ExhaleHeap@@0) null (PredicateMaskField_2565 pm_f_5@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4785) (ExhaleHeap@@1 T@PolymorphicMapType_4785) (Mask@@2 T@PolymorphicMapType_4806) (pm_f_5@@1 T@Field_8549_8550) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8549_8550 Mask@@2 null pm_f_5@@1) (IsWandField_8549_20360 pm_f_5@@1)) (= (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@4) null (WandMaskField_8549 pm_f_5@@1)) (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| ExhaleHeap@@1) null (WandMaskField_8549 pm_f_5@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsWandField_8549_20360 pm_f_5@@1) (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| ExhaleHeap@@1) null (WandMaskField_8549 pm_f_5@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4785) (ExhaleHeap@@2 T@PolymorphicMapType_4785) (Mask@@3 T@PolymorphicMapType_4806) (pm_f_5@@2 T@Field_2565_8550) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_2565_8550 Mask@@3 null pm_f_5@@2) (IsWandField_2565_20003 pm_f_5@@2)) (= (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@5) null (WandMaskField_2565 pm_f_5@@2)) (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| ExhaleHeap@@2) null (WandMaskField_2565 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_2565_20003 pm_f_5@@2) (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| ExhaleHeap@@2) null (WandMaskField_2565 pm_f_5@@2)))
)))
(assert (forall ((this@@2 T@Ref) (this2 T@Ref) ) (!  (=> (= (valid this@@2) (valid this2)) (= this@@2 this2))
 :qid |stdinbpl.342:15|
 :skolemid |30|
 :pattern ( (valid this@@2) (valid this2))
)))
(assert (forall ((this@@3 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|valid#sm| this@@3) (|valid#sm| this2@@0)) (= this@@3 this2@@0))
 :qid |stdinbpl.346:15|
 :skolemid |31|
 :pattern ( (|valid#sm| this@@3) (|valid#sm| this2@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4785) (ExhaleHeap@@3 T@PolymorphicMapType_4785) (Mask@@4 T@PolymorphicMapType_4806) (pm_f_5@@3 T@Field_8549_8550) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_8549_8550 Mask@@4 null pm_f_5@@3) (IsPredicateField_2600_2601 pm_f_5@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_8222_1204) ) (!  (=> (select (|PolymorphicMapType_5334_2568_1204#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@6) null (PredicateMaskField_2600 pm_f_5@@3))) o2_5 f_23) (= (select (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@6) o2_5 f_23) (select (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_4858_4859) ) (!  (=> (select (|PolymorphicMapType_5334_2565_2566#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@6) null (PredicateMaskField_2600 pm_f_5@@3))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@6) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_4845_53) ) (!  (=> (select (|PolymorphicMapType_5334_2568_53#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@6) null (PredicateMaskField_2600 pm_f_5@@3))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@6) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_2565_8550) ) (!  (=> (select (|PolymorphicMapType_5334_2568_8550#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@6) null (PredicateMaskField_2600 pm_f_5@@3))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@6) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5@@2 f_23@@2))
))) (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_2565_10672) ) (!  (=> (select (|PolymorphicMapType_5334_2568_18147#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@6) null (PredicateMaskField_2600 pm_f_5@@3))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@6) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5@@3 f_23@@3))
))) (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_8549_1204) ) (!  (=> (select (|PolymorphicMapType_5334_8549_1204#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@6) null (PredicateMaskField_2600 pm_f_5@@3))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@6) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5@@4 f_23@@4))
))) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_8549_2566) ) (!  (=> (select (|PolymorphicMapType_5334_8549_2566#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@6) null (PredicateMaskField_2600 pm_f_5@@3))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@6) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_8549_53) ) (!  (=> (select (|PolymorphicMapType_5334_8549_53#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@6) null (PredicateMaskField_2600 pm_f_5@@3))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@6) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5@@6 f_23@@6))
))) (forall ((o2_5@@7 T@Ref) (f_23@@7 T@Field_8549_8550) ) (!  (=> (select (|PolymorphicMapType_5334_8549_8550#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@6) null (PredicateMaskField_2600 pm_f_5@@3))) o2_5@@7 f_23@@7) (= (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@6) o2_5@@7 f_23@@7) (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5@@7 f_23@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5@@7 f_23@@7))
))) (forall ((o2_5@@8 T@Ref) (f_23@@8 T@Field_10667_10672) ) (!  (=> (select (|PolymorphicMapType_5334_8549_19195#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@6) null (PredicateMaskField_2600 pm_f_5@@3))) o2_5@@8 f_23@@8) (= (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@6) o2_5@@8 f_23@@8) (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5@@8 f_23@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| ExhaleHeap@@3) o2_5@@8 f_23@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsPredicateField_2600_2601 pm_f_5@@3))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4785) (ExhaleHeap@@4 T@PolymorphicMapType_4785) (Mask@@5 T@PolymorphicMapType_4806) (pm_f_5@@4 T@Field_2565_8550) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_2565_8550 Mask@@5 null pm_f_5@@4) (IsPredicateField_2565_16690 pm_f_5@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@9 T@Ref) (f_23@@9 T@Field_8222_1204) ) (!  (=> (select (|PolymorphicMapType_5334_2568_1204#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@7) null (PredicateMaskField_2565 pm_f_5@@4))) o2_5@@9 f_23@@9) (= (select (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@7) o2_5@@9 f_23@@9) (select (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@9 f_23@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@9 f_23@@9))
)) (forall ((o2_5@@10 T@Ref) (f_23@@10 T@Field_4858_4859) ) (!  (=> (select (|PolymorphicMapType_5334_2565_2566#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@7) null (PredicateMaskField_2565 pm_f_5@@4))) o2_5@@10 f_23@@10) (= (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@7) o2_5@@10 f_23@@10) (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@10 f_23@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@10 f_23@@10))
))) (forall ((o2_5@@11 T@Ref) (f_23@@11 T@Field_4845_53) ) (!  (=> (select (|PolymorphicMapType_5334_2568_53#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@7) null (PredicateMaskField_2565 pm_f_5@@4))) o2_5@@11 f_23@@11) (= (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@7) o2_5@@11 f_23@@11) (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@11 f_23@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@11 f_23@@11))
))) (forall ((o2_5@@12 T@Ref) (f_23@@12 T@Field_2565_8550) ) (!  (=> (select (|PolymorphicMapType_5334_2568_8550#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@7) null (PredicateMaskField_2565 pm_f_5@@4))) o2_5@@12 f_23@@12) (= (select (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@7) o2_5@@12 f_23@@12) (select (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@12 f_23@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@12 f_23@@12))
))) (forall ((o2_5@@13 T@Ref) (f_23@@13 T@Field_2565_10672) ) (!  (=> (select (|PolymorphicMapType_5334_2568_18147#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@7) null (PredicateMaskField_2565 pm_f_5@@4))) o2_5@@13 f_23@@13) (= (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@7) o2_5@@13 f_23@@13) (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@13 f_23@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@13 f_23@@13))
))) (forall ((o2_5@@14 T@Ref) (f_23@@14 T@Field_8549_1204) ) (!  (=> (select (|PolymorphicMapType_5334_8549_1204#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@7) null (PredicateMaskField_2565 pm_f_5@@4))) o2_5@@14 f_23@@14) (= (select (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@7) o2_5@@14 f_23@@14) (select (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@14 f_23@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@14 f_23@@14))
))) (forall ((o2_5@@15 T@Ref) (f_23@@15 T@Field_8549_2566) ) (!  (=> (select (|PolymorphicMapType_5334_8549_2566#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@7) null (PredicateMaskField_2565 pm_f_5@@4))) o2_5@@15 f_23@@15) (= (select (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@7) o2_5@@15 f_23@@15) (select (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@15 f_23@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@15 f_23@@15))
))) (forall ((o2_5@@16 T@Ref) (f_23@@16 T@Field_8549_53) ) (!  (=> (select (|PolymorphicMapType_5334_8549_53#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@7) null (PredicateMaskField_2565 pm_f_5@@4))) o2_5@@16 f_23@@16) (= (select (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@7) o2_5@@16 f_23@@16) (select (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@16 f_23@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@16 f_23@@16))
))) (forall ((o2_5@@17 T@Ref) (f_23@@17 T@Field_8549_8550) ) (!  (=> (select (|PolymorphicMapType_5334_8549_8550#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@7) null (PredicateMaskField_2565 pm_f_5@@4))) o2_5@@17 f_23@@17) (= (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@7) o2_5@@17 f_23@@17) (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@17 f_23@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@17 f_23@@17))
))) (forall ((o2_5@@18 T@Ref) (f_23@@18 T@Field_10667_10672) ) (!  (=> (select (|PolymorphicMapType_5334_8549_19195#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@7) null (PredicateMaskField_2565 pm_f_5@@4))) o2_5@@18 f_23@@18) (= (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@7) o2_5@@18 f_23@@18) (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@18 f_23@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| ExhaleHeap@@4) o2_5@@18 f_23@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsPredicateField_2565_16690 pm_f_5@@4))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4785) (ExhaleHeap@@5 T@PolymorphicMapType_4785) (Mask@@6 T@PolymorphicMapType_4806) (pm_f_5@@5 T@Field_8549_8550) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_8549_8550 Mask@@6 null pm_f_5@@5) (IsWandField_8549_20360 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@19 T@Ref) (f_23@@19 T@Field_8222_1204) ) (!  (=> (select (|PolymorphicMapType_5334_2568_1204#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@8) null (WandMaskField_8549 pm_f_5@@5))) o2_5@@19 f_23@@19) (= (select (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@8) o2_5@@19 f_23@@19) (select (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@19 f_23@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@19 f_23@@19))
)) (forall ((o2_5@@20 T@Ref) (f_23@@20 T@Field_4858_4859) ) (!  (=> (select (|PolymorphicMapType_5334_2565_2566#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@8) null (WandMaskField_8549 pm_f_5@@5))) o2_5@@20 f_23@@20) (= (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@8) o2_5@@20 f_23@@20) (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@20 f_23@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@20 f_23@@20))
))) (forall ((o2_5@@21 T@Ref) (f_23@@21 T@Field_4845_53) ) (!  (=> (select (|PolymorphicMapType_5334_2568_53#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@8) null (WandMaskField_8549 pm_f_5@@5))) o2_5@@21 f_23@@21) (= (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@8) o2_5@@21 f_23@@21) (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@21 f_23@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@21 f_23@@21))
))) (forall ((o2_5@@22 T@Ref) (f_23@@22 T@Field_2565_8550) ) (!  (=> (select (|PolymorphicMapType_5334_2568_8550#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@8) null (WandMaskField_8549 pm_f_5@@5))) o2_5@@22 f_23@@22) (= (select (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@8) o2_5@@22 f_23@@22) (select (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@22 f_23@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@22 f_23@@22))
))) (forall ((o2_5@@23 T@Ref) (f_23@@23 T@Field_2565_10672) ) (!  (=> (select (|PolymorphicMapType_5334_2568_18147#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@8) null (WandMaskField_8549 pm_f_5@@5))) o2_5@@23 f_23@@23) (= (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@8) o2_5@@23 f_23@@23) (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@23 f_23@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@23 f_23@@23))
))) (forall ((o2_5@@24 T@Ref) (f_23@@24 T@Field_8549_1204) ) (!  (=> (select (|PolymorphicMapType_5334_8549_1204#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@8) null (WandMaskField_8549 pm_f_5@@5))) o2_5@@24 f_23@@24) (= (select (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@8) o2_5@@24 f_23@@24) (select (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@24 f_23@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@24 f_23@@24))
))) (forall ((o2_5@@25 T@Ref) (f_23@@25 T@Field_8549_2566) ) (!  (=> (select (|PolymorphicMapType_5334_8549_2566#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@8) null (WandMaskField_8549 pm_f_5@@5))) o2_5@@25 f_23@@25) (= (select (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@8) o2_5@@25 f_23@@25) (select (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@25 f_23@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@25 f_23@@25))
))) (forall ((o2_5@@26 T@Ref) (f_23@@26 T@Field_8549_53) ) (!  (=> (select (|PolymorphicMapType_5334_8549_53#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@8) null (WandMaskField_8549 pm_f_5@@5))) o2_5@@26 f_23@@26) (= (select (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@8) o2_5@@26 f_23@@26) (select (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@26 f_23@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@26 f_23@@26))
))) (forall ((o2_5@@27 T@Ref) (f_23@@27 T@Field_8549_8550) ) (!  (=> (select (|PolymorphicMapType_5334_8549_8550#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@8) null (WandMaskField_8549 pm_f_5@@5))) o2_5@@27 f_23@@27) (= (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@8) o2_5@@27 f_23@@27) (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@27 f_23@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@27 f_23@@27))
))) (forall ((o2_5@@28 T@Ref) (f_23@@28 T@Field_10667_10672) ) (!  (=> (select (|PolymorphicMapType_5334_8549_19195#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@8) null (WandMaskField_8549 pm_f_5@@5))) o2_5@@28 f_23@@28) (= (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@8) o2_5@@28 f_23@@28) (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@28 f_23@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| ExhaleHeap@@5) o2_5@@28 f_23@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_8549_20360 pm_f_5@@5))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4785) (ExhaleHeap@@6 T@PolymorphicMapType_4785) (Mask@@7 T@PolymorphicMapType_4806) (pm_f_5@@6 T@Field_2565_8550) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_2565_8550 Mask@@7 null pm_f_5@@6) (IsWandField_2565_20003 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_23@@29 T@Field_8222_1204) ) (!  (=> (select (|PolymorphicMapType_5334_2568_1204#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@9) null (WandMaskField_2565 pm_f_5@@6))) o2_5@@29 f_23@@29) (= (select (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@9) o2_5@@29 f_23@@29) (select (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@29 f_23@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@29 f_23@@29))
)) (forall ((o2_5@@30 T@Ref) (f_23@@30 T@Field_4858_4859) ) (!  (=> (select (|PolymorphicMapType_5334_2565_2566#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@9) null (WandMaskField_2565 pm_f_5@@6))) o2_5@@30 f_23@@30) (= (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@9) o2_5@@30 f_23@@30) (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@30 f_23@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@30 f_23@@30))
))) (forall ((o2_5@@31 T@Ref) (f_23@@31 T@Field_4845_53) ) (!  (=> (select (|PolymorphicMapType_5334_2568_53#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@9) null (WandMaskField_2565 pm_f_5@@6))) o2_5@@31 f_23@@31) (= (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@9) o2_5@@31 f_23@@31) (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@31 f_23@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@31 f_23@@31))
))) (forall ((o2_5@@32 T@Ref) (f_23@@32 T@Field_2565_8550) ) (!  (=> (select (|PolymorphicMapType_5334_2568_8550#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@9) null (WandMaskField_2565 pm_f_5@@6))) o2_5@@32 f_23@@32) (= (select (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@9) o2_5@@32 f_23@@32) (select (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@32 f_23@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@32 f_23@@32))
))) (forall ((o2_5@@33 T@Ref) (f_23@@33 T@Field_2565_10672) ) (!  (=> (select (|PolymorphicMapType_5334_2568_18147#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@9) null (WandMaskField_2565 pm_f_5@@6))) o2_5@@33 f_23@@33) (= (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@9) o2_5@@33 f_23@@33) (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@33 f_23@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@33 f_23@@33))
))) (forall ((o2_5@@34 T@Ref) (f_23@@34 T@Field_8549_1204) ) (!  (=> (select (|PolymorphicMapType_5334_8549_1204#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@9) null (WandMaskField_2565 pm_f_5@@6))) o2_5@@34 f_23@@34) (= (select (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@9) o2_5@@34 f_23@@34) (select (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@34 f_23@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@34 f_23@@34))
))) (forall ((o2_5@@35 T@Ref) (f_23@@35 T@Field_8549_2566) ) (!  (=> (select (|PolymorphicMapType_5334_8549_2566#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@9) null (WandMaskField_2565 pm_f_5@@6))) o2_5@@35 f_23@@35) (= (select (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@9) o2_5@@35 f_23@@35) (select (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@35 f_23@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@35 f_23@@35))
))) (forall ((o2_5@@36 T@Ref) (f_23@@36 T@Field_8549_53) ) (!  (=> (select (|PolymorphicMapType_5334_8549_53#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@9) null (WandMaskField_2565 pm_f_5@@6))) o2_5@@36 f_23@@36) (= (select (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@9) o2_5@@36 f_23@@36) (select (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@36 f_23@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@36 f_23@@36))
))) (forall ((o2_5@@37 T@Ref) (f_23@@37 T@Field_8549_8550) ) (!  (=> (select (|PolymorphicMapType_5334_8549_8550#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@9) null (WandMaskField_2565 pm_f_5@@6))) o2_5@@37 f_23@@37) (= (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@9) o2_5@@37 f_23@@37) (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@37 f_23@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@37 f_23@@37))
))) (forall ((o2_5@@38 T@Ref) (f_23@@38 T@Field_10667_10672) ) (!  (=> (select (|PolymorphicMapType_5334_8549_19195#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@9) null (WandMaskField_2565 pm_f_5@@6))) o2_5@@38 f_23@@38) (= (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@9) o2_5@@38 f_23@@38) (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@38 f_23@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| ExhaleHeap@@6) o2_5@@38 f_23@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_2565_20003 pm_f_5@@6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4785) (Mask@@8 T@PolymorphicMapType_4806) (this@@4 T@Ref) (index@@0 Int) ) (!  (=> (and (state Heap@@10 Mask@@8) (< AssumeFunctionsAbove 0)) (= (get Heap@@10 this@@4 index@@0) 0))
 :qid |stdinbpl.207:15|
 :skolemid |24|
 :pattern ( (state Heap@@10 Mask@@8) (get Heap@@10 this@@4 index@@0))
 :pattern ( (state Heap@@10 Mask@@8) (|get#triggerStateless| this@@4 index@@0) (|valid#trigger_2600| Heap@@10 (valid this@@4)) (|valid#trigger_2600| Heap@@10 (valid this@@4)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4785) (ExhaleHeap@@7 T@PolymorphicMapType_4785) (Mask@@9 T@PolymorphicMapType_4806) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@11) o_15 $allocated) (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| ExhaleHeap@@7) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| ExhaleHeap@@7) o_15 $allocated))
)))
(assert (forall ((p T@Field_2565_8550) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4845_4845 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4845_4845 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_8549_8550) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_2600_2600 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_2600_2600 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_2565_2566 next)))
(assert  (not (IsWandField_2565_2566 next)))
(assert  (not (IsPredicateField_2568_1204 elem)))
(assert  (not (IsWandField_2568_1204 elem)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4785) (ExhaleHeap@@8 T@PolymorphicMapType_4785) (Mask@@10 T@PolymorphicMapType_4806) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4806) (o_2@@9 T@Ref) (f_4@@9 T@Field_2565_10672) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_2568_27263 f_4@@9))) (not (IsWandField_2568_27279 f_4@@9))) (<= (select (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4806) (o_2@@10 T@Ref) (f_4@@10 T@Field_4845_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_2568_53 f_4@@10))) (not (IsWandField_2568_53 f_4@@10))) (<= (select (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4806) (o_2@@11 T@Ref) (f_4@@11 T@Field_4858_4859) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| Mask@@13) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_2565_2566 f_4@@11))) (not (IsWandField_2565_2566 f_4@@11))) (<= (select (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| Mask@@13) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| Mask@@13) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4806) (o_2@@12 T@Ref) (f_4@@12 T@Field_8222_1204) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| Mask@@14) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_2568_1204 f_4@@12))) (not (IsWandField_2568_1204 f_4@@12))) (<= (select (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| Mask@@14) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| Mask@@14) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4806) (o_2@@13 T@Ref) (f_4@@13 T@Field_2565_8550) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| Mask@@15) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_2565_16690 f_4@@13))) (not (IsWandField_2565_20003 f_4@@13))) (<= (select (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| Mask@@15) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| Mask@@15) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_4806) (o_2@@14 T@Ref) (f_4@@14 T@Field_10667_10672) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| Mask@@16) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_2600_26460 f_4@@14))) (not (IsWandField_2600_26476 f_4@@14))) (<= (select (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| Mask@@16) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| Mask@@16) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_4806) (o_2@@15 T@Ref) (f_4@@15 T@Field_8549_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| Mask@@17) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2600_53 f_4@@15))) (not (IsWandField_2600_53 f_4@@15))) (<= (select (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| Mask@@17) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| Mask@@17) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_4806) (o_2@@16 T@Ref) (f_4@@16 T@Field_8549_2566) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| Mask@@18) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_2600_2566 f_4@@16))) (not (IsWandField_2600_2566 f_4@@16))) (<= (select (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| Mask@@18) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| Mask@@18) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_4806) (o_2@@17 T@Ref) (f_4@@17 T@Field_8549_1204) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_2600_1204 f_4@@17))) (not (IsWandField_2600_1204 f_4@@17))) (<= (select (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_4806) (o_2@@18 T@Ref) (f_4@@18 T@Field_8549_8550) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_2600_2601 f_4@@18))) (not (IsWandField_8549_20360 f_4@@18))) (<= (select (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_4806) (o_2@@19 T@Ref) (f_4@@19 T@Field_10667_10672) ) (! (= (HasDirectPerm_8549_16445 Mask@@21 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| Mask@@21) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8549_16445 Mask@@21 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_4806) (o_2@@20 T@Ref) (f_4@@20 T@Field_8549_8550) ) (! (= (HasDirectPerm_8549_8550 Mask@@22 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| Mask@@22) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8549_8550 Mask@@22 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_4806) (o_2@@21 T@Ref) (f_4@@21 T@Field_8549_1204) ) (! (= (HasDirectPerm_8549_1204 Mask@@23 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| Mask@@23) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8549_1204 Mask@@23 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_4806) (o_2@@22 T@Ref) (f_4@@22 T@Field_8549_53) ) (! (= (HasDirectPerm_8549_53 Mask@@24 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| Mask@@24) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8549_53 Mask@@24 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_4806) (o_2@@23 T@Ref) (f_4@@23 T@Field_8549_2566) ) (! (= (HasDirectPerm_8549_2566 Mask@@25 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| Mask@@25) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8549_2566 Mask@@25 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_4806) (o_2@@24 T@Ref) (f_4@@24 T@Field_2565_10672) ) (! (= (HasDirectPerm_2565_15284 Mask@@26 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| Mask@@26) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2565_15284 Mask@@26 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_4806) (o_2@@25 T@Ref) (f_4@@25 T@Field_2565_8550) ) (! (= (HasDirectPerm_2565_8550 Mask@@27 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| Mask@@27) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2565_8550 Mask@@27 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_4806) (o_2@@26 T@Ref) (f_4@@26 T@Field_8222_1204) ) (! (= (HasDirectPerm_2565_1204 Mask@@28 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| Mask@@28) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2565_1204 Mask@@28 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_4806) (o_2@@27 T@Ref) (f_4@@27 T@Field_4845_53) ) (! (= (HasDirectPerm_2565_53 Mask@@29 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| Mask@@29) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2565_53 Mask@@29 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_4806) (o_2@@28 T@Ref) (f_4@@28 T@Field_4858_4859) ) (! (= (HasDirectPerm_2565_2566 Mask@@30 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| Mask@@30) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2565_2566 Mask@@30 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4785) (ExhaleHeap@@9 T@PolymorphicMapType_4785) (Mask@@31 T@PolymorphicMapType_4806) (o_15@@0 T@Ref) (f_23@@39 T@Field_10667_10672) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_8549_16445 Mask@@31 o_15@@0 f_23@@39) (= (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@13) o_15@@0 f_23@@39) (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| ExhaleHeap@@9) o_15@@0 f_23@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| ExhaleHeap@@9) o_15@@0 f_23@@39))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4785) (ExhaleHeap@@10 T@PolymorphicMapType_4785) (Mask@@32 T@PolymorphicMapType_4806) (o_15@@1 T@Ref) (f_23@@40 T@Field_8549_8550) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_8549_8550 Mask@@32 o_15@@1 f_23@@40) (= (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@14) o_15@@1 f_23@@40) (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| ExhaleHeap@@10) o_15@@1 f_23@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| ExhaleHeap@@10) o_15@@1 f_23@@40))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4785) (ExhaleHeap@@11 T@PolymorphicMapType_4785) (Mask@@33 T@PolymorphicMapType_4806) (o_15@@2 T@Ref) (f_23@@41 T@Field_8549_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_8549_1204 Mask@@33 o_15@@2 f_23@@41) (= (select (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@15) o_15@@2 f_23@@41) (select (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| ExhaleHeap@@11) o_15@@2 f_23@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| ExhaleHeap@@11) o_15@@2 f_23@@41))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4785) (ExhaleHeap@@12 T@PolymorphicMapType_4785) (Mask@@34 T@PolymorphicMapType_4806) (o_15@@3 T@Ref) (f_23@@42 T@Field_8549_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_8549_53 Mask@@34 o_15@@3 f_23@@42) (= (select (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@16) o_15@@3 f_23@@42) (select (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| ExhaleHeap@@12) o_15@@3 f_23@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| ExhaleHeap@@12) o_15@@3 f_23@@42))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4785) (ExhaleHeap@@13 T@PolymorphicMapType_4785) (Mask@@35 T@PolymorphicMapType_4806) (o_15@@4 T@Ref) (f_23@@43 T@Field_8549_2566) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_8549_2566 Mask@@35 o_15@@4 f_23@@43) (= (select (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@17) o_15@@4 f_23@@43) (select (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| ExhaleHeap@@13) o_15@@4 f_23@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| ExhaleHeap@@13) o_15@@4 f_23@@43))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4785) (ExhaleHeap@@14 T@PolymorphicMapType_4785) (Mask@@36 T@PolymorphicMapType_4806) (o_15@@5 T@Ref) (f_23@@44 T@Field_2565_10672) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_2565_15284 Mask@@36 o_15@@5 f_23@@44) (= (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@18) o_15@@5 f_23@@44) (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| ExhaleHeap@@14) o_15@@5 f_23@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| ExhaleHeap@@14) o_15@@5 f_23@@44))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4785) (ExhaleHeap@@15 T@PolymorphicMapType_4785) (Mask@@37 T@PolymorphicMapType_4806) (o_15@@6 T@Ref) (f_23@@45 T@Field_2565_8550) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_2565_8550 Mask@@37 o_15@@6 f_23@@45) (= (select (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@19) o_15@@6 f_23@@45) (select (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| ExhaleHeap@@15) o_15@@6 f_23@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| ExhaleHeap@@15) o_15@@6 f_23@@45))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4785) (ExhaleHeap@@16 T@PolymorphicMapType_4785) (Mask@@38 T@PolymorphicMapType_4806) (o_15@@7 T@Ref) (f_23@@46 T@Field_8222_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_2565_1204 Mask@@38 o_15@@7 f_23@@46) (= (select (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@20) o_15@@7 f_23@@46) (select (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| ExhaleHeap@@16) o_15@@7 f_23@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| ExhaleHeap@@16) o_15@@7 f_23@@46))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4785) (ExhaleHeap@@17 T@PolymorphicMapType_4785) (Mask@@39 T@PolymorphicMapType_4806) (o_15@@8 T@Ref) (f_23@@47 T@Field_4845_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_2565_53 Mask@@39 o_15@@8 f_23@@47) (= (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@21) o_15@@8 f_23@@47) (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| ExhaleHeap@@17) o_15@@8 f_23@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| ExhaleHeap@@17) o_15@@8 f_23@@47))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4785) (ExhaleHeap@@18 T@PolymorphicMapType_4785) (Mask@@40 T@PolymorphicMapType_4806) (o_15@@9 T@Ref) (f_23@@48 T@Field_4858_4859) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_2565_2566 Mask@@40 o_15@@9 f_23@@48) (= (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@22) o_15@@9 f_23@@48) (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| ExhaleHeap@@18) o_15@@9 f_23@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| ExhaleHeap@@18) o_15@@9 f_23@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_2565_10672) ) (! (= (select (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_4845_53) ) (! (= (select (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_4858_4859) ) (! (= (select (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_8222_1204) ) (! (= (select (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_2565_8550) ) (! (= (select (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_10667_10672) ) (! (= (select (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_8549_53) ) (! (= (select (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_8549_2566) ) (! (= (select (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_8549_1204) ) (! (= (select (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_8549_8550) ) (! (= (select (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4785) (this@@5 T@Ref) (index@@1 Int) ) (!  (and (= (get Heap@@23 this@@5 index@@1) (|get'| Heap@@23 this@@5 index@@1)) (dummyFunction_1454 (|get#triggerStateless| this@@5 index@@1)))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (get Heap@@23 this@@5 index@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4806) (SummandMask1 T@PolymorphicMapType_4806) (SummandMask2 T@PolymorphicMapType_4806) (o_2@@39 T@Ref) (f_4@@39 T@Field_2565_10672) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4806) (SummandMask1@@0 T@PolymorphicMapType_4806) (SummandMask2@@0 T@PolymorphicMapType_4806) (o_2@@40 T@Ref) (f_4@@40 T@Field_4845_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4806) (SummandMask1@@1 T@PolymorphicMapType_4806) (SummandMask2@@1 T@PolymorphicMapType_4806) (o_2@@41 T@Ref) (f_4@@41 T@Field_4858_4859) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4806) (SummandMask1@@2 T@PolymorphicMapType_4806) (SummandMask2@@2 T@PolymorphicMapType_4806) (o_2@@42 T@Ref) (f_4@@42 T@Field_8222_1204) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4806) (SummandMask1@@3 T@PolymorphicMapType_4806) (SummandMask2@@3 T@PolymorphicMapType_4806) (o_2@@43 T@Ref) (f_4@@43 T@Field_2565_8550) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_4806) (SummandMask1@@4 T@PolymorphicMapType_4806) (SummandMask2@@4 T@PolymorphicMapType_4806) (o_2@@44 T@Ref) (f_4@@44 T@Field_10667_10672) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_4806) (SummandMask1@@5 T@PolymorphicMapType_4806) (SummandMask2@@5 T@PolymorphicMapType_4806) (o_2@@45 T@Ref) (f_4@@45 T@Field_8549_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_4806) (SummandMask1@@6 T@PolymorphicMapType_4806) (SummandMask2@@6 T@PolymorphicMapType_4806) (o_2@@46 T@Ref) (f_4@@46 T@Field_8549_2566) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_4806) (SummandMask1@@7 T@PolymorphicMapType_4806) (SummandMask2@@7 T@PolymorphicMapType_4806) (o_2@@47 T@Ref) (f_4@@47 T@Field_8549_1204) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_4806) (SummandMask1@@8 T@PolymorphicMapType_4806) (SummandMask2@@8 T@PolymorphicMapType_4806) (o_2@@48 T@Ref) (f_4@@48 T@Field_8549_8550) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4785) (Mask@@41 T@PolymorphicMapType_4806) (this@@6 T@Ref) (index@@2 Int) ) (!  (=> (state Heap@@24 Mask@@41) (= (|get'| Heap@@24 this@@6 index@@2) (|get#frame| (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@24) null (valid this@@6)) this@@6 index@@2)))
 :qid |stdinbpl.214:15|
 :skolemid |25|
 :pattern ( (state Heap@@24 Mask@@41) (|get'| Heap@@24 this@@6 index@@2))
)))
(assert (forall ((this@@7 T@Ref) ) (! (= (getPredWandId_2600_2601 (valid this@@7)) 0)
 :qid |stdinbpl.336:15|
 :skolemid |29|
 :pattern ( (valid this@@7))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4785) (o_14 T@Ref) (f_24 T@Field_10667_10672) (v T@PolymorphicMapType_5334) ) (! (succHeap Heap@@25 (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@25) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@25) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@25) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@25) (store (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@25) o_14 f_24 v) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@25) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@25) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@25) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@25) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@25) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@25) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@25) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@25) (store (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@25) o_14 f_24 v) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@25) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@25) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@25) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@25) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4785) (o_14@@0 T@Ref) (f_24@@0 T@Field_8549_1204) (v@@0 Int) ) (! (succHeap Heap@@26 (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@26) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@26) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@26) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@26) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@26) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@26) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@26) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@26) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@26) (store (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@26) o_14@@0 f_24@@0 v@@0)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@26) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@26) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@26) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@26) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@26) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@26) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@26) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@26) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@26) (store (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@26) o_14@@0 f_24@@0 v@@0)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_4785) (o_14@@1 T@Ref) (f_24@@1 T@Field_8549_8550) (v@@1 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@27) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@27) (store (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@27) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@27) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@27) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@27) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@27) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@27) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@27) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@27) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@27) (store (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@27) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@27) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@27) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@27) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@27) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@27) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@27) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_4785) (o_14@@2 T@Ref) (f_24@@2 T@Field_8549_2566) (v@@2 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@28) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@28) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@28) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@28) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@28) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@28) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@28) (store (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@28) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@28) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@28) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@28) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@28) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@28) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@28) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@28) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@28) (store (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@28) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@28) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_4785) (o_14@@3 T@Ref) (f_24@@3 T@Field_8549_53) (v@@3 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@29) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@29) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@29) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@29) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@29) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@29) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@29) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@29) (store (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@29) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@29) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@29) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@29) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@29) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@29) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@29) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@29) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@29) (store (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@29) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_4785) (o_14@@4 T@Ref) (f_24@@4 T@Field_2565_10672) (v@@4 T@PolymorphicMapType_5334) ) (! (succHeap Heap@@30 (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@30) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@30) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@30) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@30) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@30) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@30) (store (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@30) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@30) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@30) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@30) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@30) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@30) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@30) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@30) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@30) (store (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@30) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@30) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@30) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_4785) (o_14@@5 T@Ref) (f_24@@5 T@Field_8222_1204) (v@@5 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@31) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@31) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@31) (store (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@31) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@31) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@31) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@31) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@31) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@31) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@31) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@31) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@31) (store (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@31) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@31) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@31) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@31) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@31) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@31) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_4785) (o_14@@6 T@Ref) (f_24@@6 T@Field_2565_8550) (v@@6 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@32) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@32) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@32) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@32) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@32) (store (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@32) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@32) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@32) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@32) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@32) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@32) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@32) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@32) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@32) (store (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@32) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@32) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@32) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@32) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_4785) (o_14@@7 T@Ref) (f_24@@7 T@Field_4858_4859) (v@@7 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@33) (store (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@33) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@33) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@33) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@33) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@33) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@33) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@33) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@33) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@33) (store (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@33) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@33) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@33) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@33) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@33) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@33) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@33) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@33) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_4785) (o_14@@8 T@Ref) (f_24@@8 T@Field_4845_53) (v@@8 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_4785 (store (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@34) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@34) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@34) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@34) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@34) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@34) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@34) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@34) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@34) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4785 (store (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@34) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@34) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@34) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@34) (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@34) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@34) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@34) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@34) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@34) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@34)))
)))
(assert (forall ((this@@8 T@Ref) ) (! (= (PredicateMaskField_2600 (valid this@@8)) (|valid#sm| this@@8))
 :qid |stdinbpl.328:15|
 :skolemid |27|
 :pattern ( (PredicateMaskField_2600 (valid this@@8)))
)))
(assert (forall ((o_14@@9 T@Ref) (f_22 T@Field_4858_4859) (Heap@@35 T@PolymorphicMapType_4785) ) (!  (=> (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@35) o_14@@9 $allocated) (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@35) (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@35) o_14@@9 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@35) o_14@@9 f_22))
)))
(assert (forall ((p@@2 T@Field_2565_8550) (v_1@@1 T@FrameType) (q T@Field_2565_8550) (w@@1 T@FrameType) (r T@Field_2565_8550) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4845_4845 p@@2 v_1@@1 q w@@1) (InsidePredicate_4845_4845 q w@@1 r u)) (InsidePredicate_4845_4845 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4845_4845 p@@2 v_1@@1 q w@@1) (InsidePredicate_4845_4845 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_2565_8550) (v_1@@2 T@FrameType) (q@@0 T@Field_2565_8550) (w@@2 T@FrameType) (r@@0 T@Field_8549_8550) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_4845_4845 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_4845_2600 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_4845_2600 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4845_4845 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_4845_2600 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_2565_8550) (v_1@@3 T@FrameType) (q@@1 T@Field_8549_8550) (w@@3 T@FrameType) (r@@1 T@Field_2565_8550) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_4845_2600 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_2600_4845 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_4845_4845 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4845_2600 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_2600_4845 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_2565_8550) (v_1@@4 T@FrameType) (q@@2 T@Field_8549_8550) (w@@4 T@FrameType) (r@@2 T@Field_8549_8550) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_4845_2600 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_2600_2600 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_4845_2600 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4845_2600 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_2600_2600 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_8549_8550) (v_1@@5 T@FrameType) (q@@3 T@Field_2565_8550) (w@@5 T@FrameType) (r@@3 T@Field_2565_8550) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_2600_4845 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_4845_4845 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_2600_4845 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2600_4845 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_4845_4845 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_8549_8550) (v_1@@6 T@FrameType) (q@@4 T@Field_2565_8550) (w@@6 T@FrameType) (r@@4 T@Field_8549_8550) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_2600_4845 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_4845_2600 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_2600_2600 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2600_4845 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_4845_2600 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_8549_8550) (v_1@@7 T@FrameType) (q@@5 T@Field_8549_8550) (w@@7 T@FrameType) (r@@5 T@Field_2565_8550) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_2600_2600 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_2600_4845 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_2600_4845 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2600_2600 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_2600_4845 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_8549_8550) (v_1@@8 T@FrameType) (q@@6 T@Field_8549_8550) (w@@8 T@FrameType) (r@@6 T@Field_8549_8550) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_2600_2600 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_2600_2600 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_2600_2600 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2600_2600 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_2600_2600 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@3 () T@PolymorphicMapType_4785)
(declare-fun this@@9 () T@Ref)
(declare-fun UnfoldingMask@7 () T@PolymorphicMapType_4806)
(declare-fun UnfoldingMask@5 () T@PolymorphicMapType_4806)
(declare-fun UnfoldingMask@6 () T@PolymorphicMapType_4806)
(declare-fun Mask@0 () T@PolymorphicMapType_4806)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1204 (Int) T@FrameType)
(declare-fun FrameFragment_2566 (T@Ref) T@FrameType)
(declare-fun FrameFragment_2601 (T@FrameType) T@FrameType)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_4806)
(declare-fun Heap@1 () T@PolymorphicMapType_4785)
(declare-fun newPMask@0 () T@PolymorphicMapType_5334)
(declare-fun Heap@2 () T@PolymorphicMapType_4785)
(declare-fun Heap@@36 () T@PolymorphicMapType_4785)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_4806)
(declare-fun Heap@0 () T@PolymorphicMapType_4785)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_4806)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_4806)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_4806)
(set-info :boogie-vc-id |get#definedness|)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon6_correct true))
(let ((anon9_Else_correct  (=> (= (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@3) this@@9 next) null) (=> (and (= UnfoldingMask@7 UnfoldingMask@5) (= (ControlFlow 0 3) 1)) anon6_correct))))
(let ((anon9_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@3) this@@9 next) null)) (= UnfoldingMask@6 (PolymorphicMapType_4806 (store (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| UnfoldingMask@5) null (valid (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@3) this@@9 next)) (+ (select (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| UnfoldingMask@5) null (valid (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@3) this@@9 next))) FullPerm)) (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| UnfoldingMask@5) (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| UnfoldingMask@5) (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| UnfoldingMask@5) (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| UnfoldingMask@5) (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| UnfoldingMask@5) (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| UnfoldingMask@5) (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| UnfoldingMask@5) (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| UnfoldingMask@5) (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| UnfoldingMask@5)))) (=> (and (and (InsidePredicate_2600_2600 (valid this@@9) (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@3) null (valid this@@9)) (valid (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@3) this@@9 next)) (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@3) null (valid (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@3) this@@9 next)))) (state Heap@3 UnfoldingMask@6)) (and (= UnfoldingMask@7 UnfoldingMask@6) (= (ControlFlow 0 2) 1))) anon6_correct))))
(let ((anon4_correct  (=> (state Heap@3 Mask@0) (=> (and (and (and (|valid#trigger_2600| Heap@3 (valid this@@9)) (= (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@3) null (valid this@@9)) (CombineFrames (FrameFragment_1204 (select (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@3) this@@9 elem)) (CombineFrames (FrameFragment_2566 (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@3) this@@9 next)) (FrameFragment_2601 (ite (not (= (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@3) this@@9 next) null)) (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@3) null (valid (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@3) this@@9 next))) EmptyFrame)))))) (and (not (= this@@9 null)) (= UnfoldingMask@4 (PolymorphicMapType_4806 (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| Mask@0) (store (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| Mask@0) this@@9 elem (+ (select (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| Mask@0) this@@9 elem) FullPerm)) (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| Mask@0) (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| Mask@0) (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| Mask@0) (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| Mask@0) (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| Mask@0) (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| Mask@0) (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| Mask@0) (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| Mask@0))))) (and (and (state Heap@3 UnfoldingMask@4) (not (= this@@9 null))) (and (= UnfoldingMask@5 (PolymorphicMapType_4806 (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| UnfoldingMask@4) (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| UnfoldingMask@4) (store (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| UnfoldingMask@4) this@@9 next (+ (select (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| UnfoldingMask@4) this@@9 next) FullPerm)) (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| UnfoldingMask@4) (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| UnfoldingMask@4) (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| UnfoldingMask@4) (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| UnfoldingMask@4) (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| UnfoldingMask@4) (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| UnfoldingMask@4) (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| UnfoldingMask@4))) (state Heap@3 UnfoldingMask@5)))) (and (=> (= (ControlFlow 0 4) 2) anon9_Then_correct) (=> (= (ControlFlow 0 4) 3) anon9_Else_correct))))))
(let ((anon8_Else_correct  (=> (= (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@1) this@@9 next) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 6) 4)) anon4_correct))))
(let ((anon8_Then_correct  (=> (not (= (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@1) this@@9 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_5 T@Ref) (f_11 T@Field_8222_1204) ) (!  (=> (or (select (|PolymorphicMapType_5334_2568_1204#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| this@@9))) o_5 f_11) (select (|PolymorphicMapType_5334_2568_1204#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@1) this@@9 next)))) o_5 f_11)) (select (|PolymorphicMapType_5334_2568_1204#PolymorphicMapType_5334| newPMask@0) o_5 f_11))
 :qid |stdinbpl.282:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_5334_2568_1204#PolymorphicMapType_5334| newPMask@0) o_5 f_11))
)) (forall ((o_5@@0 T@Ref) (f_11@@0 T@Field_4858_4859) ) (!  (=> (or (select (|PolymorphicMapType_5334_2565_2566#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| this@@9))) o_5@@0 f_11@@0) (select (|PolymorphicMapType_5334_2565_2566#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@1) this@@9 next)))) o_5@@0 f_11@@0)) (select (|PolymorphicMapType_5334_2565_2566#PolymorphicMapType_5334| newPMask@0) o_5@@0 f_11@@0))
 :qid |stdinbpl.282:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_5334_2565_2566#PolymorphicMapType_5334| newPMask@0) o_5@@0 f_11@@0))
))) (forall ((o_5@@1 T@Ref) (f_11@@1 T@Field_4845_53) ) (!  (=> (or (select (|PolymorphicMapType_5334_2568_53#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| this@@9))) o_5@@1 f_11@@1) (select (|PolymorphicMapType_5334_2568_53#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@1) this@@9 next)))) o_5@@1 f_11@@1)) (select (|PolymorphicMapType_5334_2568_53#PolymorphicMapType_5334| newPMask@0) o_5@@1 f_11@@1))
 :qid |stdinbpl.282:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_5334_2568_53#PolymorphicMapType_5334| newPMask@0) o_5@@1 f_11@@1))
))) (forall ((o_5@@2 T@Ref) (f_11@@2 T@Field_2565_8550) ) (!  (=> (or (select (|PolymorphicMapType_5334_2568_8550#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| this@@9))) o_5@@2 f_11@@2) (select (|PolymorphicMapType_5334_2568_8550#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@1) this@@9 next)))) o_5@@2 f_11@@2)) (select (|PolymorphicMapType_5334_2568_8550#PolymorphicMapType_5334| newPMask@0) o_5@@2 f_11@@2))
 :qid |stdinbpl.282:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_5334_2568_8550#PolymorphicMapType_5334| newPMask@0) o_5@@2 f_11@@2))
))) (forall ((o_5@@3 T@Ref) (f_11@@3 T@Field_2565_10672) ) (!  (=> (or (select (|PolymorphicMapType_5334_2568_18147#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| this@@9))) o_5@@3 f_11@@3) (select (|PolymorphicMapType_5334_2568_18147#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@1) this@@9 next)))) o_5@@3 f_11@@3)) (select (|PolymorphicMapType_5334_2568_18147#PolymorphicMapType_5334| newPMask@0) o_5@@3 f_11@@3))
 :qid |stdinbpl.282:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_5334_2568_18147#PolymorphicMapType_5334| newPMask@0) o_5@@3 f_11@@3))
))) (forall ((o_5@@4 T@Ref) (f_11@@4 T@Field_8549_1204) ) (!  (=> (or (select (|PolymorphicMapType_5334_8549_1204#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| this@@9))) o_5@@4 f_11@@4) (select (|PolymorphicMapType_5334_8549_1204#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@1) this@@9 next)))) o_5@@4 f_11@@4)) (select (|PolymorphicMapType_5334_8549_1204#PolymorphicMapType_5334| newPMask@0) o_5@@4 f_11@@4))
 :qid |stdinbpl.282:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_5334_8549_1204#PolymorphicMapType_5334| newPMask@0) o_5@@4 f_11@@4))
))) (forall ((o_5@@5 T@Ref) (f_11@@5 T@Field_8549_2566) ) (!  (=> (or (select (|PolymorphicMapType_5334_8549_2566#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| this@@9))) o_5@@5 f_11@@5) (select (|PolymorphicMapType_5334_8549_2566#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@1) this@@9 next)))) o_5@@5 f_11@@5)) (select (|PolymorphicMapType_5334_8549_2566#PolymorphicMapType_5334| newPMask@0) o_5@@5 f_11@@5))
 :qid |stdinbpl.282:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_5334_8549_2566#PolymorphicMapType_5334| newPMask@0) o_5@@5 f_11@@5))
))) (forall ((o_5@@6 T@Ref) (f_11@@6 T@Field_8549_53) ) (!  (=> (or (select (|PolymorphicMapType_5334_8549_53#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| this@@9))) o_5@@6 f_11@@6) (select (|PolymorphicMapType_5334_8549_53#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@1) this@@9 next)))) o_5@@6 f_11@@6)) (select (|PolymorphicMapType_5334_8549_53#PolymorphicMapType_5334| newPMask@0) o_5@@6 f_11@@6))
 :qid |stdinbpl.282:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_5334_8549_53#PolymorphicMapType_5334| newPMask@0) o_5@@6 f_11@@6))
))) (forall ((o_5@@7 T@Ref) (f_11@@7 T@Field_8549_8550) ) (!  (=> (or (select (|PolymorphicMapType_5334_8549_8550#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| this@@9))) o_5@@7 f_11@@7) (select (|PolymorphicMapType_5334_8549_8550#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@1) this@@9 next)))) o_5@@7 f_11@@7)) (select (|PolymorphicMapType_5334_8549_8550#PolymorphicMapType_5334| newPMask@0) o_5@@7 f_11@@7))
 :qid |stdinbpl.282:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_5334_8549_8550#PolymorphicMapType_5334| newPMask@0) o_5@@7 f_11@@7))
))) (forall ((o_5@@8 T@Ref) (f_11@@8 T@Field_10667_10672) ) (!  (=> (or (select (|PolymorphicMapType_5334_8549_19195#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| this@@9))) o_5@@8 f_11@@8) (select (|PolymorphicMapType_5334_8549_19195#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@1) this@@9 next)))) o_5@@8 f_11@@8)) (select (|PolymorphicMapType_5334_8549_19195#PolymorphicMapType_5334| newPMask@0) o_5@@8 f_11@@8))
 :qid |stdinbpl.282:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_5334_8549_19195#PolymorphicMapType_5334| newPMask@0) o_5@@8 f_11@@8))
))) (= Heap@2 (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@1) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@1) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@1) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@1) (store (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@1) null (|valid#sm| this@@9) newPMask@0) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@1) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@1) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@1) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@1) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 5) 4))) anon4_correct))))
(let ((anon2_correct  (=> (state Heap@@36 UnfoldingMask@3) (=> (and (= Heap@0 (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@36) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@36) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@36) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@36) (store (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@36) null (|valid#sm| this@@9) (PolymorphicMapType_5334 (store (|PolymorphicMapType_5334_2568_1204#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@36) null (|valid#sm| this@@9))) this@@9 elem true) (|PolymorphicMapType_5334_2565_2566#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@36) null (|valid#sm| this@@9))) (|PolymorphicMapType_5334_2568_53#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@36) null (|valid#sm| this@@9))) (|PolymorphicMapType_5334_2568_8550#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@36) null (|valid#sm| this@@9))) (|PolymorphicMapType_5334_2568_18147#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@36) null (|valid#sm| this@@9))) (|PolymorphicMapType_5334_8549_1204#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@36) null (|valid#sm| this@@9))) (|PolymorphicMapType_5334_8549_2566#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@36) null (|valid#sm| this@@9))) (|PolymorphicMapType_5334_8549_53#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@36) null (|valid#sm| this@@9))) (|PolymorphicMapType_5334_8549_8550#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@36) null (|valid#sm| this@@9))) (|PolymorphicMapType_5334_8549_19195#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@@36) null (|valid#sm| this@@9))))) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@@36) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@@36) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@@36) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@@36) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@@36))) (= Heap@1 (PolymorphicMapType_4785 (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@0) (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@0) (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@0) (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@0) (store (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@0) null (|valid#sm| this@@9) (PolymorphicMapType_5334 (|PolymorphicMapType_5334_2568_1204#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@0) null (|valid#sm| this@@9))) (store (|PolymorphicMapType_5334_2565_2566#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@0) null (|valid#sm| this@@9))) this@@9 next true) (|PolymorphicMapType_5334_2568_53#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@0) null (|valid#sm| this@@9))) (|PolymorphicMapType_5334_2568_8550#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@0) null (|valid#sm| this@@9))) (|PolymorphicMapType_5334_2568_18147#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@0) null (|valid#sm| this@@9))) (|PolymorphicMapType_5334_8549_1204#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@0) null (|valid#sm| this@@9))) (|PolymorphicMapType_5334_8549_2566#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@0) null (|valid#sm| this@@9))) (|PolymorphicMapType_5334_8549_53#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@0) null (|valid#sm| this@@9))) (|PolymorphicMapType_5334_8549_8550#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@0) null (|valid#sm| this@@9))) (|PolymorphicMapType_5334_8549_19195#PolymorphicMapType_5334| (select (|PolymorphicMapType_4785_2604_10759#PolymorphicMapType_4785| Heap@0) null (|valid#sm| this@@9))))) (|PolymorphicMapType_4785_2565_8550#PolymorphicMapType_4785| Heap@0) (|PolymorphicMapType_4785_2565_15326#PolymorphicMapType_4785| Heap@0) (|PolymorphicMapType_4785_8549_2566#PolymorphicMapType_4785| Heap@0) (|PolymorphicMapType_4785_8549_53#PolymorphicMapType_4785| Heap@0) (|PolymorphicMapType_4785_8549_1204#PolymorphicMapType_4785| Heap@0)))) (and (=> (= (ControlFlow 0 7) 5) anon8_Then_correct) (=> (= (ControlFlow 0 7) 6) anon8_Else_correct))))))
(let ((anon7_Else_correct  (=> (= (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@36) this@@9 next) null) (=> (and (= UnfoldingMask@3 UnfoldingMask@1) (= (ControlFlow 0 9) 7)) anon2_correct))))
(let ((anon7_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@36) this@@9 next) null)) (= UnfoldingMask@2 (PolymorphicMapType_4806 (store (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| UnfoldingMask@1) null (valid (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@36) this@@9 next)) (+ (select (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| UnfoldingMask@1) null (valid (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@36) this@@9 next))) FullPerm)) (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| UnfoldingMask@1) (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| UnfoldingMask@1) (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| UnfoldingMask@1) (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| UnfoldingMask@1) (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| UnfoldingMask@1) (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| UnfoldingMask@1) (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| UnfoldingMask@1) (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| UnfoldingMask@1) (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| UnfoldingMask@1)))) (=> (and (and (InsidePredicate_2600_2600 (valid this@@9) (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@36) null (valid this@@9)) (valid (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@36) this@@9 next)) (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@36) null (valid (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@36) this@@9 next)))) (state Heap@@36 UnfoldingMask@2)) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 8) 7))) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@36 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_4785_2437_53#PolymorphicMapType_4785| Heap@@36) this@@9 $allocated)) (and (= AssumeFunctionsAbove 0) (= Mask@0 (PolymorphicMapType_4806 (store (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| ZeroMask) null (valid this@@9) (+ (select (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| ZeroMask) null (valid this@@9)) FullPerm)) (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| ZeroMask) (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| ZeroMask) (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| ZeroMask) (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| ZeroMask) (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| ZeroMask) (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| ZeroMask) (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| ZeroMask) (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| ZeroMask) (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| ZeroMask))))) (and (and (state Heap@@36 Mask@0) (state Heap@@36 Mask@0)) (and (|valid#trigger_2600| Heap@@36 (valid this@@9)) (= (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@36) null (valid this@@9)) (CombineFrames (FrameFragment_1204 (select (|PolymorphicMapType_4785_2568_1204#PolymorphicMapType_4785| Heap@@36) this@@9 elem)) (CombineFrames (FrameFragment_2566 (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@36) this@@9 next)) (FrameFragment_2601 (ite (not (= (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@36) this@@9 next) null)) (select (|PolymorphicMapType_4785_2600_2601#PolymorphicMapType_4785| Heap@@36) null (valid (select (|PolymorphicMapType_4785_2440_2441#PolymorphicMapType_4785| Heap@@36) this@@9 next))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| Mask@0) null (valid this@@9))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| Mask@0) null (valid this@@9)))) (=> (and (not (= this@@9 null)) (= UnfoldingMask@0 (PolymorphicMapType_4806 (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| Mask@0) (store (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| Mask@0) this@@9 elem (+ (select (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| Mask@0) this@@9 elem) FullPerm)) (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| Mask@0) (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| Mask@0) (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| Mask@0) (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| Mask@0) (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| Mask@0) (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| Mask@0) (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| Mask@0) (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| Mask@0)))) (=> (and (and (state Heap@@36 UnfoldingMask@0) (not (= this@@9 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_4806 (|PolymorphicMapType_4806_2600_2601#PolymorphicMapType_4806| UnfoldingMask@0) (|PolymorphicMapType_4806_2568_1204#PolymorphicMapType_4806| UnfoldingMask@0) (store (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| UnfoldingMask@0) this@@9 next (+ (select (|PolymorphicMapType_4806_2565_2566#PolymorphicMapType_4806| UnfoldingMask@0) this@@9 next) FullPerm)) (|PolymorphicMapType_4806_2600_1204#PolymorphicMapType_4806| UnfoldingMask@0) (|PolymorphicMapType_4806_2600_2566#PolymorphicMapType_4806| UnfoldingMask@0) (|PolymorphicMapType_4806_2600_53#PolymorphicMapType_4806| UnfoldingMask@0) (|PolymorphicMapType_4806_2600_24586#PolymorphicMapType_4806| UnfoldingMask@0) (|PolymorphicMapType_4806_2568_2601#PolymorphicMapType_4806| UnfoldingMask@0) (|PolymorphicMapType_4806_2568_53#PolymorphicMapType_4806| UnfoldingMask@0) (|PolymorphicMapType_4806_2568_24985#PolymorphicMapType_4806| UnfoldingMask@0))) (state Heap@@36 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 10) 8) anon7_Then_correct) (=> (= (ControlFlow 0 10) 9) anon7_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12) 10) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
