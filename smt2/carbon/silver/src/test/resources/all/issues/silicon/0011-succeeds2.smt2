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
(declare-sort T@Field_12111_53 0)
(declare-sort T@Field_12124_12125 0)
(declare-sort T@Field_15567_1231 0)
(declare-sort T@Field_5822_39658 0)
(declare-sort T@Field_5822_39525 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12072 0)) (((PolymorphicMapType_12072 (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| (Array T@Ref T@Field_12124_12125 Real)) (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| (Array T@Ref T@Field_12111_53 Real)) (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| (Array T@Ref T@Field_15567_1231 Real)) (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| (Array T@Ref T@Field_5822_39525 Real)) (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| (Array T@Ref T@Field_5822_39658 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12600 0)) (((PolymorphicMapType_12600 (|PolymorphicMapType_12600_12111_53#PolymorphicMapType_12600| (Array T@Ref T@Field_12111_53 Bool)) (|PolymorphicMapType_12600_12111_12125#PolymorphicMapType_12600| (Array T@Ref T@Field_12124_12125 Bool)) (|PolymorphicMapType_12600_12111_1231#PolymorphicMapType_12600| (Array T@Ref T@Field_15567_1231 Bool)) (|PolymorphicMapType_12600_12111_39525#PolymorphicMapType_12600| (Array T@Ref T@Field_5822_39525 Bool)) (|PolymorphicMapType_12600_12111_40836#PolymorphicMapType_12600| (Array T@Ref T@Field_5822_39658 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12051 0)) (((PolymorphicMapType_12051 (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| (Array T@Ref T@Field_12111_53 Bool)) (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| (Array T@Ref T@Field_12124_12125 T@Ref)) (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| (Array T@Ref T@Field_15567_1231 Int)) (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| (Array T@Ref T@Field_5822_39658 T@PolymorphicMapType_12600)) (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| (Array T@Ref T@Field_5822_39525 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_12111_53)
(declare-fun b_94 () T@Field_12111_53)
(declare-fun c_10 () T@Field_12124_12125)
(declare-fun d_3 () T@Field_12124_12125)
(declare-fun f_7 () T@Field_15567_1231)
(declare-fun succHeap (T@PolymorphicMapType_12051 T@PolymorphicMapType_12051) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12051 T@PolymorphicMapType_12051) Bool)
(declare-fun state (T@PolymorphicMapType_12051 T@PolymorphicMapType_12072) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12072) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12600)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12051 T@PolymorphicMapType_12051 T@PolymorphicMapType_12072) Bool)
(declare-fun IsPredicateField_5822_39616 (T@Field_5822_39525) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5822 (T@Field_5822_39525) T@Field_5822_39658)
(declare-fun HasDirectPerm_5822_39589 (T@PolymorphicMapType_12072 T@Ref T@Field_5822_39525) Bool)
(declare-fun IsWandField_5822_41363 (T@Field_5822_39525) Bool)
(declare-fun WandMaskField_5822 (T@Field_5822_39525) T@Field_5822_39658)
(declare-fun dummyHeap () T@PolymorphicMapType_12051)
(declare-fun ZeroMask () T@PolymorphicMapType_12072)
(declare-fun InsidePredicate_12111_12111 (T@Field_5822_39525 T@FrameType T@Field_5822_39525 T@FrameType) Bool)
(declare-fun IsPredicateField_5820_1186 (T@Field_12111_53) Bool)
(declare-fun IsWandField_5820_1186 (T@Field_12111_53) Bool)
(declare-fun IsPredicateField_5822_5823 (T@Field_12124_12125) Bool)
(declare-fun IsWandField_5822_5823 (T@Field_12124_12125) Bool)
(declare-fun IsPredicateField_5828_1231 (T@Field_15567_1231) Bool)
(declare-fun IsWandField_5828_1231 (T@Field_15567_1231) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5822_44854 (T@Field_5822_39658) Bool)
(declare-fun IsWandField_5822_44870 (T@Field_5822_39658) Bool)
(declare-fun FullPerm () Real)
(declare-fun HasDirectPerm_5822_45308 (T@PolymorphicMapType_12072 T@Ref T@Field_5822_39658) Bool)
(declare-fun HasDirectPerm_5828_1231 (T@PolymorphicMapType_12072 T@Ref T@Field_15567_1231) Bool)
(declare-fun HasDirectPerm_5820_1186 (T@PolymorphicMapType_12072 T@Ref T@Field_12111_53) Bool)
(declare-fun HasDirectPerm_5822_5823 (T@PolymorphicMapType_12072 T@Ref T@Field_12124_12125) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12072 T@PolymorphicMapType_12072 T@PolymorphicMapType_12072) Bool)
(assert (and (distinct $allocated b_94)(distinct c_10 d_3))
)
(assert (forall ((Heap0 T@PolymorphicMapType_12051) (Heap1 T@PolymorphicMapType_12051) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12051) (Mask T@PolymorphicMapType_12072) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12051) (Heap1@@0 T@PolymorphicMapType_12051) (Heap2 T@PolymorphicMapType_12051) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5822_39658) ) (!  (not (select (|PolymorphicMapType_12600_12111_40836#PolymorphicMapType_12600| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12600_12111_40836#PolymorphicMapType_12600| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5822_39525) ) (!  (not (select (|PolymorphicMapType_12600_12111_39525#PolymorphicMapType_12600| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12600_12111_39525#PolymorphicMapType_12600| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_15567_1231) ) (!  (not (select (|PolymorphicMapType_12600_12111_1231#PolymorphicMapType_12600| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12600_12111_1231#PolymorphicMapType_12600| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12124_12125) ) (!  (not (select (|PolymorphicMapType_12600_12111_12125#PolymorphicMapType_12600| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12600_12111_12125#PolymorphicMapType_12600| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12111_53) ) (!  (not (select (|PolymorphicMapType_12600_12111_53#PolymorphicMapType_12600| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12600_12111_53#PolymorphicMapType_12600| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12051) (ExhaleHeap T@PolymorphicMapType_12051) (Mask@@0 T@PolymorphicMapType_12072) (pm_f T@Field_5822_39525) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5822_39589 Mask@@0 null pm_f) (IsPredicateField_5822_39616 pm_f)) (= (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@0) null (PredicateMaskField_5822 pm_f)) (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap) null (PredicateMaskField_5822 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5822_39616 pm_f) (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap) null (PredicateMaskField_5822 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12051) (ExhaleHeap@@0 T@PolymorphicMapType_12051) (Mask@@1 T@PolymorphicMapType_12072) (pm_f@@0 T@Field_5822_39525) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5822_39589 Mask@@1 null pm_f@@0) (IsWandField_5822_41363 pm_f@@0)) (= (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@1) null (WandMaskField_5822 pm_f@@0)) (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap@@0) null (WandMaskField_5822 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5822_41363 pm_f@@0) (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap@@0) null (WandMaskField_5822 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12051) (ExhaleHeap@@1 T@PolymorphicMapType_12051) (Mask@@2 T@PolymorphicMapType_12072) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@2) o_1 $allocated) (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_5822_39525) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12111_12111 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12111_12111 p v_1 p w))
)))
(assert  (not (IsPredicateField_5820_1186 b_94)))
(assert  (not (IsWandField_5820_1186 b_94)))
(assert  (not (IsPredicateField_5822_5823 c_10)))
(assert  (not (IsWandField_5822_5823 c_10)))
(assert  (not (IsPredicateField_5822_5823 d_3)))
(assert  (not (IsWandField_5822_5823 d_3)))
(assert  (not (IsPredicateField_5828_1231 f_7)))
(assert  (not (IsWandField_5828_1231 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12051) (ExhaleHeap@@2 T@PolymorphicMapType_12051) (Mask@@3 T@PolymorphicMapType_12072) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_12072) (o_2@@4 T@Ref) (f_4@@4 T@Field_5822_39658) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_5822_44854 f_4@@4))) (not (IsWandField_5822_44870 f_4@@4))) (<= (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_12072) (o_2@@5 T@Ref) (f_4@@5 T@Field_5822_39525) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_5822_39616 f_4@@5))) (not (IsWandField_5822_41363 f_4@@5))) (<= (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_12072) (o_2@@6 T@Ref) (f_4@@6 T@Field_15567_1231) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5828_1231 f_4@@6))) (not (IsWandField_5828_1231 f_4@@6))) (<= (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_12072) (o_2@@7 T@Ref) (f_4@@7 T@Field_12111_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5820_1186 f_4@@7))) (not (IsWandField_5820_1186 f_4@@7))) (<= (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_12072) (o_2@@8 T@Ref) (f_4@@8 T@Field_12124_12125) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5822_5823 f_4@@8))) (not (IsWandField_5822_5823 f_4@@8))) (<= (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_12072) (o_2@@9 T@Ref) (f_4@@9 T@Field_5822_39658) ) (! (= (HasDirectPerm_5822_45308 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5822_45308 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12072) (o_2@@10 T@Ref) (f_4@@10 T@Field_5822_39525) ) (! (= (HasDirectPerm_5822_39589 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5822_39589 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12072) (o_2@@11 T@Ref) (f_4@@11 T@Field_15567_1231) ) (! (= (HasDirectPerm_5828_1231 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5828_1231 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12072) (o_2@@12 T@Ref) (f_4@@12 T@Field_12111_53) ) (! (= (HasDirectPerm_5820_1186 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5820_1186 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12072) (o_2@@13 T@Ref) (f_4@@13 T@Field_12124_12125) ) (! (= (HasDirectPerm_5822_5823 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5822_5823 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12051) (ExhaleHeap@@3 T@PolymorphicMapType_12051) (Mask@@14 T@PolymorphicMapType_12072) (pm_f@@1 T@Field_5822_39525) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_5822_39589 Mask@@14 null pm_f@@1) (IsPredicateField_5822_39616 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_12111_53) ) (!  (=> (select (|PolymorphicMapType_12600_12111_53#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@4) null (PredicateMaskField_5822 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@4) o2 f_2) (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_12124_12125) ) (!  (=> (select (|PolymorphicMapType_12600_12111_12125#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@4) null (PredicateMaskField_5822 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_15567_1231) ) (!  (=> (select (|PolymorphicMapType_12600_12111_1231#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@4) null (PredicateMaskField_5822 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_5822_39525) ) (!  (=> (select (|PolymorphicMapType_12600_12111_39525#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@4) null (PredicateMaskField_5822 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_5822_39658) ) (!  (=> (select (|PolymorphicMapType_12600_12111_40836#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@4) null (PredicateMaskField_5822 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@4) o2@@3 f_2@@3) (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_5822_39616 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12051) (ExhaleHeap@@4 T@PolymorphicMapType_12051) (Mask@@15 T@PolymorphicMapType_12072) (pm_f@@2 T@Field_5822_39525) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_5822_39589 Mask@@15 null pm_f@@2) (IsWandField_5822_41363 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_12111_53) ) (!  (=> (select (|PolymorphicMapType_12600_12111_53#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@5) null (WandMaskField_5822 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_12124_12125) ) (!  (=> (select (|PolymorphicMapType_12600_12111_12125#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@5) null (WandMaskField_5822 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_15567_1231) ) (!  (=> (select (|PolymorphicMapType_12600_12111_1231#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@5) null (WandMaskField_5822 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_5822_39525) ) (!  (=> (select (|PolymorphicMapType_12600_12111_39525#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@5) null (WandMaskField_5822 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@5) o2@@7 f_2@@7) (select (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_5822_39658) ) (!  (=> (select (|PolymorphicMapType_12600_12111_40836#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@5) null (WandMaskField_5822 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@5) o2@@8 f_2@@8) (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_5822_41363 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12051) (ExhaleHeap@@5 T@PolymorphicMapType_12051) (Mask@@16 T@PolymorphicMapType_12072) (o_1@@0 T@Ref) (f_2@@9 T@Field_5822_39658) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_5822_45308 Mask@@16 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@6) o_1@@0 f_2@@9) (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12051) (ExhaleHeap@@6 T@PolymorphicMapType_12051) (Mask@@17 T@PolymorphicMapType_12072) (o_1@@1 T@Ref) (f_2@@10 T@Field_5822_39525) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_5822_39589 Mask@@17 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@7) o_1@@1 f_2@@10) (select (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12051) (ExhaleHeap@@7 T@PolymorphicMapType_12051) (Mask@@18 T@PolymorphicMapType_12072) (o_1@@2 T@Ref) (f_2@@11 T@Field_15567_1231) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_5828_1231 Mask@@18 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@8) o_1@@2 f_2@@11) (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12051) (ExhaleHeap@@8 T@PolymorphicMapType_12051) (Mask@@19 T@PolymorphicMapType_12072) (o_1@@3 T@Ref) (f_2@@12 T@Field_12111_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_5820_1186 Mask@@19 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@9) o_1@@3 f_2@@12) (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12051) (ExhaleHeap@@9 T@PolymorphicMapType_12051) (Mask@@20 T@PolymorphicMapType_12072) (o_1@@4 T@Ref) (f_2@@13 T@Field_12124_12125) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_5822_5823 Mask@@20 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@10) o_1@@4 f_2@@13) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5822_39658) ) (! (= (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5822_39525) ) (! (= (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_15567_1231) ) (! (= (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12111_53) ) (! (= (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_12124_12125) ) (! (= (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12072) (SummandMask1 T@PolymorphicMapType_12072) (SummandMask2 T@PolymorphicMapType_12072) (o_2@@19 T@Ref) (f_4@@19 T@Field_5822_39658) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12072) (SummandMask1@@0 T@PolymorphicMapType_12072) (SummandMask2@@0 T@PolymorphicMapType_12072) (o_2@@20 T@Ref) (f_4@@20 T@Field_5822_39525) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12072) (SummandMask1@@1 T@PolymorphicMapType_12072) (SummandMask2@@1 T@PolymorphicMapType_12072) (o_2@@21 T@Ref) (f_4@@21 T@Field_15567_1231) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12072) (SummandMask1@@2 T@PolymorphicMapType_12072) (SummandMask2@@2 T@PolymorphicMapType_12072) (o_2@@22 T@Ref) (f_4@@22 T@Field_12111_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12072) (SummandMask1@@3 T@PolymorphicMapType_12072) (SummandMask2@@3 T@PolymorphicMapType_12072) (o_2@@23 T@Ref) (f_4@@23 T@Field_12124_12125) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12051) (o T@Ref) (f_3 T@Field_5822_39525) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_12051 (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@11) (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@11) (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@11) (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@11) (store (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@11) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12051 (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@11) (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@11) (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@11) (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@11) (store (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@11) o f_3 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12051) (o@@0 T@Ref) (f_3@@0 T@Field_5822_39658) (v@@0 T@PolymorphicMapType_12600) ) (! (succHeap Heap@@12 (PolymorphicMapType_12051 (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@12) (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@12) (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@12) (store (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12051 (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@12) (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@12) (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@12) (store (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12051) (o@@1 T@Ref) (f_3@@1 T@Field_15567_1231) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_12051 (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@13) (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@13) (store (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@13) (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12051 (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@13) (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@13) (store (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@13) (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12051) (o@@2 T@Ref) (f_3@@2 T@Field_12124_12125) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_12051 (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@14) (store (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@14) (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@14) (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12051 (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@14) (store (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@14) (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@14) (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12051) (o@@3 T@Ref) (f_3@@3 T@Field_12111_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_12051 (store (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@15) (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@15) (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@15) (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12051 (store (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@15) (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@15) (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@15) (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@15)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_12124_12125) (Heap@@16 T@PolymorphicMapType_12051) ) (!  (=> (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@16) o@@4 $allocated) (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@16) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@16) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@16) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_5822_39525) (v_1@@0 T@FrameType) (q T@Field_5822_39525) (w@@0 T@FrameType) (r T@Field_5822_39525) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12111_12111 p@@1 v_1@@0 q w@@0) (InsidePredicate_12111_12111 q w@@0 r u)) (InsidePredicate_12111_12111 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12111_12111 p@@1 v_1@@0 q w@@0) (InsidePredicate_12111_12111 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_12051)
(declare-fun x () T@Ref)
(declare-fun PostMask@4 () T@PolymorphicMapType_12072)
(declare-fun k () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_12072)
(declare-fun PostMask@1 () T@PolymorphicMapType_12072)
(declare-fun PostMask@2 () T@PolymorphicMapType_12072)
(declare-fun PostMask@3 () T@PolymorphicMapType_12072)
(declare-fun Heap@@17 () T@PolymorphicMapType_12051)
(declare-fun Mask@9 () T@PolymorphicMapType_12072)
(declare-fun Mask@8 () T@PolymorphicMapType_12072)
(declare-fun Mask@7 () T@PolymorphicMapType_12072)
(declare-fun Mask@6 () T@PolymorphicMapType_12072)
(declare-fun Mask@5 () T@PolymorphicMapType_12072)
(declare-fun Mask@4 () T@PolymorphicMapType_12072)
(declare-fun Mask@0 () T@PolymorphicMapType_12072)
(declare-fun Mask@1 () T@PolymorphicMapType_12072)
(declare-fun Mask@2 () T@PolymorphicMapType_12072)
(declare-fun Mask@3 () T@PolymorphicMapType_12072)
(set-info :boogie-vc-id succeeds2)
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
 (=> (= (ControlFlow 0 0) 61) (let ((anon3_correct true))
(let ((anon18_Else_correct  (=> (and (not (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| PostHeap@0) x b_94)) (= (ControlFlow 0 38) 32)) anon3_correct)))
(let ((anon18_Then_correct  (=> (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| PostHeap@0) x b_94) (and (=> (= (ControlFlow 0 33) (- 0 37)) (HasDirectPerm_5822_5823 PostMask@4 x c_10)) (=> (HasDirectPerm_5822_5823 PostMask@4 x c_10) (and (=> (= (ControlFlow 0 33) (- 0 36)) (HasDirectPerm_5828_1231 PostMask@4 (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| PostHeap@0) x c_10) f_7)) (=> (HasDirectPerm_5828_1231 PostMask@4 (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| PostHeap@0) x c_10) f_7) (and (=> (= (ControlFlow 0 33) (- 0 35)) (HasDirectPerm_5822_5823 PostMask@4 x d_3)) (=> (HasDirectPerm_5822_5823 PostMask@4 x d_3) (and (=> (= (ControlFlow 0 33) (- 0 34)) (HasDirectPerm_5828_1231 PostMask@4 (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| PostHeap@0) x d_3) f_7)) (=> (HasDirectPerm_5828_1231 PostMask@4 (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| PostHeap@0) x d_3) f_7) (=> (and (= (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| PostHeap@0) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| PostHeap@0) x c_10) f_7) (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| PostHeap@0) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| PostHeap@0) x d_3) f_7)) (= (ControlFlow 0 33) 32)) anon3_correct))))))))))))
(let ((anon17_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 39) (- 0 48)) (>= k NoPerm)) (=> (>= k NoPerm) (=> (=> (> k NoPerm) (not (= x null))) (=> (and (= PostMask@0 (PolymorphicMapType_12072 (store (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| ZeroMask) x c_10 (+ (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| ZeroMask) x c_10) k)) (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| ZeroMask) (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| ZeroMask) (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| ZeroMask) (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| ZeroMask))) (state PostHeap@0 PostMask@0)) (and (=> (= (ControlFlow 0 39) (- 0 47)) (>= k NoPerm)) (=> (>= k NoPerm) (=> (=> (> k NoPerm) (not (= x null))) (=> (and (= PostMask@1 (PolymorphicMapType_12072 (store (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| PostMask@0) x d_3 (+ (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| PostMask@0) x d_3) k)) (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| PostMask@0) (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| PostMask@0) (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| PostMask@0) (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| PostMask@0))) (state PostHeap@0 PostMask@1)) (and (=> (= (ControlFlow 0 39) (- 0 46)) (>= k NoPerm)) (=> (>= k NoPerm) (=> (and (and (=> (> k NoPerm) (not (= x null))) (= PostMask@2 (PolymorphicMapType_12072 (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| PostMask@1) (store (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| PostMask@1) x b_94 (+ (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| PostMask@1) x b_94) k)) (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| PostMask@1) (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| PostMask@1) (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| PostMask@1)))) (and (state PostHeap@0 PostMask@2) (state PostHeap@0 PostMask@2))) (and (=> (= (ControlFlow 0 39) (- 0 45)) (HasDirectPerm_5822_5823 PostMask@2 x c_10)) (=> (HasDirectPerm_5822_5823 PostMask@2 x c_10) (=> (not (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| PostHeap@0) x c_10) null)) (and (=> (= (ControlFlow 0 39) (- 0 44)) (HasDirectPerm_5822_5823 PostMask@2 x d_3)) (=> (HasDirectPerm_5822_5823 PostMask@2 x d_3) (=> (and (not (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| PostHeap@0) x d_3) null)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 39) (- 0 43)) (HasDirectPerm_5822_5823 PostMask@2 x c_10)) (=> (HasDirectPerm_5822_5823 PostMask@2 x c_10) (and (=> (= (ControlFlow 0 39) (- 0 42)) (>= k NoPerm)) (=> (>= k NoPerm) (=> (=> (> k NoPerm) (not (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| PostHeap@0) x c_10) null))) (=> (and (= PostMask@3 (PolymorphicMapType_12072 (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| PostMask@2) (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| PostMask@2) (store (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| PostMask@2) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| PostHeap@0) x c_10) f_7 (+ (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| PostMask@2) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| PostHeap@0) x c_10) f_7) k)) (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| PostMask@2) (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| PostMask@2))) (state PostHeap@0 PostMask@3)) (and (=> (= (ControlFlow 0 39) (- 0 41)) (HasDirectPerm_5822_5823 PostMask@3 x d_3)) (=> (HasDirectPerm_5822_5823 PostMask@3 x d_3) (=> (and (and (not (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| PostHeap@0) x d_3) null)) (= PostMask@4 (PolymorphicMapType_12072 (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| PostMask@3) (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| PostMask@3) (store (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| PostMask@3) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| PostHeap@0) x d_3) f_7 (+ (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| PostMask@3) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| PostHeap@0) x d_3) f_7) FullPerm)) (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| PostMask@3) (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| PostMask@3)))) (and (state PostHeap@0 PostMask@4) (state PostHeap@0 PostMask@4))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (HasDirectPerm_5820_1186 PostMask@4 x b_94)) (=> (HasDirectPerm_5820_1186 PostMask@4 x b_94) (and (=> (= (ControlFlow 0 39) 33) anon18_Then_correct) (=> (= (ControlFlow 0 39) 38) anon18_Else_correct)))))))))))))))))))))))))))))))))
(let ((anon16_correct true))
(let ((anon24_Else_correct  (=> (and (not (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@17) x b_94)) (= (ControlFlow 0 4) 1)) anon16_correct)))
(let ((anon24_Then_correct  (=> (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@17) x b_94) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@17) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x c_10) f_7) (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@17) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x d_3) f_7))) (=> (= (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@17) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x c_10) f_7) (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@17) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x d_3) f_7)) (=> (= (ControlFlow 0 2) 1) anon16_correct))))))
(let ((anon14_correct  (=> (= Mask@9 (PolymorphicMapType_12072 (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@8) (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@8) (store (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@8) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x d_3) f_7 (- (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@8) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x d_3) f_7) FullPerm)) (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| Mask@8) (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| Mask@8))) (and (=> (= (ControlFlow 0 5) 2) anon24_Then_correct) (=> (= (ControlFlow 0 5) 4) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 8) 5)) anon14_correct)))
(let ((anon23_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (<= FullPerm (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@8) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x d_3) f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@8) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x d_3) f_7)) (=> (= (ControlFlow 0 6) 5) anon14_correct))))))
(let ((anon12_correct  (=> (= Mask@8 (PolymorphicMapType_12072 (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@7) (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@7) (store (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@7) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x c_10) f_7 (- (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@7) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x c_10) f_7) k)) (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| Mask@7) (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| Mask@7))) (and (=> (= (ControlFlow 0 9) 6) anon23_Then_correct) (=> (= (ControlFlow 0 9) 8) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (= k NoPerm) (= (ControlFlow 0 12) 9)) anon12_correct)))
(let ((anon22_Then_correct  (=> (not (= k NoPerm)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (<= k (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@7) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x c_10) f_7))) (=> (<= k (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@7) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x c_10) f_7)) (=> (= (ControlFlow 0 10) 9) anon12_correct))))))
(let ((anon10_correct  (=> (= Mask@7 (PolymorphicMapType_12072 (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@6) (store (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@6) x b_94 (- (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@6) x b_94) k)) (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@6) (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| Mask@6) (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| Mask@6))) (and (=> (= (ControlFlow 0 13) (- 0 16)) (not (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x c_10) null))) (=> (not (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x c_10) null)) (and (=> (= (ControlFlow 0 13) (- 0 15)) (not (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x d_3) null))) (=> (not (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x d_3) null)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (>= k NoPerm)) (=> (>= k NoPerm) (and (=> (= (ControlFlow 0 13) 10) anon22_Then_correct) (=> (= (ControlFlow 0 13) 12) anon22_Else_correct)))))))))))
(let ((anon21_Else_correct  (=> (and (= k NoPerm) (= (ControlFlow 0 19) 13)) anon10_correct)))
(let ((anon21_Then_correct  (=> (not (= k NoPerm)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (<= k (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@6) x b_94))) (=> (<= k (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@6) x b_94)) (=> (= (ControlFlow 0 17) 13) anon10_correct))))))
(let ((anon8_correct  (=> (= Mask@6 (PolymorphicMapType_12072 (store (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@5) x d_3 (- (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@5) x d_3) k)) (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@5) (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@5) (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| Mask@5) (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| Mask@5))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (>= k NoPerm)) (=> (>= k NoPerm) (and (=> (= (ControlFlow 0 20) 17) anon21_Then_correct) (=> (= (ControlFlow 0 20) 19) anon21_Else_correct)))))))
(let ((anon20_Else_correct  (=> (and (= k NoPerm) (= (ControlFlow 0 24) 20)) anon8_correct)))
(let ((anon20_Then_correct  (=> (not (= k NoPerm)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (<= k (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@5) x d_3))) (=> (<= k (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@5) x d_3)) (=> (= (ControlFlow 0 22) 20) anon8_correct))))))
(let ((anon6_correct  (=> (= Mask@5 (PolymorphicMapType_12072 (store (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@4) x c_10 (- (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@4) x c_10) k)) (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@4) (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@4) (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| Mask@4) (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| Mask@4))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (>= k NoPerm)) (=> (>= k NoPerm) (and (=> (= (ControlFlow 0 25) 22) anon20_Then_correct) (=> (= (ControlFlow 0 25) 24) anon20_Else_correct)))))))
(let ((anon19_Else_correct  (=> (and (= k NoPerm) (= (ControlFlow 0 29) 25)) anon6_correct)))
(let ((anon19_Then_correct  (=> (not (= k NoPerm)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (<= k (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@4) x c_10))) (=> (<= k (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@4) x c_10)) (=> (= (ControlFlow 0 27) 25) anon6_correct))))))
(let ((anon17_Else_correct  (and (=> (= (ControlFlow 0 30) (- 0 31)) (>= k NoPerm)) (=> (>= k NoPerm) (and (=> (= (ControlFlow 0 30) 27) anon19_Then_correct) (=> (= (ControlFlow 0 30) 29) anon19_Else_correct))))))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@17) x $allocated)) (and (< NoPerm k) (state Heap@@17 ZeroMask))) (and (=> (= (ControlFlow 0 49) (- 0 60)) (>= k NoPerm)) (=> (>= k NoPerm) (=> (=> (> k NoPerm) (not (= x null))) (=> (and (= Mask@0 (PolymorphicMapType_12072 (store (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| ZeroMask) x c_10 (+ (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| ZeroMask) x c_10) k)) (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| ZeroMask) (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| ZeroMask) (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| ZeroMask) (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| ZeroMask))) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 49) (- 0 59)) (>= k NoPerm)) (=> (>= k NoPerm) (=> (=> (> k NoPerm) (not (= x null))) (=> (and (= Mask@1 (PolymorphicMapType_12072 (store (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@0) x d_3 (+ (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@0) x d_3) k)) (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@0) (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@0) (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| Mask@0) (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| Mask@0))) (state Heap@@17 Mask@1)) (and (=> (= (ControlFlow 0 49) (- 0 58)) (>= k NoPerm)) (=> (>= k NoPerm) (=> (and (and (=> (> k NoPerm) (not (= x null))) (= Mask@2 (PolymorphicMapType_12072 (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@1) (store (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@1) x b_94 (+ (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@1) x b_94) k)) (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@1) (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| Mask@1) (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| Mask@1)))) (and (state Heap@@17 Mask@2) (state Heap@@17 Mask@2))) (and (=> (= (ControlFlow 0 49) (- 0 57)) (HasDirectPerm_5822_5823 Mask@2 x c_10)) (=> (HasDirectPerm_5822_5823 Mask@2 x c_10) (=> (not (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x c_10) null)) (and (=> (= (ControlFlow 0 49) (- 0 56)) (HasDirectPerm_5822_5823 Mask@2 x d_3)) (=> (HasDirectPerm_5822_5823 Mask@2 x d_3) (=> (and (not (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x d_3) null)) (state Heap@@17 Mask@2)) (and (=> (= (ControlFlow 0 49) (- 0 55)) (HasDirectPerm_5820_1186 Mask@2 x b_94)) (=> (HasDirectPerm_5820_1186 Mask@2 x b_94) (and (=> (= (ControlFlow 0 49) (- 0 54)) (HasDirectPerm_5822_5823 Mask@2 x c_10)) (=> (HasDirectPerm_5822_5823 Mask@2 x c_10) (and (=> (= (ControlFlow 0 49) (- 0 53)) (HasDirectPerm_5822_5823 Mask@2 x d_3)) (=> (HasDirectPerm_5822_5823 Mask@2 x d_3) (=> (and (= (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@17) x b_94) (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x c_10) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x d_3))) (state Heap@@17 Mask@2)) (and (=> (= (ControlFlow 0 49) (- 0 52)) (HasDirectPerm_5822_5823 Mask@2 x c_10)) (=> (HasDirectPerm_5822_5823 Mask@2 x c_10) (and (=> (= (ControlFlow 0 49) (- 0 51)) (>= k NoPerm)) (=> (>= k NoPerm) (=> (=> (> k NoPerm) (not (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x c_10) null))) (=> (and (= Mask@3 (PolymorphicMapType_12072 (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@2) (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@2) (store (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@2) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x c_10) f_7 (+ (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@2) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x c_10) f_7) k)) (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| Mask@2) (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| Mask@2))) (state Heap@@17 Mask@3)) (and (=> (= (ControlFlow 0 49) (- 0 50)) (HasDirectPerm_5822_5823 Mask@3 x d_3)) (=> (HasDirectPerm_5822_5823 Mask@3 x d_3) (=> (and (and (not (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x d_3) null)) (= Mask@4 (PolymorphicMapType_12072 (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@3) (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@3) (store (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@3) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x d_3) f_7 (+ (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@3) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@17) x d_3) f_7) FullPerm)) (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| Mask@3) (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| Mask@3)))) (and (state Heap@@17 Mask@4) (state Heap@@17 Mask@4))) (and (=> (= (ControlFlow 0 49) 39) anon17_Then_correct) (=> (= (ControlFlow 0 49) 30) anon17_Else_correct)))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 61) 49) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))
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
(declare-sort T@Field_12111_53 0)
(declare-sort T@Field_12124_12125 0)
(declare-sort T@Field_15567_1231 0)
(declare-sort T@Field_5822_39658 0)
(declare-sort T@Field_5822_39525 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12072 0)) (((PolymorphicMapType_12072 (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| (Array T@Ref T@Field_12124_12125 Real)) (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| (Array T@Ref T@Field_12111_53 Real)) (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| (Array T@Ref T@Field_15567_1231 Real)) (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| (Array T@Ref T@Field_5822_39525 Real)) (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| (Array T@Ref T@Field_5822_39658 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12600 0)) (((PolymorphicMapType_12600 (|PolymorphicMapType_12600_12111_53#PolymorphicMapType_12600| (Array T@Ref T@Field_12111_53 Bool)) (|PolymorphicMapType_12600_12111_12125#PolymorphicMapType_12600| (Array T@Ref T@Field_12124_12125 Bool)) (|PolymorphicMapType_12600_12111_1231#PolymorphicMapType_12600| (Array T@Ref T@Field_15567_1231 Bool)) (|PolymorphicMapType_12600_12111_39525#PolymorphicMapType_12600| (Array T@Ref T@Field_5822_39525 Bool)) (|PolymorphicMapType_12600_12111_40836#PolymorphicMapType_12600| (Array T@Ref T@Field_5822_39658 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12051 0)) (((PolymorphicMapType_12051 (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| (Array T@Ref T@Field_12111_53 Bool)) (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| (Array T@Ref T@Field_12124_12125 T@Ref)) (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| (Array T@Ref T@Field_15567_1231 Int)) (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| (Array T@Ref T@Field_5822_39658 T@PolymorphicMapType_12600)) (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| (Array T@Ref T@Field_5822_39525 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_12111_53)
(declare-fun b_94 () T@Field_12111_53)
(declare-fun c_10 () T@Field_12124_12125)
(declare-fun d_3 () T@Field_12124_12125)
(declare-fun f_7 () T@Field_15567_1231)
(declare-fun succHeap (T@PolymorphicMapType_12051 T@PolymorphicMapType_12051) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12051 T@PolymorphicMapType_12051) Bool)
(declare-fun state (T@PolymorphicMapType_12051 T@PolymorphicMapType_12072) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12072) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12600)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12051 T@PolymorphicMapType_12051 T@PolymorphicMapType_12072) Bool)
(declare-fun IsPredicateField_5822_39616 (T@Field_5822_39525) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5822 (T@Field_5822_39525) T@Field_5822_39658)
(declare-fun HasDirectPerm_5822_39589 (T@PolymorphicMapType_12072 T@Ref T@Field_5822_39525) Bool)
(declare-fun IsWandField_5822_41363 (T@Field_5822_39525) Bool)
(declare-fun WandMaskField_5822 (T@Field_5822_39525) T@Field_5822_39658)
(declare-fun dummyHeap () T@PolymorphicMapType_12051)
(declare-fun ZeroMask () T@PolymorphicMapType_12072)
(declare-fun InsidePredicate_12111_12111 (T@Field_5822_39525 T@FrameType T@Field_5822_39525 T@FrameType) Bool)
(declare-fun IsPredicateField_5820_1186 (T@Field_12111_53) Bool)
(declare-fun IsWandField_5820_1186 (T@Field_12111_53) Bool)
(declare-fun IsPredicateField_5822_5823 (T@Field_12124_12125) Bool)
(declare-fun IsWandField_5822_5823 (T@Field_12124_12125) Bool)
(declare-fun IsPredicateField_5828_1231 (T@Field_15567_1231) Bool)
(declare-fun IsWandField_5828_1231 (T@Field_15567_1231) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5822_44854 (T@Field_5822_39658) Bool)
(declare-fun IsWandField_5822_44870 (T@Field_5822_39658) Bool)
(declare-fun FullPerm () Real)
(declare-fun HasDirectPerm_5822_45308 (T@PolymorphicMapType_12072 T@Ref T@Field_5822_39658) Bool)
(declare-fun HasDirectPerm_5828_1231 (T@PolymorphicMapType_12072 T@Ref T@Field_15567_1231) Bool)
(declare-fun HasDirectPerm_5820_1186 (T@PolymorphicMapType_12072 T@Ref T@Field_12111_53) Bool)
(declare-fun HasDirectPerm_5822_5823 (T@PolymorphicMapType_12072 T@Ref T@Field_12124_12125) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12072 T@PolymorphicMapType_12072 T@PolymorphicMapType_12072) Bool)
(assert (and (distinct $allocated b_94)(distinct c_10 d_3))
)
(assert (forall ((Heap0 T@PolymorphicMapType_12051) (Heap1 T@PolymorphicMapType_12051) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12051) (Mask T@PolymorphicMapType_12072) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12051) (Heap1@@0 T@PolymorphicMapType_12051) (Heap2 T@PolymorphicMapType_12051) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5822_39658) ) (!  (not (select (|PolymorphicMapType_12600_12111_40836#PolymorphicMapType_12600| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12600_12111_40836#PolymorphicMapType_12600| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5822_39525) ) (!  (not (select (|PolymorphicMapType_12600_12111_39525#PolymorphicMapType_12600| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12600_12111_39525#PolymorphicMapType_12600| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_15567_1231) ) (!  (not (select (|PolymorphicMapType_12600_12111_1231#PolymorphicMapType_12600| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12600_12111_1231#PolymorphicMapType_12600| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12124_12125) ) (!  (not (select (|PolymorphicMapType_12600_12111_12125#PolymorphicMapType_12600| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12600_12111_12125#PolymorphicMapType_12600| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12111_53) ) (!  (not (select (|PolymorphicMapType_12600_12111_53#PolymorphicMapType_12600| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12600_12111_53#PolymorphicMapType_12600| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12051) (ExhaleHeap T@PolymorphicMapType_12051) (Mask@@0 T@PolymorphicMapType_12072) (pm_f T@Field_5822_39525) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5822_39589 Mask@@0 null pm_f) (IsPredicateField_5822_39616 pm_f)) (= (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@0) null (PredicateMaskField_5822 pm_f)) (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap) null (PredicateMaskField_5822 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5822_39616 pm_f) (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap) null (PredicateMaskField_5822 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12051) (ExhaleHeap@@0 T@PolymorphicMapType_12051) (Mask@@1 T@PolymorphicMapType_12072) (pm_f@@0 T@Field_5822_39525) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5822_39589 Mask@@1 null pm_f@@0) (IsWandField_5822_41363 pm_f@@0)) (= (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@1) null (WandMaskField_5822 pm_f@@0)) (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap@@0) null (WandMaskField_5822 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5822_41363 pm_f@@0) (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap@@0) null (WandMaskField_5822 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12051) (ExhaleHeap@@1 T@PolymorphicMapType_12051) (Mask@@2 T@PolymorphicMapType_12072) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@2) o_1 $allocated) (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_5822_39525) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12111_12111 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12111_12111 p v_1 p w))
)))
(assert  (not (IsPredicateField_5820_1186 b_94)))
(assert  (not (IsWandField_5820_1186 b_94)))
(assert  (not (IsPredicateField_5822_5823 c_10)))
(assert  (not (IsWandField_5822_5823 c_10)))
(assert  (not (IsPredicateField_5822_5823 d_3)))
(assert  (not (IsWandField_5822_5823 d_3)))
(assert  (not (IsPredicateField_5828_1231 f_7)))
(assert  (not (IsWandField_5828_1231 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12051) (ExhaleHeap@@2 T@PolymorphicMapType_12051) (Mask@@3 T@PolymorphicMapType_12072) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_12072) (o_2@@4 T@Ref) (f_4@@4 T@Field_5822_39658) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_5822_44854 f_4@@4))) (not (IsWandField_5822_44870 f_4@@4))) (<= (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_12072) (o_2@@5 T@Ref) (f_4@@5 T@Field_5822_39525) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_5822_39616 f_4@@5))) (not (IsWandField_5822_41363 f_4@@5))) (<= (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_12072) (o_2@@6 T@Ref) (f_4@@6 T@Field_15567_1231) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5828_1231 f_4@@6))) (not (IsWandField_5828_1231 f_4@@6))) (<= (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_12072) (o_2@@7 T@Ref) (f_4@@7 T@Field_12111_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5820_1186 f_4@@7))) (not (IsWandField_5820_1186 f_4@@7))) (<= (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_12072) (o_2@@8 T@Ref) (f_4@@8 T@Field_12124_12125) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5822_5823 f_4@@8))) (not (IsWandField_5822_5823 f_4@@8))) (<= (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_12072) (o_2@@9 T@Ref) (f_4@@9 T@Field_5822_39658) ) (! (= (HasDirectPerm_5822_45308 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5822_45308 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12072) (o_2@@10 T@Ref) (f_4@@10 T@Field_5822_39525) ) (! (= (HasDirectPerm_5822_39589 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5822_39589 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12072) (o_2@@11 T@Ref) (f_4@@11 T@Field_15567_1231) ) (! (= (HasDirectPerm_5828_1231 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5828_1231 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12072) (o_2@@12 T@Ref) (f_4@@12 T@Field_12111_53) ) (! (= (HasDirectPerm_5820_1186 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5820_1186 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12072) (o_2@@13 T@Ref) (f_4@@13 T@Field_12124_12125) ) (! (= (HasDirectPerm_5822_5823 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5822_5823 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12051) (ExhaleHeap@@3 T@PolymorphicMapType_12051) (Mask@@14 T@PolymorphicMapType_12072) (pm_f@@1 T@Field_5822_39525) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_5822_39589 Mask@@14 null pm_f@@1) (IsPredicateField_5822_39616 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_12111_53) ) (!  (=> (select (|PolymorphicMapType_12600_12111_53#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@4) null (PredicateMaskField_5822 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@4) o2 f_2) (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_12124_12125) ) (!  (=> (select (|PolymorphicMapType_12600_12111_12125#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@4) null (PredicateMaskField_5822 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_15567_1231) ) (!  (=> (select (|PolymorphicMapType_12600_12111_1231#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@4) null (PredicateMaskField_5822 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_5822_39525) ) (!  (=> (select (|PolymorphicMapType_12600_12111_39525#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@4) null (PredicateMaskField_5822 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_5822_39658) ) (!  (=> (select (|PolymorphicMapType_12600_12111_40836#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@4) null (PredicateMaskField_5822 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@4) o2@@3 f_2@@3) (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_5822_39616 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12051) (ExhaleHeap@@4 T@PolymorphicMapType_12051) (Mask@@15 T@PolymorphicMapType_12072) (pm_f@@2 T@Field_5822_39525) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_5822_39589 Mask@@15 null pm_f@@2) (IsWandField_5822_41363 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_12111_53) ) (!  (=> (select (|PolymorphicMapType_12600_12111_53#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@5) null (WandMaskField_5822 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_12124_12125) ) (!  (=> (select (|PolymorphicMapType_12600_12111_12125#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@5) null (WandMaskField_5822 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_15567_1231) ) (!  (=> (select (|PolymorphicMapType_12600_12111_1231#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@5) null (WandMaskField_5822 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_5822_39525) ) (!  (=> (select (|PolymorphicMapType_12600_12111_39525#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@5) null (WandMaskField_5822 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@5) o2@@7 f_2@@7) (select (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_5822_39658) ) (!  (=> (select (|PolymorphicMapType_12600_12111_40836#PolymorphicMapType_12600| (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@5) null (WandMaskField_5822 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@5) o2@@8 f_2@@8) (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_5822_41363 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12051) (ExhaleHeap@@5 T@PolymorphicMapType_12051) (Mask@@16 T@PolymorphicMapType_12072) (o_1@@0 T@Ref) (f_2@@9 T@Field_5822_39658) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_5822_45308 Mask@@16 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@6) o_1@@0 f_2@@9) (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12051) (ExhaleHeap@@6 T@PolymorphicMapType_12051) (Mask@@17 T@PolymorphicMapType_12072) (o_1@@1 T@Ref) (f_2@@10 T@Field_5822_39525) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_5822_39589 Mask@@17 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@7) o_1@@1 f_2@@10) (select (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12051) (ExhaleHeap@@7 T@PolymorphicMapType_12051) (Mask@@18 T@PolymorphicMapType_12072) (o_1@@2 T@Ref) (f_2@@11 T@Field_15567_1231) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_5828_1231 Mask@@18 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@8) o_1@@2 f_2@@11) (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12051) (ExhaleHeap@@8 T@PolymorphicMapType_12051) (Mask@@19 T@PolymorphicMapType_12072) (o_1@@3 T@Ref) (f_2@@12 T@Field_12111_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_5820_1186 Mask@@19 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@9) o_1@@3 f_2@@12) (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12051) (ExhaleHeap@@9 T@PolymorphicMapType_12051) (Mask@@20 T@PolymorphicMapType_12072) (o_1@@4 T@Ref) (f_2@@13 T@Field_12124_12125) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_5822_5823 Mask@@20 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@10) o_1@@4 f_2@@13) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5822_39658) ) (! (= (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5822_39525) ) (! (= (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_15567_1231) ) (! (= (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12111_53) ) (! (= (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_12124_12125) ) (! (= (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12072) (SummandMask1 T@PolymorphicMapType_12072) (SummandMask2 T@PolymorphicMapType_12072) (o_2@@19 T@Ref) (f_4@@19 T@Field_5822_39658) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12072_5822_43753#PolymorphicMapType_12072| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12072) (SummandMask1@@0 T@PolymorphicMapType_12072) (SummandMask2@@0 T@PolymorphicMapType_12072) (o_2@@20 T@Ref) (f_4@@20 T@Field_5822_39525) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12072_5822_39525#PolymorphicMapType_12072| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12072) (SummandMask1@@1 T@PolymorphicMapType_12072) (SummandMask2@@1 T@PolymorphicMapType_12072) (o_2@@21 T@Ref) (f_4@@21 T@Field_15567_1231) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12072_5828_1231#PolymorphicMapType_12072| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12072) (SummandMask1@@2 T@PolymorphicMapType_12072) (SummandMask2@@2 T@PolymorphicMapType_12072) (o_2@@22 T@Ref) (f_4@@22 T@Field_12111_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12072_5820_1186#PolymorphicMapType_12072| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12072) (SummandMask1@@3 T@PolymorphicMapType_12072) (SummandMask2@@3 T@PolymorphicMapType_12072) (o_2@@23 T@Ref) (f_4@@23 T@Field_12124_12125) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12072_5822_5823#PolymorphicMapType_12072| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12051) (o T@Ref) (f_3 T@Field_5822_39525) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_12051 (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@11) (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@11) (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@11) (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@11) (store (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@11) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12051 (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@11) (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@11) (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@11) (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@11) (store (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@11) o f_3 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12051) (o@@0 T@Ref) (f_3@@0 T@Field_5822_39658) (v@@0 T@PolymorphicMapType_12600) ) (! (succHeap Heap@@12 (PolymorphicMapType_12051 (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@12) (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@12) (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@12) (store (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12051 (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@12) (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@12) (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@12) (store (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12051) (o@@1 T@Ref) (f_3@@1 T@Field_15567_1231) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_12051 (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@13) (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@13) (store (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@13) (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12051 (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@13) (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@13) (store (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@13) (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12051) (o@@2 T@Ref) (f_3@@2 T@Field_12124_12125) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_12051 (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@14) (store (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@14) (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@14) (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12051 (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@14) (store (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@14) (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@14) (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12051) (o@@3 T@Ref) (f_3@@3 T@Field_12111_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_12051 (store (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@15) (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@15) (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@15) (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12051 (store (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@15) (|PolymorphicMapType_12051_5828_1231#PolymorphicMapType_12051| Heap@@15) (|PolymorphicMapType_12051_5822_39702#PolymorphicMapType_12051| Heap@@15) (|PolymorphicMapType_12051_12111_39525#PolymorphicMapType_12051| Heap@@15)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_12124_12125) (Heap@@16 T@PolymorphicMapType_12051) ) (!  (=> (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@16) o@@4 $allocated) (select (|PolymorphicMapType_12051_5692_53#PolymorphicMapType_12051| Heap@@16) (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@16) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12051_5695_5696#PolymorphicMapType_12051| Heap@@16) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_5822_39525) (v_1@@0 T@FrameType) (q T@Field_5822_39525) (w@@0 T@FrameType) (r T@Field_5822_39525) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12111_12111 p@@1 v_1@@0 q w@@0) (InsidePredicate_12111_12111 q w@@0 r u)) (InsidePredicate_12111_12111 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12111_12111 p@@1 v_1@@0 q w@@0) (InsidePredicate_12111_12111 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

