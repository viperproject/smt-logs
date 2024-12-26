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
(declare-sort T@Field_6319_53 0)
(declare-sort T@Field_6332_6333 0)
(declare-sort T@Field_9645_1186 0)
(declare-sort T@Field_3152_19491 0)
(declare-sort T@Field_3152_19358 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6280 0)) (((PolymorphicMapType_6280 (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| (Array T@Ref T@Field_9645_1186 Real)) (|PolymorphicMapType_6280_3152_53#PolymorphicMapType_6280| (Array T@Ref T@Field_6319_53 Real)) (|PolymorphicMapType_6280_3152_6333#PolymorphicMapType_6280| (Array T@Ref T@Field_6332_6333 Real)) (|PolymorphicMapType_6280_3152_19358#PolymorphicMapType_6280| (Array T@Ref T@Field_3152_19358 Real)) (|PolymorphicMapType_6280_3152_23613#PolymorphicMapType_6280| (Array T@Ref T@Field_3152_19491 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6808 0)) (((PolymorphicMapType_6808 (|PolymorphicMapType_6808_6319_53#PolymorphicMapType_6808| (Array T@Ref T@Field_6319_53 Bool)) (|PolymorphicMapType_6808_6319_6333#PolymorphicMapType_6808| (Array T@Ref T@Field_6332_6333 Bool)) (|PolymorphicMapType_6808_6319_1186#PolymorphicMapType_6808| (Array T@Ref T@Field_9645_1186 Bool)) (|PolymorphicMapType_6808_6319_19358#PolymorphicMapType_6808| (Array T@Ref T@Field_3152_19358 Bool)) (|PolymorphicMapType_6808_6319_20669#PolymorphicMapType_6808| (Array T@Ref T@Field_3152_19491 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6259 0)) (((PolymorphicMapType_6259 (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| (Array T@Ref T@Field_6319_53 Bool)) (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| (Array T@Ref T@Field_6332_6333 T@Ref)) (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| (Array T@Ref T@Field_9645_1186 Int)) (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| (Array T@Ref T@Field_3152_19491 T@PolymorphicMapType_6808)) (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| (Array T@Ref T@Field_3152_19358 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6319_53)
(declare-fun Counter__x () T@Field_9645_1186)
(declare-fun succHeap (T@PolymorphicMapType_6259 T@PolymorphicMapType_6259) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6259 T@PolymorphicMapType_6259) Bool)
(declare-fun state (T@PolymorphicMapType_6259 T@PolymorphicMapType_6280) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6280) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6808)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6259 T@PolymorphicMapType_6259 T@PolymorphicMapType_6280) Bool)
(declare-fun IsPredicateField_3152_19449 (T@Field_3152_19358) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3152 (T@Field_3152_19358) T@Field_3152_19491)
(declare-fun HasDirectPerm_3152_19422 (T@PolymorphicMapType_6280 T@Ref T@Field_3152_19358) Bool)
(declare-fun IsWandField_3152_21196 (T@Field_3152_19358) Bool)
(declare-fun WandMaskField_3152 (T@Field_3152_19358) T@Field_3152_19491)
(declare-fun dummyHeap () T@PolymorphicMapType_6259)
(declare-fun ZeroMask () T@PolymorphicMapType_6280)
(declare-fun InsidePredicate_6319_6319 (T@Field_3152_19358 T@FrameType T@Field_3152_19358 T@FrameType) Bool)
(declare-fun IsPredicateField_3152_1186 (T@Field_9645_1186) Bool)
(declare-fun IsWandField_3152_1186 (T@Field_9645_1186) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3152_24742 (T@Field_3152_19491) Bool)
(declare-fun IsWandField_3152_24758 (T@Field_3152_19491) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3152_6333 (T@Field_6332_6333) Bool)
(declare-fun IsWandField_3152_6333 (T@Field_6332_6333) Bool)
(declare-fun IsPredicateField_3152_53 (T@Field_6319_53) Bool)
(declare-fun IsWandField_3152_53 (T@Field_6319_53) Bool)
(declare-fun HasDirectPerm_3152_25196 (T@PolymorphicMapType_6280 T@Ref T@Field_3152_19491) Bool)
(declare-fun HasDirectPerm_3152_6333 (T@PolymorphicMapType_6280 T@Ref T@Field_6332_6333) Bool)
(declare-fun HasDirectPerm_3152_53 (T@PolymorphicMapType_6280 T@Ref T@Field_6319_53) Bool)
(declare-fun HasDirectPerm_3152_1186 (T@PolymorphicMapType_6280 T@Ref T@Field_9645_1186) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6280 T@PolymorphicMapType_6280 T@PolymorphicMapType_6280) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6259) (Heap1 T@PolymorphicMapType_6259) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6259) (Mask T@PolymorphicMapType_6280) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6259) (Heap1@@0 T@PolymorphicMapType_6259) (Heap2 T@PolymorphicMapType_6259) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3152_19491) ) (!  (not (select (|PolymorphicMapType_6808_6319_20669#PolymorphicMapType_6808| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6808_6319_20669#PolymorphicMapType_6808| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3152_19358) ) (!  (not (select (|PolymorphicMapType_6808_6319_19358#PolymorphicMapType_6808| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6808_6319_19358#PolymorphicMapType_6808| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9645_1186) ) (!  (not (select (|PolymorphicMapType_6808_6319_1186#PolymorphicMapType_6808| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6808_6319_1186#PolymorphicMapType_6808| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6332_6333) ) (!  (not (select (|PolymorphicMapType_6808_6319_6333#PolymorphicMapType_6808| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6808_6319_6333#PolymorphicMapType_6808| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6319_53) ) (!  (not (select (|PolymorphicMapType_6808_6319_53#PolymorphicMapType_6808| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6808_6319_53#PolymorphicMapType_6808| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6259) (ExhaleHeap T@PolymorphicMapType_6259) (Mask@@0 T@PolymorphicMapType_6280) (pm_f T@Field_3152_19358) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3152_19422 Mask@@0 null pm_f) (IsPredicateField_3152_19449 pm_f)) (= (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@0) null (PredicateMaskField_3152 pm_f)) (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| ExhaleHeap) null (PredicateMaskField_3152 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3152_19449 pm_f) (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| ExhaleHeap) null (PredicateMaskField_3152 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6259) (ExhaleHeap@@0 T@PolymorphicMapType_6259) (Mask@@1 T@PolymorphicMapType_6280) (pm_f@@0 T@Field_3152_19358) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3152_19422 Mask@@1 null pm_f@@0) (IsWandField_3152_21196 pm_f@@0)) (= (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@1) null (WandMaskField_3152 pm_f@@0)) (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| ExhaleHeap@@0) null (WandMaskField_3152 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_3152_21196 pm_f@@0) (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| ExhaleHeap@@0) null (WandMaskField_3152 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6259) (ExhaleHeap@@1 T@PolymorphicMapType_6259) (Mask@@2 T@PolymorphicMapType_6280) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@2) o_1 $allocated) (select (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_3152_19358) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6319_6319 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6319_6319 p v_1 p w))
)))
(assert  (not (IsPredicateField_3152_1186 Counter__x)))
(assert  (not (IsWandField_3152_1186 Counter__x)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6259) (ExhaleHeap@@2 T@PolymorphicMapType_6259) (Mask@@3 T@PolymorphicMapType_6280) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_6280) (o_2@@4 T@Ref) (f_4@@4 T@Field_3152_19491) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_6280_3152_23613#PolymorphicMapType_6280| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_3152_24742 f_4@@4))) (not (IsWandField_3152_24758 f_4@@4))) (<= (select (|PolymorphicMapType_6280_3152_23613#PolymorphicMapType_6280| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_6280_3152_23613#PolymorphicMapType_6280| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_6280) (o_2@@5 T@Ref) (f_4@@5 T@Field_3152_19358) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_6280_3152_19358#PolymorphicMapType_6280| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_3152_19449 f_4@@5))) (not (IsWandField_3152_21196 f_4@@5))) (<= (select (|PolymorphicMapType_6280_3152_19358#PolymorphicMapType_6280| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_6280_3152_19358#PolymorphicMapType_6280| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6280) (o_2@@6 T@Ref) (f_4@@6 T@Field_6332_6333) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6280_3152_6333#PolymorphicMapType_6280| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3152_6333 f_4@@6))) (not (IsWandField_3152_6333 f_4@@6))) (<= (select (|PolymorphicMapType_6280_3152_6333#PolymorphicMapType_6280| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6280_3152_6333#PolymorphicMapType_6280| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6280) (o_2@@7 T@Ref) (f_4@@7 T@Field_6319_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6280_3152_53#PolymorphicMapType_6280| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3152_53 f_4@@7))) (not (IsWandField_3152_53 f_4@@7))) (<= (select (|PolymorphicMapType_6280_3152_53#PolymorphicMapType_6280| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6280_3152_53#PolymorphicMapType_6280| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6280) (o_2@@8 T@Ref) (f_4@@8 T@Field_9645_1186) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3152_1186 f_4@@8))) (not (IsWandField_3152_1186 f_4@@8))) (<= (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6280) (o_2@@9 T@Ref) (f_4@@9 T@Field_3152_19491) ) (! (= (HasDirectPerm_3152_25196 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6280_3152_23613#PolymorphicMapType_6280| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3152_25196 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6280) (o_2@@10 T@Ref) (f_4@@10 T@Field_3152_19358) ) (! (= (HasDirectPerm_3152_19422 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6280_3152_19358#PolymorphicMapType_6280| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3152_19422 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6280) (o_2@@11 T@Ref) (f_4@@11 T@Field_6332_6333) ) (! (= (HasDirectPerm_3152_6333 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6280_3152_6333#PolymorphicMapType_6280| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3152_6333 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6280) (o_2@@12 T@Ref) (f_4@@12 T@Field_6319_53) ) (! (= (HasDirectPerm_3152_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6280_3152_53#PolymorphicMapType_6280| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3152_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6280) (o_2@@13 T@Ref) (f_4@@13 T@Field_9645_1186) ) (! (= (HasDirectPerm_3152_1186 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3152_1186 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6259) (ExhaleHeap@@3 T@PolymorphicMapType_6259) (Mask@@14 T@PolymorphicMapType_6280) (pm_f@@1 T@Field_3152_19358) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_3152_19422 Mask@@14 null pm_f@@1) (IsPredicateField_3152_19449 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6319_53) ) (!  (=> (select (|PolymorphicMapType_6808_6319_53#PolymorphicMapType_6808| (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@4) null (PredicateMaskField_3152 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@4) o2 f_2) (select (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6332_6333) ) (!  (=> (select (|PolymorphicMapType_6808_6319_6333#PolymorphicMapType_6808| (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@4) null (PredicateMaskField_3152 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_9645_1186) ) (!  (=> (select (|PolymorphicMapType_6808_6319_1186#PolymorphicMapType_6808| (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@4) null (PredicateMaskField_3152 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3152_19358) ) (!  (=> (select (|PolymorphicMapType_6808_6319_19358#PolymorphicMapType_6808| (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@4) null (PredicateMaskField_3152 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3152_19491) ) (!  (=> (select (|PolymorphicMapType_6808_6319_20669#PolymorphicMapType_6808| (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@4) null (PredicateMaskField_3152 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@4) o2@@3 f_2@@3) (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_3152_19449 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6259) (ExhaleHeap@@4 T@PolymorphicMapType_6259) (Mask@@15 T@PolymorphicMapType_6280) (pm_f@@2 T@Field_3152_19358) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_3152_19422 Mask@@15 null pm_f@@2) (IsWandField_3152_21196 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6319_53) ) (!  (=> (select (|PolymorphicMapType_6808_6319_53#PolymorphicMapType_6808| (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@5) null (WandMaskField_3152 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6332_6333) ) (!  (=> (select (|PolymorphicMapType_6808_6319_6333#PolymorphicMapType_6808| (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@5) null (WandMaskField_3152 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_9645_1186) ) (!  (=> (select (|PolymorphicMapType_6808_6319_1186#PolymorphicMapType_6808| (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@5) null (WandMaskField_3152 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_3152_19358) ) (!  (=> (select (|PolymorphicMapType_6808_6319_19358#PolymorphicMapType_6808| (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@5) null (WandMaskField_3152 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| Heap@@5) o2@@7 f_2@@7) (select (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_3152_19491) ) (!  (=> (select (|PolymorphicMapType_6808_6319_20669#PolymorphicMapType_6808| (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@5) null (WandMaskField_3152 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@5) o2@@8 f_2@@8) (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_3152_21196 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6259) (ExhaleHeap@@5 T@PolymorphicMapType_6259) (Mask@@16 T@PolymorphicMapType_6280) (o_1@@0 T@Ref) (f_2@@9 T@Field_3152_19491) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_3152_25196 Mask@@16 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@6) o_1@@0 f_2@@9) (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6259) (ExhaleHeap@@6 T@PolymorphicMapType_6259) (Mask@@17 T@PolymorphicMapType_6280) (o_1@@1 T@Ref) (f_2@@10 T@Field_3152_19358) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_3152_19422 Mask@@17 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| Heap@@7) o_1@@1 f_2@@10) (select (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6259) (ExhaleHeap@@7 T@PolymorphicMapType_6259) (Mask@@18 T@PolymorphicMapType_6280) (o_1@@2 T@Ref) (f_2@@11 T@Field_6332_6333) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_3152_6333 Mask@@18 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| Heap@@8) o_1@@2 f_2@@11) (select (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6259) (ExhaleHeap@@8 T@PolymorphicMapType_6259) (Mask@@19 T@PolymorphicMapType_6280) (o_1@@3 T@Ref) (f_2@@12 T@Field_6319_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_3152_53 Mask@@19 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@9) o_1@@3 f_2@@12) (select (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6259) (ExhaleHeap@@9 T@PolymorphicMapType_6259) (Mask@@20 T@PolymorphicMapType_6280) (o_1@@4 T@Ref) (f_2@@13 T@Field_9645_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_3152_1186 Mask@@20 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| Heap@@10) o_1@@4 f_2@@13) (select (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3152_19491) ) (! (= (select (|PolymorphicMapType_6280_3152_23613#PolymorphicMapType_6280| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6280_3152_23613#PolymorphicMapType_6280| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3152_19358) ) (! (= (select (|PolymorphicMapType_6280_3152_19358#PolymorphicMapType_6280| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6280_3152_19358#PolymorphicMapType_6280| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6332_6333) ) (! (= (select (|PolymorphicMapType_6280_3152_6333#PolymorphicMapType_6280| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6280_3152_6333#PolymorphicMapType_6280| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6319_53) ) (! (= (select (|PolymorphicMapType_6280_3152_53#PolymorphicMapType_6280| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6280_3152_53#PolymorphicMapType_6280| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_9645_1186) ) (! (= (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6280) (SummandMask1 T@PolymorphicMapType_6280) (SummandMask2 T@PolymorphicMapType_6280) (o_2@@19 T@Ref) (f_4@@19 T@Field_3152_19491) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6280_3152_23613#PolymorphicMapType_6280| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6280_3152_23613#PolymorphicMapType_6280| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6280_3152_23613#PolymorphicMapType_6280| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6280_3152_23613#PolymorphicMapType_6280| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6280_3152_23613#PolymorphicMapType_6280| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6280_3152_23613#PolymorphicMapType_6280| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6280) (SummandMask1@@0 T@PolymorphicMapType_6280) (SummandMask2@@0 T@PolymorphicMapType_6280) (o_2@@20 T@Ref) (f_4@@20 T@Field_3152_19358) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6280_3152_19358#PolymorphicMapType_6280| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6280_3152_19358#PolymorphicMapType_6280| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6280_3152_19358#PolymorphicMapType_6280| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6280_3152_19358#PolymorphicMapType_6280| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6280_3152_19358#PolymorphicMapType_6280| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6280_3152_19358#PolymorphicMapType_6280| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6280) (SummandMask1@@1 T@PolymorphicMapType_6280) (SummandMask2@@1 T@PolymorphicMapType_6280) (o_2@@21 T@Ref) (f_4@@21 T@Field_6332_6333) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6280_3152_6333#PolymorphicMapType_6280| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6280_3152_6333#PolymorphicMapType_6280| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6280_3152_6333#PolymorphicMapType_6280| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6280_3152_6333#PolymorphicMapType_6280| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6280_3152_6333#PolymorphicMapType_6280| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6280_3152_6333#PolymorphicMapType_6280| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6280) (SummandMask1@@2 T@PolymorphicMapType_6280) (SummandMask2@@2 T@PolymorphicMapType_6280) (o_2@@22 T@Ref) (f_4@@22 T@Field_6319_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6280_3152_53#PolymorphicMapType_6280| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6280_3152_53#PolymorphicMapType_6280| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6280_3152_53#PolymorphicMapType_6280| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6280_3152_53#PolymorphicMapType_6280| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6280_3152_53#PolymorphicMapType_6280| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6280_3152_53#PolymorphicMapType_6280| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6280) (SummandMask1@@3 T@PolymorphicMapType_6280) (SummandMask2@@3 T@PolymorphicMapType_6280) (o_2@@23 T@Ref) (f_4@@23 T@Field_9645_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6259) (o T@Ref) (f_3 T@Field_3152_19358) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_6259 (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@11) (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| Heap@@11) (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| Heap@@11) (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@11) (store (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| Heap@@11) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6259 (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@11) (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| Heap@@11) (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| Heap@@11) (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@11) (store (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| Heap@@11) o f_3 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6259) (o@@0 T@Ref) (f_3@@0 T@Field_3152_19491) (v@@0 T@PolymorphicMapType_6808) ) (! (succHeap Heap@@12 (PolymorphicMapType_6259 (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@12) (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| Heap@@12) (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| Heap@@12) (store (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6259 (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@12) (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| Heap@@12) (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| Heap@@12) (store (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6259) (o@@1 T@Ref) (f_3@@1 T@Field_9645_1186) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_6259 (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@13) (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| Heap@@13) (store (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@13) (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6259 (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@13) (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| Heap@@13) (store (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@13) (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6259) (o@@2 T@Ref) (f_3@@2 T@Field_6332_6333) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_6259 (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@14) (store (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| Heap@@14) (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@14) (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6259 (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@14) (store (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| Heap@@14) (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@14) (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6259) (o@@3 T@Ref) (f_3@@3 T@Field_6319_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_6259 (store (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| Heap@@15) (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| Heap@@15) (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@15) (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6259 (store (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| Heap@@15) (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| Heap@@15) (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@15) (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| Heap@@15)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_6332_6333) (Heap@@16 T@PolymorphicMapType_6259) ) (!  (=> (select (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@16) o@@4 $allocated) (select (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@16) (select (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| Heap@@16) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| Heap@@16) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_3152_19358) (v_1@@0 T@FrameType) (q T@Field_3152_19358) (w@@0 T@FrameType) (r T@Field_3152_19358) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6319_6319 p@@1 v_1@@0 q w@@0) (InsidePredicate_6319_6319 q w@@0 r u)) (InsidePredicate_6319_6319 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6319_6319 p@@1 v_1@@0 q w@@0) (InsidePredicate_6319_6319 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun AssertMask@0 () T@PolymorphicMapType_6280)
(declare-fun Mask@0 () T@PolymorphicMapType_6280)
(declare-fun freshObj@0 () T@Ref)
(declare-fun Heap@1 () T@PolymorphicMapType_6259)
(declare-fun Heap@@17 () T@PolymorphicMapType_6259)
(declare-fun diz () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_6259)
(declare-fun PostHeap@0 () T@PolymorphicMapType_6259)
(declare-fun sys__result () T@Ref)
(declare-fun PostMask@0 () T@PolymorphicMapType_6280)
(declare-fun current_thread_id () Int)
(set-info :boogie-vc-id Counter__Counter)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon4_correct  (=> (= AssertMask@0 (PolymorphicMapType_6280 (store (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| Mask@0) freshObj@0 Counter__x (- (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| Mask@0) freshObj@0 Counter__x) FullPerm)) (|PolymorphicMapType_6280_3152_53#PolymorphicMapType_6280| Mask@0) (|PolymorphicMapType_6280_3152_6333#PolymorphicMapType_6280| Mask@0) (|PolymorphicMapType_6280_3152_19358#PolymorphicMapType_6280| Mask@0) (|PolymorphicMapType_6280_3152_23613#PolymorphicMapType_6280| Mask@0))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (HasDirectPerm_3152_1186 Mask@0 freshObj@0 Counter__x)) (=> (HasDirectPerm_3152_1186 Mask@0 freshObj@0 Counter__x) (=> (= (ControlFlow 0 4) (- 0 5)) (= (select (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| Heap@1) freshObj@0 Counter__x) 0)))))))
(let ((anon8_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 9) 4)) anon4_correct)))
(let ((anon8_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= FullPerm (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| Mask@0) freshObj@0 Counter__x))) (=> (<= FullPerm (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| Mask@0) freshObj@0 Counter__x)) (=> (= (ControlFlow 0 7) 4) anon4_correct))))))
(let ((anon7_Else_correct  (=> (select (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@17) diz $allocated) (=> (and (and (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@17) freshObj@0 $allocated))) (= Heap@0 (PolymorphicMapType_6259 (store (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@@17) freshObj@0 $allocated true) (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| Heap@@17) (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| Heap@@17) (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@@17) (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| Heap@@17)))) (and (and (= Mask@0 (PolymorphicMapType_6280 (store (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| ZeroMask) freshObj@0 Counter__x (+ (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| ZeroMask) freshObj@0 Counter__x) FullPerm)) (|PolymorphicMapType_6280_3152_53#PolymorphicMapType_6280| ZeroMask) (|PolymorphicMapType_6280_3152_6333#PolymorphicMapType_6280| ZeroMask) (|PolymorphicMapType_6280_3152_19358#PolymorphicMapType_6280| ZeroMask) (|PolymorphicMapType_6280_3152_23613#PolymorphicMapType_6280| ZeroMask))) (state Heap@0 Mask@0)) (and (state Heap@0 Mask@0) (state Heap@0 Mask@0)))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (= FullPerm (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| Mask@0) freshObj@0 Counter__x))) (=> (= FullPerm (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| Mask@0) freshObj@0 Counter__x)) (=> (= Heap@1 (PolymorphicMapType_6259 (|PolymorphicMapType_6259_3024_53#PolymorphicMapType_6259| Heap@0) (|PolymorphicMapType_6259_3027_3028#PolymorphicMapType_6259| Heap@0) (store (|PolymorphicMapType_6259_3152_1186#PolymorphicMapType_6259| Heap@0) freshObj@0 Counter__x 0) (|PolymorphicMapType_6259_3152_19535#PolymorphicMapType_6259| Heap@0) (|PolymorphicMapType_6259_6319_19358#PolymorphicMapType_6259| Heap@0))) (=> (and (state Heap@1 Mask@0) (state Heap@1 Mask@0)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (not (= freshObj@0 null))) (=> (not (= freshObj@0 null)) (and (=> (= (ControlFlow 0 10) 7) anon8_Then_correct) (=> (= (ControlFlow 0 10) 9) anon8_Else_correct))))))))))))
(let ((anon7_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (not (= sys__result null)) (state PostHeap@0 ZeroMask)) (=> (and (and (not (= sys__result null)) (= PostMask@0 (PolymorphicMapType_6280 (store (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| ZeroMask) sys__result Counter__x (+ (select (|PolymorphicMapType_6280_3152_1186#PolymorphicMapType_6280| ZeroMask) sys__result Counter__x) FullPerm)) (|PolymorphicMapType_6280_3152_53#PolymorphicMapType_6280| ZeroMask) (|PolymorphicMapType_6280_3152_6333#PolymorphicMapType_6280| ZeroMask) (|PolymorphicMapType_6280_3152_19358#PolymorphicMapType_6280| ZeroMask) (|PolymorphicMapType_6280_3152_23613#PolymorphicMapType_6280| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (= (ControlFlow 0 2) (- 0 1)))) (HasDirectPerm_3152_1186 PostMask@0 sys__result Counter__x))))))
(let ((anon0_correct  (=> (and (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (>= current_thread_id 0) (state Heap@@17 ZeroMask))) (and (=> (= (ControlFlow 0 13) 2) anon7_Then_correct) (=> (= (ControlFlow 0 13) 10) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 14) 13) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
