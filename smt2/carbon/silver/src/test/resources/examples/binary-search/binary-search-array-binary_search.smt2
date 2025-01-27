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
(declare-sort T@Field_9448_53 0)
(declare-sort T@Field_9461_9462 0)
(declare-sort T@Field_12899_1473 0)
(declare-sort T@Field_6540_27425 0)
(declare-sort T@Field_6540_27292 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_9409 0)) (((PolymorphicMapType_9409 (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| (Array T@Ref T@Field_12899_1473 Real)) (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| (Array T@Ref T@Field_9448_53 Real)) (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| (Array T@Ref T@Field_9461_9462 Real)) (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| (Array T@Ref T@Field_6540_27292 Real)) (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| (Array T@Ref T@Field_6540_27425 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9937 0)) (((PolymorphicMapType_9937 (|PolymorphicMapType_9937_9448_53#PolymorphicMapType_9937| (Array T@Ref T@Field_9448_53 Bool)) (|PolymorphicMapType_9937_9448_9462#PolymorphicMapType_9937| (Array T@Ref T@Field_9461_9462 Bool)) (|PolymorphicMapType_9937_9448_1473#PolymorphicMapType_9937| (Array T@Ref T@Field_12899_1473 Bool)) (|PolymorphicMapType_9937_9448_27292#PolymorphicMapType_9937| (Array T@Ref T@Field_6540_27292 Bool)) (|PolymorphicMapType_9937_9448_28603#PolymorphicMapType_9937| (Array T@Ref T@Field_6540_27425 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9388 0)) (((PolymorphicMapType_9388 (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| (Array T@Ref T@Field_9448_53 Bool)) (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| (Array T@Ref T@Field_9461_9462 T@Ref)) (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| (Array T@Ref T@Field_12899_1473 Int)) (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| (Array T@Ref T@Field_6540_27425 T@PolymorphicMapType_9937)) (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| (Array T@Ref T@Field_6540_27292 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_9448_53)
(declare-fun val () T@Field_12899_1473)
(declare-fun succHeap (T@PolymorphicMapType_9388 T@PolymorphicMapType_9388) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9388 T@PolymorphicMapType_9388) Bool)
(declare-fun state (T@PolymorphicMapType_9388 T@PolymorphicMapType_9409) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9409) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9937)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9388 T@PolymorphicMapType_9388 T@PolymorphicMapType_9409) Bool)
(declare-fun IsPredicateField_6540_27383 (T@Field_6540_27292) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6540 (T@Field_6540_27292) T@Field_6540_27425)
(declare-fun HasDirectPerm_6540_27356 (T@PolymorphicMapType_9409 T@Ref T@Field_6540_27292) Bool)
(declare-fun IsWandField_6540_29130 (T@Field_6540_27292) Bool)
(declare-fun WandMaskField_6540 (T@Field_6540_27292) T@Field_6540_27425)
(declare-fun dummyHeap () T@PolymorphicMapType_9388)
(declare-fun ZeroMask () T@PolymorphicMapType_9409)
(declare-fun InsidePredicate_9448_9448 (T@Field_6540_27292 T@FrameType T@Field_6540_27292 T@FrameType) Bool)
(declare-fun IsPredicateField_6540_1473 (T@Field_12899_1473) Bool)
(declare-fun IsWandField_6540_1473 (T@Field_12899_1473) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6540_32676 (T@Field_6540_27425) Bool)
(declare-fun IsWandField_6540_32692 (T@Field_6540_27425) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6540_9462 (T@Field_9461_9462) Bool)
(declare-fun IsWandField_6540_9462 (T@Field_9461_9462) Bool)
(declare-fun IsPredicateField_6540_53 (T@Field_9448_53) Bool)
(declare-fun IsWandField_6540_53 (T@Field_9448_53) Bool)
(declare-fun HasDirectPerm_6540_33130 (T@PolymorphicMapType_9409 T@Ref T@Field_6540_27425) Bool)
(declare-fun HasDirectPerm_6540_9462 (T@PolymorphicMapType_9409 T@Ref T@Field_9461_9462) Bool)
(declare-fun HasDirectPerm_6540_53 (T@PolymorphicMapType_9409 T@Ref T@Field_9448_53) Bool)
(declare-fun HasDirectPerm_6540_1473 (T@PolymorphicMapType_9409 T@Ref T@Field_12899_1473) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9409 T@PolymorphicMapType_9409 T@PolymorphicMapType_9409) Bool)
(declare-sort T@IArrayDomainType 0)
(declare-fun len (T@IArrayDomainType) Int)
(declare-fun loc (T@IArrayDomainType Int) T@Ref)
(declare-fun first_1 (T@Ref) T@IArrayDomainType)
(declare-fun second_1 (T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_9388) (Heap1 T@PolymorphicMapType_9388) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9388) (Mask T@PolymorphicMapType_9409) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9388) (Heap1@@0 T@PolymorphicMapType_9388) (Heap2 T@PolymorphicMapType_9388) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6540_27425) ) (!  (not (select (|PolymorphicMapType_9937_9448_28603#PolymorphicMapType_9937| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9937_9448_28603#PolymorphicMapType_9937| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6540_27292) ) (!  (not (select (|PolymorphicMapType_9937_9448_27292#PolymorphicMapType_9937| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9937_9448_27292#PolymorphicMapType_9937| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12899_1473) ) (!  (not (select (|PolymorphicMapType_9937_9448_1473#PolymorphicMapType_9937| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9937_9448_1473#PolymorphicMapType_9937| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9461_9462) ) (!  (not (select (|PolymorphicMapType_9937_9448_9462#PolymorphicMapType_9937| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9937_9448_9462#PolymorphicMapType_9937| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9448_53) ) (!  (not (select (|PolymorphicMapType_9937_9448_53#PolymorphicMapType_9937| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9937_9448_53#PolymorphicMapType_9937| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9388) (ExhaleHeap T@PolymorphicMapType_9388) (Mask@@0 T@PolymorphicMapType_9409) (pm_f_20 T@Field_6540_27292) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6540_27356 Mask@@0 null pm_f_20) (IsPredicateField_6540_27383 pm_f_20)) (= (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@0) null (PredicateMaskField_6540 pm_f_20)) (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| ExhaleHeap) null (PredicateMaskField_6540 pm_f_20)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6540_27383 pm_f_20) (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| ExhaleHeap) null (PredicateMaskField_6540 pm_f_20)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9388) (ExhaleHeap@@0 T@PolymorphicMapType_9388) (Mask@@1 T@PolymorphicMapType_9409) (pm_f_20@@0 T@Field_6540_27292) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6540_27356 Mask@@1 null pm_f_20@@0) (IsWandField_6540_29130 pm_f_20@@0)) (= (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@1) null (WandMaskField_6540 pm_f_20@@0)) (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| ExhaleHeap@@0) null (WandMaskField_6540 pm_f_20@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_6540_29130 pm_f_20@@0) (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| ExhaleHeap@@0) null (WandMaskField_6540 pm_f_20@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9388) (ExhaleHeap@@1 T@PolymorphicMapType_9388) (Mask@@2 T@PolymorphicMapType_9409) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| Heap@@2) o_41 $allocated) (select (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| ExhaleHeap@@1) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| ExhaleHeap@@1) o_41 $allocated))
)))
(assert (forall ((p T@Field_6540_27292) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9448_9448 p v_1 p w))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9448_9448 p v_1 p w))
)))
(assert  (not (IsPredicateField_6540_1473 val)))
(assert  (not (IsWandField_6540_1473 val)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9388) (ExhaleHeap@@2 T@PolymorphicMapType_9388) (Mask@@3 T@PolymorphicMapType_9409) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_9409) (o_2@@4 T@Ref) (f_4@@4 T@Field_6540_27425) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_6540_32676 f_4@@4))) (not (IsWandField_6540_32692 f_4@@4))) (<= (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_9409) (o_2@@5 T@Ref) (f_4@@5 T@Field_6540_27292) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_6540_27383 f_4@@5))) (not (IsWandField_6540_29130 f_4@@5))) (<= (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_9409) (o_2@@6 T@Ref) (f_4@@6 T@Field_9461_9462) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6540_9462 f_4@@6))) (not (IsWandField_6540_9462 f_4@@6))) (<= (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_9409) (o_2@@7 T@Ref) (f_4@@7 T@Field_9448_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6540_53 f_4@@7))) (not (IsWandField_6540_53 f_4@@7))) (<= (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9409) (o_2@@8 T@Ref) (f_4@@8 T@Field_12899_1473) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6540_1473 f_4@@8))) (not (IsWandField_6540_1473 f_4@@8))) (<= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9409) (o_2@@9 T@Ref) (f_4@@9 T@Field_6540_27425) ) (! (= (HasDirectPerm_6540_33130 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6540_33130 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9409) (o_2@@10 T@Ref) (f_4@@10 T@Field_6540_27292) ) (! (= (HasDirectPerm_6540_27356 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6540_27356 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9409) (o_2@@11 T@Ref) (f_4@@11 T@Field_9461_9462) ) (! (= (HasDirectPerm_6540_9462 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6540_9462 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9409) (o_2@@12 T@Ref) (f_4@@12 T@Field_9448_53) ) (! (= (HasDirectPerm_6540_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6540_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9409) (o_2@@13 T@Ref) (f_4@@13 T@Field_12899_1473) ) (! (= (HasDirectPerm_6540_1473 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6540_1473 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9388) (ExhaleHeap@@3 T@PolymorphicMapType_9388) (Mask@@14 T@PolymorphicMapType_9409) (pm_f_20@@1 T@Field_6540_27292) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_6540_27356 Mask@@14 null pm_f_20@@1) (IsPredicateField_6540_27383 pm_f_20@@1)) (and (and (and (and (forall ((o2_20 T@Ref) (f_53 T@Field_9448_53) ) (!  (=> (select (|PolymorphicMapType_9937_9448_53#PolymorphicMapType_9937| (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@4) null (PredicateMaskField_6540 pm_f_20@@1))) o2_20 f_53) (= (select (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| Heap@@4) o2_20 f_53) (select (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| ExhaleHeap@@3) o2_20 f_53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| ExhaleHeap@@3) o2_20 f_53))
)) (forall ((o2_20@@0 T@Ref) (f_53@@0 T@Field_9461_9462) ) (!  (=> (select (|PolymorphicMapType_9937_9448_9462#PolymorphicMapType_9937| (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@4) null (PredicateMaskField_6540 pm_f_20@@1))) o2_20@@0 f_53@@0) (= (select (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| Heap@@4) o2_20@@0 f_53@@0) (select (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| ExhaleHeap@@3) o2_20@@0 f_53@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| ExhaleHeap@@3) o2_20@@0 f_53@@0))
))) (forall ((o2_20@@1 T@Ref) (f_53@@1 T@Field_12899_1473) ) (!  (=> (select (|PolymorphicMapType_9937_9448_1473#PolymorphicMapType_9937| (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@4) null (PredicateMaskField_6540 pm_f_20@@1))) o2_20@@1 f_53@@1) (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@4) o2_20@@1 f_53@@1) (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@@3) o2_20@@1 f_53@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@@3) o2_20@@1 f_53@@1))
))) (forall ((o2_20@@2 T@Ref) (f_53@@2 T@Field_6540_27292) ) (!  (=> (select (|PolymorphicMapType_9937_9448_27292#PolymorphicMapType_9937| (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@4) null (PredicateMaskField_6540 pm_f_20@@1))) o2_20@@2 f_53@@2) (= (select (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| Heap@@4) o2_20@@2 f_53@@2) (select (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| ExhaleHeap@@3) o2_20@@2 f_53@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| ExhaleHeap@@3) o2_20@@2 f_53@@2))
))) (forall ((o2_20@@3 T@Ref) (f_53@@3 T@Field_6540_27425) ) (!  (=> (select (|PolymorphicMapType_9937_9448_28603#PolymorphicMapType_9937| (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@4) null (PredicateMaskField_6540 pm_f_20@@1))) o2_20@@3 f_53@@3) (= (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@4) o2_20@@3 f_53@@3) (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| ExhaleHeap@@3) o2_20@@3 f_53@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| ExhaleHeap@@3) o2_20@@3 f_53@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_6540_27383 pm_f_20@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9388) (ExhaleHeap@@4 T@PolymorphicMapType_9388) (Mask@@15 T@PolymorphicMapType_9409) (pm_f_20@@2 T@Field_6540_27292) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_6540_27356 Mask@@15 null pm_f_20@@2) (IsWandField_6540_29130 pm_f_20@@2)) (and (and (and (and (forall ((o2_20@@4 T@Ref) (f_53@@4 T@Field_9448_53) ) (!  (=> (select (|PolymorphicMapType_9937_9448_53#PolymorphicMapType_9937| (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@5) null (WandMaskField_6540 pm_f_20@@2))) o2_20@@4 f_53@@4) (= (select (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| Heap@@5) o2_20@@4 f_53@@4) (select (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| ExhaleHeap@@4) o2_20@@4 f_53@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| ExhaleHeap@@4) o2_20@@4 f_53@@4))
)) (forall ((o2_20@@5 T@Ref) (f_53@@5 T@Field_9461_9462) ) (!  (=> (select (|PolymorphicMapType_9937_9448_9462#PolymorphicMapType_9937| (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@5) null (WandMaskField_6540 pm_f_20@@2))) o2_20@@5 f_53@@5) (= (select (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| Heap@@5) o2_20@@5 f_53@@5) (select (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| ExhaleHeap@@4) o2_20@@5 f_53@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| ExhaleHeap@@4) o2_20@@5 f_53@@5))
))) (forall ((o2_20@@6 T@Ref) (f_53@@6 T@Field_12899_1473) ) (!  (=> (select (|PolymorphicMapType_9937_9448_1473#PolymorphicMapType_9937| (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@5) null (WandMaskField_6540 pm_f_20@@2))) o2_20@@6 f_53@@6) (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@5) o2_20@@6 f_53@@6) (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@@4) o2_20@@6 f_53@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@@4) o2_20@@6 f_53@@6))
))) (forall ((o2_20@@7 T@Ref) (f_53@@7 T@Field_6540_27292) ) (!  (=> (select (|PolymorphicMapType_9937_9448_27292#PolymorphicMapType_9937| (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@5) null (WandMaskField_6540 pm_f_20@@2))) o2_20@@7 f_53@@7) (= (select (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| Heap@@5) o2_20@@7 f_53@@7) (select (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| ExhaleHeap@@4) o2_20@@7 f_53@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| ExhaleHeap@@4) o2_20@@7 f_53@@7))
))) (forall ((o2_20@@8 T@Ref) (f_53@@8 T@Field_6540_27425) ) (!  (=> (select (|PolymorphicMapType_9937_9448_28603#PolymorphicMapType_9937| (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@5) null (WandMaskField_6540 pm_f_20@@2))) o2_20@@8 f_53@@8) (= (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@5) o2_20@@8 f_53@@8) (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| ExhaleHeap@@4) o2_20@@8 f_53@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| ExhaleHeap@@4) o2_20@@8 f_53@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_6540_29130 pm_f_20@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.195:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9388) (ExhaleHeap@@5 T@PolymorphicMapType_9388) (Mask@@16 T@PolymorphicMapType_9409) (o_41@@0 T@Ref) (f_53@@9 T@Field_6540_27425) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_6540_33130 Mask@@16 o_41@@0 f_53@@9) (= (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@6) o_41@@0 f_53@@9) (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| ExhaleHeap@@5) o_41@@0 f_53@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| ExhaleHeap@@5) o_41@@0 f_53@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9388) (ExhaleHeap@@6 T@PolymorphicMapType_9388) (Mask@@17 T@PolymorphicMapType_9409) (o_41@@1 T@Ref) (f_53@@10 T@Field_6540_27292) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_6540_27356 Mask@@17 o_41@@1 f_53@@10) (= (select (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| Heap@@7) o_41@@1 f_53@@10) (select (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| ExhaleHeap@@6) o_41@@1 f_53@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| ExhaleHeap@@6) o_41@@1 f_53@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9388) (ExhaleHeap@@7 T@PolymorphicMapType_9388) (Mask@@18 T@PolymorphicMapType_9409) (o_41@@2 T@Ref) (f_53@@11 T@Field_9461_9462) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_6540_9462 Mask@@18 o_41@@2 f_53@@11) (= (select (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| Heap@@8) o_41@@2 f_53@@11) (select (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| ExhaleHeap@@7) o_41@@2 f_53@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| ExhaleHeap@@7) o_41@@2 f_53@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9388) (ExhaleHeap@@8 T@PolymorphicMapType_9388) (Mask@@19 T@PolymorphicMapType_9409) (o_41@@3 T@Ref) (f_53@@12 T@Field_9448_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_6540_53 Mask@@19 o_41@@3 f_53@@12) (= (select (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| Heap@@9) o_41@@3 f_53@@12) (select (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| ExhaleHeap@@8) o_41@@3 f_53@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| ExhaleHeap@@8) o_41@@3 f_53@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9388) (ExhaleHeap@@9 T@PolymorphicMapType_9388) (Mask@@20 T@PolymorphicMapType_9409) (o_41@@4 T@Ref) (f_53@@13 T@Field_12899_1473) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_6540_1473 Mask@@20 o_41@@4 f_53@@13) (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@10) o_41@@4 f_53@@13) (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@@9) o_41@@4 f_53@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@@9) o_41@@4 f_53@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6540_27425) ) (! (= (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_6540_27292) ) (! (= (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_9461_9462) ) (! (= (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_9448_53) ) (! (= (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_12899_1473) ) (! (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9409) (SummandMask1 T@PolymorphicMapType_9409) (SummandMask2 T@PolymorphicMapType_9409) (o_2@@19 T@Ref) (f_4@@19 T@Field_6540_27425) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9409) (SummandMask1@@0 T@PolymorphicMapType_9409) (SummandMask2@@0 T@PolymorphicMapType_9409) (o_2@@20 T@Ref) (f_4@@20 T@Field_6540_27292) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9409) (SummandMask1@@1 T@PolymorphicMapType_9409) (SummandMask2@@1 T@PolymorphicMapType_9409) (o_2@@21 T@Ref) (f_4@@21 T@Field_9461_9462) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9409) (SummandMask1@@2 T@PolymorphicMapType_9409) (SummandMask2@@2 T@PolymorphicMapType_9409) (o_2@@22 T@Ref) (f_4@@22 T@Field_9448_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9409) (SummandMask1@@3 T@PolymorphicMapType_9409) (SummandMask2@@3 T@PolymorphicMapType_9409) (o_2@@23 T@Ref) (f_4@@23 T@Field_12899_1473) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a_2 T@IArrayDomainType) ) (! (>= (len a_2) 0)
 :qid |stdinbpl.238:15|
 :skolemid |23|
 :pattern ( (len a_2))
)))
(assert (forall ((a_2@@0 T@IArrayDomainType) (i Int) ) (!  (and (= (first_1 (loc a_2@@0 i)) a_2@@0) (= (second_1 (loc a_2@@0 i)) i))
 :qid |stdinbpl.232:15|
 :skolemid |22|
 :pattern ( (loc a_2@@0 i))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9388) (o_15 T@Ref) (f_54 T@Field_6540_27292) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_9388 (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| Heap@@11) (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| Heap@@11) (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@11) (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@11) (store (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| Heap@@11) o_15 f_54 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9388 (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| Heap@@11) (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| Heap@@11) (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@11) (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@11) (store (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| Heap@@11) o_15 f_54 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9388) (o_15@@0 T@Ref) (f_54@@0 T@Field_6540_27425) (v@@0 T@PolymorphicMapType_9937) ) (! (succHeap Heap@@12 (PolymorphicMapType_9388 (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| Heap@@12) (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| Heap@@12) (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@12) (store (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@12) o_15@@0 f_54@@0 v@@0) (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9388 (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| Heap@@12) (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| Heap@@12) (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@12) (store (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@12) o_15@@0 f_54@@0 v@@0) (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9388) (o_15@@1 T@Ref) (f_54@@1 T@Field_12899_1473) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_9388 (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| Heap@@13) (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| Heap@@13) (store (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@13) o_15@@1 f_54@@1 v@@1) (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@13) (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9388 (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| Heap@@13) (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| Heap@@13) (store (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@13) o_15@@1 f_54@@1 v@@1) (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@13) (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9388) (o_15@@2 T@Ref) (f_54@@2 T@Field_9461_9462) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_9388 (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| Heap@@14) (store (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| Heap@@14) o_15@@2 f_54@@2 v@@2) (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@14) (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@14) (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9388 (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| Heap@@14) (store (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| Heap@@14) o_15@@2 f_54@@2 v@@2) (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@14) (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@14) (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9388) (o_15@@3 T@Ref) (f_54@@3 T@Field_9448_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_9388 (store (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| Heap@@15) o_15@@3 f_54@@3 v@@3) (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| Heap@@15) (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@15) (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@15) (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9388 (store (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| Heap@@15) o_15@@3 f_54@@3 v@@3) (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| Heap@@15) (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@15) (|PolymorphicMapType_9388_6540_27469#PolymorphicMapType_9388| Heap@@15) (|PolymorphicMapType_9388_9448_27292#PolymorphicMapType_9388| Heap@@15)))
)))
(assert (forall ((o_15@@4 T@Ref) (f_23 T@Field_9461_9462) (Heap@@16 T@PolymorphicMapType_9388) ) (!  (=> (select (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| Heap@@16) o_15@@4 $allocated) (select (|PolymorphicMapType_9388_6384_53#PolymorphicMapType_9388| Heap@@16) (select (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| Heap@@16) o_15@@4 f_23) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9388_6387_6388#PolymorphicMapType_9388| Heap@@16) o_15@@4 f_23))
)))
(assert (forall ((p@@1 T@Field_6540_27292) (v_1@@0 T@FrameType) (q T@Field_6540_27292) (w@@0 T@FrameType) (r T@Field_6540_27292) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9448_9448 p@@1 v_1@@0 q w@@0) (InsidePredicate_9448_9448 q w@@0 r u)) (InsidePredicate_9448_9448 p@@1 v_1@@0 r u))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9448_9448 p@@1 v_1@@0 q w@@0) (InsidePredicate_9448_9448 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_5 () Int)
(declare-fun a_2@@1 () T@IArrayDomainType)
(declare-fun QPMask@7 () T@PolymorphicMapType_9409)
(declare-fun PostHeap@0 () T@PolymorphicMapType_9388)
(declare-fun key_2 () Int)
(declare-fun index () Int)
(declare-fun Heap@@17 () T@PolymorphicMapType_9388)
(declare-fun j$1_4 () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_9409)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun i_6_2 () Int)
(declare-fun high@0 () Int)
(declare-fun i_11_1 () Int)
(declare-fun low@2 () Int)
(declare-fun high@2 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_9388)
(declare-fun index@3 () Int)
(declare-fun j$3_5 () Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_9409)
(declare-fun neverTriggered7 (Int) Bool)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_9409)
(declare-fun low@0 () Int)
(declare-fun mid@0 () Int)
(declare-fun index@2 () Int)
(declare-fun index@1 () Int)
(declare-fun low@1 () Int)
(declare-fun high@1 () Int)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun i_4_1 () Int)
(declare-fun j$1_2 () Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_9409)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_9409)
(declare-fun QPMask@1 () T@PolymorphicMapType_9409)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun i_21 () Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_9409)
(declare-fun j$3_6 () Int)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun index@0 () Int)
(declare-fun j$3 () Int)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun i_3 () Int)
(declare-fun j_15 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(set-info :boogie-vc-id binary_search)
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
 (=> (= (ControlFlow 0 0) 147) (let ((anon19_correct true))
(let ((anon101_Else_correct  (=> (and (not (and (<= 0 i_5) (< i_5 (len a_2@@1)))) (= (ControlFlow 0 133) 130)) anon19_correct)))
(let ((anon101_Then_correct  (=> (and (<= 0 i_5) (< i_5 (len a_2@@1))) (and (=> (= (ControlFlow 0 131) (- 0 132)) (HasDirectPerm_6540_1473 QPMask@7 (loc a_2@@1 i_5) val)) (=> (HasDirectPerm_6540_1473 QPMask@7 (loc a_2@@1 i_5) val) (=> (= (ControlFlow 0 131) 130) anon19_correct))))))
(let ((anon21_correct true))
(let ((anon100_Else_correct  (=> (and (forall ((i_3_2 Int) ) (!  (=> (and (<= 0 i_3_2) (< i_3_2 (len a_2@@1))) (not (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| PostHeap@0) (loc a_2@@1 i_3_2) val) key_2)))
 :qid |stdinbpl.433:22|
 :skolemid |38|
 :pattern ( (loc a_2@@1 i_3_2))
)) (= (ControlFlow 0 129) 127)) anon21_correct)))
(let ((anon99_Then_correct  (=> (= (- 0 1) index) (and (and (=> (= (ControlFlow 0 134) 129) anon100_Else_correct) (=> (= (ControlFlow 0 134) 131) anon101_Then_correct)) (=> (= (ControlFlow 0 134) 133) anon101_Else_correct)))))
(let ((anon99_Else_correct  (=> (and (not (= (- 0 1) index)) (= (ControlFlow 0 128) 127)) anon21_correct)))
(let ((anon15_correct  (=> (state PostHeap@0 QPMask@7) (and (=> (= (ControlFlow 0 135) 134) anon99_Then_correct) (=> (= (ControlFlow 0 135) 128) anon99_Else_correct)))))
(let ((anon98_Else_correct  (=> (and (< index 0) (= (ControlFlow 0 138) 135)) anon15_correct)))
(let ((anon98_Then_correct  (=> (<= 0 index) (and (=> (= (ControlFlow 0 136) (- 0 137)) (HasDirectPerm_6540_1473 QPMask@7 (loc a_2@@1 index) val)) (=> (HasDirectPerm_6540_1473 QPMask@7 (loc a_2@@1 index) val) (=> (and (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| PostHeap@0) (loc a_2@@1 index) val) key_2) (= (ControlFlow 0 136) 135)) anon15_correct))))))
(let ((anon96_Else_correct  (=> (forall ((j$1_1 Int) ) (!  (=> (and (<= 0 j$1_1) (< j$1_1 (len a_2@@1))) (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| PostHeap@0) (loc a_2@@1 j$1_1) val) (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 j$1_1) val)))
 :qid |stdinbpl.407:20|
 :skolemid |37|
 :pattern ( (loc a_2@@1 j$1_1))
)) (=> (and (and (state PostHeap@0 QPMask@7) (<= (- 0 1) index)) (and (< index (len a_2@@1)) (state PostHeap@0 QPMask@7))) (and (=> (= (ControlFlow 0 139) 136) anon98_Then_correct) (=> (= (ControlFlow 0 139) 138) anon98_Else_correct))))))
(let ((anon12_correct true))
(let ((anon97_Else_correct  (=> (and (not (and (<= 0 j$1_4) (< j$1_4 (len a_2@@1)))) (= (ControlFlow 0 126) 122)) anon12_correct)))
(let ((anon97_Then_correct  (=> (and (<= 0 j$1_4) (< j$1_4 (len a_2@@1))) (and (=> (= (ControlFlow 0 123) (- 0 125)) (HasDirectPerm_6540_1473 QPMask@7 (loc a_2@@1 j$1_4) val)) (=> (HasDirectPerm_6540_1473 QPMask@7 (loc a_2@@1 j$1_4) val) (and (=> (= (ControlFlow 0 123) (- 0 124)) (HasDirectPerm_6540_1473 QPMask@0 (loc a_2@@1 j$1_4) val)) (=> (HasDirectPerm_6540_1473 QPMask@0 (loc a_2@@1 j$1_4) val) (=> (= (ControlFlow 0 123) 122) anon12_correct))))))))
(let ((anon95_Else_correct  (and (=> (= (ControlFlow 0 140) (- 0 141)) (forall ((j$0_1 Int) (j$0_1_1 Int) ) (!  (=> (and (and (and (and (not (= j$0_1 j$0_1_1)) (and (<= 0 j$0_1) (< j$0_1 (len a_2@@1)))) (and (<= 0 j$0_1_1) (< j$0_1_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$0_1) (loc a_2@@1 j$0_1_1))))
 :qid |stdinbpl.364:15|
 :skolemid |31|
))) (=> (forall ((j$0_1@@0 Int) (j$0_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$0_1@@0 j$0_1_1@@0)) (and (<= 0 j$0_1@@0) (< j$0_1@@0 (len a_2@@1)))) (and (<= 0 j$0_1_1@@0) (< j$0_1_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$0_1@@0) (loc a_2@@1 j$0_1_1@@0))))
 :qid |stdinbpl.364:15|
 :skolemid |31|
)) (=> (and (and (forall ((j$0_1@@1 Int) ) (!  (=> (and (and (<= 0 j$0_1@@1) (< j$0_1@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange2 (loc a_2@@1 j$0_1@@1)) (= (invRecv2 (loc a_2@@1 j$0_1@@1)) j$0_1@@1)))
 :qid |stdinbpl.370:22|
 :skolemid |32|
 :pattern ( (loc a_2@@1 j$0_1@@1))
 :pattern ( (loc a_2@@1 j$0_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv2 o_9)) (< (invRecv2 o_9) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange2 o_9)) (= (loc a_2@@1 (invRecv2 o_9)) o_9))
 :qid |stdinbpl.374:22|
 :skolemid |33|
 :pattern ( (invRecv2 o_9))
))) (and (forall ((j$0_1@@2 Int) ) (!  (=> (and (<= 0 j$0_1@@2) (< j$0_1@@2 (len a_2@@1))) (not (= (loc a_2@@1 j$0_1@@2) null)))
 :qid |stdinbpl.380:22|
 :skolemid |34|
 :pattern ( (loc a_2@@1 j$0_1@@2))
 :pattern ( (loc a_2@@1 j$0_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv2 o_9@@0)) (< (invRecv2 o_9@@0) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange2 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv2 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@7) o_9@@0 val) (+ (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| ZeroMask) o_9@@0 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv2 o_9@@0)) (< (invRecv2 o_9@@0) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange2 o_9@@0))) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@7) o_9@@0 val) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| ZeroMask) o_9@@0 val))))
 :qid |stdinbpl.386:22|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@7) o_9@@0 val))
)))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_9448_53) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@7) o_9@@1 f_5)))
 :qid |stdinbpl.390:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@7) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_9461_9462) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@7) o_9@@2 f_5@@0)))
 :qid |stdinbpl.390:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@7) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_12899_1473) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@7) o_9@@3 f_5@@1)))
 :qid |stdinbpl.390:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@7) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_6540_27292) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@7) o_9@@4 f_5@@2)))
 :qid |stdinbpl.390:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@7) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_6540_27425) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@7) o_9@@5 f_5@@3)))
 :qid |stdinbpl.390:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@7) o_9@@5 f_5@@3))
))) (state PostHeap@0 QPMask@7)) (and (and (=> (= (ControlFlow 0 140) 139) anon96_Else_correct) (=> (= (ControlFlow 0 140) 123) anon97_Then_correct)) (=> (= (ControlFlow 0 140) 126) anon97_Else_correct))))))))
(let ((anon95_Then_correct true))
(let ((anon94_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 142) 121) anon95_Then_correct) (=> (= (ControlFlow 0 142) 140) anon95_Else_correct)))))
(let ((anon30_correct true))
(let ((anon106_Else_correct  (=> (and (not (and (<= 0 i_6_2) (and (< i_6_2 (len a_2@@1)) (not (and (<= 0 i_6_2) (< i_6_2 high@0)))))) (= (ControlFlow 0 112) 109)) anon30_correct)))
(let ((anon106_Then_correct  (=> (and (<= 0 i_6_2) (and (< i_6_2 (len a_2@@1)) (not (and (<= 0 i_6_2) (< i_6_2 high@0))))) (and (=> (= (ControlFlow 0 110) (- 0 111)) (not (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 i_6_2) val) key_2))) (=> (not (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 i_6_2) val) key_2)) (=> (= (ControlFlow 0 110) 109) anon30_correct))))))
(let ((anon69_correct true))
(let ((anon125_Else_correct  (=> (and (not (and (<= 0 i_11_1) (and (< i_11_1 (len a_2@@1)) (not (and (<= low@2 i_11_1) (< i_11_1 high@2)))))) (= (ControlFlow 0 76) 73)) anon69_correct)))
(let ((anon125_Then_correct  (=> (and (<= 0 i_11_1) (and (< i_11_1 (len a_2@@1)) (not (and (<= low@2 i_11_1) (< i_11_1 high@2))))) (and (=> (= (ControlFlow 0 74) (- 0 75)) (not (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 i_11_1) val) key_2))) (=> (not (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 i_11_1) val) key_2)) (=> (= (ControlFlow 0 74) 73) anon69_correct))))))
(let ((anon73_correct true))
(let ((anon126_Else_correct  (=> (and (< index@3 0) (= (ControlFlow 0 67) 64)) anon73_correct)))
(let ((anon126_Then_correct  (=> (<= 0 index@3) (and (=> (= (ControlFlow 0 65) (- 0 66)) (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 index@3) val) key_2)) (=> (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 index@3) val) key_2) (=> (= (ControlFlow 0 65) 64) anon73_correct))))))
(let ((anon71_correct  (and (=> (= (ControlFlow 0 68) (- 0 70)) (<= (- 0 1) index@3)) (=> (<= (- 0 1) index@3) (and (=> (= (ControlFlow 0 68) (- 0 69)) (< index@3 (len a_2@@1))) (=> (< index@3 (len a_2@@1)) (and (=> (= (ControlFlow 0 68) 65) anon126_Then_correct) (=> (= (ControlFlow 0 68) 67) anon126_Else_correct))))))))
(let ((anon124_Else_correct  (=> (and (forall ((i_12_1_1 Int) ) (!  (=> (and (<= 0 i_12_1_1) (and (< i_12_1_1 (len a_2@@1)) (not (and (<= low@2 i_12_1_1) (< i_12_1_1 high@2))))) (not (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 i_12_1_1) val) key_2)))
 :qid |stdinbpl.815:26|
 :skolemid |70|
 :pattern ( (loc a_2@@1 i_12_1_1))
)) (= (ControlFlow 0 72) 68)) anon71_correct)))
(let ((anon123_Then_correct  (=> (= index@3 (- 0 1)) (and (and (=> (= (ControlFlow 0 77) 72) anon124_Else_correct) (=> (= (ControlFlow 0 77) 74) anon125_Then_correct)) (=> (= (ControlFlow 0 77) 76) anon125_Else_correct)))))
(let ((anon123_Else_correct  (=> (and (not (= index@3 (- 0 1))) (= (ControlFlow 0 71) 68)) anon71_correct)))
(let ((anon121_Else_correct  (=> (forall ((j$3_6_1 Int) ) (!  (=> (and (<= 0 j$3_6_1) (< j$3_6_1 (len a_2@@1))) (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 j$3_6_1) val) (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 j$3_6_1) val)))
 :qid |stdinbpl.797:24|
 :skolemid |69|
 :pattern ( (loc a_2@@1 j$3_6_1))
)) (and (=> (= (ControlFlow 0 78) (- 0 81)) (<= 0 low@2)) (=> (<= 0 low@2) (and (=> (= (ControlFlow 0 78) (- 0 80)) (<= low@2 high@2)) (=> (<= low@2 high@2) (and (=> (= (ControlFlow 0 78) (- 0 79)) (<= high@2 (len a_2@@1))) (=> (<= high@2 (len a_2@@1)) (and (=> (= (ControlFlow 0 78) 77) anon123_Then_correct) (=> (= (ControlFlow 0 78) 71) anon123_Else_correct)))))))))))
(let ((anon64_correct true))
(let ((anon122_Else_correct  (=> (and (not (and (<= 0 j$3_5) (< j$3_5 (len a_2@@1)))) (= (ControlFlow 0 63) 60)) anon64_correct)))
(let ((anon122_Then_correct  (=> (and (<= 0 j$3_5) (< j$3_5 (len a_2@@1))) (and (=> (= (ControlFlow 0 61) (- 0 62)) (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 j$3_5) val) (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 j$3_5) val))) (=> (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 j$3_5) val) (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 j$3_5) val)) (=> (= (ControlFlow 0 61) 60) anon64_correct))))))
(let ((anon61_correct  (=> (state ExhaleHeap@0 QPMask@2) (and (=> (= (ControlFlow 0 82) (- 0 84)) (forall ((j$2_4 Int) (j$2_4_1 Int) ) (!  (=> (and (and (and (and (not (= j$2_4 j$2_4_1)) (and (<= 0 j$2_4) (< j$2_4 (len a_2@@1)))) (and (<= 0 j$2_4_1) (< j$2_4_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$2_4) (loc a_2@@1 j$2_4_1))))
 :qid |stdinbpl.756:21|
 :skolemid |63|
 :pattern ( (neverTriggered7 j$2_4) (neverTriggered7 j$2_4_1))
))) (=> (forall ((j$2_4@@0 Int) (j$2_4_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$2_4@@0 j$2_4_1@@0)) (and (<= 0 j$2_4@@0) (< j$2_4@@0 (len a_2@@1)))) (and (<= 0 j$2_4_1@@0) (< j$2_4_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$2_4@@0) (loc a_2@@1 j$2_4_1@@0))))
 :qid |stdinbpl.756:21|
 :skolemid |63|
 :pattern ( (neverTriggered7 j$2_4@@0) (neverTriggered7 j$2_4_1@@0))
)) (and (=> (= (ControlFlow 0 82) (- 0 83)) (forall ((j$2_4@@1 Int) ) (!  (=> (and (<= 0 j$2_4@@1) (< j$2_4@@1 (len a_2@@1))) (>= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@2) (loc a_2@@1 j$2_4@@1) val) FullPerm))
 :qid |stdinbpl.763:21|
 :skolemid |64|
 :pattern ( (loc a_2@@1 j$2_4@@1))
 :pattern ( (loc a_2@@1 j$2_4@@1))
))) (=> (forall ((j$2_4@@2 Int) ) (!  (=> (and (<= 0 j$2_4@@2) (< j$2_4@@2 (len a_2@@1))) (>= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@2) (loc a_2@@1 j$2_4@@2) val) FullPerm))
 :qid |stdinbpl.763:21|
 :skolemid |64|
 :pattern ( (loc a_2@@1 j$2_4@@2))
 :pattern ( (loc a_2@@1 j$2_4@@2))
)) (=> (forall ((j$2_4@@3 Int) ) (!  (=> (and (and (<= 0 j$2_4@@3) (< j$2_4@@3 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange7 (loc a_2@@1 j$2_4@@3)) (= (invRecv7 (loc a_2@@1 j$2_4@@3)) j$2_4@@3)))
 :qid |stdinbpl.769:26|
 :skolemid |65|
 :pattern ( (loc a_2@@1 j$2_4@@3))
 :pattern ( (loc a_2@@1 j$2_4@@3))
)) (=> (and (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv7 o_9@@6)) (< (invRecv7 o_9@@6) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange7 o_9@@6))) (= (loc a_2@@1 (invRecv7 o_9@@6)) o_9@@6))
 :qid |stdinbpl.773:26|
 :skolemid |66|
 :pattern ( (invRecv7 o_9@@6))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv7 o_9@@7)) (< (invRecv7 o_9@@7) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange7 o_9@@7))) (and (= (loc a_2@@1 (invRecv7 o_9@@7)) o_9@@7) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@5) o_9@@7 val) (- (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@2) o_9@@7 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv7 o_9@@7)) (< (invRecv7 o_9@@7) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange7 o_9@@7)))) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@5) o_9@@7 val) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@2) o_9@@7 val))))
 :qid |stdinbpl.779:26|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@5) o_9@@7 val))
))) (=> (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_9448_53) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@2) o_9@@8 f_5@@4) (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@5) o_9@@8 f_5@@4)))
 :qid |stdinbpl.785:33|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@5) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_9461_9462) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@2) o_9@@9 f_5@@5) (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@5) o_9@@9 f_5@@5)))
 :qid |stdinbpl.785:33|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@5) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_12899_1473) ) (!  (=> (not (= f_5@@6 val)) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@2) o_9@@10 f_5@@6) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@5) o_9@@10 f_5@@6)))
 :qid |stdinbpl.785:33|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@5) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_6540_27292) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@2) o_9@@11 f_5@@7) (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@5) o_9@@11 f_5@@7)))
 :qid |stdinbpl.785:33|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@5) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_6540_27425) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@2) o_9@@12 f_5@@8) (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@5) o_9@@12 f_5@@8)))
 :qid |stdinbpl.785:33|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@5) o_9@@12 f_5@@8))
))) (and (and (=> (= (ControlFlow 0 82) 78) anon121_Else_correct) (=> (= (ControlFlow 0 82) 61) anon122_Then_correct)) (=> (= (ControlFlow 0 82) 63) anon122_Else_correct))))))))))))
(let ((anon60_correct  (=> (state ExhaleHeap@0 QPMask@2) (=> (and (and (= low@2 low@0) (= high@2 mid@0)) (and (= index@3 index@2) (= (ControlFlow 0 86) 82))) anon61_correct))))
(let ((anon120_Else_correct  (=> (<= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 mid@0) val) key_2) (=> (and (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2)) (and (= index@2 mid@0) (= (ControlFlow 0 88) 86))) anon60_correct))))
(let ((anon120_Then_correct  (=> (and (and (< key_2 (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 mid@0) val)) (state ExhaleHeap@0 QPMask@2)) (and (= index@2 index@1) (= (ControlFlow 0 87) 86))) anon60_correct)))
(let ((anon119_Else_correct  (=> (<= key_2 (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 mid@0) val)) (and (=> (= (ControlFlow 0 89) (- 0 90)) (HasDirectPerm_6540_1473 QPMask@2 (loc a_2@@1 mid@0) val)) (=> (HasDirectPerm_6540_1473 QPMask@2 (loc a_2@@1 mid@0) val) (and (=> (= (ControlFlow 0 89) 87) anon120_Then_correct) (=> (= (ControlFlow 0 89) 88) anon120_Else_correct)))))))
(let ((anon119_Then_correct  (=> (< (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 mid@0) val) key_2) (=> (and (= low@1 (+ mid@0 1)) (state ExhaleHeap@0 QPMask@2)) (=> (and (and (= low@2 low@1) (= high@2 high@1)) (and (= index@3 index@1) (= (ControlFlow 0 85) 82))) anon61_correct)))))
(let ((anon55_correct  (=> (state ExhaleHeap@0 QPMask@2) (=> (and (and (< low@0 high@1) (state ExhaleHeap@0 QPMask@2)) (and (= mid@0 (div (+ low@0 high@1) 2)) (state ExhaleHeap@0 QPMask@2))) (and (=> (= (ControlFlow 0 91) (- 0 92)) (HasDirectPerm_6540_1473 QPMask@2 (loc a_2@@1 mid@0) val)) (=> (HasDirectPerm_6540_1473 QPMask@2 (loc a_2@@1 mid@0) val) (and (=> (= (ControlFlow 0 91) 85) anon119_Then_correct) (=> (= (ControlFlow 0 91) 89) anon119_Else_correct))))))))
(let ((anon118_Else_correct  (=> (and (< index@1 0) (= (ControlFlow 0 94) 91)) anon55_correct)))
(let ((anon118_Then_correct  (=> (<= 0 index@1) (=> (and (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 index@1) val) key_2) (= (ControlFlow 0 93) 91)) anon55_correct))))
(let ((anon53_correct  (=> (and (<= (- 0 1) index@1) (< index@1 (len a_2@@1))) (and (=> (= (ControlFlow 0 95) 93) anon118_Then_correct) (=> (= (ControlFlow 0 95) 94) anon118_Else_correct)))))
(let ((anon117_Else_correct  (=> (and (not (= index@1 (- 0 1))) (= (ControlFlow 0 97) 95)) anon53_correct)))
(let ((anon117_Then_correct  (=> (= index@1 (- 0 1)) (=> (and (forall ((i_10_1 Int) ) (!  (=> (and (<= 0 i_10_1) (and (< i_10_1 (len a_2@@1)) (not (and (<= low@0 i_10_1) (< i_10_1 high@1))))) (not (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 i_10_1) val) key_2)))
 :qid |stdinbpl.690:26|
 :skolemid |62|
 :pattern ( (loc a_2@@1 i_10_1))
)) (= (ControlFlow 0 96) 95)) anon53_correct))))
(let ((anon116_Then_correct  (=> (state ExhaleHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 98) (- 0 99)) (forall ((j$2_3_2 Int) (j$2_3_3 Int) ) (!  (=> (and (and (and (and (not (= j$2_3_2 j$2_3_3)) (and (<= 0 j$2_3_2) (< j$2_3_2 (len a_2@@1)))) (and (<= 0 j$2_3_3) (< j$2_3_3 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$2_3_2) (loc a_2@@1 j$2_3_3))))
 :qid |stdinbpl.650:19|
 :skolemid |55|
))) (=> (forall ((j$2_3_2@@0 Int) (j$2_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j$2_3_2@@0 j$2_3_3@@0)) (and (<= 0 j$2_3_2@@0) (< j$2_3_2@@0 (len a_2@@1)))) (and (<= 0 j$2_3_3@@0) (< j$2_3_3@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$2_3_2@@0) (loc a_2@@1 j$2_3_3@@0))))
 :qid |stdinbpl.650:19|
 :skolemid |55|
)) (=> (and (and (forall ((j$2_3_2@@1 Int) ) (!  (=> (and (and (<= 0 j$2_3_2@@1) (< j$2_3_2@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange6 (loc a_2@@1 j$2_3_2@@1)) (= (invRecv6 (loc a_2@@1 j$2_3_2@@1)) j$2_3_2@@1)))
 :qid |stdinbpl.656:26|
 :skolemid |56|
 :pattern ( (loc a_2@@1 j$2_3_2@@1))
 :pattern ( (loc a_2@@1 j$2_3_2@@1))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv6 o_9@@13)) (< (invRecv6 o_9@@13) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange6 o_9@@13)) (= (loc a_2@@1 (invRecv6 o_9@@13)) o_9@@13))
 :qid |stdinbpl.660:26|
 :skolemid |57|
 :pattern ( (invRecv6 o_9@@13))
))) (and (forall ((j$2_3_2@@2 Int) ) (!  (=> (and (<= 0 j$2_3_2@@2) (< j$2_3_2@@2 (len a_2@@1))) (not (= (loc a_2@@1 j$2_3_2@@2) null)))
 :qid |stdinbpl.666:26|
 :skolemid |58|
 :pattern ( (loc a_2@@1 j$2_3_2@@2))
 :pattern ( (loc a_2@@1 j$2_3_2@@2))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv6 o_9@@14)) (< (invRecv6 o_9@@14) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange6 o_9@@14)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv6 o_9@@14)) o_9@@14)) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@2) o_9@@14 val) (+ (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| ZeroMask) o_9@@14 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv6 o_9@@14)) (< (invRecv6 o_9@@14) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange6 o_9@@14))) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@2) o_9@@14 val) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| ZeroMask) o_9@@14 val))))
 :qid |stdinbpl.672:26|
 :skolemid |59|
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@2) o_9@@14 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_9448_53) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| ZeroMask) o_9@@15 f_5@@9) (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@2) o_9@@15 f_5@@9)))
 :qid |stdinbpl.676:33|
 :skolemid |60|
 :pattern ( (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| ZeroMask) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@2) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_9461_9462) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| ZeroMask) o_9@@16 f_5@@10) (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@2) o_9@@16 f_5@@10)))
 :qid |stdinbpl.676:33|
 :skolemid |60|
 :pattern ( (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| ZeroMask) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@2) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_12899_1473) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| ZeroMask) o_9@@17 f_5@@11) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@2) o_9@@17 f_5@@11)))
 :qid |stdinbpl.676:33|
 :skolemid |60|
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| ZeroMask) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@2) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_6540_27292) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| ZeroMask) o_9@@18 f_5@@12) (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@2) o_9@@18 f_5@@12)))
 :qid |stdinbpl.676:33|
 :skolemid |60|
 :pattern ( (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| ZeroMask) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@2) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_6540_27425) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| ZeroMask) o_9@@19 f_5@@13) (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@2) o_9@@19 f_5@@13)))
 :qid |stdinbpl.676:33|
 :skolemid |60|
 :pattern ( (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| ZeroMask) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@2) o_9@@19 f_5@@13))
))) (state ExhaleHeap@0 QPMask@2)) (and (and (forall ((j$3_4 Int) ) (!  (=> (and (<= 0 j$3_4) (< j$3_4 (len a_2@@1))) (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 j$3_4) val) (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 j$3_4) val)))
 :qid |stdinbpl.682:24|
 :skolemid |61|
 :pattern ( (loc a_2@@1 j$3_4))
)) (<= 0 low@0)) (and (<= low@0 high@1) (<= high@1 (len a_2@@1))))) (and (=> (= (ControlFlow 0 98) 96) anon117_Then_correct) (=> (= (ControlFlow 0 98) 97) anon117_Else_correct)))))))))
(let ((anon88_correct true))
(let ((anon134_Else_correct  (=> (and (not (and (<= 0 i_4_1) (< i_4_1 (len a_2@@1)))) (= (ControlFlow 0 42) 39)) anon88_correct)))
(let ((anon134_Then_correct  (=> (and (<= 0 i_4_1) (< i_4_1 (len a_2@@1))) (and (=> (= (ControlFlow 0 40) (- 0 41)) (not (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 i_4_1) val) key_2))) (=> (not (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 i_4_1) val) key_2)) (=> (= (ControlFlow 0 40) 39) anon88_correct))))))
(let ((anon90_correct true))
(let ((anon133_Else_correct  (=> (and (forall ((i_5_1_1 Int) ) (!  (=> (and (<= 0 i_5_1_1) (< i_5_1_1 (len a_2@@1))) (not (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 i_5_1_1) val) key_2)))
 :qid |stdinbpl.965:22|
 :skolemid |86|
 :pattern ( (loc a_2@@1 i_5_1_1))
)) (= (ControlFlow 0 38) 36)) anon90_correct)))
(let ((anon132_Then_correct  (=> (= (- 0 1) index@1) (and (and (=> (= (ControlFlow 0 43) 38) anon133_Else_correct) (=> (= (ControlFlow 0 43) 40) anon134_Then_correct)) (=> (= (ControlFlow 0 43) 42) anon134_Else_correct)))))
(let ((anon132_Else_correct  (=> (and (not (= (- 0 1) index@1)) (= (ControlFlow 0 37) 36)) anon90_correct)))
(let ((anon131_Else_correct  (=> (< index@1 0) (and (=> (= (ControlFlow 0 46) 43) anon132_Then_correct) (=> (= (ControlFlow 0 46) 37) anon132_Else_correct)))))
(let ((anon131_Then_correct  (=> (<= 0 index@1) (and (=> (= (ControlFlow 0 44) (- 0 45)) (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 index@1) val) key_2)) (=> (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 index@1) val) key_2) (and (=> (= (ControlFlow 0 44) 43) anon132_Then_correct) (=> (= (ControlFlow 0 44) 37) anon132_Else_correct)))))))
(let ((anon129_Else_correct  (=> (forall ((j$1_3_1 Int) ) (!  (=> (and (<= 0 j$1_3_1) (< j$1_3_1 (len a_2@@1))) (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 j$1_3_1) val) (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 j$1_3_1) val)))
 :qid |stdinbpl.945:20|
 :skolemid |85|
 :pattern ( (loc a_2@@1 j$1_3_1))
)) (and (=> (= (ControlFlow 0 47) (- 0 49)) (<= (- 0 1) index@1)) (=> (<= (- 0 1) index@1) (and (=> (= (ControlFlow 0 47) (- 0 48)) (< index@1 (len a_2@@1))) (=> (< index@1 (len a_2@@1)) (and (=> (= (ControlFlow 0 47) 44) anon131_Then_correct) (=> (= (ControlFlow 0 47) 46) anon131_Else_correct)))))))))
(let ((anon81_correct true))
(let ((anon130_Else_correct  (=> (and (not (and (<= 0 j$1_2) (< j$1_2 (len a_2@@1)))) (= (ControlFlow 0 35) 32)) anon81_correct)))
(let ((anon130_Then_correct  (=> (and (<= 0 j$1_2) (< j$1_2 (len a_2@@1))) (and (=> (= (ControlFlow 0 33) (- 0 34)) (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 j$1_2) val) (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 j$1_2) val))) (=> (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 j$1_2) val) (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 j$1_2) val)) (=> (= (ControlFlow 0 33) 32) anon81_correct))))))
(let ((anon78_correct  (=> (and (state ExhaleHeap@0 QPMask@3) (state ExhaleHeap@0 QPMask@3)) (and (=> (= (ControlFlow 0 50) (- 0 52)) (forall ((j$0_2 Int) (j$0_2_1 Int) ) (!  (=> (and (and (and (and (not (= j$0_2 j$0_2_1)) (and (<= 0 j$0_2) (< j$0_2 (len a_2@@1)))) (and (<= 0 j$0_2_1) (< j$0_2_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$0_2) (loc a_2@@1 j$0_2_1))))
 :qid |stdinbpl.904:17|
 :skolemid |79|
 :pattern ( (neverTriggered3 j$0_2) (neverTriggered3 j$0_2_1))
))) (=> (forall ((j$0_2@@0 Int) (j$0_2_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$0_2@@0 j$0_2_1@@0)) (and (<= 0 j$0_2@@0) (< j$0_2@@0 (len a_2@@1)))) (and (<= 0 j$0_2_1@@0) (< j$0_2_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$0_2@@0) (loc a_2@@1 j$0_2_1@@0))))
 :qid |stdinbpl.904:17|
 :skolemid |79|
 :pattern ( (neverTriggered3 j$0_2@@0) (neverTriggered3 j$0_2_1@@0))
)) (and (=> (= (ControlFlow 0 50) (- 0 51)) (forall ((j$0_2@@1 Int) ) (!  (=> (and (<= 0 j$0_2@@1) (< j$0_2@@1 (len a_2@@1))) (>= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@3) (loc a_2@@1 j$0_2@@1) val) FullPerm))
 :qid |stdinbpl.911:17|
 :skolemid |80|
 :pattern ( (loc a_2@@1 j$0_2@@1))
 :pattern ( (loc a_2@@1 j$0_2@@1))
))) (=> (forall ((j$0_2@@2 Int) ) (!  (=> (and (<= 0 j$0_2@@2) (< j$0_2@@2 (len a_2@@1))) (>= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@3) (loc a_2@@1 j$0_2@@2) val) FullPerm))
 :qid |stdinbpl.911:17|
 :skolemid |80|
 :pattern ( (loc a_2@@1 j$0_2@@2))
 :pattern ( (loc a_2@@1 j$0_2@@2))
)) (=> (forall ((j$0_2@@3 Int) ) (!  (=> (and (and (<= 0 j$0_2@@3) (< j$0_2@@3 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange3 (loc a_2@@1 j$0_2@@3)) (= (invRecv3 (loc a_2@@1 j$0_2@@3)) j$0_2@@3)))
 :qid |stdinbpl.917:22|
 :skolemid |81|
 :pattern ( (loc a_2@@1 j$0_2@@3))
 :pattern ( (loc a_2@@1 j$0_2@@3))
)) (=> (and (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv3 o_9@@20)) (< (invRecv3 o_9@@20) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange3 o_9@@20))) (= (loc a_2@@1 (invRecv3 o_9@@20)) o_9@@20))
 :qid |stdinbpl.921:22|
 :skolemid |82|
 :pattern ( (invRecv3 o_9@@20))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv3 o_9@@21)) (< (invRecv3 o_9@@21) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange3 o_9@@21))) (and (= (loc a_2@@1 (invRecv3 o_9@@21)) o_9@@21) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@4) o_9@@21 val) (- (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@3) o_9@@21 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv3 o_9@@21)) (< (invRecv3 o_9@@21) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange3 o_9@@21)))) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@4) o_9@@21 val) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@3) o_9@@21 val))))
 :qid |stdinbpl.927:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@4) o_9@@21 val))
))) (=> (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_9448_53) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@3) o_9@@22 f_5@@14) (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@4) o_9@@22 f_5@@14)))
 :qid |stdinbpl.933:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@4) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_9461_9462) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@3) o_9@@23 f_5@@15) (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@4) o_9@@23 f_5@@15)))
 :qid |stdinbpl.933:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@4) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_12899_1473) ) (!  (=> (not (= f_5@@16 val)) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@3) o_9@@24 f_5@@16) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@4) o_9@@24 f_5@@16)))
 :qid |stdinbpl.933:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@4) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_6540_27292) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@3) o_9@@25 f_5@@17) (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@4) o_9@@25 f_5@@17)))
 :qid |stdinbpl.933:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@4) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_6540_27425) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@3) o_9@@26 f_5@@18) (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@4) o_9@@26 f_5@@18)))
 :qid |stdinbpl.933:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@4) o_9@@26 f_5@@18))
))) (and (and (=> (= (ControlFlow 0 50) 47) anon129_Else_correct) (=> (= (ControlFlow 0 50) 33) anon130_Then_correct)) (=> (= (ControlFlow 0 50) 35) anon130_Else_correct))))))))))))
(let ((anon128_Else_correct  (=> (and (< index@1 0) (= (ControlFlow 0 54) 50)) anon78_correct)))
(let ((anon128_Then_correct  (=> (<= 0 index@1) (=> (and (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 index@1) val) key_2) (= (ControlFlow 0 53) 50)) anon78_correct))))
(let ((anon76_correct  (=> (and (<= (- 0 1) index@1) (< index@1 (len a_2@@1))) (and (=> (= (ControlFlow 0 55) 53) anon128_Then_correct) (=> (= (ControlFlow 0 55) 54) anon128_Else_correct)))))
(let ((anon127_Else_correct  (=> (and (not (= index@1 (- 0 1))) (= (ControlFlow 0 57) 55)) anon76_correct)))
(let ((anon127_Then_correct  (=> (= index@1 (- 0 1)) (=> (and (forall ((i_13_1 Int) ) (!  (=> (and (<= 0 i_13_1) (and (< i_13_1 (len a_2@@1)) (not (and (<= low@0 i_13_1) (< i_13_1 high@1))))) (not (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 i_13_1) val) key_2)))
 :qid |stdinbpl.881:24|
 :skolemid |78|
 :pattern ( (loc a_2@@1 i_13_1))
)) (= (ControlFlow 0 56) 55)) anon76_correct))))
(let ((anon116_Else_correct  (=> (and (not (< low@0 high@1)) (state ExhaleHeap@0 QPMask@1)) (and (=> (= (ControlFlow 0 58) (- 0 59)) (forall ((j$2_5 Int) (j$2_5_1 Int) ) (!  (=> (and (and (and (and (not (= j$2_5 j$2_5_1)) (and (<= 0 j$2_5) (< j$2_5 (len a_2@@1)))) (and (<= 0 j$2_5_1) (< j$2_5_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$2_5) (loc a_2@@1 j$2_5_1))))
 :qid |stdinbpl.841:17|
 :skolemid |71|
))) (=> (forall ((j$2_5@@0 Int) (j$2_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$2_5@@0 j$2_5_1@@0)) (and (<= 0 j$2_5@@0) (< j$2_5@@0 (len a_2@@1)))) (and (<= 0 j$2_5_1@@0) (< j$2_5_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$2_5@@0) (loc a_2@@1 j$2_5_1@@0))))
 :qid |stdinbpl.841:17|
 :skolemid |71|
)) (=> (and (and (forall ((j$2_5@@1 Int) ) (!  (=> (and (and (<= 0 j$2_5@@1) (< j$2_5@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange8 (loc a_2@@1 j$2_5@@1)) (= (invRecv8 (loc a_2@@1 j$2_5@@1)) j$2_5@@1)))
 :qid |stdinbpl.847:24|
 :skolemid |72|
 :pattern ( (loc a_2@@1 j$2_5@@1))
 :pattern ( (loc a_2@@1 j$2_5@@1))
)) (forall ((o_9@@27 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv8 o_9@@27)) (< (invRecv8 o_9@@27) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange8 o_9@@27)) (= (loc a_2@@1 (invRecv8 o_9@@27)) o_9@@27))
 :qid |stdinbpl.851:24|
 :skolemid |73|
 :pattern ( (invRecv8 o_9@@27))
))) (and (forall ((j$2_5@@2 Int) ) (!  (=> (and (<= 0 j$2_5@@2) (< j$2_5@@2 (len a_2@@1))) (not (= (loc a_2@@1 j$2_5@@2) null)))
 :qid |stdinbpl.857:24|
 :skolemid |74|
 :pattern ( (loc a_2@@1 j$2_5@@2))
 :pattern ( (loc a_2@@1 j$2_5@@2))
)) (forall ((o_9@@28 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv8 o_9@@28)) (< (invRecv8 o_9@@28) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange8 o_9@@28)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv8 o_9@@28)) o_9@@28)) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@3) o_9@@28 val) (+ (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@1) o_9@@28 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv8 o_9@@28)) (< (invRecv8 o_9@@28) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange8 o_9@@28))) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@3) o_9@@28 val) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@1) o_9@@28 val))))
 :qid |stdinbpl.863:24|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@3) o_9@@28 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@19 T@Field_9448_53) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@1) o_9@@29 f_5@@19) (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@3) o_9@@29 f_5@@19)))
 :qid |stdinbpl.867:31|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@1) o_9@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@3) o_9@@29 f_5@@19))
)) (forall ((o_9@@30 T@Ref) (f_5@@20 T@Field_9461_9462) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@1) o_9@@30 f_5@@20) (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@3) o_9@@30 f_5@@20)))
 :qid |stdinbpl.867:31|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@1) o_9@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@3) o_9@@30 f_5@@20))
))) (forall ((o_9@@31 T@Ref) (f_5@@21 T@Field_12899_1473) ) (!  (=> (not (= f_5@@21 val)) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@1) o_9@@31 f_5@@21) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@3) o_9@@31 f_5@@21)))
 :qid |stdinbpl.867:31|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@1) o_9@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@3) o_9@@31 f_5@@21))
))) (forall ((o_9@@32 T@Ref) (f_5@@22 T@Field_6540_27292) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@1) o_9@@32 f_5@@22) (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@3) o_9@@32 f_5@@22)))
 :qid |stdinbpl.867:31|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@1) o_9@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@3) o_9@@32 f_5@@22))
))) (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_6540_27425) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@1) o_9@@33 f_5@@23) (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@3) o_9@@33 f_5@@23)))
 :qid |stdinbpl.867:31|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@1) o_9@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@3) o_9@@33 f_5@@23))
))) (state ExhaleHeap@0 QPMask@3)) (and (and (forall ((j$3_7 Int) ) (!  (=> (and (<= 0 j$3_7) (< j$3_7 (len a_2@@1))) (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 j$3_7) val) (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 j$3_7) val)))
 :qid |stdinbpl.873:22|
 :skolemid |77|
 :pattern ( (loc a_2@@1 j$3_7))
)) (<= 0 low@0)) (and (<= low@0 high@1) (<= high@1 (len a_2@@1))))) (and (=> (= (ControlFlow 0 58) 56) anon127_Then_correct) (=> (= (ControlFlow 0 58) 57) anon127_Else_correct)))))))))
(let ((anon45_correct true))
(let ((anon114_Else_correct  (=> (and (not (and (<= 0 i_21) (and (< i_21 (len a_2@@1)) (not (and (<= low@0 i_21) (< i_21 high@1)))))) (= (ControlFlow 0 27) 24)) anon45_correct)))
(let ((anon114_Then_correct  (=> (and (<= 0 i_21) (and (< i_21 (len a_2@@1)) (not (and (<= low@0 i_21) (< i_21 high@1))))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (HasDirectPerm_6540_1473 QPMask@6 (loc a_2@@1 i_21) val)) (=> (HasDirectPerm_6540_1473 QPMask@6 (loc a_2@@1 i_21) val) (=> (= (ControlFlow 0 25) 24) anon45_correct))))))
(let ((anon49_correct true))
(let ((anon115_Else_correct  (=> (and (< index@1 0) (= (ControlFlow 0 20) 17)) anon49_correct)))
(let ((anon115_Then_correct  (=> (<= 0 index@1) (and (=> (= (ControlFlow 0 18) (- 0 19)) (HasDirectPerm_6540_1473 QPMask@6 (loc a_2@@1 index@1) val)) (=> (HasDirectPerm_6540_1473 QPMask@6 (loc a_2@@1 index@1) val) (=> (and (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 index@1) val) key_2) (= (ControlFlow 0 18) 17)) anon49_correct))))))
(let ((anon47_correct  (=> (and (and (state ExhaleHeap@0 QPMask@6) (<= (- 0 1) index@1)) (and (< index@1 (len a_2@@1)) (state ExhaleHeap@0 QPMask@6))) (and (=> (= (ControlFlow 0 21) 18) anon115_Then_correct) (=> (= (ControlFlow 0 21) 20) anon115_Else_correct)))))
(let ((anon113_Else_correct  (=> (and (forall ((i_9_1 Int) ) (!  (=> (and (<= 0 i_9_1) (and (< i_9_1 (len a_2@@1)) (not (and (<= low@0 i_9_1) (< i_9_1 high@1))))) (not (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 i_9_1) val) key_2)))
 :qid |stdinbpl.620:26|
 :skolemid |54|
 :pattern ( (loc a_2@@1 i_9_1))
)) (= (ControlFlow 0 23) 21)) anon47_correct)))
(let ((anon112_Then_correct  (=> (= index@1 (- 0 1)) (and (and (=> (= (ControlFlow 0 28) 23) anon113_Else_correct) (=> (= (ControlFlow 0 28) 25) anon114_Then_correct)) (=> (= (ControlFlow 0 28) 27) anon114_Else_correct)))))
(let ((anon112_Else_correct  (=> (and (not (= index@1 (- 0 1))) (= (ControlFlow 0 22) 21)) anon47_correct)))
(let ((anon110_Else_correct  (=> (and (forall ((j$3_3 Int) ) (!  (=> (and (<= 0 j$3_3) (< j$3_3 (len a_2@@1))) (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| ExhaleHeap@0) (loc a_2@@1 j$3_3) val) (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 j$3_3) val)))
 :qid |stdinbpl.601:24|
 :skolemid |53|
 :pattern ( (loc a_2@@1 j$3_3))
)) (state ExhaleHeap@0 QPMask@6)) (=> (and (and (<= 0 low@0) (<= low@0 high@1)) (and (<= high@1 (len a_2@@1)) (state ExhaleHeap@0 QPMask@6))) (and (=> (= (ControlFlow 0 29) 28) anon112_Then_correct) (=> (= (ControlFlow 0 29) 22) anon112_Else_correct))))))
(let ((anon40_correct true))
(let ((anon111_Else_correct  (=> (and (not (and (<= 0 j$3_6) (< j$3_6 (len a_2@@1)))) (= (ControlFlow 0 16) 12)) anon40_correct)))
(let ((anon111_Then_correct  (=> (and (<= 0 j$3_6) (< j$3_6 (len a_2@@1))) (and (=> (= (ControlFlow 0 13) (- 0 15)) (HasDirectPerm_6540_1473 QPMask@6 (loc a_2@@1 j$3_6) val)) (=> (HasDirectPerm_6540_1473 QPMask@6 (loc a_2@@1 j$3_6) val) (and (=> (= (ControlFlow 0 13) (- 0 14)) (HasDirectPerm_6540_1473 QPMask@0 (loc a_2@@1 j$3_6) val)) (=> (HasDirectPerm_6540_1473 QPMask@0 (loc a_2@@1 j$3_6) val) (=> (= (ControlFlow 0 13) 12) anon40_correct))))))))
(let ((anon109_Else_correct  (and (=> (= (ControlFlow 0 30) (- 0 31)) (forall ((j$2_2 Int) (j$2_2_1 Int) ) (!  (=> (and (and (and (and (not (= j$2_2 j$2_2_1)) (and (<= 0 j$2_2) (< j$2_2 (len a_2@@1)))) (and (<= 0 j$2_2_1) (< j$2_2_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$2_2) (loc a_2@@1 j$2_2_1))))
 :qid |stdinbpl.558:19|
 :skolemid |47|
))) (=> (forall ((j$2_2@@0 Int) (j$2_2_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$2_2@@0 j$2_2_1@@0)) (and (<= 0 j$2_2@@0) (< j$2_2@@0 (len a_2@@1)))) (and (<= 0 j$2_2_1@@0) (< j$2_2_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$2_2@@0) (loc a_2@@1 j$2_2_1@@0))))
 :qid |stdinbpl.558:19|
 :skolemid |47|
)) (=> (and (and (forall ((j$2_2@@1 Int) ) (!  (=> (and (and (<= 0 j$2_2@@1) (< j$2_2@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange5 (loc a_2@@1 j$2_2@@1)) (= (invRecv5 (loc a_2@@1 j$2_2@@1)) j$2_2@@1)))
 :qid |stdinbpl.564:26|
 :skolemid |48|
 :pattern ( (loc a_2@@1 j$2_2@@1))
 :pattern ( (loc a_2@@1 j$2_2@@1))
)) (forall ((o_9@@34 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv5 o_9@@34)) (< (invRecv5 o_9@@34) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange5 o_9@@34)) (= (loc a_2@@1 (invRecv5 o_9@@34)) o_9@@34))
 :qid |stdinbpl.568:26|
 :skolemid |49|
 :pattern ( (invRecv5 o_9@@34))
))) (and (forall ((j$2_2@@2 Int) ) (!  (=> (and (<= 0 j$2_2@@2) (< j$2_2@@2 (len a_2@@1))) (not (= (loc a_2@@1 j$2_2@@2) null)))
 :qid |stdinbpl.574:26|
 :skolemid |50|
 :pattern ( (loc a_2@@1 j$2_2@@2))
 :pattern ( (loc a_2@@1 j$2_2@@2))
)) (forall ((o_9@@35 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv5 o_9@@35)) (< (invRecv5 o_9@@35) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange5 o_9@@35)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv5 o_9@@35)) o_9@@35)) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@6) o_9@@35 val) (+ (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@1) o_9@@35 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv5 o_9@@35)) (< (invRecv5 o_9@@35) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange5 o_9@@35))) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@6) o_9@@35 val) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@1) o_9@@35 val))))
 :qid |stdinbpl.580:26|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@6) o_9@@35 val))
)))) (=> (and (and (and (and (and (forall ((o_9@@36 T@Ref) (f_5@@24 T@Field_9448_53) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@1) o_9@@36 f_5@@24) (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@6) o_9@@36 f_5@@24)))
 :qid |stdinbpl.584:33|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@1) o_9@@36 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@6) o_9@@36 f_5@@24))
)) (forall ((o_9@@37 T@Ref) (f_5@@25 T@Field_9461_9462) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@1) o_9@@37 f_5@@25) (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@6) o_9@@37 f_5@@25)))
 :qid |stdinbpl.584:33|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@1) o_9@@37 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@6) o_9@@37 f_5@@25))
))) (forall ((o_9@@38 T@Ref) (f_5@@26 T@Field_12899_1473) ) (!  (=> (not (= f_5@@26 val)) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@1) o_9@@38 f_5@@26) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@6) o_9@@38 f_5@@26)))
 :qid |stdinbpl.584:33|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@1) o_9@@38 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@6) o_9@@38 f_5@@26))
))) (forall ((o_9@@39 T@Ref) (f_5@@27 T@Field_6540_27292) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@1) o_9@@39 f_5@@27) (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@6) o_9@@39 f_5@@27)))
 :qid |stdinbpl.584:33|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@1) o_9@@39 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@6) o_9@@39 f_5@@27))
))) (forall ((o_9@@40 T@Ref) (f_5@@28 T@Field_6540_27425) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@1) o_9@@40 f_5@@28) (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@6) o_9@@40 f_5@@28)))
 :qid |stdinbpl.584:33|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@1) o_9@@40 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@6) o_9@@40 f_5@@28))
))) (state ExhaleHeap@0 QPMask@6)) (and (and (=> (= (ControlFlow 0 30) 29) anon110_Else_correct) (=> (= (ControlFlow 0 30) 13) anon111_Then_correct)) (=> (= (ControlFlow 0 30) 16) anon111_Else_correct))))))))
(let ((anon109_Then_correct true))
(let ((anon34_correct  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1) (and (and (and (=> (= (ControlFlow 0 100) 98) anon116_Then_correct) (=> (= (ControlFlow 0 100) 58) anon116_Else_correct)) (=> (= (ControlFlow 0 100) 11) anon109_Then_correct)) (=> (= (ControlFlow 0 100) 30) anon109_Else_correct)))))
(let ((anon107_Else_correct  (=> (and (< index@0 0) (= (ControlFlow 0 103) 100)) anon34_correct)))
(let ((anon107_Then_correct  (=> (<= 0 index@0) (and (=> (= (ControlFlow 0 101) (- 0 102)) (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 index@0) val) key_2)) (=> (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 index@0) val) key_2) (=> (= (ControlFlow 0 101) 100) anon34_correct))))))
(let ((anon32_correct  (and (=> (= (ControlFlow 0 104) (- 0 106)) (<= (- 0 1) index@0)) (=> (<= (- 0 1) index@0) (and (=> (= (ControlFlow 0 104) (- 0 105)) (< index@0 (len a_2@@1))) (=> (< index@0 (len a_2@@1)) (and (=> (= (ControlFlow 0 104) 101) anon107_Then_correct) (=> (= (ControlFlow 0 104) 103) anon107_Else_correct))))))))
(let ((anon105_Else_correct  (=> (and (forall ((i_7_1_1 Int) ) (!  (=> (and (<= 0 i_7_1_1) (and (< i_7_1_1 (len a_2@@1)) (not (and (<= 0 i_7_1_1) (< i_7_1_1 high@0))))) (not (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 i_7_1_1) val) key_2)))
 :qid |stdinbpl.528:26|
 :skolemid |46|
 :pattern ( (loc a_2@@1 i_7_1_1))
)) (= (ControlFlow 0 108) 104)) anon32_correct)))
(let ((anon104_Then_correct  (=> (= index@0 (- 0 1)) (and (and (=> (= (ControlFlow 0 113) 108) anon105_Else_correct) (=> (= (ControlFlow 0 113) 110) anon106_Then_correct)) (=> (= (ControlFlow 0 113) 112) anon106_Else_correct)))))
(let ((anon104_Else_correct  (=> (and (not (= index@0 (- 0 1))) (= (ControlFlow 0 107) 104)) anon32_correct)))
(let ((anon102_Else_correct  (=> (forall ((j$3_1_1 Int) ) (!  (=> (and (<= 0 j$3_1_1) (< j$3_1_1 (len a_2@@1))) (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 j$3_1_1) val) (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 j$3_1_1) val)))
 :qid |stdinbpl.510:24|
 :skolemid |45|
 :pattern ( (loc a_2@@1 j$3_1_1))
)) (and (=> (= (ControlFlow 0 114) (- 0 117)) (<= 0 0)) (=> (<= 0 0) (and (=> (= (ControlFlow 0 114) (- 0 116)) (<= 0 high@0)) (=> (<= 0 high@0) (and (=> (= (ControlFlow 0 114) (- 0 115)) (<= high@0 (len a_2@@1))) (=> (<= high@0 (len a_2@@1)) (and (=> (= (ControlFlow 0 114) 113) anon104_Then_correct) (=> (= (ControlFlow 0 114) 107) anon104_Else_correct)))))))))))
(let ((anon25_correct true))
(let ((anon103_Else_correct  (=> (and (not (and (<= 0 j$3) (< j$3 (len a_2@@1)))) (= (ControlFlow 0 10) 7)) anon25_correct)))
(let ((anon103_Then_correct  (=> (and (<= 0 j$3) (< j$3 (len a_2@@1))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 j$3) val) (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 j$3) val))) (=> (= (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 j$3) val) (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 j$3) val)) (=> (= (ControlFlow 0 8) 7) anon25_correct))))))
(let ((anon94_Else_correct  (=> (state Heap@@17 QPMask@0) (=> (and (and (= high@0 (len a_2@@1)) (state Heap@@17 QPMask@0)) (and (= index@0 (- 0 1)) (state Heap@@17 QPMask@0))) (and (=> (= (ControlFlow 0 118) (- 0 120)) (forall ((j$2_3 Int) (j$2_6 Int) ) (!  (=> (and (and (and (and (not (= j$2_3 j$2_6)) (and (<= 0 j$2_3) (< j$2_3 (len a_2@@1)))) (and (<= 0 j$2_6) (< j$2_6 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$2_3) (loc a_2@@1 j$2_6))))
 :qid |stdinbpl.469:21|
 :skolemid |39|
 :pattern ( (neverTriggered4 j$2_3) (neverTriggered4 j$2_6))
))) (=> (forall ((j$2_3@@0 Int) (j$2_6@@0 Int) ) (!  (=> (and (and (and (and (not (= j$2_3@@0 j$2_6@@0)) (and (<= 0 j$2_3@@0) (< j$2_3@@0 (len a_2@@1)))) (and (<= 0 j$2_6@@0) (< j$2_6@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$2_3@@0) (loc a_2@@1 j$2_6@@0))))
 :qid |stdinbpl.469:21|
 :skolemid |39|
 :pattern ( (neverTriggered4 j$2_3@@0) (neverTriggered4 j$2_6@@0))
)) (and (=> (= (ControlFlow 0 118) (- 0 119)) (forall ((j$2_3@@1 Int) ) (!  (=> (and (<= 0 j$2_3@@1) (< j$2_3@@1 (len a_2@@1))) (>= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@0) (loc a_2@@1 j$2_3@@1) val) FullPerm))
 :qid |stdinbpl.476:21|
 :skolemid |40|
 :pattern ( (loc a_2@@1 j$2_3@@1))
 :pattern ( (loc a_2@@1 j$2_3@@1))
))) (=> (forall ((j$2_3@@2 Int) ) (!  (=> (and (<= 0 j$2_3@@2) (< j$2_3@@2 (len a_2@@1))) (>= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@0) (loc a_2@@1 j$2_3@@2) val) FullPerm))
 :qid |stdinbpl.476:21|
 :skolemid |40|
 :pattern ( (loc a_2@@1 j$2_3@@2))
 :pattern ( (loc a_2@@1 j$2_3@@2))
)) (=> (forall ((j$2_3@@3 Int) ) (!  (=> (and (and (<= 0 j$2_3@@3) (< j$2_3@@3 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange4 (loc a_2@@1 j$2_3@@3)) (= (invRecv4 (loc a_2@@1 j$2_3@@3)) j$2_3@@3)))
 :qid |stdinbpl.482:26|
 :skolemid |41|
 :pattern ( (loc a_2@@1 j$2_3@@3))
 :pattern ( (loc a_2@@1 j$2_3@@3))
)) (=> (and (forall ((o_9@@41 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv4 o_9@@41)) (< (invRecv4 o_9@@41) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange4 o_9@@41))) (= (loc a_2@@1 (invRecv4 o_9@@41)) o_9@@41))
 :qid |stdinbpl.486:26|
 :skolemid |42|
 :pattern ( (invRecv4 o_9@@41))
)) (forall ((o_9@@42 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv4 o_9@@42)) (< (invRecv4 o_9@@42) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange4 o_9@@42))) (and (= (loc a_2@@1 (invRecv4 o_9@@42)) o_9@@42) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@1) o_9@@42 val) (- (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@0) o_9@@42 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv4 o_9@@42)) (< (invRecv4 o_9@@42) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange4 o_9@@42)))) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@1) o_9@@42 val) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@0) o_9@@42 val))))
 :qid |stdinbpl.492:26|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@1) o_9@@42 val))
))) (=> (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@29 T@Field_9448_53) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@0) o_9@@43 f_5@@29) (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@1) o_9@@43 f_5@@29)))
 :qid |stdinbpl.498:33|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@1) o_9@@43 f_5@@29))
)) (forall ((o_9@@44 T@Ref) (f_5@@30 T@Field_9461_9462) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@0) o_9@@44 f_5@@30) (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@1) o_9@@44 f_5@@30)))
 :qid |stdinbpl.498:33|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@1) o_9@@44 f_5@@30))
))) (forall ((o_9@@45 T@Ref) (f_5@@31 T@Field_12899_1473) ) (!  (=> (not (= f_5@@31 val)) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@0) o_9@@45 f_5@@31) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@1) o_9@@45 f_5@@31)))
 :qid |stdinbpl.498:33|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@1) o_9@@45 f_5@@31))
))) (forall ((o_9@@46 T@Ref) (f_5@@32 T@Field_6540_27292) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@0) o_9@@46 f_5@@32) (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@1) o_9@@46 f_5@@32)))
 :qid |stdinbpl.498:33|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@1) o_9@@46 f_5@@32))
))) (forall ((o_9@@47 T@Ref) (f_5@@33 T@Field_6540_27425) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@0) o_9@@47 f_5@@33) (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@1) o_9@@47 f_5@@33)))
 :qid |stdinbpl.498:33|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@1) o_9@@47 f_5@@33))
))) (and (and (=> (= (ControlFlow 0 118) 114) anon102_Else_correct) (=> (= (ControlFlow 0 118) 8) anon103_Then_correct)) (=> (= (ControlFlow 0 118) 10) anon103_Else_correct)))))))))))))
(let ((anon92_Else_correct  (=> (and (forall ((i_1 Int) (j_3 Int) ) (!  (=> (and (<= 0 i_1) (and (< j_3 (len a_2@@1)) (< i_1 j_3))) (< (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 i_1) val) (select (|PolymorphicMapType_9388_6540_1473#PolymorphicMapType_9388| Heap@@17) (loc a_2@@1 j_3) val)))
 :qid |stdinbpl.341:20|
 :skolemid |30|
 :pattern ( (loc a_2@@1 i_1) (loc a_2@@1 j_3))
)) (state Heap@@17 QPMask@0)) (and (=> (= (ControlFlow 0 143) 142) anon94_Then_correct) (=> (= (ControlFlow 0 143) 118) anon94_Else_correct)))))
(let ((anon5_correct true))
(let ((anon93_Else_correct  (=> (and (not (and (<= 0 i_3) (and (< j_15 (len a_2@@1)) (< i_3 j_15)))) (= (ControlFlow 0 6) 2)) anon5_correct)))
(let ((anon93_Then_correct  (=> (and (<= 0 i_3) (and (< j_15 (len a_2@@1)) (< i_3 j_15))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (HasDirectPerm_6540_1473 QPMask@0 (loc a_2@@1 i_3) val)) (=> (HasDirectPerm_6540_1473 QPMask@0 (loc a_2@@1 i_3) val) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_6540_1473 QPMask@0 (loc a_2@@1 j_15) val)) (=> (HasDirectPerm_6540_1473 QPMask@0 (loc a_2@@1 j_15) val) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))))
(let ((anon91_Else_correct  (and (=> (= (ControlFlow 0 144) (- 0 145)) (forall ((j_1 Int) (j_1_1 Int) ) (!  (=> (and (and (and (and (not (= j_1 j_1_1)) (and (<= 0 j_1) (< j_1 (len a_2@@1)))) (and (<= 0 j_1_1) (< j_1_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j_1) (loc a_2@@1 j_1_1))))
 :qid |stdinbpl.297:15|
 :skolemid |24|
))) (=> (forall ((j_1@@0 Int) (j_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_1@@0 j_1_1@@0)) (and (<= 0 j_1@@0) (< j_1@@0 (len a_2@@1)))) (and (<= 0 j_1_1@@0) (< j_1_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j_1@@0) (loc a_2@@1 j_1_1@@0))))
 :qid |stdinbpl.297:15|
 :skolemid |24|
)) (=> (and (and (forall ((j_1@@1 Int) ) (!  (=> (and (and (<= 0 j_1@@1) (< j_1@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange1 (loc a_2@@1 j_1@@1)) (= (invRecv1 (loc a_2@@1 j_1@@1)) j_1@@1)))
 :qid |stdinbpl.303:22|
 :skolemid |25|
 :pattern ( (loc a_2@@1 j_1@@1))
 :pattern ( (loc a_2@@1 j_1@@1))
)) (forall ((o_9@@48 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_9@@48)) (< (invRecv1 o_9@@48) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange1 o_9@@48)) (= (loc a_2@@1 (invRecv1 o_9@@48)) o_9@@48))
 :qid |stdinbpl.307:22|
 :skolemid |26|
 :pattern ( (invRecv1 o_9@@48))
))) (and (forall ((j_1@@2 Int) ) (!  (=> (and (<= 0 j_1@@2) (< j_1@@2 (len a_2@@1))) (not (= (loc a_2@@1 j_1@@2) null)))
 :qid |stdinbpl.313:22|
 :skolemid |27|
 :pattern ( (loc a_2@@1 j_1@@2))
 :pattern ( (loc a_2@@1 j_1@@2))
)) (forall ((o_9@@49 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_9@@49)) (< (invRecv1 o_9@@49) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange1 o_9@@49)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv1 o_9@@49)) o_9@@49)) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@0) o_9@@49 val) (+ (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| ZeroMask) o_9@@49 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv1 o_9@@49)) (< (invRecv1 o_9@@49) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange1 o_9@@49))) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@0) o_9@@49 val) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| ZeroMask) o_9@@49 val))))
 :qid |stdinbpl.319:22|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@0) o_9@@49 val))
)))) (=> (and (and (and (and (and (forall ((o_9@@50 T@Ref) (f_5@@34 T@Field_9448_53) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| ZeroMask) o_9@@50 f_5@@34) (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@0) o_9@@50 f_5@@34)))
 :qid |stdinbpl.323:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| ZeroMask) o_9@@50 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_9409_6540_53#PolymorphicMapType_9409| QPMask@0) o_9@@50 f_5@@34))
)) (forall ((o_9@@51 T@Ref) (f_5@@35 T@Field_9461_9462) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| ZeroMask) o_9@@51 f_5@@35) (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@0) o_9@@51 f_5@@35)))
 :qid |stdinbpl.323:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| ZeroMask) o_9@@51 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_9409_6540_9462#PolymorphicMapType_9409| QPMask@0) o_9@@51 f_5@@35))
))) (forall ((o_9@@52 T@Ref) (f_5@@36 T@Field_12899_1473) ) (!  (=> (not (= f_5@@36 val)) (= (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| ZeroMask) o_9@@52 f_5@@36) (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@0) o_9@@52 f_5@@36)))
 :qid |stdinbpl.323:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| ZeroMask) o_9@@52 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_9409_6540_1473#PolymorphicMapType_9409| QPMask@0) o_9@@52 f_5@@36))
))) (forall ((o_9@@53 T@Ref) (f_5@@37 T@Field_6540_27292) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| ZeroMask) o_9@@53 f_5@@37) (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@0) o_9@@53 f_5@@37)))
 :qid |stdinbpl.323:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| ZeroMask) o_9@@53 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_9409_6540_27292#PolymorphicMapType_9409| QPMask@0) o_9@@53 f_5@@37))
))) (forall ((o_9@@54 T@Ref) (f_5@@38 T@Field_6540_27425) ) (!  (=> true (= (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| ZeroMask) o_9@@54 f_5@@38) (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@0) o_9@@54 f_5@@38)))
 :qid |stdinbpl.323:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| ZeroMask) o_9@@54 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_9409_6540_31547#PolymorphicMapType_9409| QPMask@0) o_9@@54 f_5@@38))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 144) 143) anon92_Else_correct) (=> (= (ControlFlow 0 144) 3) anon93_Then_correct)) (=> (= (ControlFlow 0 144) 6) anon93_Else_correct))))))))
(let ((anon91_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 146) 1) anon91_Then_correct) (=> (= (ControlFlow 0 146) 144) anon91_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 147) 146) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
