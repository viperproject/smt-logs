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
(declare-sort T@Field_5653_53 0)
(declare-sort T@Field_5666_5667 0)
(declare-sort T@Field_5653_12714 0)
(declare-sort T@Field_5653_12581 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5614 0)) (((PolymorphicMapType_5614 (|PolymorphicMapType_5614_5653_53#PolymorphicMapType_5614| (Array T@Ref T@Field_5653_53 Real)) (|PolymorphicMapType_5614_5653_5667#PolymorphicMapType_5614| (Array T@Ref T@Field_5666_5667 Real)) (|PolymorphicMapType_5614_5653_12581#PolymorphicMapType_5614| (Array T@Ref T@Field_5653_12581 Real)) (|PolymorphicMapType_5614_5653_16275#PolymorphicMapType_5614| (Array T@Ref T@Field_5653_12714 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6142 0)) (((PolymorphicMapType_6142 (|PolymorphicMapType_6142_5653_53#PolymorphicMapType_6142| (Array T@Ref T@Field_5653_53 Bool)) (|PolymorphicMapType_6142_5653_5667#PolymorphicMapType_6142| (Array T@Ref T@Field_5666_5667 Bool)) (|PolymorphicMapType_6142_5653_12581#PolymorphicMapType_6142| (Array T@Ref T@Field_5653_12581 Bool)) (|PolymorphicMapType_6142_5653_13694#PolymorphicMapType_6142| (Array T@Ref T@Field_5653_12714 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5593 0)) (((PolymorphicMapType_5593 (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| (Array T@Ref T@Field_5653_53 Bool)) (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| (Array T@Ref T@Field_5666_5667 T@Ref)) (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| (Array T@Ref T@Field_5653_12714 T@PolymorphicMapType_6142)) (|PolymorphicMapType_5593_5653_12581#PolymorphicMapType_5593| (Array T@Ref T@Field_5653_12581 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_5593 T@PolymorphicMapType_5593) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5593 T@PolymorphicMapType_5593) Bool)
(declare-fun state (T@PolymorphicMapType_5593 T@PolymorphicMapType_5614) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5614) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6142)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5593 T@PolymorphicMapType_5593 T@PolymorphicMapType_5614) Bool)
(declare-fun IsPredicateField_5653_12672 (T@Field_5653_12581) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5653 (T@Field_5653_12581) T@Field_5653_12714)
(declare-fun HasDirectPerm_5653_12645 (T@PolymorphicMapType_5614 T@Ref T@Field_5653_12581) Bool)
(declare-fun IsWandField_5653_14221 (T@Field_5653_12581) Bool)
(declare-fun WandMaskField_5653 (T@Field_5653_12581) T@Field_5653_12714)
(declare-fun dummyHeap () T@PolymorphicMapType_5593)
(declare-fun ZeroMask () T@PolymorphicMapType_5614)
(declare-fun $allocated () T@Field_5653_53)
(declare-fun InsidePredicate_5653_5653 (T@Field_5653_12581 T@FrameType T@Field_5653_12581 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5653_17184 (T@Field_5653_12714) Bool)
(declare-fun IsWandField_5653_17200 (T@Field_5653_12714) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5653_5667 (T@Field_5666_5667) Bool)
(declare-fun IsWandField_5653_5667 (T@Field_5666_5667) Bool)
(declare-fun IsPredicateField_5653_53 (T@Field_5653_53) Bool)
(declare-fun IsWandField_5653_53 (T@Field_5653_53) Bool)
(declare-fun HasDirectPerm_5653_17555 (T@PolymorphicMapType_5614 T@Ref T@Field_5653_12714) Bool)
(declare-fun HasDirectPerm_5653_5667 (T@PolymorphicMapType_5614 T@Ref T@Field_5666_5667) Bool)
(declare-fun HasDirectPerm_5653_53 (T@PolymorphicMapType_5614 T@Ref T@Field_5653_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5614 T@PolymorphicMapType_5614 T@PolymorphicMapType_5614) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5593) (Heap1 T@PolymorphicMapType_5593) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5593) (Mask T@PolymorphicMapType_5614) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5593) (Heap1@@0 T@PolymorphicMapType_5593) (Heap2 T@PolymorphicMapType_5593) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5653_12714) ) (!  (not (select (|PolymorphicMapType_6142_5653_13694#PolymorphicMapType_6142| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6142_5653_13694#PolymorphicMapType_6142| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5653_12581) ) (!  (not (select (|PolymorphicMapType_6142_5653_12581#PolymorphicMapType_6142| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6142_5653_12581#PolymorphicMapType_6142| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5666_5667) ) (!  (not (select (|PolymorphicMapType_6142_5653_5667#PolymorphicMapType_6142| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6142_5653_5667#PolymorphicMapType_6142| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5653_53) ) (!  (not (select (|PolymorphicMapType_6142_5653_53#PolymorphicMapType_6142| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6142_5653_53#PolymorphicMapType_6142| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.273:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.276:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5593) (ExhaleHeap T@PolymorphicMapType_5593) (Mask@@0 T@PolymorphicMapType_5614) (pm_f_2 T@Field_5653_12581) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5653_12645 Mask@@0 null pm_f_2) (IsPredicateField_5653_12672 pm_f_2)) (= (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@0) null (PredicateMaskField_5653 pm_f_2)) (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| ExhaleHeap) null (PredicateMaskField_5653 pm_f_2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5653_12672 pm_f_2) (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| ExhaleHeap) null (PredicateMaskField_5653 pm_f_2)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5593) (ExhaleHeap@@0 T@PolymorphicMapType_5593) (Mask@@1 T@PolymorphicMapType_5614) (pm_f_2@@0 T@Field_5653_12581) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5653_12645 Mask@@1 null pm_f_2@@0) (IsWandField_5653_14221 pm_f_2@@0)) (= (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@1) null (WandMaskField_5653 pm_f_2@@0)) (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| ExhaleHeap@@0) null (WandMaskField_5653 pm_f_2@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5653_14221 pm_f_2@@0) (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| ExhaleHeap@@0) null (WandMaskField_5653 pm_f_2@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5593) (ExhaleHeap@@1 T@PolymorphicMapType_5593) (Mask@@2 T@PolymorphicMapType_5614) (pm_f_2@@1 T@Field_5653_12581) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5653_12645 Mask@@2 null pm_f_2@@1) (IsPredicateField_5653_12672 pm_f_2@@1)) (and (and (and (forall ((o2_2 T@Ref) (f_9 T@Field_5653_53) ) (!  (=> (select (|PolymorphicMapType_6142_5653_53#PolymorphicMapType_6142| (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@2) null (PredicateMaskField_5653 pm_f_2@@1))) o2_2 f_9) (= (select (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| Heap@@2) o2_2 f_9) (select (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| ExhaleHeap@@1) o2_2 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| ExhaleHeap@@1) o2_2 f_9))
)) (forall ((o2_2@@0 T@Ref) (f_9@@0 T@Field_5666_5667) ) (!  (=> (select (|PolymorphicMapType_6142_5653_5667#PolymorphicMapType_6142| (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@2) null (PredicateMaskField_5653 pm_f_2@@1))) o2_2@@0 f_9@@0) (= (select (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| Heap@@2) o2_2@@0 f_9@@0) (select (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| ExhaleHeap@@1) o2_2@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| ExhaleHeap@@1) o2_2@@0 f_9@@0))
))) (forall ((o2_2@@1 T@Ref) (f_9@@1 T@Field_5653_12581) ) (!  (=> (select (|PolymorphicMapType_6142_5653_12581#PolymorphicMapType_6142| (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@2) null (PredicateMaskField_5653 pm_f_2@@1))) o2_2@@1 f_9@@1) (= (select (|PolymorphicMapType_5593_5653_12581#PolymorphicMapType_5593| Heap@@2) o2_2@@1 f_9@@1) (select (|PolymorphicMapType_5593_5653_12581#PolymorphicMapType_5593| ExhaleHeap@@1) o2_2@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5593_5653_12581#PolymorphicMapType_5593| ExhaleHeap@@1) o2_2@@1 f_9@@1))
))) (forall ((o2_2@@2 T@Ref) (f_9@@2 T@Field_5653_12714) ) (!  (=> (select (|PolymorphicMapType_6142_5653_13694#PolymorphicMapType_6142| (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@2) null (PredicateMaskField_5653 pm_f_2@@1))) o2_2@@2 f_9@@2) (= (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@2) o2_2@@2 f_9@@2) (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| ExhaleHeap@@1) o2_2@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| ExhaleHeap@@1) o2_2@@2 f_9@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5653_12672 pm_f_2@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5593) (ExhaleHeap@@2 T@PolymorphicMapType_5593) (Mask@@3 T@PolymorphicMapType_5614) (pm_f_2@@2 T@Field_5653_12581) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5653_12645 Mask@@3 null pm_f_2@@2) (IsWandField_5653_14221 pm_f_2@@2)) (and (and (and (forall ((o2_2@@3 T@Ref) (f_9@@3 T@Field_5653_53) ) (!  (=> (select (|PolymorphicMapType_6142_5653_53#PolymorphicMapType_6142| (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@3) null (WandMaskField_5653 pm_f_2@@2))) o2_2@@3 f_9@@3) (= (select (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| Heap@@3) o2_2@@3 f_9@@3) (select (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| ExhaleHeap@@2) o2_2@@3 f_9@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| ExhaleHeap@@2) o2_2@@3 f_9@@3))
)) (forall ((o2_2@@4 T@Ref) (f_9@@4 T@Field_5666_5667) ) (!  (=> (select (|PolymorphicMapType_6142_5653_5667#PolymorphicMapType_6142| (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@3) null (WandMaskField_5653 pm_f_2@@2))) o2_2@@4 f_9@@4) (= (select (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| Heap@@3) o2_2@@4 f_9@@4) (select (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| ExhaleHeap@@2) o2_2@@4 f_9@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| ExhaleHeap@@2) o2_2@@4 f_9@@4))
))) (forall ((o2_2@@5 T@Ref) (f_9@@5 T@Field_5653_12581) ) (!  (=> (select (|PolymorphicMapType_6142_5653_12581#PolymorphicMapType_6142| (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@3) null (WandMaskField_5653 pm_f_2@@2))) o2_2@@5 f_9@@5) (= (select (|PolymorphicMapType_5593_5653_12581#PolymorphicMapType_5593| Heap@@3) o2_2@@5 f_9@@5) (select (|PolymorphicMapType_5593_5653_12581#PolymorphicMapType_5593| ExhaleHeap@@2) o2_2@@5 f_9@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5593_5653_12581#PolymorphicMapType_5593| ExhaleHeap@@2) o2_2@@5 f_9@@5))
))) (forall ((o2_2@@6 T@Ref) (f_9@@6 T@Field_5653_12714) ) (!  (=> (select (|PolymorphicMapType_6142_5653_13694#PolymorphicMapType_6142| (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@3) null (WandMaskField_5653 pm_f_2@@2))) o2_2@@6 f_9@@6) (= (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@3) o2_2@@6 f_9@@6) (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| ExhaleHeap@@2) o2_2@@6 f_9@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| ExhaleHeap@@2) o2_2@@6 f_9@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_5653_14221 pm_f_2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5593) (ExhaleHeap@@3 T@PolymorphicMapType_5593) (Mask@@4 T@PolymorphicMapType_5614) (o_6 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| Heap@@4) o_6 $allocated) (select (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| ExhaleHeap@@3) o_6 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| ExhaleHeap@@3) o_6 $allocated))
)))
(assert (forall ((p T@Field_5653_12581) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5653_5653 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5653_5653 p v_1 p w))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5593) (ExhaleHeap@@4 T@PolymorphicMapType_5593) (Mask@@5 T@PolymorphicMapType_5614) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_5614) (o_2@@3 T@Ref) (f_4@@3 T@Field_5653_12714) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_5614_5653_16275#PolymorphicMapType_5614| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5653_17184 f_4@@3))) (not (IsWandField_5653_17200 f_4@@3))) (<= (select (|PolymorphicMapType_5614_5653_16275#PolymorphicMapType_5614| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_5614_5653_16275#PolymorphicMapType_5614| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_5614) (o_2@@4 T@Ref) (f_4@@4 T@Field_5653_12581) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_5614_5653_12581#PolymorphicMapType_5614| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5653_12672 f_4@@4))) (not (IsWandField_5653_14221 f_4@@4))) (<= (select (|PolymorphicMapType_5614_5653_12581#PolymorphicMapType_5614| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_5614_5653_12581#PolymorphicMapType_5614| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5614) (o_2@@5 T@Ref) (f_4@@5 T@Field_5666_5667) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5614_5653_5667#PolymorphicMapType_5614| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5653_5667 f_4@@5))) (not (IsWandField_5653_5667 f_4@@5))) (<= (select (|PolymorphicMapType_5614_5653_5667#PolymorphicMapType_5614| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5614_5653_5667#PolymorphicMapType_5614| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5614) (o_2@@6 T@Ref) (f_4@@6 T@Field_5653_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5614_5653_53#PolymorphicMapType_5614| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5653_53 f_4@@6))) (not (IsWandField_5653_53 f_4@@6))) (<= (select (|PolymorphicMapType_5614_5653_53#PolymorphicMapType_5614| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5614_5653_53#PolymorphicMapType_5614| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5614) (o_2@@7 T@Ref) (f_4@@7 T@Field_5653_12714) ) (! (= (HasDirectPerm_5653_17555 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_5614_5653_16275#PolymorphicMapType_5614| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5653_17555 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5614) (o_2@@8 T@Ref) (f_4@@8 T@Field_5653_12581) ) (! (= (HasDirectPerm_5653_12645 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_5614_5653_12581#PolymorphicMapType_5614| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5653_12645 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5614) (o_2@@9 T@Ref) (f_4@@9 T@Field_5666_5667) ) (! (= (HasDirectPerm_5653_5667 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5614_5653_5667#PolymorphicMapType_5614| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5653_5667 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5614) (o_2@@10 T@Ref) (f_4@@10 T@Field_5653_53) ) (! (= (HasDirectPerm_5653_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5614_5653_53#PolymorphicMapType_5614| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5653_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5593) (ExhaleHeap@@5 T@PolymorphicMapType_5593) (Mask@@14 T@PolymorphicMapType_5614) (o_6@@0 T@Ref) (f_9@@7 T@Field_5653_12714) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_5653_17555 Mask@@14 o_6@@0 f_9@@7) (= (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@6) o_6@@0 f_9@@7) (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| ExhaleHeap@@5) o_6@@0 f_9@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| ExhaleHeap@@5) o_6@@0 f_9@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5593) (ExhaleHeap@@6 T@PolymorphicMapType_5593) (Mask@@15 T@PolymorphicMapType_5614) (o_6@@1 T@Ref) (f_9@@8 T@Field_5653_12581) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_5653_12645 Mask@@15 o_6@@1 f_9@@8) (= (select (|PolymorphicMapType_5593_5653_12581#PolymorphicMapType_5593| Heap@@7) o_6@@1 f_9@@8) (select (|PolymorphicMapType_5593_5653_12581#PolymorphicMapType_5593| ExhaleHeap@@6) o_6@@1 f_9@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_5593_5653_12581#PolymorphicMapType_5593| ExhaleHeap@@6) o_6@@1 f_9@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5593) (ExhaleHeap@@7 T@PolymorphicMapType_5593) (Mask@@16 T@PolymorphicMapType_5614) (o_6@@2 T@Ref) (f_9@@9 T@Field_5666_5667) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_5653_5667 Mask@@16 o_6@@2 f_9@@9) (= (select (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| Heap@@8) o_6@@2 f_9@@9) (select (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| ExhaleHeap@@7) o_6@@2 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| ExhaleHeap@@7) o_6@@2 f_9@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5593) (ExhaleHeap@@8 T@PolymorphicMapType_5593) (Mask@@17 T@PolymorphicMapType_5614) (o_6@@3 T@Ref) (f_9@@10 T@Field_5653_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_5653_53 Mask@@17 o_6@@3 f_9@@10) (= (select (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| Heap@@9) o_6@@3 f_9@@10) (select (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| ExhaleHeap@@8) o_6@@3 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| ExhaleHeap@@8) o_6@@3 f_9@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5653_12714) ) (! (= (select (|PolymorphicMapType_5614_5653_16275#PolymorphicMapType_5614| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5614_5653_16275#PolymorphicMapType_5614| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5653_12581) ) (! (= (select (|PolymorphicMapType_5614_5653_12581#PolymorphicMapType_5614| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5614_5653_12581#PolymorphicMapType_5614| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5666_5667) ) (! (= (select (|PolymorphicMapType_5614_5653_5667#PolymorphicMapType_5614| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5614_5653_5667#PolymorphicMapType_5614| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5653_53) ) (! (= (select (|PolymorphicMapType_5614_5653_53#PolymorphicMapType_5614| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5614_5653_53#PolymorphicMapType_5614| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5614) (SummandMask1 T@PolymorphicMapType_5614) (SummandMask2 T@PolymorphicMapType_5614) (o_2@@15 T@Ref) (f_4@@15 T@Field_5653_12714) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5614_5653_16275#PolymorphicMapType_5614| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_5614_5653_16275#PolymorphicMapType_5614| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_5614_5653_16275#PolymorphicMapType_5614| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5614_5653_16275#PolymorphicMapType_5614| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5614_5653_16275#PolymorphicMapType_5614| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5614_5653_16275#PolymorphicMapType_5614| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5614) (SummandMask1@@0 T@PolymorphicMapType_5614) (SummandMask2@@0 T@PolymorphicMapType_5614) (o_2@@16 T@Ref) (f_4@@16 T@Field_5653_12581) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5614_5653_12581#PolymorphicMapType_5614| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_5614_5653_12581#PolymorphicMapType_5614| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_5614_5653_12581#PolymorphicMapType_5614| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5614_5653_12581#PolymorphicMapType_5614| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5614_5653_12581#PolymorphicMapType_5614| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5614_5653_12581#PolymorphicMapType_5614| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5614) (SummandMask1@@1 T@PolymorphicMapType_5614) (SummandMask2@@1 T@PolymorphicMapType_5614) (o_2@@17 T@Ref) (f_4@@17 T@Field_5666_5667) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5614_5653_5667#PolymorphicMapType_5614| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_5614_5653_5667#PolymorphicMapType_5614| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_5614_5653_5667#PolymorphicMapType_5614| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5614_5653_5667#PolymorphicMapType_5614| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5614_5653_5667#PolymorphicMapType_5614| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5614_5653_5667#PolymorphicMapType_5614| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5614) (SummandMask1@@2 T@PolymorphicMapType_5614) (SummandMask2@@2 T@PolymorphicMapType_5614) (o_2@@18 T@Ref) (f_4@@18 T@Field_5653_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5614_5653_53#PolymorphicMapType_5614| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_5614_5653_53#PolymorphicMapType_5614| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_5614_5653_53#PolymorphicMapType_5614| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5614_5653_53#PolymorphicMapType_5614| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5614_5653_53#PolymorphicMapType_5614| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5614_5653_53#PolymorphicMapType_5614| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5593) (o_5 T@Ref) (f_10 T@Field_5653_12581) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_5593 (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| Heap@@10) (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| Heap@@10) (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@10) (store (|PolymorphicMapType_5593_5653_12581#PolymorphicMapType_5593| Heap@@10) o_5 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5593 (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| Heap@@10) (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| Heap@@10) (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@10) (store (|PolymorphicMapType_5593_5653_12581#PolymorphicMapType_5593| Heap@@10) o_5 f_10 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5593) (o_5@@0 T@Ref) (f_10@@0 T@Field_5653_12714) (v@@0 T@PolymorphicMapType_6142) ) (! (succHeap Heap@@11 (PolymorphicMapType_5593 (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| Heap@@11) (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| Heap@@11) (store (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@11) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_5593_5653_12581#PolymorphicMapType_5593| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5593 (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| Heap@@11) (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| Heap@@11) (store (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@11) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_5593_5653_12581#PolymorphicMapType_5593| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5593) (o_5@@1 T@Ref) (f_10@@1 T@Field_5666_5667) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_5593 (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| Heap@@12) (store (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| Heap@@12) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@12) (|PolymorphicMapType_5593_5653_12581#PolymorphicMapType_5593| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5593 (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| Heap@@12) (store (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| Heap@@12) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@12) (|PolymorphicMapType_5593_5653_12581#PolymorphicMapType_5593| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5593) (o_5@@2 T@Ref) (f_10@@2 T@Field_5653_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_5593 (store (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| Heap@@13) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| Heap@@13) (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@13) (|PolymorphicMapType_5593_5653_12581#PolymorphicMapType_5593| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5593 (store (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| Heap@@13) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| Heap@@13) (|PolymorphicMapType_5593_5653_12758#PolymorphicMapType_5593| Heap@@13) (|PolymorphicMapType_5593_5653_12581#PolymorphicMapType_5593| Heap@@13)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.271:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.272:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_5@@3 T@Ref) (f_3 T@Field_5666_5667) (Heap@@14 T@PolymorphicMapType_5593) ) (!  (=> (select (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| Heap@@14) o_5@@3 $allocated) (select (|PolymorphicMapType_5593_3259_53#PolymorphicMapType_5593| Heap@@14) (select (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| Heap@@14) o_5@@3 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5593_3262_3263#PolymorphicMapType_5593| Heap@@14) o_5@@3 f_3))
)))
(assert (forall ((p@@1 T@Field_5653_12581) (v_1@@0 T@FrameType) (q T@Field_5653_12581) (w@@0 T@FrameType) (r T@Field_5653_12581) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5653_5653 p@@1 v_1@@0 q w@@0) (InsidePredicate_5653_5653 q w@@0 r u)) (InsidePredicate_5653_5653 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5653_5653 p@@1 v_1@@0 q w@@0) (InsidePredicate_5653_5653 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.277:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
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
 (=> (= (ControlFlow 0 0) 4) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid