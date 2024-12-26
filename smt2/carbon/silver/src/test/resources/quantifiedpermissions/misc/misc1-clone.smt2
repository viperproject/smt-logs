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
(declare-sort T@Field_3672_53 0)
(declare-sort T@Field_3685_3686 0)
(declare-sort T@Field_7189_1387 0)
(declare-sort T@Field_3672_10183 0)
(declare-sort T@Field_3672_10050 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3633 0)) (((PolymorphicMapType_3633 (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| (Array T@Ref T@Field_7189_1387 Real)) (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| (Array T@Ref T@Field_3672_53 Real)) (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| (Array T@Ref T@Field_3685_3686 Real)) (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| (Array T@Ref T@Field_3672_10050 Real)) (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| (Array T@Ref T@Field_3672_10183 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4161 0)) (((PolymorphicMapType_4161 (|PolymorphicMapType_4161_3672_53#PolymorphicMapType_4161| (Array T@Ref T@Field_3672_53 Bool)) (|PolymorphicMapType_4161_3672_3686#PolymorphicMapType_4161| (Array T@Ref T@Field_3685_3686 Bool)) (|PolymorphicMapType_4161_3672_1387#PolymorphicMapType_4161| (Array T@Ref T@Field_7189_1387 Bool)) (|PolymorphicMapType_4161_3672_10050#PolymorphicMapType_4161| (Array T@Ref T@Field_3672_10050 Bool)) (|PolymorphicMapType_4161_3672_11361#PolymorphicMapType_4161| (Array T@Ref T@Field_3672_10183 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3612 0)) (((PolymorphicMapType_3612 (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| (Array T@Ref T@Field_3672_53 Bool)) (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| (Array T@Ref T@Field_3685_3686 T@Ref)) (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| (Array T@Ref T@Field_7189_1387 Int)) (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| (Array T@Ref T@Field_3672_10183 T@PolymorphicMapType_4161)) (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| (Array T@Ref T@Field_3672_10050 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_3672_53)
(declare-fun val () T@Field_7189_1387)
(declare-fun succHeap (T@PolymorphicMapType_3612 T@PolymorphicMapType_3612) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3612 T@PolymorphicMapType_3612) Bool)
(declare-fun state (T@PolymorphicMapType_3612 T@PolymorphicMapType_3633) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3633) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4161)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3612 T@PolymorphicMapType_3612 T@PolymorphicMapType_3633) Bool)
(declare-fun IsPredicateField_3672_10141 (T@Field_3672_10050) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3672 (T@Field_3672_10050) T@Field_3672_10183)
(declare-fun HasDirectPerm_3672_10114 (T@PolymorphicMapType_3633 T@Ref T@Field_3672_10050) Bool)
(declare-fun IsWandField_3672_11888 (T@Field_3672_10050) Bool)
(declare-fun WandMaskField_3672 (T@Field_3672_10050) T@Field_3672_10183)
(declare-fun dummyHeap () T@PolymorphicMapType_3612)
(declare-fun ZeroMask () T@PolymorphicMapType_3633)
(declare-fun InsidePredicate_3672_3672 (T@Field_3672_10050 T@FrameType T@Field_3672_10050 T@FrameType) Bool)
(declare-fun IsPredicateField_2076_1387 (T@Field_7189_1387) Bool)
(declare-fun IsWandField_2076_1387 (T@Field_7189_1387) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2076_15434 (T@Field_3672_10183) Bool)
(declare-fun IsWandField_2076_15450 (T@Field_3672_10183) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2076_3686 (T@Field_3685_3686) Bool)
(declare-fun IsWandField_2076_3686 (T@Field_3685_3686) Bool)
(declare-fun IsPredicateField_2076_53 (T@Field_3672_53) Bool)
(declare-fun IsWandField_2076_53 (T@Field_3672_53) Bool)
(declare-fun HasDirectPerm_3672_15888 (T@PolymorphicMapType_3633 T@Ref T@Field_3672_10183) Bool)
(declare-fun HasDirectPerm_3672_1387 (T@PolymorphicMapType_3633 T@Ref T@Field_7189_1387) Bool)
(declare-fun HasDirectPerm_3672_3686 (T@PolymorphicMapType_3633 T@Ref T@Field_3685_3686) Bool)
(declare-fun HasDirectPerm_3672_53 (T@PolymorphicMapType_3633 T@Ref T@Field_3672_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3633 T@PolymorphicMapType_3633 T@PolymorphicMapType_3633) Bool)
(declare-fun rd () Real)
(declare-fun temp (T@Ref) T@Ref)
(declare-fun temp_inv (T@Ref) T@Ref)
(declare-fun is_ghost (T@Ref) Bool)
(declare-fun heap (T@Ref) Int)
(declare-fun rds (Int) Real)
(assert (forall ((Heap0 T@PolymorphicMapType_3612) (Heap1 T@PolymorphicMapType_3612) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3612) (Mask T@PolymorphicMapType_3633) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3612) (Heap1@@0 T@PolymorphicMapType_3612) (Heap2 T@PolymorphicMapType_3612) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3672_10183) ) (!  (not (select (|PolymorphicMapType_4161_3672_11361#PolymorphicMapType_4161| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4161_3672_11361#PolymorphicMapType_4161| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3672_10050) ) (!  (not (select (|PolymorphicMapType_4161_3672_10050#PolymorphicMapType_4161| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4161_3672_10050#PolymorphicMapType_4161| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7189_1387) ) (!  (not (select (|PolymorphicMapType_4161_3672_1387#PolymorphicMapType_4161| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4161_3672_1387#PolymorphicMapType_4161| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3685_3686) ) (!  (not (select (|PolymorphicMapType_4161_3672_3686#PolymorphicMapType_4161| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4161_3672_3686#PolymorphicMapType_4161| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3672_53) ) (!  (not (select (|PolymorphicMapType_4161_3672_53#PolymorphicMapType_4161| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4161_3672_53#PolymorphicMapType_4161| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3612) (ExhaleHeap T@PolymorphicMapType_3612) (Mask@@0 T@PolymorphicMapType_3633) (pm_f_2 T@Field_3672_10050) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3672_10114 Mask@@0 null pm_f_2) (IsPredicateField_3672_10141 pm_f_2)) (= (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@0) null (PredicateMaskField_3672 pm_f_2)) (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| ExhaleHeap) null (PredicateMaskField_3672 pm_f_2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3672_10141 pm_f_2) (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| ExhaleHeap) null (PredicateMaskField_3672 pm_f_2)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3612) (ExhaleHeap@@0 T@PolymorphicMapType_3612) (Mask@@1 T@PolymorphicMapType_3633) (pm_f_2@@0 T@Field_3672_10050) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3672_10114 Mask@@1 null pm_f_2@@0) (IsWandField_3672_11888 pm_f_2@@0)) (= (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@1) null (WandMaskField_3672 pm_f_2@@0)) (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| ExhaleHeap@@0) null (WandMaskField_3672 pm_f_2@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_3672_11888 pm_f_2@@0) (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| ExhaleHeap@@0) null (WandMaskField_3672 pm_f_2@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3612) (ExhaleHeap@@1 T@PolymorphicMapType_3612) (Mask@@2 T@PolymorphicMapType_3633) (o_6 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@2) o_6 $allocated) (select (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| ExhaleHeap@@1) o_6 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| ExhaleHeap@@1) o_6 $allocated))
)))
(assert (forall ((p T@Field_3672_10050) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3672_3672 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3672_3672 p v_1 p w))
)))
(assert  (not (IsPredicateField_2076_1387 val)))
(assert  (not (IsWandField_2076_1387 val)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3612) (ExhaleHeap@@2 T@PolymorphicMapType_3612) (Mask@@3 T@PolymorphicMapType_3633) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_3633) (o_2@@4 T@Ref) (f_4@@4 T@Field_3672_10183) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_2076_15434 f_4@@4))) (not (IsWandField_2076_15450 f_4@@4))) (<= (select (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_3633) (o_2@@5 T@Ref) (f_4@@5 T@Field_3672_10050) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_3672_10141 f_4@@5))) (not (IsWandField_3672_11888 f_4@@5))) (<= (select (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3633) (o_2@@6 T@Ref) (f_4@@6 T@Field_3685_3686) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2076_3686 f_4@@6))) (not (IsWandField_2076_3686 f_4@@6))) (<= (select (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3633) (o_2@@7 T@Ref) (f_4@@7 T@Field_3672_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2076_53 f_4@@7))) (not (IsWandField_2076_53 f_4@@7))) (<= (select (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3633) (o_2@@8 T@Ref) (f_4@@8 T@Field_7189_1387) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2076_1387 f_4@@8))) (not (IsWandField_2076_1387 f_4@@8))) (<= (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3633) (o_2@@9 T@Ref) (f_4@@9 T@Field_3672_10183) ) (! (= (HasDirectPerm_3672_15888 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3672_15888 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3633) (o_2@@10 T@Ref) (f_4@@10 T@Field_3672_10050) ) (! (= (HasDirectPerm_3672_10114 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3672_10114 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3633) (o_2@@11 T@Ref) (f_4@@11 T@Field_7189_1387) ) (! (= (HasDirectPerm_3672_1387 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3672_1387 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3633) (o_2@@12 T@Ref) (f_4@@12 T@Field_3685_3686) ) (! (= (HasDirectPerm_3672_3686 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3672_3686 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3633) (o_2@@13 T@Ref) (f_4@@13 T@Field_3672_53) ) (! (= (HasDirectPerm_3672_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3672_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3612) (ExhaleHeap@@3 T@PolymorphicMapType_3612) (Mask@@14 T@PolymorphicMapType_3633) (pm_f_2@@1 T@Field_3672_10050) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_3672_10114 Mask@@14 null pm_f_2@@1) (IsPredicateField_3672_10141 pm_f_2@@1)) (and (and (and (and (forall ((o2_2 T@Ref) (f_9 T@Field_3672_53) ) (!  (=> (select (|PolymorphicMapType_4161_3672_53#PolymorphicMapType_4161| (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@4) null (PredicateMaskField_3672 pm_f_2@@1))) o2_2 f_9) (= (select (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@4) o2_2 f_9) (select (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| ExhaleHeap@@3) o2_2 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| ExhaleHeap@@3) o2_2 f_9))
)) (forall ((o2_2@@0 T@Ref) (f_9@@0 T@Field_3685_3686) ) (!  (=> (select (|PolymorphicMapType_4161_3672_3686#PolymorphicMapType_4161| (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@4) null (PredicateMaskField_3672 pm_f_2@@1))) o2_2@@0 f_9@@0) (= (select (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| Heap@@4) o2_2@@0 f_9@@0) (select (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| ExhaleHeap@@3) o2_2@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| ExhaleHeap@@3) o2_2@@0 f_9@@0))
))) (forall ((o2_2@@1 T@Ref) (f_9@@1 T@Field_7189_1387) ) (!  (=> (select (|PolymorphicMapType_4161_3672_1387#PolymorphicMapType_4161| (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@4) null (PredicateMaskField_3672 pm_f_2@@1))) o2_2@@1 f_9@@1) (= (select (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| Heap@@4) o2_2@@1 f_9@@1) (select (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| ExhaleHeap@@3) o2_2@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| ExhaleHeap@@3) o2_2@@1 f_9@@1))
))) (forall ((o2_2@@2 T@Ref) (f_9@@2 T@Field_3672_10050) ) (!  (=> (select (|PolymorphicMapType_4161_3672_10050#PolymorphicMapType_4161| (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@4) null (PredicateMaskField_3672 pm_f_2@@1))) o2_2@@2 f_9@@2) (= (select (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| Heap@@4) o2_2@@2 f_9@@2) (select (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| ExhaleHeap@@3) o2_2@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| ExhaleHeap@@3) o2_2@@2 f_9@@2))
))) (forall ((o2_2@@3 T@Ref) (f_9@@3 T@Field_3672_10183) ) (!  (=> (select (|PolymorphicMapType_4161_3672_11361#PolymorphicMapType_4161| (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@4) null (PredicateMaskField_3672 pm_f_2@@1))) o2_2@@3 f_9@@3) (= (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@4) o2_2@@3 f_9@@3) (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| ExhaleHeap@@3) o2_2@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| ExhaleHeap@@3) o2_2@@3 f_9@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_3672_10141 pm_f_2@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3612) (ExhaleHeap@@4 T@PolymorphicMapType_3612) (Mask@@15 T@PolymorphicMapType_3633) (pm_f_2@@2 T@Field_3672_10050) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_3672_10114 Mask@@15 null pm_f_2@@2) (IsWandField_3672_11888 pm_f_2@@2)) (and (and (and (and (forall ((o2_2@@4 T@Ref) (f_9@@4 T@Field_3672_53) ) (!  (=> (select (|PolymorphicMapType_4161_3672_53#PolymorphicMapType_4161| (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@5) null (WandMaskField_3672 pm_f_2@@2))) o2_2@@4 f_9@@4) (= (select (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@5) o2_2@@4 f_9@@4) (select (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| ExhaleHeap@@4) o2_2@@4 f_9@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| ExhaleHeap@@4) o2_2@@4 f_9@@4))
)) (forall ((o2_2@@5 T@Ref) (f_9@@5 T@Field_3685_3686) ) (!  (=> (select (|PolymorphicMapType_4161_3672_3686#PolymorphicMapType_4161| (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@5) null (WandMaskField_3672 pm_f_2@@2))) o2_2@@5 f_9@@5) (= (select (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| Heap@@5) o2_2@@5 f_9@@5) (select (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| ExhaleHeap@@4) o2_2@@5 f_9@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| ExhaleHeap@@4) o2_2@@5 f_9@@5))
))) (forall ((o2_2@@6 T@Ref) (f_9@@6 T@Field_7189_1387) ) (!  (=> (select (|PolymorphicMapType_4161_3672_1387#PolymorphicMapType_4161| (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@5) null (WandMaskField_3672 pm_f_2@@2))) o2_2@@6 f_9@@6) (= (select (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| Heap@@5) o2_2@@6 f_9@@6) (select (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| ExhaleHeap@@4) o2_2@@6 f_9@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| ExhaleHeap@@4) o2_2@@6 f_9@@6))
))) (forall ((o2_2@@7 T@Ref) (f_9@@7 T@Field_3672_10050) ) (!  (=> (select (|PolymorphicMapType_4161_3672_10050#PolymorphicMapType_4161| (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@5) null (WandMaskField_3672 pm_f_2@@2))) o2_2@@7 f_9@@7) (= (select (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| Heap@@5) o2_2@@7 f_9@@7) (select (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| ExhaleHeap@@4) o2_2@@7 f_9@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| ExhaleHeap@@4) o2_2@@7 f_9@@7))
))) (forall ((o2_2@@8 T@Ref) (f_9@@8 T@Field_3672_10183) ) (!  (=> (select (|PolymorphicMapType_4161_3672_11361#PolymorphicMapType_4161| (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@5) null (WandMaskField_3672 pm_f_2@@2))) o2_2@@8 f_9@@8) (= (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@5) o2_2@@8 f_9@@8) (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| ExhaleHeap@@4) o2_2@@8 f_9@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| ExhaleHeap@@4) o2_2@@8 f_9@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_3672_11888 pm_f_2@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3612) (ExhaleHeap@@5 T@PolymorphicMapType_3612) (Mask@@16 T@PolymorphicMapType_3633) (o_6@@0 T@Ref) (f_9@@9 T@Field_3672_10183) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_3672_15888 Mask@@16 o_6@@0 f_9@@9) (= (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@6) o_6@@0 f_9@@9) (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| ExhaleHeap@@5) o_6@@0 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| ExhaleHeap@@5) o_6@@0 f_9@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3612) (ExhaleHeap@@6 T@PolymorphicMapType_3612) (Mask@@17 T@PolymorphicMapType_3633) (o_6@@1 T@Ref) (f_9@@10 T@Field_3672_10050) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_3672_10114 Mask@@17 o_6@@1 f_9@@10) (= (select (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| Heap@@7) o_6@@1 f_9@@10) (select (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| ExhaleHeap@@6) o_6@@1 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| ExhaleHeap@@6) o_6@@1 f_9@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3612) (ExhaleHeap@@7 T@PolymorphicMapType_3612) (Mask@@18 T@PolymorphicMapType_3633) (o_6@@2 T@Ref) (f_9@@11 T@Field_7189_1387) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_3672_1387 Mask@@18 o_6@@2 f_9@@11) (= (select (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| Heap@@8) o_6@@2 f_9@@11) (select (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| ExhaleHeap@@7) o_6@@2 f_9@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| ExhaleHeap@@7) o_6@@2 f_9@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3612) (ExhaleHeap@@8 T@PolymorphicMapType_3612) (Mask@@19 T@PolymorphicMapType_3633) (o_6@@3 T@Ref) (f_9@@12 T@Field_3685_3686) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_3672_3686 Mask@@19 o_6@@3 f_9@@12) (= (select (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| Heap@@9) o_6@@3 f_9@@12) (select (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| ExhaleHeap@@8) o_6@@3 f_9@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| ExhaleHeap@@8) o_6@@3 f_9@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3612) (ExhaleHeap@@9 T@PolymorphicMapType_3612) (Mask@@20 T@PolymorphicMapType_3633) (o_6@@4 T@Ref) (f_9@@13 T@Field_3672_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_3672_53 Mask@@20 o_6@@4 f_9@@13) (= (select (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@10) o_6@@4 f_9@@13) (select (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| ExhaleHeap@@9) o_6@@4 f_9@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| ExhaleHeap@@9) o_6@@4 f_9@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3672_10183) ) (! (= (select (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3672_10050) ) (! (= (select (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_3685_3686) ) (! (= (select (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_3672_53) ) (! (= (select (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_7189_1387) ) (! (= (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3633) (SummandMask1 T@PolymorphicMapType_3633) (SummandMask2 T@PolymorphicMapType_3633) (o_2@@19 T@Ref) (f_4@@19 T@Field_3672_10183) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3633) (SummandMask1@@0 T@PolymorphicMapType_3633) (SummandMask2@@0 T@PolymorphicMapType_3633) (o_2@@20 T@Ref) (f_4@@20 T@Field_3672_10050) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3633) (SummandMask1@@1 T@PolymorphicMapType_3633) (SummandMask2@@1 T@PolymorphicMapType_3633) (o_2@@21 T@Ref) (f_4@@21 T@Field_3685_3686) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3633) (SummandMask1@@2 T@PolymorphicMapType_3633) (SummandMask2@@2 T@PolymorphicMapType_3633) (o_2@@22 T@Ref) (f_4@@22 T@Field_3672_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3633) (SummandMask1@@3 T@PolymorphicMapType_3633) (SummandMask2@@3 T@PolymorphicMapType_3633) (o_2@@23 T@Ref) (f_4@@23 T@Field_7189_1387) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (< NoPerm rd))
(assert (forall ((r_1 T@Ref) ) (!  (and (= (temp_inv (temp r_1)) r_1) (ite (is_ghost r_1) (= (temp r_1) r_1) (= (heap (temp r_1)) (- 0 3))))
 :qid |stdinbpl.223:15|
 :skolemid |22|
 :pattern ( (temp r_1))
)))
(assert (forall ((i Int) ) (!  (and (= (rds 0) NoPerm) (and (= (rds i) (* (to_real i) rd)) (=> (>= i 0) (< (rds i) FullPerm))))
 :qid |stdinbpl.242:15|
 :skolemid |23|
 :pattern ( (rds i))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3612) (o_5 T@Ref) (f_10 T@Field_3672_10050) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_3612 (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@11) (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| Heap@@11) (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| Heap@@11) (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@11) (store (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| Heap@@11) o_5 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3612 (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@11) (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| Heap@@11) (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| Heap@@11) (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@11) (store (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| Heap@@11) o_5 f_10 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3612) (o_5@@0 T@Ref) (f_10@@0 T@Field_3672_10183) (v@@0 T@PolymorphicMapType_4161) ) (! (succHeap Heap@@12 (PolymorphicMapType_3612 (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@12) (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| Heap@@12) (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| Heap@@12) (store (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@12) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3612 (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@12) (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| Heap@@12) (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| Heap@@12) (store (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@12) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3612) (o_5@@1 T@Ref) (f_10@@1 T@Field_7189_1387) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_3612 (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@13) (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| Heap@@13) (store (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| Heap@@13) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@13) (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3612 (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@13) (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| Heap@@13) (store (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| Heap@@13) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@13) (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3612) (o_5@@2 T@Ref) (f_10@@2 T@Field_3685_3686) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_3612 (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@14) (store (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| Heap@@14) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| Heap@@14) (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@14) (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3612 (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@14) (store (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| Heap@@14) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| Heap@@14) (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@14) (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3612) (o_5@@3 T@Ref) (f_10@@3 T@Field_3672_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_3612 (store (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@15) o_5@@3 f_10@@3 v@@3) (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| Heap@@15) (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| Heap@@15) (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@15) (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3612 (store (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@15) o_5@@3 f_10@@3 v@@3) (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| Heap@@15) (|PolymorphicMapType_3612_3672_1387#PolymorphicMapType_3612| Heap@@15) (|PolymorphicMapType_3612_3672_10227#PolymorphicMapType_3612| Heap@@15) (|PolymorphicMapType_3612_3672_10050#PolymorphicMapType_3612| Heap@@15)))
)))
(assert (forall ((o_5@@4 T@Ref) (f_3 T@Field_3685_3686) (Heap@@16 T@PolymorphicMapType_3612) ) (!  (=> (select (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@16) o_5@@4 $allocated) (select (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@16) (select (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| Heap@@16) o_5@@4 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3612_1919_1920#PolymorphicMapType_3612| Heap@@16) o_5@@4 f_3))
)))
(assert (forall ((p@@1 T@Field_3672_10050) (v_1@@0 T@FrameType) (q T@Field_3672_10050) (w@@0 T@FrameType) (r T@Field_3672_10050) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3672_3672 p@@1 v_1@@0 q w@@0) (InsidePredicate_3672_3672 q w@@0 r u)) (InsidePredicate_3672_3672 p@@1 v_1@@0 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3672_3672 p@@1 v_1@@0 q w@@0) (InsidePredicate_3672_3672 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@3 () T@PolymorphicMapType_3633)
(declare-fun Mask@2 () T@PolymorphicMapType_3633)
(declare-fun up (T@Ref) T@Ref)
(declare-fun data_1 () T@Ref)
(declare-fun perm@3 () Real)
(declare-fun Heap@@17 () T@PolymorphicMapType_3612)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_3612)
(declare-fun Mask@4 () T@PolymorphicMapType_3633)
(declare-fun Heap@0 () T@PolymorphicMapType_3612)
(declare-fun t_2 () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_3633)
(declare-fun Mask@1 () T@PolymorphicMapType_3633)
(declare-fun perm@2 () Real)
(declare-fun ghost () T@Ref)
(declare-fun count_1 () T@Ref)
(declare-fun perm@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_3633)
(declare-fun perm@1 () Real)
(set-info :boogie-vc-id clone)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon6_correct true))
(let ((anon5_correct  (=> (and (= Mask@3 (PolymorphicMapType_3633 (store (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| Mask@2) (up data_1) val (- (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| Mask@2) (up data_1) val) perm@3)) (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| Mask@2) (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| Mask@2) (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| Mask@2) (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| Mask@2))) (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 Mask@3)) (=> (and (and (state ExhaleHeap@0 Mask@3) (= Mask@4 Mask@3)) (and (= Heap@0 ExhaleHeap@0) (= (ControlFlow 0 4) 2))) anon6_correct))))
(let ((anon9_Else_correct  (=> (and (= perm@3 NoPerm) (= (ControlFlow 0 7) 4)) anon5_correct)))
(let ((anon9_Then_correct  (=> (not (= perm@3 NoPerm)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= perm@3 (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| Mask@2) (up data_1) val))) (=> (<= perm@3 (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| Mask@2) (up data_1) val)) (=> (= (ControlFlow 0 5) 4) anon5_correct))))))
(let ((anon8_Then_correct  (=> (and (>= t_2 0) (= perm@3 (- (- FullPerm (rds (+ t_2 1))) (ite (< (- FullPerm (rds (+ t_2 1))) (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| Mask@2) (temp data_1) val)) (- FullPerm (rds (+ t_2 1))) (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| Mask@2) (temp data_1) val))))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (and (=> (= (ControlFlow 0 8) 5) anon9_Then_correct) (=> (= (ControlFlow 0 8) 7) anon9_Else_correct)))))))
(let ((anon8_Else_correct  (=> (and (and (> 0 t_2) (= Mask@4 Mask@2)) (and (= Heap@0 Heap@@17) (= (ControlFlow 0 3) 2))) anon6_correct)))
(let ((anon7_Else_correct  (=> (forall ((o_4 T@Ref) ) (! (= (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| QPMask@0) o_4 val) (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| Mask@1) o_4 val))
 :qid |stdinbpl.324:22|
 :skolemid |24|
 :pattern ( (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| QPMask@0) o_4 val))
)) (=> (and (and (and (and (and (forall ((o_4@@0 T@Ref) (f_5 T@Field_3672_53) ) (!  (=> true (= (select (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| Mask@1) o_4@@0 f_5) (select (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| QPMask@0) o_4@@0 f_5)))
 :qid |stdinbpl.328:29|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| Mask@1) o_4@@0 f_5))
 :pattern ( (select (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| QPMask@0) o_4@@0 f_5))
)) (forall ((o_4@@1 T@Ref) (f_5@@0 T@Field_3685_3686) ) (!  (=> true (= (select (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| Mask@1) o_4@@1 f_5@@0) (select (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| QPMask@0) o_4@@1 f_5@@0)))
 :qid |stdinbpl.328:29|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| Mask@1) o_4@@1 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| QPMask@0) o_4@@1 f_5@@0))
))) (forall ((o_4@@2 T@Ref) (f_5@@1 T@Field_7189_1387) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| Mask@1) o_4@@2 f_5@@1) (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| QPMask@0) o_4@@2 f_5@@1)))
 :qid |stdinbpl.328:29|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| Mask@1) o_4@@2 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| QPMask@0) o_4@@2 f_5@@1))
))) (forall ((o_4@@3 T@Ref) (f_5@@2 T@Field_3672_10050) ) (!  (=> true (= (select (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| Mask@1) o_4@@3 f_5@@2) (select (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| QPMask@0) o_4@@3 f_5@@2)))
 :qid |stdinbpl.328:29|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| Mask@1) o_4@@3 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| QPMask@0) o_4@@3 f_5@@2))
))) (forall ((o_4@@4 T@Ref) (f_5@@3 T@Field_3672_10183) ) (!  (=> true (= (select (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| Mask@1) o_4@@4 f_5@@3) (select (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| QPMask@0) o_4@@4 f_5@@3)))
 :qid |stdinbpl.328:29|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| Mask@1) o_4@@4 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| QPMask@0) o_4@@4 f_5@@3))
))) (and (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0)) (and (state Heap@@17 QPMask@0) (= perm@2 (- FullPerm (rds t_2)))))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (=> (and (and (and (=> (> perm@2 NoPerm) (not (= (temp ghost) null))) (= Mask@2 (PolymorphicMapType_3633 (store (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| QPMask@0) (temp ghost) val (+ (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| QPMask@0) (temp ghost) val) perm@2)) (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| QPMask@0) (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| QPMask@0) (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| QPMask@0) (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| QPMask@0)))) (and (state Heap@@17 Mask@2) (state Heap@@17 Mask@2))) (and (and (state Heap@@17 Mask@2) (< t_2 1)) (and (state Heap@@17 Mask@2) (state Heap@@17 Mask@2)))) (and (=> (= (ControlFlow 0 10) 8) anon8_Then_correct) (=> (= (ControlFlow 0 10) 3) anon8_Else_correct)))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (=> (and (and (and (select (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@17) data_1 $allocated) (select (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@17) count_1 $allocated)) (and (select (|PolymorphicMapType_3612_1916_53#PolymorphicMapType_3612| Heap@@17) ghost $allocated) (= (heap data_1) 0))) (and (and (= (heap count_1) 0) (= (heap ghost) 0)) (and (is_ghost ghost) (= perm@0 rd)))) (and (=> (= (ControlFlow 0 12) (- 0 14)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (and (=> (> perm@0 NoPerm) (not (= data_1 null))) (= Mask@0 (PolymorphicMapType_3633 (store (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| ZeroMask) data_1 val (+ (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| ZeroMask) data_1 val) perm@0)) (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| ZeroMask) (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| ZeroMask) (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| ZeroMask) (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| ZeroMask)))) (and (state Heap@@17 Mask@0) (= perm@1 rd))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (and (and (=> (> perm@1 NoPerm) (not (= ghost null))) (= Mask@1 (PolymorphicMapType_3633 (store (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| Mask@0) ghost val (+ (select (|PolymorphicMapType_3633_2076_1387#PolymorphicMapType_3633| Mask@0) ghost val) perm@1)) (|PolymorphicMapType_3633_2076_53#PolymorphicMapType_3633| Mask@0) (|PolymorphicMapType_3633_2076_3686#PolymorphicMapType_3633| Mask@0) (|PolymorphicMapType_3633_2076_10050#PolymorphicMapType_3633| Mask@0) (|PolymorphicMapType_3633_2076_14305#PolymorphicMapType_3633| Mask@0)))) (and (state Heap@@17 Mask@1) (state Heap@@17 Mask@1))) (and (=> (= (ControlFlow 0 12) 1) anon7_Then_correct) (=> (= (ControlFlow 0 12) 10) anon7_Else_correct))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15) 12) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
