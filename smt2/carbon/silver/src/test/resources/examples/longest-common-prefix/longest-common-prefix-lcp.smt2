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
(declare-sort T@Field_8355_53 0)
(declare-sort T@Field_8368_8369 0)
(declare-sort T@Field_11806_1473 0)
(declare-sort T@Field_5734_24397 0)
(declare-sort T@Field_5734_24264 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8316 0)) (((PolymorphicMapType_8316 (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| (Array T@Ref T@Field_11806_1473 Real)) (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| (Array T@Ref T@Field_8355_53 Real)) (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| (Array T@Ref T@Field_8368_8369 Real)) (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| (Array T@Ref T@Field_5734_24264 Real)) (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| (Array T@Ref T@Field_5734_24397 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8844 0)) (((PolymorphicMapType_8844 (|PolymorphicMapType_8844_8355_53#PolymorphicMapType_8844| (Array T@Ref T@Field_8355_53 Bool)) (|PolymorphicMapType_8844_8355_8369#PolymorphicMapType_8844| (Array T@Ref T@Field_8368_8369 Bool)) (|PolymorphicMapType_8844_8355_1473#PolymorphicMapType_8844| (Array T@Ref T@Field_11806_1473 Bool)) (|PolymorphicMapType_8844_8355_24264#PolymorphicMapType_8844| (Array T@Ref T@Field_5734_24264 Bool)) (|PolymorphicMapType_8844_8355_25575#PolymorphicMapType_8844| (Array T@Ref T@Field_5734_24397 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8295 0)) (((PolymorphicMapType_8295 (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| (Array T@Ref T@Field_8355_53 Bool)) (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| (Array T@Ref T@Field_8368_8369 T@Ref)) (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| (Array T@Ref T@Field_11806_1473 Int)) (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| (Array T@Ref T@Field_5734_24397 T@PolymorphicMapType_8844)) (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| (Array T@Ref T@Field_5734_24264 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_8355_53)
(declare-fun val () T@Field_11806_1473)
(declare-fun succHeap (T@PolymorphicMapType_8295 T@PolymorphicMapType_8295) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8295 T@PolymorphicMapType_8295) Bool)
(declare-fun state (T@PolymorphicMapType_8295 T@PolymorphicMapType_8316) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8316) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8844)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8295 T@PolymorphicMapType_8295 T@PolymorphicMapType_8316) Bool)
(declare-fun IsPredicateField_5734_24355 (T@Field_5734_24264) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5734 (T@Field_5734_24264) T@Field_5734_24397)
(declare-fun HasDirectPerm_5734_24328 (T@PolymorphicMapType_8316 T@Ref T@Field_5734_24264) Bool)
(declare-fun IsWandField_5734_26102 (T@Field_5734_24264) Bool)
(declare-fun WandMaskField_5734 (T@Field_5734_24264) T@Field_5734_24397)
(declare-fun dummyHeap () T@PolymorphicMapType_8295)
(declare-fun ZeroMask () T@PolymorphicMapType_8316)
(declare-fun InsidePredicate_8355_8355 (T@Field_5734_24264 T@FrameType T@Field_5734_24264 T@FrameType) Bool)
(declare-fun IsPredicateField_5734_1473 (T@Field_11806_1473) Bool)
(declare-fun IsWandField_5734_1473 (T@Field_11806_1473) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5734_29648 (T@Field_5734_24397) Bool)
(declare-fun IsWandField_5734_29664 (T@Field_5734_24397) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5734_8369 (T@Field_8368_8369) Bool)
(declare-fun IsWandField_5734_8369 (T@Field_8368_8369) Bool)
(declare-fun IsPredicateField_5734_53 (T@Field_8355_53) Bool)
(declare-fun IsWandField_5734_53 (T@Field_8355_53) Bool)
(declare-fun HasDirectPerm_5734_30102 (T@PolymorphicMapType_8316 T@Ref T@Field_5734_24397) Bool)
(declare-fun HasDirectPerm_5734_8369 (T@PolymorphicMapType_8316 T@Ref T@Field_8368_8369) Bool)
(declare-fun HasDirectPerm_5734_53 (T@PolymorphicMapType_8316 T@Ref T@Field_8355_53) Bool)
(declare-fun HasDirectPerm_5734_1473 (T@PolymorphicMapType_8316 T@Ref T@Field_11806_1473) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8316 T@PolymorphicMapType_8316 T@PolymorphicMapType_8316) Bool)
(declare-sort T@IArrayDomainType 0)
(declare-fun len (T@IArrayDomainType) Int)
(declare-fun loc (T@IArrayDomainType Int) T@Ref)
(declare-fun first_1 (T@Ref) T@IArrayDomainType)
(declare-fun second_1 (T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_8295) (Heap1 T@PolymorphicMapType_8295) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8295) (Mask T@PolymorphicMapType_8316) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8295) (Heap1@@0 T@PolymorphicMapType_8295) (Heap2 T@PolymorphicMapType_8295) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5734_24397) ) (!  (not (select (|PolymorphicMapType_8844_8355_25575#PolymorphicMapType_8844| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8844_8355_25575#PolymorphicMapType_8844| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5734_24264) ) (!  (not (select (|PolymorphicMapType_8844_8355_24264#PolymorphicMapType_8844| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8844_8355_24264#PolymorphicMapType_8844| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11806_1473) ) (!  (not (select (|PolymorphicMapType_8844_8355_1473#PolymorphicMapType_8844| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8844_8355_1473#PolymorphicMapType_8844| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8368_8369) ) (!  (not (select (|PolymorphicMapType_8844_8355_8369#PolymorphicMapType_8844| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8844_8355_8369#PolymorphicMapType_8844| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8355_53) ) (!  (not (select (|PolymorphicMapType_8844_8355_53#PolymorphicMapType_8844| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8844_8355_53#PolymorphicMapType_8844| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8295) (ExhaleHeap T@PolymorphicMapType_8295) (Mask@@0 T@PolymorphicMapType_8316) (pm_f_6 T@Field_5734_24264) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5734_24328 Mask@@0 null pm_f_6) (IsPredicateField_5734_24355 pm_f_6)) (= (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@0) null (PredicateMaskField_5734 pm_f_6)) (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| ExhaleHeap) null (PredicateMaskField_5734 pm_f_6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5734_24355 pm_f_6) (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| ExhaleHeap) null (PredicateMaskField_5734 pm_f_6)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8295) (ExhaleHeap@@0 T@PolymorphicMapType_8295) (Mask@@1 T@PolymorphicMapType_8316) (pm_f_6@@0 T@Field_5734_24264) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5734_24328 Mask@@1 null pm_f_6@@0) (IsWandField_5734_26102 pm_f_6@@0)) (= (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@1) null (WandMaskField_5734 pm_f_6@@0)) (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| ExhaleHeap@@0) null (WandMaskField_5734 pm_f_6@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5734_26102 pm_f_6@@0) (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| ExhaleHeap@@0) null (WandMaskField_5734 pm_f_6@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8295) (ExhaleHeap@@1 T@PolymorphicMapType_8295) (Mask@@2 T@PolymorphicMapType_8316) (o_17 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| Heap@@2) o_17 $allocated) (select (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| ExhaleHeap@@1) o_17 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| ExhaleHeap@@1) o_17 $allocated))
)))
(assert (forall ((p T@Field_5734_24264) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8355_8355 p v_1 p w))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8355_8355 p v_1 p w))
)))
(assert  (not (IsPredicateField_5734_1473 val)))
(assert  (not (IsWandField_5734_1473 val)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8295) (ExhaleHeap@@2 T@PolymorphicMapType_8295) (Mask@@3 T@PolymorphicMapType_8316) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_8316) (o_2@@4 T@Ref) (f_4@@4 T@Field_5734_24397) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_5734_29648 f_4@@4))) (not (IsWandField_5734_29664 f_4@@4))) (<= (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_8316) (o_2@@5 T@Ref) (f_4@@5 T@Field_5734_24264) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_5734_24355 f_4@@5))) (not (IsWandField_5734_26102 f_4@@5))) (<= (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_8316) (o_2@@6 T@Ref) (f_4@@6 T@Field_8368_8369) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5734_8369 f_4@@6))) (not (IsWandField_5734_8369 f_4@@6))) (<= (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_8316) (o_2@@7 T@Ref) (f_4@@7 T@Field_8355_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5734_53 f_4@@7))) (not (IsWandField_5734_53 f_4@@7))) (<= (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8316) (o_2@@8 T@Ref) (f_4@@8 T@Field_11806_1473) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5734_1473 f_4@@8))) (not (IsWandField_5734_1473 f_4@@8))) (<= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8316) (o_2@@9 T@Ref) (f_4@@9 T@Field_5734_24397) ) (! (= (HasDirectPerm_5734_30102 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5734_30102 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8316) (o_2@@10 T@Ref) (f_4@@10 T@Field_5734_24264) ) (! (= (HasDirectPerm_5734_24328 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5734_24328 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8316) (o_2@@11 T@Ref) (f_4@@11 T@Field_8368_8369) ) (! (= (HasDirectPerm_5734_8369 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5734_8369 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8316) (o_2@@12 T@Ref) (f_4@@12 T@Field_8355_53) ) (! (= (HasDirectPerm_5734_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5734_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8316) (o_2@@13 T@Ref) (f_4@@13 T@Field_11806_1473) ) (! (= (HasDirectPerm_5734_1473 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5734_1473 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8295) (ExhaleHeap@@3 T@PolymorphicMapType_8295) (Mask@@14 T@PolymorphicMapType_8316) (pm_f_6@@1 T@Field_5734_24264) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_5734_24328 Mask@@14 null pm_f_6@@1) (IsPredicateField_5734_24355 pm_f_6@@1)) (and (and (and (and (forall ((o2_6 T@Ref) (f_25 T@Field_8355_53) ) (!  (=> (select (|PolymorphicMapType_8844_8355_53#PolymorphicMapType_8844| (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@4) null (PredicateMaskField_5734 pm_f_6@@1))) o2_6 f_25) (= (select (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| Heap@@4) o2_6 f_25) (select (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| ExhaleHeap@@3) o2_6 f_25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| ExhaleHeap@@3) o2_6 f_25))
)) (forall ((o2_6@@0 T@Ref) (f_25@@0 T@Field_8368_8369) ) (!  (=> (select (|PolymorphicMapType_8844_8355_8369#PolymorphicMapType_8844| (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@4) null (PredicateMaskField_5734 pm_f_6@@1))) o2_6@@0 f_25@@0) (= (select (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| Heap@@4) o2_6@@0 f_25@@0) (select (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| ExhaleHeap@@3) o2_6@@0 f_25@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| ExhaleHeap@@3) o2_6@@0 f_25@@0))
))) (forall ((o2_6@@1 T@Ref) (f_25@@1 T@Field_11806_1473) ) (!  (=> (select (|PolymorphicMapType_8844_8355_1473#PolymorphicMapType_8844| (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@4) null (PredicateMaskField_5734 pm_f_6@@1))) o2_6@@1 f_25@@1) (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@4) o2_6@@1 f_25@@1) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@@3) o2_6@@1 f_25@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@@3) o2_6@@1 f_25@@1))
))) (forall ((o2_6@@2 T@Ref) (f_25@@2 T@Field_5734_24264) ) (!  (=> (select (|PolymorphicMapType_8844_8355_24264#PolymorphicMapType_8844| (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@4) null (PredicateMaskField_5734 pm_f_6@@1))) o2_6@@2 f_25@@2) (= (select (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| Heap@@4) o2_6@@2 f_25@@2) (select (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| ExhaleHeap@@3) o2_6@@2 f_25@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| ExhaleHeap@@3) o2_6@@2 f_25@@2))
))) (forall ((o2_6@@3 T@Ref) (f_25@@3 T@Field_5734_24397) ) (!  (=> (select (|PolymorphicMapType_8844_8355_25575#PolymorphicMapType_8844| (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@4) null (PredicateMaskField_5734 pm_f_6@@1))) o2_6@@3 f_25@@3) (= (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@4) o2_6@@3 f_25@@3) (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| ExhaleHeap@@3) o2_6@@3 f_25@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| ExhaleHeap@@3) o2_6@@3 f_25@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_5734_24355 pm_f_6@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8295) (ExhaleHeap@@4 T@PolymorphicMapType_8295) (Mask@@15 T@PolymorphicMapType_8316) (pm_f_6@@2 T@Field_5734_24264) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_5734_24328 Mask@@15 null pm_f_6@@2) (IsWandField_5734_26102 pm_f_6@@2)) (and (and (and (and (forall ((o2_6@@4 T@Ref) (f_25@@4 T@Field_8355_53) ) (!  (=> (select (|PolymorphicMapType_8844_8355_53#PolymorphicMapType_8844| (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@5) null (WandMaskField_5734 pm_f_6@@2))) o2_6@@4 f_25@@4) (= (select (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| Heap@@5) o2_6@@4 f_25@@4) (select (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| ExhaleHeap@@4) o2_6@@4 f_25@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| ExhaleHeap@@4) o2_6@@4 f_25@@4))
)) (forall ((o2_6@@5 T@Ref) (f_25@@5 T@Field_8368_8369) ) (!  (=> (select (|PolymorphicMapType_8844_8355_8369#PolymorphicMapType_8844| (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@5) null (WandMaskField_5734 pm_f_6@@2))) o2_6@@5 f_25@@5) (= (select (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| Heap@@5) o2_6@@5 f_25@@5) (select (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| ExhaleHeap@@4) o2_6@@5 f_25@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| ExhaleHeap@@4) o2_6@@5 f_25@@5))
))) (forall ((o2_6@@6 T@Ref) (f_25@@6 T@Field_11806_1473) ) (!  (=> (select (|PolymorphicMapType_8844_8355_1473#PolymorphicMapType_8844| (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@5) null (WandMaskField_5734 pm_f_6@@2))) o2_6@@6 f_25@@6) (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@5) o2_6@@6 f_25@@6) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@@4) o2_6@@6 f_25@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@@4) o2_6@@6 f_25@@6))
))) (forall ((o2_6@@7 T@Ref) (f_25@@7 T@Field_5734_24264) ) (!  (=> (select (|PolymorphicMapType_8844_8355_24264#PolymorphicMapType_8844| (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@5) null (WandMaskField_5734 pm_f_6@@2))) o2_6@@7 f_25@@7) (= (select (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| Heap@@5) o2_6@@7 f_25@@7) (select (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| ExhaleHeap@@4) o2_6@@7 f_25@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| ExhaleHeap@@4) o2_6@@7 f_25@@7))
))) (forall ((o2_6@@8 T@Ref) (f_25@@8 T@Field_5734_24397) ) (!  (=> (select (|PolymorphicMapType_8844_8355_25575#PolymorphicMapType_8844| (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@5) null (WandMaskField_5734 pm_f_6@@2))) o2_6@@8 f_25@@8) (= (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@5) o2_6@@8 f_25@@8) (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| ExhaleHeap@@4) o2_6@@8 f_25@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| ExhaleHeap@@4) o2_6@@8 f_25@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_5734_26102 pm_f_6@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.195:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8295) (ExhaleHeap@@5 T@PolymorphicMapType_8295) (Mask@@16 T@PolymorphicMapType_8316) (o_17@@0 T@Ref) (f_25@@9 T@Field_5734_24397) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_5734_30102 Mask@@16 o_17@@0 f_25@@9) (= (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@6) o_17@@0 f_25@@9) (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| ExhaleHeap@@5) o_17@@0 f_25@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| ExhaleHeap@@5) o_17@@0 f_25@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8295) (ExhaleHeap@@6 T@PolymorphicMapType_8295) (Mask@@17 T@PolymorphicMapType_8316) (o_17@@1 T@Ref) (f_25@@10 T@Field_5734_24264) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_5734_24328 Mask@@17 o_17@@1 f_25@@10) (= (select (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| Heap@@7) o_17@@1 f_25@@10) (select (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| ExhaleHeap@@6) o_17@@1 f_25@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| ExhaleHeap@@6) o_17@@1 f_25@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8295) (ExhaleHeap@@7 T@PolymorphicMapType_8295) (Mask@@18 T@PolymorphicMapType_8316) (o_17@@2 T@Ref) (f_25@@11 T@Field_8368_8369) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_5734_8369 Mask@@18 o_17@@2 f_25@@11) (= (select (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| Heap@@8) o_17@@2 f_25@@11) (select (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| ExhaleHeap@@7) o_17@@2 f_25@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| ExhaleHeap@@7) o_17@@2 f_25@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8295) (ExhaleHeap@@8 T@PolymorphicMapType_8295) (Mask@@19 T@PolymorphicMapType_8316) (o_17@@3 T@Ref) (f_25@@12 T@Field_8355_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_5734_53 Mask@@19 o_17@@3 f_25@@12) (= (select (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| Heap@@9) o_17@@3 f_25@@12) (select (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| ExhaleHeap@@8) o_17@@3 f_25@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| ExhaleHeap@@8) o_17@@3 f_25@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8295) (ExhaleHeap@@9 T@PolymorphicMapType_8295) (Mask@@20 T@PolymorphicMapType_8316) (o_17@@4 T@Ref) (f_25@@13 T@Field_11806_1473) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_5734_1473 Mask@@20 o_17@@4 f_25@@13) (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@10) o_17@@4 f_25@@13) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@@9) o_17@@4 f_25@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@@9) o_17@@4 f_25@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5734_24397) ) (! (= (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5734_24264) ) (! (= (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_8368_8369) ) (! (= (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_8355_53) ) (! (= (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_11806_1473) ) (! (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8316) (SummandMask1 T@PolymorphicMapType_8316) (SummandMask2 T@PolymorphicMapType_8316) (o_2@@19 T@Ref) (f_4@@19 T@Field_5734_24397) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8316) (SummandMask1@@0 T@PolymorphicMapType_8316) (SummandMask2@@0 T@PolymorphicMapType_8316) (o_2@@20 T@Ref) (f_4@@20 T@Field_5734_24264) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8316) (SummandMask1@@1 T@PolymorphicMapType_8316) (SummandMask2@@1 T@PolymorphicMapType_8316) (o_2@@21 T@Ref) (f_4@@21 T@Field_8368_8369) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8316) (SummandMask1@@2 T@PolymorphicMapType_8316) (SummandMask2@@2 T@PolymorphicMapType_8316) (o_2@@22 T@Ref) (f_4@@22 T@Field_8355_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8316) (SummandMask1@@3 T@PolymorphicMapType_8316) (SummandMask2@@3 T@PolymorphicMapType_8316) (o_2@@23 T@Ref) (f_4@@23 T@Field_11806_1473) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| SummandMask2@@3) o_2@@23 f_4@@23))
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
(assert (forall ((Heap@@11 T@PolymorphicMapType_8295) (o_16 T@Ref) (f_2 T@Field_5734_24264) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_8295 (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| Heap@@11) (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| Heap@@11) (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@11) (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@11) (store (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| Heap@@11) o_16 f_2 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8295 (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| Heap@@11) (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| Heap@@11) (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@11) (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@11) (store (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| Heap@@11) o_16 f_2 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8295) (o_16@@0 T@Ref) (f_2@@0 T@Field_5734_24397) (v@@0 T@PolymorphicMapType_8844) ) (! (succHeap Heap@@12 (PolymorphicMapType_8295 (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| Heap@@12) (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| Heap@@12) (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@12) (store (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@12) o_16@@0 f_2@@0 v@@0) (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8295 (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| Heap@@12) (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| Heap@@12) (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@12) (store (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@12) o_16@@0 f_2@@0 v@@0) (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8295) (o_16@@1 T@Ref) (f_2@@1 T@Field_11806_1473) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_8295 (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| Heap@@13) (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| Heap@@13) (store (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@13) o_16@@1 f_2@@1 v@@1) (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@13) (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8295 (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| Heap@@13) (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| Heap@@13) (store (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@13) o_16@@1 f_2@@1 v@@1) (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@13) (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8295) (o_16@@2 T@Ref) (f_2@@2 T@Field_8368_8369) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_8295 (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| Heap@@14) (store (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| Heap@@14) o_16@@2 f_2@@2 v@@2) (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@14) (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@14) (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8295 (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| Heap@@14) (store (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| Heap@@14) o_16@@2 f_2@@2 v@@2) (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@14) (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@14) (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8295) (o_16@@3 T@Ref) (f_2@@3 T@Field_8355_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_8295 (store (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| Heap@@15) o_16@@3 f_2@@3 v@@3) (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| Heap@@15) (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@15) (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@15) (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8295 (store (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| Heap@@15) o_16@@3 f_2@@3 v@@3) (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| Heap@@15) (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@15) (|PolymorphicMapType_8295_5734_24441#PolymorphicMapType_8295| Heap@@15) (|PolymorphicMapType_8295_8355_24264#PolymorphicMapType_8295| Heap@@15)))
)))
(assert (forall ((o_16@@4 T@Ref) (f_10 T@Field_8368_8369) (Heap@@16 T@PolymorphicMapType_8295) ) (!  (=> (select (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| Heap@@16) o_16@@4 $allocated) (select (|PolymorphicMapType_8295_5578_53#PolymorphicMapType_8295| Heap@@16) (select (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| Heap@@16) o_16@@4 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8295_5581_5582#PolymorphicMapType_8295| Heap@@16) o_16@@4 f_10))
)))
(assert (forall ((p@@1 T@Field_5734_24264) (v_1@@0 T@FrameType) (q T@Field_5734_24264) (w@@0 T@FrameType) (r T@Field_5734_24264) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8355_8355 p@@1 v_1@@0 q w@@0) (InsidePredicate_8355_8355 q w@@0 r u)) (InsidePredicate_8355_8355 p@@1 v_1@@0 r u))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8355_8355 p@@1 v_1@@0 q w@@0) (InsidePredicate_8355_8355 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x () Int)
(declare-fun n () Int)
(declare-fun a_2@@1 () T@IArrayDomainType)
(declare-fun y () Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_8316)
(declare-fun PostHeap@0 () T@PolymorphicMapType_8295)
(declare-fun k_19 () Int)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun k_4 () Int)
(declare-fun n@0 () Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_8316)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_8316)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_8295)
(declare-fun k_11 () Int)
(declare-fun n@1 () Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_8316)
(declare-fun neverTriggered7 (Int) Bool)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_8316)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun k_4_2 () Int)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_8316)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_8316)
(declare-fun Heap@@17 () T@PolymorphicMapType_8295)
(declare-fun k_6_2 () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_8316)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(set-info :boogie-vc-id lcp)
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
 (=> (= (ControlFlow 0 0) 76) (let ((anon11_correct true))
(let ((anon45_Else_correct  (=> (and (not (and (< (+ x n) (len a_2@@1)) (< (+ y n) (len a_2@@1)))) (= (ControlFlow 0 68) 64)) anon11_correct)))
(let ((anon45_Then_correct  (=> (and (< (+ x n) (len a_2@@1)) (< (+ y n) (len a_2@@1))) (and (=> (= (ControlFlow 0 65) (- 0 67)) (HasDirectPerm_5734_1473 QPMask@7 (loc a_2@@1 (+ x n)) val)) (=> (HasDirectPerm_5734_1473 QPMask@7 (loc a_2@@1 (+ x n)) val) (and (=> (= (ControlFlow 0 65) (- 0 66)) (HasDirectPerm_5734_1473 QPMask@7 (loc a_2@@1 (+ y n)) val)) (=> (HasDirectPerm_5734_1473 QPMask@7 (loc a_2@@1 (+ y n)) val) (=> (and (not (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| PostHeap@0) (loc a_2@@1 (+ x n)) val) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| PostHeap@0) (loc a_2@@1 (+ y n)) val))) (= (ControlFlow 0 65) 64)) anon11_correct))))))))
(let ((anon43_Else_correct  (=> (and (forall ((k_3 Int) ) (!  (=> (and (<= x k_3) (< k_3 (+ x n))) (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| PostHeap@0) (loc a_2@@1 k_3) val) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| PostHeap@0) (loc a_2@@1 (- (+ y k_3) x)) val)))
 :qid |stdinbpl.391:20|
 :skolemid |36|
 :pattern ( (loc a_2@@1 k_3))
)) (state PostHeap@0 QPMask@7)) (and (=> (= (ControlFlow 0 69) 65) anon45_Then_correct) (=> (= (ControlFlow 0 69) 68) anon45_Else_correct)))))
(let ((anon8_correct true))
(let ((anon44_Else_correct  (=> (and (not (and (<= x k_19) (< k_19 (+ x n)))) (= (ControlFlow 0 63) 59)) anon8_correct)))
(let ((anon44_Then_correct  (=> (and (<= x k_19) (< k_19 (+ x n))) (and (=> (= (ControlFlow 0 60) (- 0 62)) (HasDirectPerm_5734_1473 QPMask@7 (loc a_2@@1 k_19) val)) (=> (HasDirectPerm_5734_1473 QPMask@7 (loc a_2@@1 k_19) val) (and (=> (= (ControlFlow 0 60) (- 0 61)) (HasDirectPerm_5734_1473 QPMask@7 (loc a_2@@1 (- (+ y k_19) x)) val)) (=> (HasDirectPerm_5734_1473 QPMask@7 (loc a_2@@1 (- (+ y k_19) x)) val) (=> (= (ControlFlow 0 60) 59) anon8_correct))))))))
(let ((anon42_Else_correct  (and (=> (= (ControlFlow 0 70) (- 0 71)) (forall ((k$0_1 Int) (k$0_1_1 Int) ) (!  (=> (and (and (and (and (not (= k$0_1 k$0_1_1)) (and (<= 0 k$0_1) (< k$0_1 (len a_2@@1)))) (and (<= 0 k$0_1_1) (< k$0_1_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 k$0_1) (loc a_2@@1 k$0_1_1))))
 :qid |stdinbpl.343:15|
 :skolemid |30|
))) (=> (forall ((k$0_1@@0 Int) (k$0_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k$0_1@@0 k$0_1_1@@0)) (and (<= 0 k$0_1@@0) (< k$0_1@@0 (len a_2@@1)))) (and (<= 0 k$0_1_1@@0) (< k$0_1_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 k$0_1@@0) (loc a_2@@1 k$0_1_1@@0))))
 :qid |stdinbpl.343:15|
 :skolemid |30|
)) (=> (and (and (forall ((k$0_1@@1 Int) ) (!  (=> (and (and (<= 0 k$0_1@@1) (< k$0_1@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange2 (loc a_2@@1 k$0_1@@1)) (= (invRecv2 (loc a_2@@1 k$0_1@@1)) k$0_1@@1)))
 :qid |stdinbpl.349:22|
 :skolemid |31|
 :pattern ( (loc a_2@@1 k$0_1@@1))
 :pattern ( (loc a_2@@1 k$0_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv2 o_9)) (< (invRecv2 o_9) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange2 o_9)) (= (loc a_2@@1 (invRecv2 o_9)) o_9))
 :qid |stdinbpl.353:22|
 :skolemid |32|
 :pattern ( (invRecv2 o_9))
))) (and (forall ((k$0_1@@2 Int) ) (!  (=> (and (<= 0 k$0_1@@2) (< k$0_1@@2 (len a_2@@1))) (not (= (loc a_2@@1 k$0_1@@2) null)))
 :qid |stdinbpl.359:22|
 :skolemid |33|
 :pattern ( (loc a_2@@1 k$0_1@@2))
 :pattern ( (loc a_2@@1 k$0_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv2 o_9@@0)) (< (invRecv2 o_9@@0) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange2 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv2 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@7) o_9@@0 val) (+ (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| ZeroMask) o_9@@0 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv2 o_9@@0)) (< (invRecv2 o_9@@0) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange2 o_9@@0))) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@7) o_9@@0 val) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| ZeroMask) o_9@@0 val))))
 :qid |stdinbpl.365:22|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@7) o_9@@0 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_8355_53) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@7) o_9@@1 f_5)))
 :qid |stdinbpl.369:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@7) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_8368_8369) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@7) o_9@@2 f_5@@0)))
 :qid |stdinbpl.369:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@7) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_11806_1473) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@7) o_9@@3 f_5@@1)))
 :qid |stdinbpl.369:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@7) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_5734_24264) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@7) o_9@@4 f_5@@2)))
 :qid |stdinbpl.369:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@7) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_5734_24397) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@7) o_9@@5 f_5@@3)))
 :qid |stdinbpl.369:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@7) o_9@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@7) (state PostHeap@0 QPMask@7))) (and (and (<= 0 n) (<= (+ x n) (len a_2@@1))) (and (<= (+ y n) (len a_2@@1)) (state PostHeap@0 QPMask@7)))) (and (and (=> (= (ControlFlow 0 70) 69) anon43_Else_correct) (=> (= (ControlFlow 0 70) 60) anon44_Then_correct)) (=> (= (ControlFlow 0 70) 63) anon44_Else_correct))))))))
(let ((anon42_Then_correct true))
(let ((anon41_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 72) 58) anon42_Then_correct) (=> (= (ControlFlow 0 72) 70) anon42_Else_correct)))))
(let ((anon22_correct true))
(let ((anon51_Else_correct  (=> (and (not (and (<= x k_4) (< k_4 (+ x n@0)))) (= (ControlFlow 0 47) 43)) anon22_correct)))
(let ((anon51_Then_correct  (=> (and (<= x k_4) (< k_4 (+ x n@0))) (and (=> (= (ControlFlow 0 44) (- 0 46)) (HasDirectPerm_5734_1473 QPMask@6 (loc a_2@@1 k_4) val)) (=> (HasDirectPerm_5734_1473 QPMask@6 (loc a_2@@1 k_4) val) (and (=> (= (ControlFlow 0 44) (- 0 45)) (HasDirectPerm_5734_1473 QPMask@6 (loc a_2@@1 (- (+ y k_4) x)) val)) (=> (HasDirectPerm_5734_1473 QPMask@6 (loc a_2@@1 (- (+ y k_4) x)) val) (=> (= (ControlFlow 0 44) 43) anon22_correct))))))))
(let ((anon50_Else_correct true))
(let ((anon49_Else_correct  (and (=> (= (ControlFlow 0 48) (- 0 49)) (forall ((k$1_2 Int) (k$1_2_1 Int) ) (!  (=> (and (and (and (and (not (= k$1_2 k$1_2_1)) (and (<= 0 k$1_2) (< k$1_2 (len a_2@@1)))) (and (<= 0 k$1_2_1) (< k$1_2_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 k$1_2) (loc a_2@@1 k$1_2_1))))
 :qid |stdinbpl.498:19|
 :skolemid |44|
))) (=> (forall ((k$1_2@@0 Int) (k$1_2_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k$1_2@@0 k$1_2_1@@0)) (and (<= 0 k$1_2@@0) (< k$1_2@@0 (len a_2@@1)))) (and (<= 0 k$1_2_1@@0) (< k$1_2_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 k$1_2@@0) (loc a_2@@1 k$1_2_1@@0))))
 :qid |stdinbpl.498:19|
 :skolemid |44|
)) (=> (and (and (forall ((k$1_2@@1 Int) ) (!  (=> (and (and (<= 0 k$1_2@@1) (< k$1_2@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange5 (loc a_2@@1 k$1_2@@1)) (= (invRecv5 (loc a_2@@1 k$1_2@@1)) k$1_2@@1)))
 :qid |stdinbpl.504:26|
 :skolemid |45|
 :pattern ( (loc a_2@@1 k$1_2@@1))
 :pattern ( (loc a_2@@1 k$1_2@@1))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv5 o_9@@6)) (< (invRecv5 o_9@@6) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange5 o_9@@6)) (= (loc a_2@@1 (invRecv5 o_9@@6)) o_9@@6))
 :qid |stdinbpl.508:26|
 :skolemid |46|
 :pattern ( (invRecv5 o_9@@6))
))) (and (forall ((k$1_2@@2 Int) ) (!  (=> (and (<= 0 k$1_2@@2) (< k$1_2@@2 (len a_2@@1))) (not (= (loc a_2@@1 k$1_2@@2) null)))
 :qid |stdinbpl.514:26|
 :skolemid |47|
 :pattern ( (loc a_2@@1 k$1_2@@2))
 :pattern ( (loc a_2@@1 k$1_2@@2))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv5 o_9@@7)) (< (invRecv5 o_9@@7) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange5 o_9@@7)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv5 o_9@@7)) o_9@@7)) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@6) o_9@@7 val) (+ (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@1) o_9@@7 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv5 o_9@@7)) (< (invRecv5 o_9@@7) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange5 o_9@@7))) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@6) o_9@@7 val) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@1) o_9@@7 val))))
 :qid |stdinbpl.520:26|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@6) o_9@@7 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_8355_53) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@1) o_9@@8 f_5@@4) (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@6) o_9@@8 f_5@@4)))
 :qid |stdinbpl.524:33|
 :skolemid |49|
 :pattern ( (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@1) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@6) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_8368_8369) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@1) o_9@@9 f_5@@5) (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@6) o_9@@9 f_5@@5)))
 :qid |stdinbpl.524:33|
 :skolemid |49|
 :pattern ( (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@1) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@6) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_11806_1473) ) (!  (=> (not (= f_5@@6 val)) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@1) o_9@@10 f_5@@6) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@6) o_9@@10 f_5@@6)))
 :qid |stdinbpl.524:33|
 :skolemid |49|
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@1) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@6) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_5734_24264) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@1) o_9@@11 f_5@@7) (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@6) o_9@@11 f_5@@7)))
 :qid |stdinbpl.524:33|
 :skolemid |49|
 :pattern ( (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@1) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@6) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_5734_24397) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@1) o_9@@12 f_5@@8) (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@6) o_9@@12 f_5@@8)))
 :qid |stdinbpl.524:33|
 :skolemid |49|
 :pattern ( (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@1) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@6) o_9@@12 f_5@@8))
))) (state ExhaleHeap@0 QPMask@6)) (and (and (state ExhaleHeap@0 QPMask@6) (<= (+ x n@0) (len a_2@@1))) (and (<= (+ y n@0) (len a_2@@1)) (state ExhaleHeap@0 QPMask@6)))) (and (and (=> (= (ControlFlow 0 48) 42) anon50_Else_correct) (=> (= (ControlFlow 0 48) 44) anon51_Then_correct)) (=> (= (ControlFlow 0 48) 47) anon51_Else_correct))))))))
(let ((anon49_Then_correct true))
(let ((anon48_Then_correct  (=> (and (>= n@0 0) (state ExhaleHeap@0 QPMask@1)) (and (=> (= (ControlFlow 0 50) 41) anon49_Then_correct) (=> (= (ControlFlow 0 50) 48) anon49_Else_correct)))))
(let ((anon31_correct true))
(let ((anon56_Else_correct  (=> (and (not (and (<= x k_11) (< k_11 (+ x n@1)))) (= (ControlFlow 0 26) 23)) anon31_correct)))
(let ((anon56_Then_correct  (=> (and (<= x k_11) (< k_11 (+ x n@1))) (and (=> (= (ControlFlow 0 24) (- 0 25)) (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 k_11) val) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 (- (+ y k_11) x)) val))) (=> (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 k_11) val) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 (- (+ y k_11) x)) val)) (=> (= (ControlFlow 0 24) 23) anon31_correct))))))
(let ((anon55_Else_correct true))
(let ((anon28_correct  (=> (and (and (and (< (+ x n@0) (len a_2@@1)) (and (< (+ y n@0) (len a_2@@1)) (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 (+ x n@0)) val) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 (+ y n@0)) val)))) (state ExhaleHeap@0 QPMask@2)) (and (= n@1 (+ n@0 1)) (state ExhaleHeap@0 QPMask@2))) (and (=> (= (ControlFlow 0 27) (- 0 32)) (>= n@1 0)) (=> (>= n@1 0) (and (=> (= (ControlFlow 0 27) (- 0 31)) (forall ((k$1_4 Int) (k$1_4_1 Int) ) (!  (=> (and (and (and (and (not (= k$1_4 k$1_4_1)) (and (<= 0 k$1_4) (< k$1_4 (len a_2@@1)))) (and (<= 0 k$1_4_1) (< k$1_4_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 k$1_4) (loc a_2@@1 k$1_4_1))))
 :qid |stdinbpl.634:21|
 :skolemid |58|
 :pattern ( (neverTriggered7 k$1_4) (neverTriggered7 k$1_4_1))
))) (=> (forall ((k$1_4@@0 Int) (k$1_4_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k$1_4@@0 k$1_4_1@@0)) (and (<= 0 k$1_4@@0) (< k$1_4@@0 (len a_2@@1)))) (and (<= 0 k$1_4_1@@0) (< k$1_4_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 k$1_4@@0) (loc a_2@@1 k$1_4_1@@0))))
 :qid |stdinbpl.634:21|
 :skolemid |58|
 :pattern ( (neverTriggered7 k$1_4@@0) (neverTriggered7 k$1_4_1@@0))
)) (and (=> (= (ControlFlow 0 27) (- 0 30)) (forall ((k$1_4@@1 Int) ) (!  (=> (and (<= 0 k$1_4@@1) (< k$1_4@@1 (len a_2@@1))) (>= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@2) (loc a_2@@1 k$1_4@@1) val) FullPerm))
 :qid |stdinbpl.641:21|
 :skolemid |59|
 :pattern ( (loc a_2@@1 k$1_4@@1))
 :pattern ( (loc a_2@@1 k$1_4@@1))
))) (=> (forall ((k$1_4@@2 Int) ) (!  (=> (and (<= 0 k$1_4@@2) (< k$1_4@@2 (len a_2@@1))) (>= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@2) (loc a_2@@1 k$1_4@@2) val) FullPerm))
 :qid |stdinbpl.641:21|
 :skolemid |59|
 :pattern ( (loc a_2@@1 k$1_4@@2))
 :pattern ( (loc a_2@@1 k$1_4@@2))
)) (=> (forall ((k$1_4@@3 Int) ) (!  (=> (and (and (<= 0 k$1_4@@3) (< k$1_4@@3 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange7 (loc a_2@@1 k$1_4@@3)) (= (invRecv7 (loc a_2@@1 k$1_4@@3)) k$1_4@@3)))
 :qid |stdinbpl.647:26|
 :skolemid |60|
 :pattern ( (loc a_2@@1 k$1_4@@3))
 :pattern ( (loc a_2@@1 k$1_4@@3))
)) (=> (and (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv7 o_9@@13)) (< (invRecv7 o_9@@13) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange7 o_9@@13))) (= (loc a_2@@1 (invRecv7 o_9@@13)) o_9@@13))
 :qid |stdinbpl.651:26|
 :skolemid |61|
 :pattern ( (invRecv7 o_9@@13))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv7 o_9@@14)) (< (invRecv7 o_9@@14) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange7 o_9@@14))) (and (= (loc a_2@@1 (invRecv7 o_9@@14)) o_9@@14) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@5) o_9@@14 val) (- (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@2) o_9@@14 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv7 o_9@@14)) (< (invRecv7 o_9@@14) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange7 o_9@@14)))) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@5) o_9@@14 val) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@2) o_9@@14 val))))
 :qid |stdinbpl.657:26|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@5) o_9@@14 val))
))) (=> (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_8355_53) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@2) o_9@@15 f_5@@9) (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@5) o_9@@15 f_5@@9)))
 :qid |stdinbpl.663:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@5) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_8368_8369) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@2) o_9@@16 f_5@@10) (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@5) o_9@@16 f_5@@10)))
 :qid |stdinbpl.663:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@5) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_11806_1473) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@2) o_9@@17 f_5@@11) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@5) o_9@@17 f_5@@11)))
 :qid |stdinbpl.663:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@5) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_5734_24264) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@2) o_9@@18 f_5@@12) (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@5) o_9@@18 f_5@@12)))
 :qid |stdinbpl.663:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@5) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_5734_24397) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@2) o_9@@19 f_5@@13) (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@5) o_9@@19 f_5@@13)))
 :qid |stdinbpl.663:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@5) o_9@@19 f_5@@13))
))) (and (=> (= (ControlFlow 0 27) (- 0 29)) (<= (+ x n@1) (len a_2@@1))) (=> (<= (+ x n@1) (len a_2@@1)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (<= (+ y n@1) (len a_2@@1))) (=> (<= (+ y n@1) (len a_2@@1)) (and (and (=> (= (ControlFlow 0 27) 22) anon55_Else_correct) (=> (= (ControlFlow 0 27) 24) anon56_Then_correct)) (=> (= (ControlFlow 0 27) 26) anon56_Else_correct))))))))))))))))))
(let ((anon54_Else_correct  (=> (and (<= (len a_2@@1) (+ y n@0)) (= (ControlFlow 0 37) 27)) anon28_correct)))
(let ((anon54_Then_correct  (=> (< (+ y n@0) (len a_2@@1)) (and (=> (= (ControlFlow 0 34) (- 0 36)) (HasDirectPerm_5734_1473 QPMask@2 (loc a_2@@1 (+ x n@0)) val)) (=> (HasDirectPerm_5734_1473 QPMask@2 (loc a_2@@1 (+ x n@0)) val) (and (=> (= (ControlFlow 0 34) (- 0 35)) (HasDirectPerm_5734_1473 QPMask@2 (loc a_2@@1 (+ y n@0)) val)) (=> (HasDirectPerm_5734_1473 QPMask@2 (loc a_2@@1 (+ y n@0)) val) (=> (= (ControlFlow 0 34) 27) anon28_correct))))))))
(let ((anon53_Then_correct  (=> (< (+ x n@0) (len a_2@@1)) (and (=> (= (ControlFlow 0 38) 34) anon54_Then_correct) (=> (= (ControlFlow 0 38) 37) anon54_Else_correct)))))
(let ((anon53_Else_correct  (=> (and (<= (len a_2@@1) (+ x n@0)) (= (ControlFlow 0 33) 27)) anon28_correct)))
(let ((anon52_Then_correct  (=> (and (state ExhaleHeap@0 ZeroMask) (>= n@0 0)) (and (=> (= (ControlFlow 0 39) (- 0 40)) (forall ((k$1_3 Int) (k$1_3_1 Int) ) (!  (=> (and (and (and (and (not (= k$1_3 k$1_3_1)) (and (<= 0 k$1_3) (< k$1_3 (len a_2@@1)))) (and (<= 0 k$1_3_1) (< k$1_3_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 k$1_3) (loc a_2@@1 k$1_3_1))))
 :qid |stdinbpl.564:19|
 :skolemid |51|
))) (=> (forall ((k$1_3@@0 Int) (k$1_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k$1_3@@0 k$1_3_1@@0)) (and (<= 0 k$1_3@@0) (< k$1_3@@0 (len a_2@@1)))) (and (<= 0 k$1_3_1@@0) (< k$1_3_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 k$1_3@@0) (loc a_2@@1 k$1_3_1@@0))))
 :qid |stdinbpl.564:19|
 :skolemid |51|
)) (=> (and (and (forall ((k$1_3@@1 Int) ) (!  (=> (and (and (<= 0 k$1_3@@1) (< k$1_3@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange6 (loc a_2@@1 k$1_3@@1)) (= (invRecv6 (loc a_2@@1 k$1_3@@1)) k$1_3@@1)))
 :qid |stdinbpl.570:26|
 :skolemid |52|
 :pattern ( (loc a_2@@1 k$1_3@@1))
 :pattern ( (loc a_2@@1 k$1_3@@1))
)) (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv6 o_9@@20)) (< (invRecv6 o_9@@20) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange6 o_9@@20)) (= (loc a_2@@1 (invRecv6 o_9@@20)) o_9@@20))
 :qid |stdinbpl.574:26|
 :skolemid |53|
 :pattern ( (invRecv6 o_9@@20))
))) (and (forall ((k$1_3@@2 Int) ) (!  (=> (and (<= 0 k$1_3@@2) (< k$1_3@@2 (len a_2@@1))) (not (= (loc a_2@@1 k$1_3@@2) null)))
 :qid |stdinbpl.580:26|
 :skolemid |54|
 :pattern ( (loc a_2@@1 k$1_3@@2))
 :pattern ( (loc a_2@@1 k$1_3@@2))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv6 o_9@@21)) (< (invRecv6 o_9@@21) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange6 o_9@@21)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv6 o_9@@21)) o_9@@21)) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@2) o_9@@21 val) (+ (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| ZeroMask) o_9@@21 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv6 o_9@@21)) (< (invRecv6 o_9@@21) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange6 o_9@@21))) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@2) o_9@@21 val) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| ZeroMask) o_9@@21 val))))
 :qid |stdinbpl.586:26|
 :skolemid |55|
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@2) o_9@@21 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_8355_53) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| ZeroMask) o_9@@22 f_5@@14) (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@2) o_9@@22 f_5@@14)))
 :qid |stdinbpl.590:33|
 :skolemid |56|
 :pattern ( (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| ZeroMask) o_9@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@2) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_8368_8369) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| ZeroMask) o_9@@23 f_5@@15) (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@2) o_9@@23 f_5@@15)))
 :qid |stdinbpl.590:33|
 :skolemid |56|
 :pattern ( (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| ZeroMask) o_9@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@2) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_11806_1473) ) (!  (=> (not (= f_5@@16 val)) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| ZeroMask) o_9@@24 f_5@@16) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@2) o_9@@24 f_5@@16)))
 :qid |stdinbpl.590:33|
 :skolemid |56|
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| ZeroMask) o_9@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@2) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_5734_24264) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| ZeroMask) o_9@@25 f_5@@17) (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@2) o_9@@25 f_5@@17)))
 :qid |stdinbpl.590:33|
 :skolemid |56|
 :pattern ( (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| ZeroMask) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@2) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_5734_24397) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| ZeroMask) o_9@@26 f_5@@18) (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@2) o_9@@26 f_5@@18)))
 :qid |stdinbpl.590:33|
 :skolemid |56|
 :pattern ( (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| ZeroMask) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@2) o_9@@26 f_5@@18))
))) (state ExhaleHeap@0 QPMask@2)) (and (and (<= (+ x n@0) (len a_2@@1)) (<= (+ y n@0) (len a_2@@1))) (and (forall ((k_10 Int) ) (!  (=> (and (<= x k_10) (< k_10 (+ x n@0))) (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 k_10) val) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 (- (+ y k_10) x)) val)))
 :qid |stdinbpl.598:24|
 :skolemid |57|
 :pattern ( (loc a_2@@1 k_10))
)) (state ExhaleHeap@0 QPMask@2)))) (and (=> (= (ControlFlow 0 39) 38) anon53_Then_correct) (=> (= (ControlFlow 0 39) 33) anon53_Else_correct)))))))))
(let ((anon39_correct true))
(let ((anon59_Else_correct  (=> (and (not (and (< (+ x n@0) (len a_2@@1)) (< (+ y n@0) (len a_2@@1)))) (= (ControlFlow 0 13) 10)) anon39_correct)))
(let ((anon59_Then_correct  (=> (and (< (+ x n@0) (len a_2@@1)) (< (+ y n@0) (len a_2@@1))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (not (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 (+ x n@0)) val) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 (+ y n@0)) val)))) (=> (not (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 (+ x n@0)) val) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 (+ y n@0)) val))) (=> (= (ControlFlow 0 11) 10) anon39_correct))))))
(let ((anon57_Else_correct  (=> (forall ((k_5_1_1 Int) ) (!  (=> (and (<= x k_5_1_1) (< k_5_1_1 (+ x n@0))) (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 k_5_1_1) val) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 (- (+ y k_5_1_1) x)) val)))
 :qid |stdinbpl.795:20|
 :skolemid |78|
 :pattern ( (loc a_2@@1 k_5_1_1))
)) (and (=> (= (ControlFlow 0 14) 11) anon59_Then_correct) (=> (= (ControlFlow 0 14) 13) anon59_Else_correct)))))
(let ((anon36_correct true))
(let ((anon58_Else_correct  (=> (and (not (and (<= x k_4_2) (< k_4_2 (+ x n@0)))) (= (ControlFlow 0 9) 6)) anon36_correct)))
(let ((anon58_Then_correct  (=> (and (<= x k_4_2) (< k_4_2 (+ x n@0))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 k_4_2) val) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 (- (+ y k_4_2) x)) val))) (=> (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 k_4_2) val) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 (- (+ y k_4_2) x)) val)) (=> (= (ControlFlow 0 7) 6) anon36_correct))))))
(let ((anon52_Else_correct  (=> (not (and (< (+ x n@0) (len a_2@@1)) (and (< (+ y n@0) (len a_2@@1)) (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 (+ x n@0)) val) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 (+ y n@0)) val))))) (=> (and (state ExhaleHeap@0 QPMask@1) (>= n@0 0)) (and (=> (= (ControlFlow 0 15) (- 0 21)) (forall ((k$1_5 Int) (k$1_5_1 Int) ) (!  (=> (and (and (and (and (not (= k$1_5 k$1_5_1)) (and (<= 0 k$1_5) (< k$1_5 (len a_2@@1)))) (and (<= 0 k$1_5_1) (< k$1_5_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 k$1_5) (loc a_2@@1 k$1_5_1))))
 :qid |stdinbpl.697:17|
 :skolemid |65|
))) (=> (forall ((k$1_5@@0 Int) (k$1_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k$1_5@@0 k$1_5_1@@0)) (and (<= 0 k$1_5@@0) (< k$1_5@@0 (len a_2@@1)))) (and (<= 0 k$1_5_1@@0) (< k$1_5_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 k$1_5@@0) (loc a_2@@1 k$1_5_1@@0))))
 :qid |stdinbpl.697:17|
 :skolemid |65|
)) (=> (and (and (forall ((k$1_5@@1 Int) ) (!  (=> (and (and (<= 0 k$1_5@@1) (< k$1_5@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange8 (loc a_2@@1 k$1_5@@1)) (= (invRecv8 (loc a_2@@1 k$1_5@@1)) k$1_5@@1)))
 :qid |stdinbpl.703:24|
 :skolemid |66|
 :pattern ( (loc a_2@@1 k$1_5@@1))
 :pattern ( (loc a_2@@1 k$1_5@@1))
)) (forall ((o_9@@27 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv8 o_9@@27)) (< (invRecv8 o_9@@27) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange8 o_9@@27)) (= (loc a_2@@1 (invRecv8 o_9@@27)) o_9@@27))
 :qid |stdinbpl.707:24|
 :skolemid |67|
 :pattern ( (invRecv8 o_9@@27))
))) (and (forall ((k$1_5@@2 Int) ) (!  (=> (and (<= 0 k$1_5@@2) (< k$1_5@@2 (len a_2@@1))) (not (= (loc a_2@@1 k$1_5@@2) null)))
 :qid |stdinbpl.713:24|
 :skolemid |68|
 :pattern ( (loc a_2@@1 k$1_5@@2))
 :pattern ( (loc a_2@@1 k$1_5@@2))
)) (forall ((o_9@@28 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv8 o_9@@28)) (< (invRecv8 o_9@@28) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange8 o_9@@28)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv8 o_9@@28)) o_9@@28)) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@3) o_9@@28 val) (+ (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@1) o_9@@28 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv8 o_9@@28)) (< (invRecv8 o_9@@28) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange8 o_9@@28))) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@3) o_9@@28 val) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@1) o_9@@28 val))))
 :qid |stdinbpl.719:24|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@3) o_9@@28 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@19 T@Field_8355_53) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@1) o_9@@29 f_5@@19) (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@3) o_9@@29 f_5@@19)))
 :qid |stdinbpl.723:31|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@1) o_9@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@3) o_9@@29 f_5@@19))
)) (forall ((o_9@@30 T@Ref) (f_5@@20 T@Field_8368_8369) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@1) o_9@@30 f_5@@20) (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@3) o_9@@30 f_5@@20)))
 :qid |stdinbpl.723:31|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@1) o_9@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@3) o_9@@30 f_5@@20))
))) (forall ((o_9@@31 T@Ref) (f_5@@21 T@Field_11806_1473) ) (!  (=> (not (= f_5@@21 val)) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@1) o_9@@31 f_5@@21) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@3) o_9@@31 f_5@@21)))
 :qid |stdinbpl.723:31|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@1) o_9@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@3) o_9@@31 f_5@@21))
))) (forall ((o_9@@32 T@Ref) (f_5@@22 T@Field_5734_24264) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@1) o_9@@32 f_5@@22) (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@3) o_9@@32 f_5@@22)))
 :qid |stdinbpl.723:31|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@1) o_9@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@3) o_9@@32 f_5@@22))
))) (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_5734_24397) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@1) o_9@@33 f_5@@23) (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@3) o_9@@33 f_5@@23)))
 :qid |stdinbpl.723:31|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@1) o_9@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@3) o_9@@33 f_5@@23))
))) (and (state ExhaleHeap@0 QPMask@3) (<= (+ x n@0) (len a_2@@1)))) (and (and (<= (+ y n@0) (len a_2@@1)) (forall ((k_13 Int) ) (!  (=> (and (<= x k_13) (< k_13 (+ x n@0))) (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 k_13) val) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| ExhaleHeap@0) (loc a_2@@1 (- (+ y k_13) x)) val)))
 :qid |stdinbpl.731:22|
 :skolemid |71|
 :pattern ( (loc a_2@@1 k_13))
))) (and (state ExhaleHeap@0 QPMask@3) (state ExhaleHeap@0 QPMask@3)))) (and (=> (= (ControlFlow 0 15) (- 0 20)) (forall ((k$0_2 Int) (k$0_2_1 Int) ) (!  (=> (and (and (and (and (not (= k$0_2 k$0_2_1)) (and (<= 0 k$0_2) (< k$0_2 (len a_2@@1)))) (and (<= 0 k$0_2_1) (< k$0_2_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 k$0_2) (loc a_2@@1 k$0_2_1))))
 :qid |stdinbpl.748:17|
 :skolemid |72|
 :pattern ( (neverTriggered3 k$0_2) (neverTriggered3 k$0_2_1))
))) (=> (forall ((k$0_2@@0 Int) (k$0_2_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k$0_2@@0 k$0_2_1@@0)) (and (<= 0 k$0_2@@0) (< k$0_2@@0 (len a_2@@1)))) (and (<= 0 k$0_2_1@@0) (< k$0_2_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 k$0_2@@0) (loc a_2@@1 k$0_2_1@@0))))
 :qid |stdinbpl.748:17|
 :skolemid |72|
 :pattern ( (neverTriggered3 k$0_2@@0) (neverTriggered3 k$0_2_1@@0))
)) (and (=> (= (ControlFlow 0 15) (- 0 19)) (forall ((k$0_2@@1 Int) ) (!  (=> (and (<= 0 k$0_2@@1) (< k$0_2@@1 (len a_2@@1))) (>= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@3) (loc a_2@@1 k$0_2@@1) val) FullPerm))
 :qid |stdinbpl.755:17|
 :skolemid |73|
 :pattern ( (loc a_2@@1 k$0_2@@1))
 :pattern ( (loc a_2@@1 k$0_2@@1))
))) (=> (forall ((k$0_2@@2 Int) ) (!  (=> (and (<= 0 k$0_2@@2) (< k$0_2@@2 (len a_2@@1))) (>= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@3) (loc a_2@@1 k$0_2@@2) val) FullPerm))
 :qid |stdinbpl.755:17|
 :skolemid |73|
 :pattern ( (loc a_2@@1 k$0_2@@2))
 :pattern ( (loc a_2@@1 k$0_2@@2))
)) (=> (forall ((k$0_2@@3 Int) ) (!  (=> (and (and (<= 0 k$0_2@@3) (< k$0_2@@3 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange3 (loc a_2@@1 k$0_2@@3)) (= (invRecv3 (loc a_2@@1 k$0_2@@3)) k$0_2@@3)))
 :qid |stdinbpl.761:22|
 :skolemid |74|
 :pattern ( (loc a_2@@1 k$0_2@@3))
 :pattern ( (loc a_2@@1 k$0_2@@3))
)) (=> (and (forall ((o_9@@34 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv3 o_9@@34)) (< (invRecv3 o_9@@34) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange3 o_9@@34))) (= (loc a_2@@1 (invRecv3 o_9@@34)) o_9@@34))
 :qid |stdinbpl.765:22|
 :skolemid |75|
 :pattern ( (invRecv3 o_9@@34))
)) (forall ((o_9@@35 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv3 o_9@@35)) (< (invRecv3 o_9@@35) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange3 o_9@@35))) (and (= (loc a_2@@1 (invRecv3 o_9@@35)) o_9@@35) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@4) o_9@@35 val) (- (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@3) o_9@@35 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv3 o_9@@35)) (< (invRecv3 o_9@@35) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange3 o_9@@35)))) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@4) o_9@@35 val) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@3) o_9@@35 val))))
 :qid |stdinbpl.771:22|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@4) o_9@@35 val))
))) (=> (and (and (and (and (forall ((o_9@@36 T@Ref) (f_5@@24 T@Field_8355_53) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@3) o_9@@36 f_5@@24) (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@4) o_9@@36 f_5@@24)))
 :qid |stdinbpl.777:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@4) o_9@@36 f_5@@24))
)) (forall ((o_9@@37 T@Ref) (f_5@@25 T@Field_8368_8369) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@3) o_9@@37 f_5@@25) (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@4) o_9@@37 f_5@@25)))
 :qid |stdinbpl.777:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@4) o_9@@37 f_5@@25))
))) (forall ((o_9@@38 T@Ref) (f_5@@26 T@Field_11806_1473) ) (!  (=> (not (= f_5@@26 val)) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@3) o_9@@38 f_5@@26) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@4) o_9@@38 f_5@@26)))
 :qid |stdinbpl.777:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@4) o_9@@38 f_5@@26))
))) (forall ((o_9@@39 T@Ref) (f_5@@27 T@Field_5734_24264) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@3) o_9@@39 f_5@@27) (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@4) o_9@@39 f_5@@27)))
 :qid |stdinbpl.777:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@4) o_9@@39 f_5@@27))
))) (forall ((o_9@@40 T@Ref) (f_5@@28 T@Field_5734_24397) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@3) o_9@@40 f_5@@28) (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@4) o_9@@40 f_5@@28)))
 :qid |stdinbpl.777:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@4) o_9@@40 f_5@@28))
))) (and (=> (= (ControlFlow 0 15) (- 0 18)) (<= 0 n@0)) (=> (<= 0 n@0) (and (=> (= (ControlFlow 0 15) (- 0 17)) (<= (+ x n@0) (len a_2@@1))) (=> (<= (+ x n@0) (len a_2@@1)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (<= (+ y n@0) (len a_2@@1))) (=> (<= (+ y n@0) (len a_2@@1)) (and (and (=> (= (ControlFlow 0 15) 14) anon57_Else_correct) (=> (= (ControlFlow 0 15) 7) anon58_Then_correct)) (=> (= (ControlFlow 0 15) 9) anon58_Else_correct)))))))))))))))))))))))
(let ((anon46_Else_correct  (=> (and (forall ((k_7_1_1 Int) ) (!  (=> (and (<= x k_7_1_1) (< k_7_1_1 (+ x 0))) (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@17) (loc a_2@@1 k_7_1_1) val) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@17) (loc a_2@@1 (- (+ y k_7_1_1) x)) val)))
 :qid |stdinbpl.475:24|
 :skolemid |43|
 :pattern ( (loc a_2@@1 k_7_1_1))
)) (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1)) (and (and (=> (= (ControlFlow 0 51) 50) anon48_Then_correct) (=> (= (ControlFlow 0 51) 39) anon52_Then_correct)) (=> (= (ControlFlow 0 51) 15) anon52_Else_correct)))))
(let ((anon15_correct true))
(let ((anon47_Else_correct  (=> (and (not (and (<= x k_6_2) (< k_6_2 (+ x 0)))) (= (ControlFlow 0 5) 2)) anon15_correct)))
(let ((anon47_Then_correct  (=> (and (<= x k_6_2) (< k_6_2 (+ x 0))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@17) (loc a_2@@1 k_6_2) val) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@17) (loc a_2@@1 (- (+ y k_6_2) x)) val))) (=> (= (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@17) (loc a_2@@1 k_6_2) val) (select (|PolymorphicMapType_8295_5734_1473#PolymorphicMapType_8295| Heap@@17) (loc a_2@@1 (- (+ y k_6_2) x)) val)) (=> (= (ControlFlow 0 3) 2) anon15_correct))))))
(let ((anon41_Else_correct  (=> (state Heap@@17 QPMask@0) (and (=> (= (ControlFlow 0 52) (- 0 57)) (>= 0 0)) (=> (>= 0 0) (and (=> (= (ControlFlow 0 52) (- 0 56)) (forall ((k$1 Int) (k$1_1 Int) ) (!  (=> (and (and (and (and (not (= k$1 k$1_1)) (and (<= 0 k$1) (< k$1 (len a_2@@1)))) (and (<= 0 k$1_1) (< k$1_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 k$1) (loc a_2@@1 k$1_1))))
 :qid |stdinbpl.430:21|
 :skolemid |37|
 :pattern ( (neverTriggered4 k$1) (neverTriggered4 k$1_1))
))) (=> (forall ((k$1@@0 Int) (k$1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k$1@@0 k$1_1@@0)) (and (<= 0 k$1@@0) (< k$1@@0 (len a_2@@1)))) (and (<= 0 k$1_1@@0) (< k$1_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 k$1@@0) (loc a_2@@1 k$1_1@@0))))
 :qid |stdinbpl.430:21|
 :skolemid |37|
 :pattern ( (neverTriggered4 k$1@@0) (neverTriggered4 k$1_1@@0))
)) (and (=> (= (ControlFlow 0 52) (- 0 55)) (forall ((k$1@@1 Int) ) (!  (=> (and (<= 0 k$1@@1) (< k$1@@1 (len a_2@@1))) (>= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@0) (loc a_2@@1 k$1@@1) val) FullPerm))
 :qid |stdinbpl.437:21|
 :skolemid |38|
 :pattern ( (loc a_2@@1 k$1@@1))
 :pattern ( (loc a_2@@1 k$1@@1))
))) (=> (forall ((k$1@@2 Int) ) (!  (=> (and (<= 0 k$1@@2) (< k$1@@2 (len a_2@@1))) (>= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@0) (loc a_2@@1 k$1@@2) val) FullPerm))
 :qid |stdinbpl.437:21|
 :skolemid |38|
 :pattern ( (loc a_2@@1 k$1@@2))
 :pattern ( (loc a_2@@1 k$1@@2))
)) (=> (forall ((k$1@@3 Int) ) (!  (=> (and (and (<= 0 k$1@@3) (< k$1@@3 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange4 (loc a_2@@1 k$1@@3)) (= (invRecv4 (loc a_2@@1 k$1@@3)) k$1@@3)))
 :qid |stdinbpl.443:26|
 :skolemid |39|
 :pattern ( (loc a_2@@1 k$1@@3))
 :pattern ( (loc a_2@@1 k$1@@3))
)) (=> (and (forall ((o_9@@41 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv4 o_9@@41)) (< (invRecv4 o_9@@41) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange4 o_9@@41))) (= (loc a_2@@1 (invRecv4 o_9@@41)) o_9@@41))
 :qid |stdinbpl.447:26|
 :skolemid |40|
 :pattern ( (invRecv4 o_9@@41))
)) (forall ((o_9@@42 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv4 o_9@@42)) (< (invRecv4 o_9@@42) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange4 o_9@@42))) (and (= (loc a_2@@1 (invRecv4 o_9@@42)) o_9@@42) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@1) o_9@@42 val) (- (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@0) o_9@@42 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv4 o_9@@42)) (< (invRecv4 o_9@@42) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange4 o_9@@42)))) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@1) o_9@@42 val) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@0) o_9@@42 val))))
 :qid |stdinbpl.453:26|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@1) o_9@@42 val))
))) (=> (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@29 T@Field_8355_53) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@0) o_9@@43 f_5@@29) (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@1) o_9@@43 f_5@@29)))
 :qid |stdinbpl.459:33|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@1) o_9@@43 f_5@@29))
)) (forall ((o_9@@44 T@Ref) (f_5@@30 T@Field_8368_8369) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@0) o_9@@44 f_5@@30) (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@1) o_9@@44 f_5@@30)))
 :qid |stdinbpl.459:33|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@1) o_9@@44 f_5@@30))
))) (forall ((o_9@@45 T@Ref) (f_5@@31 T@Field_11806_1473) ) (!  (=> (not (= f_5@@31 val)) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@0) o_9@@45 f_5@@31) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@1) o_9@@45 f_5@@31)))
 :qid |stdinbpl.459:33|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@1) o_9@@45 f_5@@31))
))) (forall ((o_9@@46 T@Ref) (f_5@@32 T@Field_5734_24264) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@0) o_9@@46 f_5@@32) (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@1) o_9@@46 f_5@@32)))
 :qid |stdinbpl.459:33|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@1) o_9@@46 f_5@@32))
))) (forall ((o_9@@47 T@Ref) (f_5@@33 T@Field_5734_24397) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@0) o_9@@47 f_5@@33) (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@1) o_9@@47 f_5@@33)))
 :qid |stdinbpl.459:33|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@1) o_9@@47 f_5@@33))
))) (and (=> (= (ControlFlow 0 52) (- 0 54)) (<= (+ x 0) (len a_2@@1))) (=> (<= (+ x 0) (len a_2@@1)) (and (=> (= (ControlFlow 0 52) (- 0 53)) (<= (+ y 0) (len a_2@@1))) (=> (<= (+ y 0) (len a_2@@1)) (and (and (=> (= (ControlFlow 0 52) 51) anon46_Else_correct) (=> (= (ControlFlow 0 52) 3) anon47_Then_correct)) (=> (= (ControlFlow 0 52) 5) anon47_Else_correct))))))))))))))))))
(let ((anon40_Else_correct  (and (=> (= (ControlFlow 0 73) (- 0 74)) (forall ((k_1 Int) (k_1_1 Int) ) (!  (=> (and (and (and (and (not (= k_1 k_1_1)) (and (<= 0 k_1) (< k_1 (len a_2@@1)))) (and (<= 0 k_1_1) (< k_1_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 k_1) (loc a_2@@1 k_1_1))))
 :qid |stdinbpl.287:15|
 :skolemid |24|
))) (=> (forall ((k_1@@0 Int) (k_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_1@@0 k_1_1@@0)) (and (<= 0 k_1@@0) (< k_1@@0 (len a_2@@1)))) (and (<= 0 k_1_1@@0) (< k_1_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 k_1@@0) (loc a_2@@1 k_1_1@@0))))
 :qid |stdinbpl.287:15|
 :skolemid |24|
)) (=> (and (and (forall ((k_1@@1 Int) ) (!  (=> (and (and (<= 0 k_1@@1) (< k_1@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange1 (loc a_2@@1 k_1@@1)) (= (invRecv1 (loc a_2@@1 k_1@@1)) k_1@@1)))
 :qid |stdinbpl.293:22|
 :skolemid |25|
 :pattern ( (loc a_2@@1 k_1@@1))
 :pattern ( (loc a_2@@1 k_1@@1))
)) (forall ((o_9@@48 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_9@@48)) (< (invRecv1 o_9@@48) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange1 o_9@@48)) (= (loc a_2@@1 (invRecv1 o_9@@48)) o_9@@48))
 :qid |stdinbpl.297:22|
 :skolemid |26|
 :pattern ( (invRecv1 o_9@@48))
))) (and (forall ((k_1@@2 Int) ) (!  (=> (and (<= 0 k_1@@2) (< k_1@@2 (len a_2@@1))) (not (= (loc a_2@@1 k_1@@2) null)))
 :qid |stdinbpl.303:22|
 :skolemid |27|
 :pattern ( (loc a_2@@1 k_1@@2))
 :pattern ( (loc a_2@@1 k_1@@2))
)) (forall ((o_9@@49 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_9@@49)) (< (invRecv1 o_9@@49) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange1 o_9@@49)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv1 o_9@@49)) o_9@@49)) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@0) o_9@@49 val) (+ (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| ZeroMask) o_9@@49 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv1 o_9@@49)) (< (invRecv1 o_9@@49) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange1 o_9@@49))) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@0) o_9@@49 val) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| ZeroMask) o_9@@49 val))))
 :qid |stdinbpl.309:22|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@0) o_9@@49 val))
)))) (=> (and (and (and (and (and (and (and (forall ((o_9@@50 T@Ref) (f_5@@34 T@Field_8355_53) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| ZeroMask) o_9@@50 f_5@@34) (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@0) o_9@@50 f_5@@34)))
 :qid |stdinbpl.313:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| ZeroMask) o_9@@50 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_8316_5734_53#PolymorphicMapType_8316| QPMask@0) o_9@@50 f_5@@34))
)) (forall ((o_9@@51 T@Ref) (f_5@@35 T@Field_8368_8369) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| ZeroMask) o_9@@51 f_5@@35) (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@0) o_9@@51 f_5@@35)))
 :qid |stdinbpl.313:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| ZeroMask) o_9@@51 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_8316_5734_8369#PolymorphicMapType_8316| QPMask@0) o_9@@51 f_5@@35))
))) (forall ((o_9@@52 T@Ref) (f_5@@36 T@Field_11806_1473) ) (!  (=> (not (= f_5@@36 val)) (= (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| ZeroMask) o_9@@52 f_5@@36) (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@0) o_9@@52 f_5@@36)))
 :qid |stdinbpl.313:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| ZeroMask) o_9@@52 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_8316_5734_1473#PolymorphicMapType_8316| QPMask@0) o_9@@52 f_5@@36))
))) (forall ((o_9@@53 T@Ref) (f_5@@37 T@Field_5734_24264) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| ZeroMask) o_9@@53 f_5@@37) (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@0) o_9@@53 f_5@@37)))
 :qid |stdinbpl.313:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| ZeroMask) o_9@@53 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_8316_5734_24264#PolymorphicMapType_8316| QPMask@0) o_9@@53 f_5@@37))
))) (forall ((o_9@@54 T@Ref) (f_5@@38 T@Field_5734_24397) ) (!  (=> true (= (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| ZeroMask) o_9@@54 f_5@@38) (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@0) o_9@@54 f_5@@38)))
 :qid |stdinbpl.313:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| ZeroMask) o_9@@54 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_8316_5734_28519#PolymorphicMapType_8316| QPMask@0) o_9@@54 f_5@@38))
))) (state Heap@@17 QPMask@0)) (and (state Heap@@17 QPMask@0) (<= 0 x))) (and (and (<= 0 y) (< x (len a_2@@1))) (and (< y (len a_2@@1)) (state Heap@@17 QPMask@0)))) (and (=> (= (ControlFlow 0 73) 72) anon41_Then_correct) (=> (= (ControlFlow 0 73) 52) anon41_Else_correct))))))))
(let ((anon40_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 75) 1) anon40_Then_correct) (=> (= (ControlFlow 0 75) 73) anon40_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 76) 75) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
