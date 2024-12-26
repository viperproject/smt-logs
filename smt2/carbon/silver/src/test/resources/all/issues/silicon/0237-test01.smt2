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
(declare-sort T@Field_7320_53 0)
(declare-sort T@Field_7333_7334 0)
(declare-sort T@Field_10771_1473 0)
(declare-sort T@Field_7320_22073 0)
(declare-sort T@Field_7320_21940 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7281 0)) (((PolymorphicMapType_7281 (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| (Array T@Ref T@Field_10771_1473 Real)) (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| (Array T@Ref T@Field_7320_53 Real)) (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| (Array T@Ref T@Field_7333_7334 Real)) (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| (Array T@Ref T@Field_7320_21940 Real)) (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| (Array T@Ref T@Field_7320_22073 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7809 0)) (((PolymorphicMapType_7809 (|PolymorphicMapType_7809_7320_53#PolymorphicMapType_7809| (Array T@Ref T@Field_7320_53 Bool)) (|PolymorphicMapType_7809_7320_7334#PolymorphicMapType_7809| (Array T@Ref T@Field_7333_7334 Bool)) (|PolymorphicMapType_7809_7320_1473#PolymorphicMapType_7809| (Array T@Ref T@Field_10771_1473 Bool)) (|PolymorphicMapType_7809_7320_21940#PolymorphicMapType_7809| (Array T@Ref T@Field_7320_21940 Bool)) (|PolymorphicMapType_7809_7320_23251#PolymorphicMapType_7809| (Array T@Ref T@Field_7320_22073 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7260 0)) (((PolymorphicMapType_7260 (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| (Array T@Ref T@Field_7320_53 Bool)) (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| (Array T@Ref T@Field_7333_7334 T@Ref)) (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| (Array T@Ref T@Field_10771_1473 Int)) (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| (Array T@Ref T@Field_7320_22073 T@PolymorphicMapType_7809)) (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| (Array T@Ref T@Field_7320_21940 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7320_53)
(declare-fun val () T@Field_10771_1473)
(declare-fun succHeap (T@PolymorphicMapType_7260 T@PolymorphicMapType_7260) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7260 T@PolymorphicMapType_7260) Bool)
(declare-fun state (T@PolymorphicMapType_7260 T@PolymorphicMapType_7281) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7281) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7809)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7260 T@PolymorphicMapType_7260 T@PolymorphicMapType_7281) Bool)
(declare-fun IsPredicateField_7320_22031 (T@Field_7320_21940) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7320 (T@Field_7320_21940) T@Field_7320_22073)
(declare-fun HasDirectPerm_7320_22004 (T@PolymorphicMapType_7281 T@Ref T@Field_7320_21940) Bool)
(declare-fun IsWandField_7320_23778 (T@Field_7320_21940) Bool)
(declare-fun WandMaskField_7320 (T@Field_7320_21940) T@Field_7320_22073)
(declare-fun dummyHeap () T@PolymorphicMapType_7260)
(declare-fun ZeroMask () T@PolymorphicMapType_7281)
(declare-fun InsidePredicate_7320_7320 (T@Field_7320_21940 T@FrameType T@Field_7320_21940 T@FrameType) Bool)
(declare-fun IsPredicateField_4511_1473 (T@Field_10771_1473) Bool)
(declare-fun IsWandField_4511_1473 (T@Field_10771_1473) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4511_27324 (T@Field_7320_22073) Bool)
(declare-fun IsWandField_4511_27340 (T@Field_7320_22073) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4511_7334 (T@Field_7333_7334) Bool)
(declare-fun IsWandField_4511_7334 (T@Field_7333_7334) Bool)
(declare-fun IsPredicateField_4511_53 (T@Field_7320_53) Bool)
(declare-fun IsWandField_4511_53 (T@Field_7320_53) Bool)
(declare-fun HasDirectPerm_7320_27778 (T@PolymorphicMapType_7281 T@Ref T@Field_7320_22073) Bool)
(declare-fun HasDirectPerm_7320_1473 (T@PolymorphicMapType_7281 T@Ref T@Field_10771_1473) Bool)
(declare-fun HasDirectPerm_7320_7334 (T@PolymorphicMapType_7281 T@Ref T@Field_7333_7334) Bool)
(declare-fun HasDirectPerm_7320_53 (T@PolymorphicMapType_7281 T@Ref T@Field_7320_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7281 T@PolymorphicMapType_7281 T@PolymorphicMapType_7281) Bool)
(declare-fun len_1 (T@Ref) Int)
(declare-fun loc (T@Ref Int) T@Ref)
(declare-fun first (T@Ref) T@Ref)
(declare-fun second (T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_7260) (Heap1 T@PolymorphicMapType_7260) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7260) (Mask T@PolymorphicMapType_7281) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7260) (Heap1@@0 T@PolymorphicMapType_7260) (Heap2 T@PolymorphicMapType_7260) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7320_22073) ) (!  (not (select (|PolymorphicMapType_7809_7320_23251#PolymorphicMapType_7809| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7809_7320_23251#PolymorphicMapType_7809| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7320_21940) ) (!  (not (select (|PolymorphicMapType_7809_7320_21940#PolymorphicMapType_7809| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7809_7320_21940#PolymorphicMapType_7809| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10771_1473) ) (!  (not (select (|PolymorphicMapType_7809_7320_1473#PolymorphicMapType_7809| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7809_7320_1473#PolymorphicMapType_7809| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7333_7334) ) (!  (not (select (|PolymorphicMapType_7809_7320_7334#PolymorphicMapType_7809| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7809_7320_7334#PolymorphicMapType_7809| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7320_53) ) (!  (not (select (|PolymorphicMapType_7809_7320_53#PolymorphicMapType_7809| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7809_7320_53#PolymorphicMapType_7809| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7260) (ExhaleHeap T@PolymorphicMapType_7260) (Mask@@0 T@PolymorphicMapType_7281) (pm_f_3 T@Field_7320_21940) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7320_22004 Mask@@0 null pm_f_3) (IsPredicateField_7320_22031 pm_f_3)) (= (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@0) null (PredicateMaskField_7320 pm_f_3)) (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap) null (PredicateMaskField_7320 pm_f_3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_7320_22031 pm_f_3) (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap) null (PredicateMaskField_7320 pm_f_3)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7260) (ExhaleHeap@@0 T@PolymorphicMapType_7260) (Mask@@1 T@PolymorphicMapType_7281) (pm_f_3@@0 T@Field_7320_21940) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7320_22004 Mask@@1 null pm_f_3@@0) (IsWandField_7320_23778 pm_f_3@@0)) (= (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@1) null (WandMaskField_7320 pm_f_3@@0)) (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap@@0) null (WandMaskField_7320 pm_f_3@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_7320_23778 pm_f_3@@0) (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap@@0) null (WandMaskField_7320 pm_f_3@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7260) (ExhaleHeap@@1 T@PolymorphicMapType_7260) (Mask@@2 T@PolymorphicMapType_7281) (o_8 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@2) o_8 $allocated) (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| ExhaleHeap@@1) o_8 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| ExhaleHeap@@1) o_8 $allocated))
)))
(assert (forall ((p T@Field_7320_21940) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7320_7320 p v_1 p w))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7320_7320 p v_1 p w))
)))
(assert  (not (IsPredicateField_4511_1473 val)))
(assert  (not (IsWandField_4511_1473 val)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7260) (ExhaleHeap@@2 T@PolymorphicMapType_7260) (Mask@@3 T@PolymorphicMapType_7281) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_7281) (o_2@@4 T@Ref) (f_4@@4 T@Field_7320_22073) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4511_27324 f_4@@4))) (not (IsWandField_4511_27340 f_4@@4))) (<= (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_7281) (o_2@@5 T@Ref) (f_4@@5 T@Field_7320_21940) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_7320_22031 f_4@@5))) (not (IsWandField_7320_23778 f_4@@5))) (<= (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_7281) (o_2@@6 T@Ref) (f_4@@6 T@Field_7333_7334) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4511_7334 f_4@@6))) (not (IsWandField_4511_7334 f_4@@6))) (<= (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7281) (o_2@@7 T@Ref) (f_4@@7 T@Field_7320_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4511_53 f_4@@7))) (not (IsWandField_4511_53 f_4@@7))) (<= (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7281) (o_2@@8 T@Ref) (f_4@@8 T@Field_10771_1473) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4511_1473 f_4@@8))) (not (IsWandField_4511_1473 f_4@@8))) (<= (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7281) (o_2@@9 T@Ref) (f_4@@9 T@Field_7320_22073) ) (! (= (HasDirectPerm_7320_27778 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7320_27778 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7281) (o_2@@10 T@Ref) (f_4@@10 T@Field_7320_21940) ) (! (= (HasDirectPerm_7320_22004 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7320_22004 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7281) (o_2@@11 T@Ref) (f_4@@11 T@Field_10771_1473) ) (! (= (HasDirectPerm_7320_1473 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7320_1473 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7281) (o_2@@12 T@Ref) (f_4@@12 T@Field_7333_7334) ) (! (= (HasDirectPerm_7320_7334 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7320_7334 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7281) (o_2@@13 T@Ref) (f_4@@13 T@Field_7320_53) ) (! (= (HasDirectPerm_7320_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7320_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7260) (ExhaleHeap@@3 T@PolymorphicMapType_7260) (Mask@@14 T@PolymorphicMapType_7281) (pm_f_3@@1 T@Field_7320_21940) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_7320_22004 Mask@@14 null pm_f_3@@1) (IsPredicateField_7320_22031 pm_f_3@@1)) (and (and (and (and (forall ((o2_3 T@Ref) (f_12 T@Field_7320_53) ) (!  (=> (select (|PolymorphicMapType_7809_7320_53#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@4) null (PredicateMaskField_7320 pm_f_3@@1))) o2_3 f_12) (= (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@4) o2_3 f_12) (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3 f_12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3 f_12))
)) (forall ((o2_3@@0 T@Ref) (f_12@@0 T@Field_7333_7334) ) (!  (=> (select (|PolymorphicMapType_7809_7320_7334#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@4) null (PredicateMaskField_7320 pm_f_3@@1))) o2_3@@0 f_12@@0) (= (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@4) o2_3@@0 f_12@@0) (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3@@0 f_12@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3@@0 f_12@@0))
))) (forall ((o2_3@@1 T@Ref) (f_12@@1 T@Field_10771_1473) ) (!  (=> (select (|PolymorphicMapType_7809_7320_1473#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@4) null (PredicateMaskField_7320 pm_f_3@@1))) o2_3@@1 f_12@@1) (= (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@4) o2_3@@1 f_12@@1) (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3@@1 f_12@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3@@1 f_12@@1))
))) (forall ((o2_3@@2 T@Ref) (f_12@@2 T@Field_7320_21940) ) (!  (=> (select (|PolymorphicMapType_7809_7320_21940#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@4) null (PredicateMaskField_7320 pm_f_3@@1))) o2_3@@2 f_12@@2) (= (select (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@4) o2_3@@2 f_12@@2) (select (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3@@2 f_12@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3@@2 f_12@@2))
))) (forall ((o2_3@@3 T@Ref) (f_12@@3 T@Field_7320_22073) ) (!  (=> (select (|PolymorphicMapType_7809_7320_23251#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@4) null (PredicateMaskField_7320 pm_f_3@@1))) o2_3@@3 f_12@@3) (= (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@4) o2_3@@3 f_12@@3) (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3@@3 f_12@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3@@3 f_12@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_7320_22031 pm_f_3@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7260) (ExhaleHeap@@4 T@PolymorphicMapType_7260) (Mask@@15 T@PolymorphicMapType_7281) (pm_f_3@@2 T@Field_7320_21940) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_7320_22004 Mask@@15 null pm_f_3@@2) (IsWandField_7320_23778 pm_f_3@@2)) (and (and (and (and (forall ((o2_3@@4 T@Ref) (f_12@@4 T@Field_7320_53) ) (!  (=> (select (|PolymorphicMapType_7809_7320_53#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@5) null (WandMaskField_7320 pm_f_3@@2))) o2_3@@4 f_12@@4) (= (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@5) o2_3@@4 f_12@@4) (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@4 f_12@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@4 f_12@@4))
)) (forall ((o2_3@@5 T@Ref) (f_12@@5 T@Field_7333_7334) ) (!  (=> (select (|PolymorphicMapType_7809_7320_7334#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@5) null (WandMaskField_7320 pm_f_3@@2))) o2_3@@5 f_12@@5) (= (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@5) o2_3@@5 f_12@@5) (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@5 f_12@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@5 f_12@@5))
))) (forall ((o2_3@@6 T@Ref) (f_12@@6 T@Field_10771_1473) ) (!  (=> (select (|PolymorphicMapType_7809_7320_1473#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@5) null (WandMaskField_7320 pm_f_3@@2))) o2_3@@6 f_12@@6) (= (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@5) o2_3@@6 f_12@@6) (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@6 f_12@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@6 f_12@@6))
))) (forall ((o2_3@@7 T@Ref) (f_12@@7 T@Field_7320_21940) ) (!  (=> (select (|PolymorphicMapType_7809_7320_21940#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@5) null (WandMaskField_7320 pm_f_3@@2))) o2_3@@7 f_12@@7) (= (select (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@5) o2_3@@7 f_12@@7) (select (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@7 f_12@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@7 f_12@@7))
))) (forall ((o2_3@@8 T@Ref) (f_12@@8 T@Field_7320_22073) ) (!  (=> (select (|PolymorphicMapType_7809_7320_23251#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@5) null (WandMaskField_7320 pm_f_3@@2))) o2_3@@8 f_12@@8) (= (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@5) o2_3@@8 f_12@@8) (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@8 f_12@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@8 f_12@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_7320_23778 pm_f_3@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.195:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7260) (ExhaleHeap@@5 T@PolymorphicMapType_7260) (Mask@@16 T@PolymorphicMapType_7281) (o_8@@0 T@Ref) (f_12@@9 T@Field_7320_22073) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_7320_27778 Mask@@16 o_8@@0 f_12@@9) (= (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@6) o_8@@0 f_12@@9) (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap@@5) o_8@@0 f_12@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap@@5) o_8@@0 f_12@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7260) (ExhaleHeap@@6 T@PolymorphicMapType_7260) (Mask@@17 T@PolymorphicMapType_7281) (o_8@@1 T@Ref) (f_12@@10 T@Field_7320_21940) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_7320_22004 Mask@@17 o_8@@1 f_12@@10) (= (select (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@7) o_8@@1 f_12@@10) (select (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| ExhaleHeap@@6) o_8@@1 f_12@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| ExhaleHeap@@6) o_8@@1 f_12@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7260) (ExhaleHeap@@7 T@PolymorphicMapType_7260) (Mask@@18 T@PolymorphicMapType_7281) (o_8@@2 T@Ref) (f_12@@11 T@Field_10771_1473) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_7320_1473 Mask@@18 o_8@@2 f_12@@11) (= (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@8) o_8@@2 f_12@@11) (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| ExhaleHeap@@7) o_8@@2 f_12@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| ExhaleHeap@@7) o_8@@2 f_12@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7260) (ExhaleHeap@@8 T@PolymorphicMapType_7260) (Mask@@19 T@PolymorphicMapType_7281) (o_8@@3 T@Ref) (f_12@@12 T@Field_7333_7334) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_7320_7334 Mask@@19 o_8@@3 f_12@@12) (= (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@9) o_8@@3 f_12@@12) (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| ExhaleHeap@@8) o_8@@3 f_12@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| ExhaleHeap@@8) o_8@@3 f_12@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7260) (ExhaleHeap@@9 T@PolymorphicMapType_7260) (Mask@@20 T@PolymorphicMapType_7281) (o_8@@4 T@Ref) (f_12@@13 T@Field_7320_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_7320_53 Mask@@20 o_8@@4 f_12@@13) (= (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@10) o_8@@4 f_12@@13) (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| ExhaleHeap@@9) o_8@@4 f_12@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| ExhaleHeap@@9) o_8@@4 f_12@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7320_22073) ) (! (= (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7320_21940) ) (! (= (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7333_7334) ) (! (= (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_7320_53) ) (! (= (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_10771_1473) ) (! (= (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7281) (SummandMask1 T@PolymorphicMapType_7281) (SummandMask2 T@PolymorphicMapType_7281) (o_2@@19 T@Ref) (f_4@@19 T@Field_7320_22073) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7281) (SummandMask1@@0 T@PolymorphicMapType_7281) (SummandMask2@@0 T@PolymorphicMapType_7281) (o_2@@20 T@Ref) (f_4@@20 T@Field_7320_21940) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7281) (SummandMask1@@1 T@PolymorphicMapType_7281) (SummandMask2@@1 T@PolymorphicMapType_7281) (o_2@@21 T@Ref) (f_4@@21 T@Field_7333_7334) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7281) (SummandMask1@@2 T@PolymorphicMapType_7281) (SummandMask2@@2 T@PolymorphicMapType_7281) (o_2@@22 T@Ref) (f_4@@22 T@Field_7320_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7281) (SummandMask1@@3 T@PolymorphicMapType_7281) (SummandMask2@@3 T@PolymorphicMapType_7281) (o_2@@23 T@Ref) (f_4@@23 T@Field_10771_1473) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a_2 T@Ref) ) (! (>= (len_1 a_2) 0)
 :qid |stdinbpl.238:15|
 :skolemid |23|
 :pattern ( (len_1 a_2))
)))
(assert (forall ((a_2@@0 T@Ref) (i Int) ) (!  (and (= (first (loc a_2@@0 i)) a_2@@0) (= (second (loc a_2@@0 i)) i))
 :qid |stdinbpl.232:15|
 :skolemid |22|
 :pattern ( (loc a_2@@0 i))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7260) (o_7 T@Ref) (f_2 T@Field_7320_21940) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_7260 (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@11) (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@11) (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@11) (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@11) (store (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@11) o_7 f_2 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7260 (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@11) (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@11) (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@11) (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@11) (store (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@11) o_7 f_2 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7260) (o_7@@0 T@Ref) (f_2@@0 T@Field_7320_22073) (v@@0 T@PolymorphicMapType_7809) ) (! (succHeap Heap@@12 (PolymorphicMapType_7260 (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@12) (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@12) (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@12) (store (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@12) o_7@@0 f_2@@0 v@@0) (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7260 (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@12) (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@12) (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@12) (store (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@12) o_7@@0 f_2@@0 v@@0) (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7260) (o_7@@1 T@Ref) (f_2@@1 T@Field_10771_1473) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_7260 (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@13) (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@13) (store (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@13) o_7@@1 f_2@@1 v@@1) (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@13) (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7260 (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@13) (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@13) (store (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@13) o_7@@1 f_2@@1 v@@1) (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@13) (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7260) (o_7@@2 T@Ref) (f_2@@2 T@Field_7333_7334) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_7260 (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@14) (store (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@14) o_7@@2 f_2@@2 v@@2) (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@14) (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@14) (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7260 (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@14) (store (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@14) o_7@@2 f_2@@2 v@@2) (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@14) (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@14) (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7260) (o_7@@3 T@Ref) (f_2@@3 T@Field_7320_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_7260 (store (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@15) o_7@@3 f_2@@3 v@@3) (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@15) (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@15) (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@15) (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7260 (store (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@15) o_7@@3 f_2@@3 v@@3) (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@15) (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@15) (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@15) (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@15)))
)))
(assert (forall ((o_7@@4 T@Ref) (f_11 T@Field_7333_7334) (Heap@@16 T@PolymorphicMapType_7260) ) (!  (=> (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@16) o_7@@4 $allocated) (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@16) (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@16) o_7@@4 f_11) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@16) o_7@@4 f_11))
)))
(assert (forall ((p@@1 T@Field_7320_21940) (v_1@@0 T@FrameType) (q T@Field_7320_21940) (w@@0 T@FrameType) (r T@Field_7320_21940) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7320_7320 p@@1 v_1@@0 q w@@0) (InsidePredicate_7320_7320 q w@@0 r u)) (InsidePredicate_7320_7320 p@@1 v_1@@0 r u))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7320_7320 p@@1 v_1@@0 q w@@0) (InsidePredicate_7320_7320 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun arr () T@Ref)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_7260)
(declare-fun dummyFunction_1473 (Int) Bool)
(declare-fun Heap@@17 () T@PolymorphicMapType_7260)
(declare-fun neverTriggered5 (Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_7281)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(set-info :boogie-vc-id test01)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon9_Else_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (forall ((p_3_1 Int) (p_3_3 Int) ) (!  (=> (and (and (not (= p_3_1 p_3_3)) (< NoPerm NoPerm)) (< NoPerm NoPerm)) (not (= (loc arr p_3_1) (loc arr p_3_3))))
 :qid |stdinbpl.466:15|
 :skolemid |43|
))) (=> (forall ((p_3_1@@0 Int) (p_3_3@@0 Int) ) (!  (=> (and (and (not (= p_3_1@@0 p_3_3@@0)) (< NoPerm NoPerm)) (< NoPerm NoPerm)) (not (= (loc arr p_3_1@@0) (loc arr p_3_3@@0))))
 :qid |stdinbpl.466:15|
 :skolemid |43|
)) (=> (forall ((p_3_1@@1 Int) ) (!  (=> (< NoPerm NoPerm) (and (qpRange4 (loc arr p_3_1@@1)) (= (invRecv4 (loc arr p_3_1@@1)) p_3_1@@1)))
 :qid |stdinbpl.472:22|
 :skolemid |44|
 :pattern ( (loc arr p_3_1@@1))
 :pattern ( (loc arr p_3_1@@1))
)) (=> (and (forall ((o_4 T@Ref) ) (!  (=> (and (< NoPerm NoPerm) (qpRange4 o_4)) (= (loc arr (invRecv4 o_4)) o_4))
 :qid |stdinbpl.476:22|
 :skolemid |45|
 :pattern ( (invRecv4 o_4))
)) (= (ControlFlow 0 8) (- 0 7))) (forall ((p_3_1@@2 Int) ) (! (>= NoPerm NoPerm)
 :qid |stdinbpl.482:15|
 :skolemid |46|
 :pattern ( (loc arr p_3_1@@2))
 :pattern ( (loc arr p_3_1@@2))
))))))))
(let ((anon9_Then_correct true))
(let ((anon8_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 10) 6) anon9_Then_correct) (=> (= (ControlFlow 0 10) 8) anon9_Else_correct)))))
(let ((anon8_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 5)) (forall ((p_4_1 Int) ) (!  (=> (dummyFunction_1473 (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@17) (loc arr p_4_1) val)) (>= NoPerm NoPerm))
 :qid |stdinbpl.513:17|
 :skolemid |49|
 :pattern ( (loc arr p_4_1))
 :pattern ( (loc arr p_4_1))
))) (=> (forall ((p_4_1@@0 Int) ) (!  (=> (dummyFunction_1473 (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@17) (loc arr p_4_1@@0) val)) (>= NoPerm NoPerm))
 :qid |stdinbpl.513:17|
 :skolemid |49|
 :pattern ( (loc arr p_4_1@@0))
 :pattern ( (loc arr p_4_1@@0))
)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((p_4_1@@1 Int) (p_4_3 Int) ) (!  (=> (and (and (not (= p_4_1@@1 p_4_3)) (< NoPerm NoPerm)) (< NoPerm NoPerm)) (not (= (loc arr p_4_1@@1) (loc arr p_4_3))))
 :qid |stdinbpl.520:17|
 :skolemid |50|
 :pattern ( (neverTriggered5 p_4_1@@1) (neverTriggered5 p_4_3))
))) (=> (forall ((p_4_1@@2 Int) (p_4_3@@0 Int) ) (!  (=> (and (and (not (= p_4_1@@2 p_4_3@@0)) (< NoPerm NoPerm)) (< NoPerm NoPerm)) (not (= (loc arr p_4_1@@2) (loc arr p_4_3@@0))))
 :qid |stdinbpl.520:17|
 :skolemid |50|
 :pattern ( (neverTriggered5 p_4_1@@2) (neverTriggered5 p_4_3@@0))
)) (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((p_4_1@@3 Int) ) (! (>= (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| QPMask@0) (loc arr p_4_1@@3) val) NoPerm)
 :qid |stdinbpl.527:17|
 :skolemid |51|
 :pattern ( (loc arr p_4_1@@3))
 :pattern ( (loc arr p_4_1@@3))
)))))))))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 11) (- 0 13)) (forall ((p_1_1 Int) (p_1_2 Int) ) (!  (=> (and (and (not (= p_1_1 p_1_2)) (< NoPerm NoPerm)) (< NoPerm NoPerm)) (not (= (loc arr p_1_1) (loc arr p_1_2))))
 :qid |stdinbpl.412:15|
 :skolemid |37|
))) (=> (forall ((p_1_1@@0 Int) (p_1_2@@0 Int) ) (!  (=> (and (and (not (= p_1_1@@0 p_1_2@@0)) (< NoPerm NoPerm)) (< NoPerm NoPerm)) (not (= (loc arr p_1_1@@0) (loc arr p_1_2@@0))))
 :qid |stdinbpl.412:15|
 :skolemid |37|
)) (=> (and (forall ((p_1_1@@1 Int) ) (!  (=> (< NoPerm NoPerm) (and (qpRange3 (loc arr p_1_1@@1)) (= (invRecv3 (loc arr p_1_1@@1)) p_1_1@@1)))
 :qid |stdinbpl.418:22|
 :skolemid |38|
 :pattern ( (loc arr p_1_1@@1))
 :pattern ( (loc arr p_1_1@@1))
)) (forall ((o_4@@0 T@Ref) ) (!  (=> (and (< NoPerm NoPerm) (qpRange3 o_4@@0)) (= (loc arr (invRecv3 o_4@@0)) o_4@@0))
 :qid |stdinbpl.422:22|
 :skolemid |39|
 :pattern ( (invRecv3 o_4@@0))
))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (forall ((p_1_1@@2 Int) ) (! (>= NoPerm NoPerm)
 :qid |stdinbpl.428:15|
 :skolemid |40|
 :pattern ( (loc arr p_1_1@@2))
 :pattern ( (loc arr p_1_1@@2))
))) (=> (forall ((p_1_1@@3 Int) ) (! (>= NoPerm NoPerm)
 :qid |stdinbpl.428:15|
 :skolemid |40|
 :pattern ( (loc arr p_1_1@@3))
 :pattern ( (loc arr p_1_1@@3))
)) (=> (forall ((o_4@@1 T@Ref) ) (!  (and (=> (and (< NoPerm NoPerm) (qpRange3 o_4@@1)) (and (=> (< NoPerm NoPerm) (= (loc arr (invRecv3 o_4@@1)) o_4@@1)) (= (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| QPMask@0) o_4@@1 val) (+ (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| ZeroMask) o_4@@1 val) NoPerm)))) (=> (not (and (< NoPerm NoPerm) (qpRange3 o_4@@1))) (= (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| QPMask@0) o_4@@1 val) (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| ZeroMask) o_4@@1 val))))
 :qid |stdinbpl.437:22|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| QPMask@0) o_4@@1 val))
)) (=> (and (and (and (and (and (forall ((o_4@@2 T@Ref) (f_5 T@Field_7320_53) ) (!  (=> true (= (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| ZeroMask) o_4@@2 f_5) (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| QPMask@0) o_4@@2 f_5)))
 :qid |stdinbpl.441:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| ZeroMask) o_4@@2 f_5))
 :pattern ( (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| QPMask@0) o_4@@2 f_5))
)) (forall ((o_4@@3 T@Ref) (f_5@@0 T@Field_7333_7334) ) (!  (=> true (= (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| ZeroMask) o_4@@3 f_5@@0) (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| QPMask@0) o_4@@3 f_5@@0)))
 :qid |stdinbpl.441:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| ZeroMask) o_4@@3 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| QPMask@0) o_4@@3 f_5@@0))
))) (forall ((o_4@@4 T@Ref) (f_5@@1 T@Field_10771_1473) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| ZeroMask) o_4@@4 f_5@@1) (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| QPMask@0) o_4@@4 f_5@@1)))
 :qid |stdinbpl.441:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| ZeroMask) o_4@@4 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| QPMask@0) o_4@@4 f_5@@1))
))) (forall ((o_4@@5 T@Ref) (f_5@@2 T@Field_7320_21940) ) (!  (=> true (= (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| ZeroMask) o_4@@5 f_5@@2) (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| QPMask@0) o_4@@5 f_5@@2)))
 :qid |stdinbpl.441:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| ZeroMask) o_4@@5 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| QPMask@0) o_4@@5 f_5@@2))
))) (forall ((o_4@@6 T@Ref) (f_5@@3 T@Field_7320_22073) ) (!  (=> true (= (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| ZeroMask) o_4@@6 f_5@@3) (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| QPMask@0) o_4@@6 f_5@@3)))
 :qid |stdinbpl.441:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| ZeroMask) o_4@@6 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| QPMask@0) o_4@@6 f_5@@3))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (=> (= (ControlFlow 0 11) 10) anon8_Then_correct) (=> (= (ControlFlow 0 11) 3) anon8_Else_correct)))))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@17) arr $allocated)) (and (=> (= (ControlFlow 0 14) 1) anon7_Then_correct) (=> (= (ControlFlow 0 14) 11) anon7_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15) 14) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
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
(declare-sort T@Field_7320_53 0)
(declare-sort T@Field_7333_7334 0)
(declare-sort T@Field_10771_1473 0)
(declare-sort T@Field_7320_22073 0)
(declare-sort T@Field_7320_21940 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7281 0)) (((PolymorphicMapType_7281 (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| (Array T@Ref T@Field_10771_1473 Real)) (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| (Array T@Ref T@Field_7320_53 Real)) (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| (Array T@Ref T@Field_7333_7334 Real)) (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| (Array T@Ref T@Field_7320_21940 Real)) (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| (Array T@Ref T@Field_7320_22073 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7809 0)) (((PolymorphicMapType_7809 (|PolymorphicMapType_7809_7320_53#PolymorphicMapType_7809| (Array T@Ref T@Field_7320_53 Bool)) (|PolymorphicMapType_7809_7320_7334#PolymorphicMapType_7809| (Array T@Ref T@Field_7333_7334 Bool)) (|PolymorphicMapType_7809_7320_1473#PolymorphicMapType_7809| (Array T@Ref T@Field_10771_1473 Bool)) (|PolymorphicMapType_7809_7320_21940#PolymorphicMapType_7809| (Array T@Ref T@Field_7320_21940 Bool)) (|PolymorphicMapType_7809_7320_23251#PolymorphicMapType_7809| (Array T@Ref T@Field_7320_22073 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7260 0)) (((PolymorphicMapType_7260 (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| (Array T@Ref T@Field_7320_53 Bool)) (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| (Array T@Ref T@Field_7333_7334 T@Ref)) (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| (Array T@Ref T@Field_10771_1473 Int)) (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| (Array T@Ref T@Field_7320_22073 T@PolymorphicMapType_7809)) (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| (Array T@Ref T@Field_7320_21940 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7320_53)
(declare-fun val () T@Field_10771_1473)
(declare-fun succHeap (T@PolymorphicMapType_7260 T@PolymorphicMapType_7260) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7260 T@PolymorphicMapType_7260) Bool)
(declare-fun state (T@PolymorphicMapType_7260 T@PolymorphicMapType_7281) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7281) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7809)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7260 T@PolymorphicMapType_7260 T@PolymorphicMapType_7281) Bool)
(declare-fun IsPredicateField_7320_22031 (T@Field_7320_21940) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7320 (T@Field_7320_21940) T@Field_7320_22073)
(declare-fun HasDirectPerm_7320_22004 (T@PolymorphicMapType_7281 T@Ref T@Field_7320_21940) Bool)
(declare-fun IsWandField_7320_23778 (T@Field_7320_21940) Bool)
(declare-fun WandMaskField_7320 (T@Field_7320_21940) T@Field_7320_22073)
(declare-fun dummyHeap () T@PolymorphicMapType_7260)
(declare-fun ZeroMask () T@PolymorphicMapType_7281)
(declare-fun InsidePredicate_7320_7320 (T@Field_7320_21940 T@FrameType T@Field_7320_21940 T@FrameType) Bool)
(declare-fun IsPredicateField_4511_1473 (T@Field_10771_1473) Bool)
(declare-fun IsWandField_4511_1473 (T@Field_10771_1473) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4511_27324 (T@Field_7320_22073) Bool)
(declare-fun IsWandField_4511_27340 (T@Field_7320_22073) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4511_7334 (T@Field_7333_7334) Bool)
(declare-fun IsWandField_4511_7334 (T@Field_7333_7334) Bool)
(declare-fun IsPredicateField_4511_53 (T@Field_7320_53) Bool)
(declare-fun IsWandField_4511_53 (T@Field_7320_53) Bool)
(declare-fun HasDirectPerm_7320_27778 (T@PolymorphicMapType_7281 T@Ref T@Field_7320_22073) Bool)
(declare-fun HasDirectPerm_7320_1473 (T@PolymorphicMapType_7281 T@Ref T@Field_10771_1473) Bool)
(declare-fun HasDirectPerm_7320_7334 (T@PolymorphicMapType_7281 T@Ref T@Field_7333_7334) Bool)
(declare-fun HasDirectPerm_7320_53 (T@PolymorphicMapType_7281 T@Ref T@Field_7320_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7281 T@PolymorphicMapType_7281 T@PolymorphicMapType_7281) Bool)
(declare-fun len_1 (T@Ref) Int)
(declare-fun loc (T@Ref Int) T@Ref)
(declare-fun first (T@Ref) T@Ref)
(declare-fun second (T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_7260) (Heap1 T@PolymorphicMapType_7260) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7260) (Mask T@PolymorphicMapType_7281) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7260) (Heap1@@0 T@PolymorphicMapType_7260) (Heap2 T@PolymorphicMapType_7260) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7320_22073) ) (!  (not (select (|PolymorphicMapType_7809_7320_23251#PolymorphicMapType_7809| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7809_7320_23251#PolymorphicMapType_7809| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7320_21940) ) (!  (not (select (|PolymorphicMapType_7809_7320_21940#PolymorphicMapType_7809| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7809_7320_21940#PolymorphicMapType_7809| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10771_1473) ) (!  (not (select (|PolymorphicMapType_7809_7320_1473#PolymorphicMapType_7809| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7809_7320_1473#PolymorphicMapType_7809| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7333_7334) ) (!  (not (select (|PolymorphicMapType_7809_7320_7334#PolymorphicMapType_7809| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7809_7320_7334#PolymorphicMapType_7809| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7320_53) ) (!  (not (select (|PolymorphicMapType_7809_7320_53#PolymorphicMapType_7809| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7809_7320_53#PolymorphicMapType_7809| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7260) (ExhaleHeap T@PolymorphicMapType_7260) (Mask@@0 T@PolymorphicMapType_7281) (pm_f_3 T@Field_7320_21940) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7320_22004 Mask@@0 null pm_f_3) (IsPredicateField_7320_22031 pm_f_3)) (= (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@0) null (PredicateMaskField_7320 pm_f_3)) (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap) null (PredicateMaskField_7320 pm_f_3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_7320_22031 pm_f_3) (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap) null (PredicateMaskField_7320 pm_f_3)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7260) (ExhaleHeap@@0 T@PolymorphicMapType_7260) (Mask@@1 T@PolymorphicMapType_7281) (pm_f_3@@0 T@Field_7320_21940) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7320_22004 Mask@@1 null pm_f_3@@0) (IsWandField_7320_23778 pm_f_3@@0)) (= (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@1) null (WandMaskField_7320 pm_f_3@@0)) (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap@@0) null (WandMaskField_7320 pm_f_3@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_7320_23778 pm_f_3@@0) (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap@@0) null (WandMaskField_7320 pm_f_3@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7260) (ExhaleHeap@@1 T@PolymorphicMapType_7260) (Mask@@2 T@PolymorphicMapType_7281) (o_8 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@2) o_8 $allocated) (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| ExhaleHeap@@1) o_8 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| ExhaleHeap@@1) o_8 $allocated))
)))
(assert (forall ((p T@Field_7320_21940) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7320_7320 p v_1 p w))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7320_7320 p v_1 p w))
)))
(assert  (not (IsPredicateField_4511_1473 val)))
(assert  (not (IsWandField_4511_1473 val)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7260) (ExhaleHeap@@2 T@PolymorphicMapType_7260) (Mask@@3 T@PolymorphicMapType_7281) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_7281) (o_2@@4 T@Ref) (f_4@@4 T@Field_7320_22073) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4511_27324 f_4@@4))) (not (IsWandField_4511_27340 f_4@@4))) (<= (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_7281) (o_2@@5 T@Ref) (f_4@@5 T@Field_7320_21940) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_7320_22031 f_4@@5))) (not (IsWandField_7320_23778 f_4@@5))) (<= (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_7281) (o_2@@6 T@Ref) (f_4@@6 T@Field_7333_7334) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4511_7334 f_4@@6))) (not (IsWandField_4511_7334 f_4@@6))) (<= (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7281) (o_2@@7 T@Ref) (f_4@@7 T@Field_7320_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4511_53 f_4@@7))) (not (IsWandField_4511_53 f_4@@7))) (<= (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7281) (o_2@@8 T@Ref) (f_4@@8 T@Field_10771_1473) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4511_1473 f_4@@8))) (not (IsWandField_4511_1473 f_4@@8))) (<= (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7281) (o_2@@9 T@Ref) (f_4@@9 T@Field_7320_22073) ) (! (= (HasDirectPerm_7320_27778 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7320_27778 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7281) (o_2@@10 T@Ref) (f_4@@10 T@Field_7320_21940) ) (! (= (HasDirectPerm_7320_22004 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7320_22004 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7281) (o_2@@11 T@Ref) (f_4@@11 T@Field_10771_1473) ) (! (= (HasDirectPerm_7320_1473 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7320_1473 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7281) (o_2@@12 T@Ref) (f_4@@12 T@Field_7333_7334) ) (! (= (HasDirectPerm_7320_7334 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7320_7334 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7281) (o_2@@13 T@Ref) (f_4@@13 T@Field_7320_53) ) (! (= (HasDirectPerm_7320_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7320_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7260) (ExhaleHeap@@3 T@PolymorphicMapType_7260) (Mask@@14 T@PolymorphicMapType_7281) (pm_f_3@@1 T@Field_7320_21940) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_7320_22004 Mask@@14 null pm_f_3@@1) (IsPredicateField_7320_22031 pm_f_3@@1)) (and (and (and (and (forall ((o2_3 T@Ref) (f_12 T@Field_7320_53) ) (!  (=> (select (|PolymorphicMapType_7809_7320_53#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@4) null (PredicateMaskField_7320 pm_f_3@@1))) o2_3 f_12) (= (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@4) o2_3 f_12) (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3 f_12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3 f_12))
)) (forall ((o2_3@@0 T@Ref) (f_12@@0 T@Field_7333_7334) ) (!  (=> (select (|PolymorphicMapType_7809_7320_7334#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@4) null (PredicateMaskField_7320 pm_f_3@@1))) o2_3@@0 f_12@@0) (= (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@4) o2_3@@0 f_12@@0) (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3@@0 f_12@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3@@0 f_12@@0))
))) (forall ((o2_3@@1 T@Ref) (f_12@@1 T@Field_10771_1473) ) (!  (=> (select (|PolymorphicMapType_7809_7320_1473#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@4) null (PredicateMaskField_7320 pm_f_3@@1))) o2_3@@1 f_12@@1) (= (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@4) o2_3@@1 f_12@@1) (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3@@1 f_12@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3@@1 f_12@@1))
))) (forall ((o2_3@@2 T@Ref) (f_12@@2 T@Field_7320_21940) ) (!  (=> (select (|PolymorphicMapType_7809_7320_21940#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@4) null (PredicateMaskField_7320 pm_f_3@@1))) o2_3@@2 f_12@@2) (= (select (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@4) o2_3@@2 f_12@@2) (select (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3@@2 f_12@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3@@2 f_12@@2))
))) (forall ((o2_3@@3 T@Ref) (f_12@@3 T@Field_7320_22073) ) (!  (=> (select (|PolymorphicMapType_7809_7320_23251#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@4) null (PredicateMaskField_7320 pm_f_3@@1))) o2_3@@3 f_12@@3) (= (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@4) o2_3@@3 f_12@@3) (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3@@3 f_12@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap@@3) o2_3@@3 f_12@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_7320_22031 pm_f_3@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7260) (ExhaleHeap@@4 T@PolymorphicMapType_7260) (Mask@@15 T@PolymorphicMapType_7281) (pm_f_3@@2 T@Field_7320_21940) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_7320_22004 Mask@@15 null pm_f_3@@2) (IsWandField_7320_23778 pm_f_3@@2)) (and (and (and (and (forall ((o2_3@@4 T@Ref) (f_12@@4 T@Field_7320_53) ) (!  (=> (select (|PolymorphicMapType_7809_7320_53#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@5) null (WandMaskField_7320 pm_f_3@@2))) o2_3@@4 f_12@@4) (= (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@5) o2_3@@4 f_12@@4) (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@4 f_12@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@4 f_12@@4))
)) (forall ((o2_3@@5 T@Ref) (f_12@@5 T@Field_7333_7334) ) (!  (=> (select (|PolymorphicMapType_7809_7320_7334#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@5) null (WandMaskField_7320 pm_f_3@@2))) o2_3@@5 f_12@@5) (= (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@5) o2_3@@5 f_12@@5) (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@5 f_12@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@5 f_12@@5))
))) (forall ((o2_3@@6 T@Ref) (f_12@@6 T@Field_10771_1473) ) (!  (=> (select (|PolymorphicMapType_7809_7320_1473#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@5) null (WandMaskField_7320 pm_f_3@@2))) o2_3@@6 f_12@@6) (= (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@5) o2_3@@6 f_12@@6) (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@6 f_12@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@6 f_12@@6))
))) (forall ((o2_3@@7 T@Ref) (f_12@@7 T@Field_7320_21940) ) (!  (=> (select (|PolymorphicMapType_7809_7320_21940#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@5) null (WandMaskField_7320 pm_f_3@@2))) o2_3@@7 f_12@@7) (= (select (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@5) o2_3@@7 f_12@@7) (select (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@7 f_12@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@7 f_12@@7))
))) (forall ((o2_3@@8 T@Ref) (f_12@@8 T@Field_7320_22073) ) (!  (=> (select (|PolymorphicMapType_7809_7320_23251#PolymorphicMapType_7809| (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@5) null (WandMaskField_7320 pm_f_3@@2))) o2_3@@8 f_12@@8) (= (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@5) o2_3@@8 f_12@@8) (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@8 f_12@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap@@4) o2_3@@8 f_12@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_7320_23778 pm_f_3@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.195:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7260) (ExhaleHeap@@5 T@PolymorphicMapType_7260) (Mask@@16 T@PolymorphicMapType_7281) (o_8@@0 T@Ref) (f_12@@9 T@Field_7320_22073) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_7320_27778 Mask@@16 o_8@@0 f_12@@9) (= (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@6) o_8@@0 f_12@@9) (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap@@5) o_8@@0 f_12@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| ExhaleHeap@@5) o_8@@0 f_12@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7260) (ExhaleHeap@@6 T@PolymorphicMapType_7260) (Mask@@17 T@PolymorphicMapType_7281) (o_8@@1 T@Ref) (f_12@@10 T@Field_7320_21940) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_7320_22004 Mask@@17 o_8@@1 f_12@@10) (= (select (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@7) o_8@@1 f_12@@10) (select (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| ExhaleHeap@@6) o_8@@1 f_12@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| ExhaleHeap@@6) o_8@@1 f_12@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7260) (ExhaleHeap@@7 T@PolymorphicMapType_7260) (Mask@@18 T@PolymorphicMapType_7281) (o_8@@2 T@Ref) (f_12@@11 T@Field_10771_1473) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_7320_1473 Mask@@18 o_8@@2 f_12@@11) (= (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@8) o_8@@2 f_12@@11) (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| ExhaleHeap@@7) o_8@@2 f_12@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| ExhaleHeap@@7) o_8@@2 f_12@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7260) (ExhaleHeap@@8 T@PolymorphicMapType_7260) (Mask@@19 T@PolymorphicMapType_7281) (o_8@@3 T@Ref) (f_12@@12 T@Field_7333_7334) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_7320_7334 Mask@@19 o_8@@3 f_12@@12) (= (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@9) o_8@@3 f_12@@12) (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| ExhaleHeap@@8) o_8@@3 f_12@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| ExhaleHeap@@8) o_8@@3 f_12@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7260) (ExhaleHeap@@9 T@PolymorphicMapType_7260) (Mask@@20 T@PolymorphicMapType_7281) (o_8@@4 T@Ref) (f_12@@13 T@Field_7320_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_7320_53 Mask@@20 o_8@@4 f_12@@13) (= (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@10) o_8@@4 f_12@@13) (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| ExhaleHeap@@9) o_8@@4 f_12@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| ExhaleHeap@@9) o_8@@4 f_12@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7320_22073) ) (! (= (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7320_21940) ) (! (= (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7333_7334) ) (! (= (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_7320_53) ) (! (= (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_10771_1473) ) (! (= (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7281) (SummandMask1 T@PolymorphicMapType_7281) (SummandMask2 T@PolymorphicMapType_7281) (o_2@@19 T@Ref) (f_4@@19 T@Field_7320_22073) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7281_4511_26195#PolymorphicMapType_7281| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7281) (SummandMask1@@0 T@PolymorphicMapType_7281) (SummandMask2@@0 T@PolymorphicMapType_7281) (o_2@@20 T@Ref) (f_4@@20 T@Field_7320_21940) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7281_4511_21940#PolymorphicMapType_7281| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7281) (SummandMask1@@1 T@PolymorphicMapType_7281) (SummandMask2@@1 T@PolymorphicMapType_7281) (o_2@@21 T@Ref) (f_4@@21 T@Field_7333_7334) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7281_4511_7334#PolymorphicMapType_7281| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7281) (SummandMask1@@2 T@PolymorphicMapType_7281) (SummandMask2@@2 T@PolymorphicMapType_7281) (o_2@@22 T@Ref) (f_4@@22 T@Field_7320_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7281_4511_53#PolymorphicMapType_7281| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7281) (SummandMask1@@3 T@PolymorphicMapType_7281) (SummandMask2@@3 T@PolymorphicMapType_7281) (o_2@@23 T@Ref) (f_4@@23 T@Field_10771_1473) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7281_4511_1473#PolymorphicMapType_7281| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a_2 T@Ref) ) (! (>= (len_1 a_2) 0)
 :qid |stdinbpl.238:15|
 :skolemid |23|
 :pattern ( (len_1 a_2))
)))
(assert (forall ((a_2@@0 T@Ref) (i Int) ) (!  (and (= (first (loc a_2@@0 i)) a_2@@0) (= (second (loc a_2@@0 i)) i))
 :qid |stdinbpl.232:15|
 :skolemid |22|
 :pattern ( (loc a_2@@0 i))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7260) (o_7 T@Ref) (f_2 T@Field_7320_21940) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_7260 (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@11) (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@11) (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@11) (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@11) (store (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@11) o_7 f_2 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7260 (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@11) (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@11) (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@11) (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@11) (store (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@11) o_7 f_2 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7260) (o_7@@0 T@Ref) (f_2@@0 T@Field_7320_22073) (v@@0 T@PolymorphicMapType_7809) ) (! (succHeap Heap@@12 (PolymorphicMapType_7260 (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@12) (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@12) (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@12) (store (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@12) o_7@@0 f_2@@0 v@@0) (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7260 (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@12) (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@12) (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@12) (store (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@12) o_7@@0 f_2@@0 v@@0) (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7260) (o_7@@1 T@Ref) (f_2@@1 T@Field_10771_1473) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_7260 (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@13) (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@13) (store (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@13) o_7@@1 f_2@@1 v@@1) (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@13) (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7260 (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@13) (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@13) (store (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@13) o_7@@1 f_2@@1 v@@1) (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@13) (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7260) (o_7@@2 T@Ref) (f_2@@2 T@Field_7333_7334) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_7260 (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@14) (store (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@14) o_7@@2 f_2@@2 v@@2) (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@14) (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@14) (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7260 (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@14) (store (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@14) o_7@@2 f_2@@2 v@@2) (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@14) (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@14) (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7260) (o_7@@3 T@Ref) (f_2@@3 T@Field_7320_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_7260 (store (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@15) o_7@@3 f_2@@3 v@@3) (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@15) (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@15) (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@15) (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7260 (store (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@15) o_7@@3 f_2@@3 v@@3) (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@15) (|PolymorphicMapType_7260_4511_1473#PolymorphicMapType_7260| Heap@@15) (|PolymorphicMapType_7260_7320_22117#PolymorphicMapType_7260| Heap@@15) (|PolymorphicMapType_7260_7320_21940#PolymorphicMapType_7260| Heap@@15)))
)))
(assert (forall ((o_7@@4 T@Ref) (f_11 T@Field_7333_7334) (Heap@@16 T@PolymorphicMapType_7260) ) (!  (=> (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@16) o_7@@4 $allocated) (select (|PolymorphicMapType_7260_4355_53#PolymorphicMapType_7260| Heap@@16) (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@16) o_7@@4 f_11) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7260_4358_4359#PolymorphicMapType_7260| Heap@@16) o_7@@4 f_11))
)))
(assert (forall ((p@@1 T@Field_7320_21940) (v_1@@0 T@FrameType) (q T@Field_7320_21940) (w@@0 T@FrameType) (r T@Field_7320_21940) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7320_7320 p@@1 v_1@@0 q w@@0) (InsidePredicate_7320_7320 q w@@0 r u)) (InsidePredicate_7320_7320 p@@1 v_1@@0 r u))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7320_7320 p@@1 v_1@@0 q w@@0) (InsidePredicate_7320_7320 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

