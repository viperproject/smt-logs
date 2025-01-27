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
(declare-sort T@Field_4254_53 0)
(declare-sort T@Field_4267_4268 0)
(declare-sort T@Field_7623_1263 0)
(declare-sort T@Field_2354_12348 0)
(declare-sort T@Field_2354_12215 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4215 0)) (((PolymorphicMapType_4215 (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| (Array T@Ref T@Field_7623_1263 Real)) (|PolymorphicMapType_4215_2354_53#PolymorphicMapType_4215| (Array T@Ref T@Field_4254_53 Real)) (|PolymorphicMapType_4215_2354_4268#PolymorphicMapType_4215| (Array T@Ref T@Field_4267_4268 Real)) (|PolymorphicMapType_4215_2354_12215#PolymorphicMapType_4215| (Array T@Ref T@Field_2354_12215 Real)) (|PolymorphicMapType_4215_2354_16470#PolymorphicMapType_4215| (Array T@Ref T@Field_2354_12348 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4743 0)) (((PolymorphicMapType_4743 (|PolymorphicMapType_4743_4254_53#PolymorphicMapType_4743| (Array T@Ref T@Field_4254_53 Bool)) (|PolymorphicMapType_4743_4254_4268#PolymorphicMapType_4743| (Array T@Ref T@Field_4267_4268 Bool)) (|PolymorphicMapType_4743_4254_1263#PolymorphicMapType_4743| (Array T@Ref T@Field_7623_1263 Bool)) (|PolymorphicMapType_4743_4254_12215#PolymorphicMapType_4743| (Array T@Ref T@Field_2354_12215 Bool)) (|PolymorphicMapType_4743_4254_13526#PolymorphicMapType_4743| (Array T@Ref T@Field_2354_12348 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4194 0)) (((PolymorphicMapType_4194 (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| (Array T@Ref T@Field_4254_53 Bool)) (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| (Array T@Ref T@Field_4267_4268 T@Ref)) (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| (Array T@Ref T@Field_7623_1263 Int)) (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| (Array T@Ref T@Field_2354_12348 T@PolymorphicMapType_4743)) (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| (Array T@Ref T@Field_2354_12215 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_4254_53)
(declare-fun f_7 () T@Field_7623_1263)
(declare-fun succHeap (T@PolymorphicMapType_4194 T@PolymorphicMapType_4194) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4194 T@PolymorphicMapType_4194) Bool)
(declare-fun state (T@PolymorphicMapType_4194 T@PolymorphicMapType_4215) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4215) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4743)
(declare-fun NN (T@Ref) Bool)
(declare-fun null () T@Ref)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4194 T@PolymorphicMapType_4194 T@PolymorphicMapType_4215) Bool)
(declare-fun IsPredicateField_2354_12306 (T@Field_2354_12215) Bool)
(declare-fun PredicateMaskField_2354 (T@Field_2354_12215) T@Field_2354_12348)
(declare-fun HasDirectPerm_2354_12279 (T@PolymorphicMapType_4215 T@Ref T@Field_2354_12215) Bool)
(declare-fun IsWandField_2354_14053 (T@Field_2354_12215) Bool)
(declare-fun WandMaskField_2354 (T@Field_2354_12215) T@Field_2354_12348)
(declare-fun dummyHeap () T@PolymorphicMapType_4194)
(declare-fun ZeroMask () T@PolymorphicMapType_4215)
(declare-fun InsidePredicate_4254_4254 (T@Field_2354_12215 T@FrameType T@Field_2354_12215 T@FrameType) Bool)
(declare-fun IsPredicateField_2354_1263 (T@Field_7623_1263) Bool)
(declare-fun IsWandField_2354_1263 (T@Field_7623_1263) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2354_17599 (T@Field_2354_12348) Bool)
(declare-fun IsWandField_2354_17615 (T@Field_2354_12348) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2354_4268 (T@Field_4267_4268) Bool)
(declare-fun IsWandField_2354_4268 (T@Field_4267_4268) Bool)
(declare-fun IsPredicateField_2354_53 (T@Field_4254_53) Bool)
(declare-fun IsWandField_2354_53 (T@Field_4254_53) Bool)
(declare-fun HasDirectPerm_2354_18053 (T@PolymorphicMapType_4215 T@Ref T@Field_2354_12348) Bool)
(declare-fun HasDirectPerm_2354_4268 (T@PolymorphicMapType_4215 T@Ref T@Field_4267_4268) Bool)
(declare-fun HasDirectPerm_2354_53 (T@PolymorphicMapType_4215 T@Ref T@Field_4254_53) Bool)
(declare-fun HasDirectPerm_2354_1263 (T@PolymorphicMapType_4215 T@Ref T@Field_7623_1263) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4215 T@PolymorphicMapType_4215 T@PolymorphicMapType_4215) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_4194) (Heap1 T@PolymorphicMapType_4194) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4194) (Mask T@PolymorphicMapType_4215) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4194) (Heap1@@0 T@PolymorphicMapType_4194) (Heap2 T@PolymorphicMapType_4194) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2354_12348) ) (!  (not (select (|PolymorphicMapType_4743_4254_13526#PolymorphicMapType_4743| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4743_4254_13526#PolymorphicMapType_4743| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2354_12215) ) (!  (not (select (|PolymorphicMapType_4743_4254_12215#PolymorphicMapType_4743| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4743_4254_12215#PolymorphicMapType_4743| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7623_1263) ) (!  (not (select (|PolymorphicMapType_4743_4254_1263#PolymorphicMapType_4743| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4743_4254_1263#PolymorphicMapType_4743| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4267_4268) ) (!  (not (select (|PolymorphicMapType_4743_4254_4268#PolymorphicMapType_4743| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4743_4254_4268#PolymorphicMapType_4743| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4254_53) ) (!  (not (select (|PolymorphicMapType_4743_4254_53#PolymorphicMapType_4743| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4743_4254_53#PolymorphicMapType_4743| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((x T@Ref) ) (! (= (NN x) (not (= x null)))
 :qid |stdinbpl.205:15|
 :skolemid |22|
 :pattern ( (NN x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4194) (ExhaleHeap T@PolymorphicMapType_4194) (Mask@@0 T@PolymorphicMapType_4215) (pm_f_1 T@Field_2354_12215) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2354_12279 Mask@@0 null pm_f_1) (IsPredicateField_2354_12306 pm_f_1)) (= (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@0) null (PredicateMaskField_2354 pm_f_1)) (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| ExhaleHeap) null (PredicateMaskField_2354 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2354_12306 pm_f_1) (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| ExhaleHeap) null (PredicateMaskField_2354 pm_f_1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4194) (ExhaleHeap@@0 T@PolymorphicMapType_4194) (Mask@@1 T@PolymorphicMapType_4215) (pm_f_1@@0 T@Field_2354_12215) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2354_12279 Mask@@1 null pm_f_1@@0) (IsWandField_2354_14053 pm_f_1@@0)) (= (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@1) null (WandMaskField_2354 pm_f_1@@0)) (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| ExhaleHeap@@0) null (WandMaskField_2354 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_2354_14053 pm_f_1@@0) (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| ExhaleHeap@@0) null (WandMaskField_2354 pm_f_1@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4194) (ExhaleHeap@@1 T@PolymorphicMapType_4194) (Mask@@2 T@PolymorphicMapType_4215) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@2) o_4 $allocated) (select (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| ExhaleHeap@@1) o_4 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| ExhaleHeap@@1) o_4 $allocated))
)))
(assert (forall ((p T@Field_2354_12215) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4254_4254 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4254_4254 p v_1 p w))
)))
(assert  (not (IsPredicateField_2354_1263 f_7)))
(assert  (not (IsWandField_2354_1263 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4194) (ExhaleHeap@@2 T@PolymorphicMapType_4194) (Mask@@3 T@PolymorphicMapType_4215) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_4215) (o_2@@4 T@Ref) (f_4@@4 T@Field_2354_12348) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_4215_2354_16470#PolymorphicMapType_4215| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_2354_17599 f_4@@4))) (not (IsWandField_2354_17615 f_4@@4))) (<= (select (|PolymorphicMapType_4215_2354_16470#PolymorphicMapType_4215| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_4215_2354_16470#PolymorphicMapType_4215| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_4215) (o_2@@5 T@Ref) (f_4@@5 T@Field_2354_12215) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_4215_2354_12215#PolymorphicMapType_4215| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_2354_12306 f_4@@5))) (not (IsWandField_2354_14053 f_4@@5))) (<= (select (|PolymorphicMapType_4215_2354_12215#PolymorphicMapType_4215| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_4215_2354_12215#PolymorphicMapType_4215| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_4215) (o_2@@6 T@Ref) (f_4@@6 T@Field_4267_4268) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_4215_2354_4268#PolymorphicMapType_4215| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2354_4268 f_4@@6))) (not (IsWandField_2354_4268 f_4@@6))) (<= (select (|PolymorphicMapType_4215_2354_4268#PolymorphicMapType_4215| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_4215_2354_4268#PolymorphicMapType_4215| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_4215) (o_2@@7 T@Ref) (f_4@@7 T@Field_4254_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_4215_2354_53#PolymorphicMapType_4215| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2354_53 f_4@@7))) (not (IsWandField_2354_53 f_4@@7))) (<= (select (|PolymorphicMapType_4215_2354_53#PolymorphicMapType_4215| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_4215_2354_53#PolymorphicMapType_4215| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4215) (o_2@@8 T@Ref) (f_4@@8 T@Field_7623_1263) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2354_1263 f_4@@8))) (not (IsWandField_2354_1263 f_4@@8))) (<= (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4215) (o_2@@9 T@Ref) (f_4@@9 T@Field_2354_12348) ) (! (= (HasDirectPerm_2354_18053 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4215_2354_16470#PolymorphicMapType_4215| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2354_18053 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4215) (o_2@@10 T@Ref) (f_4@@10 T@Field_2354_12215) ) (! (= (HasDirectPerm_2354_12279 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4215_2354_12215#PolymorphicMapType_4215| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2354_12279 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4215) (o_2@@11 T@Ref) (f_4@@11 T@Field_4267_4268) ) (! (= (HasDirectPerm_2354_4268 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_4215_2354_4268#PolymorphicMapType_4215| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2354_4268 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4215) (o_2@@12 T@Ref) (f_4@@12 T@Field_4254_53) ) (! (= (HasDirectPerm_2354_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_4215_2354_53#PolymorphicMapType_4215| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2354_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4215) (o_2@@13 T@Ref) (f_4@@13 T@Field_7623_1263) ) (! (= (HasDirectPerm_2354_1263 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2354_1263 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4194) (ExhaleHeap@@3 T@PolymorphicMapType_4194) (Mask@@14 T@PolymorphicMapType_4215) (pm_f_1@@1 T@Field_2354_12215) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_2354_12279 Mask@@14 null pm_f_1@@1) (IsPredicateField_2354_12306 pm_f_1@@1)) (and (and (and (and (forall ((o2_1 T@Ref) (f_9 T@Field_4254_53) ) (!  (=> (select (|PolymorphicMapType_4743_4254_53#PolymorphicMapType_4743| (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@4) null (PredicateMaskField_2354 pm_f_1@@1))) o2_1 f_9) (= (select (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@4) o2_1 f_9) (select (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| ExhaleHeap@@3) o2_1 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| ExhaleHeap@@3) o2_1 f_9))
)) (forall ((o2_1@@0 T@Ref) (f_9@@0 T@Field_4267_4268) ) (!  (=> (select (|PolymorphicMapType_4743_4254_4268#PolymorphicMapType_4743| (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@4) null (PredicateMaskField_2354 pm_f_1@@1))) o2_1@@0 f_9@@0) (= (select (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| Heap@@4) o2_1@@0 f_9@@0) (select (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| ExhaleHeap@@3) o2_1@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| ExhaleHeap@@3) o2_1@@0 f_9@@0))
))) (forall ((o2_1@@1 T@Ref) (f_9@@1 T@Field_7623_1263) ) (!  (=> (select (|PolymorphicMapType_4743_4254_1263#PolymorphicMapType_4743| (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@4) null (PredicateMaskField_2354 pm_f_1@@1))) o2_1@@1 f_9@@1) (= (select (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@@4) o2_1@@1 f_9@@1) (select (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| ExhaleHeap@@3) o2_1@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| ExhaleHeap@@3) o2_1@@1 f_9@@1))
))) (forall ((o2_1@@2 T@Ref) (f_9@@2 T@Field_2354_12215) ) (!  (=> (select (|PolymorphicMapType_4743_4254_12215#PolymorphicMapType_4743| (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@4) null (PredicateMaskField_2354 pm_f_1@@1))) o2_1@@2 f_9@@2) (= (select (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| Heap@@4) o2_1@@2 f_9@@2) (select (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| ExhaleHeap@@3) o2_1@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| ExhaleHeap@@3) o2_1@@2 f_9@@2))
))) (forall ((o2_1@@3 T@Ref) (f_9@@3 T@Field_2354_12348) ) (!  (=> (select (|PolymorphicMapType_4743_4254_13526#PolymorphicMapType_4743| (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@4) null (PredicateMaskField_2354 pm_f_1@@1))) o2_1@@3 f_9@@3) (= (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@4) o2_1@@3 f_9@@3) (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| ExhaleHeap@@3) o2_1@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| ExhaleHeap@@3) o2_1@@3 f_9@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_2354_12306 pm_f_1@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4194) (ExhaleHeap@@4 T@PolymorphicMapType_4194) (Mask@@15 T@PolymorphicMapType_4215) (pm_f_1@@2 T@Field_2354_12215) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_2354_12279 Mask@@15 null pm_f_1@@2) (IsWandField_2354_14053 pm_f_1@@2)) (and (and (and (and (forall ((o2_1@@4 T@Ref) (f_9@@4 T@Field_4254_53) ) (!  (=> (select (|PolymorphicMapType_4743_4254_53#PolymorphicMapType_4743| (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@5) null (WandMaskField_2354 pm_f_1@@2))) o2_1@@4 f_9@@4) (= (select (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@5) o2_1@@4 f_9@@4) (select (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| ExhaleHeap@@4) o2_1@@4 f_9@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| ExhaleHeap@@4) o2_1@@4 f_9@@4))
)) (forall ((o2_1@@5 T@Ref) (f_9@@5 T@Field_4267_4268) ) (!  (=> (select (|PolymorphicMapType_4743_4254_4268#PolymorphicMapType_4743| (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@5) null (WandMaskField_2354 pm_f_1@@2))) o2_1@@5 f_9@@5) (= (select (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| Heap@@5) o2_1@@5 f_9@@5) (select (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| ExhaleHeap@@4) o2_1@@5 f_9@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| ExhaleHeap@@4) o2_1@@5 f_9@@5))
))) (forall ((o2_1@@6 T@Ref) (f_9@@6 T@Field_7623_1263) ) (!  (=> (select (|PolymorphicMapType_4743_4254_1263#PolymorphicMapType_4743| (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@5) null (WandMaskField_2354 pm_f_1@@2))) o2_1@@6 f_9@@6) (= (select (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@@5) o2_1@@6 f_9@@6) (select (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| ExhaleHeap@@4) o2_1@@6 f_9@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| ExhaleHeap@@4) o2_1@@6 f_9@@6))
))) (forall ((o2_1@@7 T@Ref) (f_9@@7 T@Field_2354_12215) ) (!  (=> (select (|PolymorphicMapType_4743_4254_12215#PolymorphicMapType_4743| (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@5) null (WandMaskField_2354 pm_f_1@@2))) o2_1@@7 f_9@@7) (= (select (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| Heap@@5) o2_1@@7 f_9@@7) (select (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| ExhaleHeap@@4) o2_1@@7 f_9@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| ExhaleHeap@@4) o2_1@@7 f_9@@7))
))) (forall ((o2_1@@8 T@Ref) (f_9@@8 T@Field_2354_12348) ) (!  (=> (select (|PolymorphicMapType_4743_4254_13526#PolymorphicMapType_4743| (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@5) null (WandMaskField_2354 pm_f_1@@2))) o2_1@@8 f_9@@8) (= (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@5) o2_1@@8 f_9@@8) (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| ExhaleHeap@@4) o2_1@@8 f_9@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| ExhaleHeap@@4) o2_1@@8 f_9@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_2354_14053 pm_f_1@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4194) (ExhaleHeap@@5 T@PolymorphicMapType_4194) (Mask@@16 T@PolymorphicMapType_4215) (o_4@@0 T@Ref) (f_9@@9 T@Field_2354_12348) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_2354_18053 Mask@@16 o_4@@0 f_9@@9) (= (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@6) o_4@@0 f_9@@9) (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| ExhaleHeap@@5) o_4@@0 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| ExhaleHeap@@5) o_4@@0 f_9@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4194) (ExhaleHeap@@6 T@PolymorphicMapType_4194) (Mask@@17 T@PolymorphicMapType_4215) (o_4@@1 T@Ref) (f_9@@10 T@Field_2354_12215) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_2354_12279 Mask@@17 o_4@@1 f_9@@10) (= (select (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| Heap@@7) o_4@@1 f_9@@10) (select (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| ExhaleHeap@@6) o_4@@1 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| ExhaleHeap@@6) o_4@@1 f_9@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4194) (ExhaleHeap@@7 T@PolymorphicMapType_4194) (Mask@@18 T@PolymorphicMapType_4215) (o_4@@2 T@Ref) (f_9@@11 T@Field_4267_4268) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_2354_4268 Mask@@18 o_4@@2 f_9@@11) (= (select (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| Heap@@8) o_4@@2 f_9@@11) (select (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| ExhaleHeap@@7) o_4@@2 f_9@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| ExhaleHeap@@7) o_4@@2 f_9@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4194) (ExhaleHeap@@8 T@PolymorphicMapType_4194) (Mask@@19 T@PolymorphicMapType_4215) (o_4@@3 T@Ref) (f_9@@12 T@Field_4254_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_2354_53 Mask@@19 o_4@@3 f_9@@12) (= (select (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@9) o_4@@3 f_9@@12) (select (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| ExhaleHeap@@8) o_4@@3 f_9@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| ExhaleHeap@@8) o_4@@3 f_9@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4194) (ExhaleHeap@@9 T@PolymorphicMapType_4194) (Mask@@20 T@PolymorphicMapType_4215) (o_4@@4 T@Ref) (f_9@@13 T@Field_7623_1263) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_2354_1263 Mask@@20 o_4@@4 f_9@@13) (= (select (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@@10) o_4@@4 f_9@@13) (select (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| ExhaleHeap@@9) o_4@@4 f_9@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| ExhaleHeap@@9) o_4@@4 f_9@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_2354_12348) ) (! (= (select (|PolymorphicMapType_4215_2354_16470#PolymorphicMapType_4215| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4215_2354_16470#PolymorphicMapType_4215| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_2354_12215) ) (! (= (select (|PolymorphicMapType_4215_2354_12215#PolymorphicMapType_4215| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4215_2354_12215#PolymorphicMapType_4215| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_4267_4268) ) (! (= (select (|PolymorphicMapType_4215_2354_4268#PolymorphicMapType_4215| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4215_2354_4268#PolymorphicMapType_4215| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_4254_53) ) (! (= (select (|PolymorphicMapType_4215_2354_53#PolymorphicMapType_4215| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4215_2354_53#PolymorphicMapType_4215| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_7623_1263) ) (! (= (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4215) (SummandMask1 T@PolymorphicMapType_4215) (SummandMask2 T@PolymorphicMapType_4215) (o_2@@19 T@Ref) (f_4@@19 T@Field_2354_12348) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4215_2354_16470#PolymorphicMapType_4215| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_4215_2354_16470#PolymorphicMapType_4215| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_4215_2354_16470#PolymorphicMapType_4215| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4215_2354_16470#PolymorphicMapType_4215| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4215_2354_16470#PolymorphicMapType_4215| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4215_2354_16470#PolymorphicMapType_4215| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4215) (SummandMask1@@0 T@PolymorphicMapType_4215) (SummandMask2@@0 T@PolymorphicMapType_4215) (o_2@@20 T@Ref) (f_4@@20 T@Field_2354_12215) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4215_2354_12215#PolymorphicMapType_4215| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_4215_2354_12215#PolymorphicMapType_4215| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_4215_2354_12215#PolymorphicMapType_4215| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4215_2354_12215#PolymorphicMapType_4215| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4215_2354_12215#PolymorphicMapType_4215| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4215_2354_12215#PolymorphicMapType_4215| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4215) (SummandMask1@@1 T@PolymorphicMapType_4215) (SummandMask2@@1 T@PolymorphicMapType_4215) (o_2@@21 T@Ref) (f_4@@21 T@Field_4267_4268) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4215_2354_4268#PolymorphicMapType_4215| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_4215_2354_4268#PolymorphicMapType_4215| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_4215_2354_4268#PolymorphicMapType_4215| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4215_2354_4268#PolymorphicMapType_4215| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4215_2354_4268#PolymorphicMapType_4215| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4215_2354_4268#PolymorphicMapType_4215| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4215) (SummandMask1@@2 T@PolymorphicMapType_4215) (SummandMask2@@2 T@PolymorphicMapType_4215) (o_2@@22 T@Ref) (f_4@@22 T@Field_4254_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4215_2354_53#PolymorphicMapType_4215| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_4215_2354_53#PolymorphicMapType_4215| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_4215_2354_53#PolymorphicMapType_4215| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4215_2354_53#PolymorphicMapType_4215| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4215_2354_53#PolymorphicMapType_4215| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4215_2354_53#PolymorphicMapType_4215| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4215) (SummandMask1@@3 T@PolymorphicMapType_4215) (SummandMask2@@3 T@PolymorphicMapType_4215) (o_2@@23 T@Ref) (f_4@@23 T@Field_7623_1263) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4194) (o_3 T@Ref) (f_10 T@Field_2354_12215) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_4194 (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@11) (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| Heap@@11) (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@@11) (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@11) (store (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| Heap@@11) o_3 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4194 (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@11) (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| Heap@@11) (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@@11) (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@11) (store (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| Heap@@11) o_3 f_10 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4194) (o_3@@0 T@Ref) (f_10@@0 T@Field_2354_12348) (v@@0 T@PolymorphicMapType_4743) ) (! (succHeap Heap@@12 (PolymorphicMapType_4194 (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@12) (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| Heap@@12) (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@@12) (store (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@12) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4194 (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@12) (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| Heap@@12) (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@@12) (store (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@12) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4194) (o_3@@1 T@Ref) (f_10@@1 T@Field_7623_1263) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_4194 (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@13) (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| Heap@@13) (store (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@@13) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@13) (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4194 (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@13) (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| Heap@@13) (store (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@@13) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@13) (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4194) (o_3@@2 T@Ref) (f_10@@2 T@Field_4267_4268) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_4194 (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@14) (store (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| Heap@@14) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@@14) (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@14) (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4194 (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@14) (store (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| Heap@@14) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@@14) (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@14) (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4194) (o_3@@3 T@Ref) (f_10@@3 T@Field_4254_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_4194 (store (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@15) o_3@@3 f_10@@3 v@@3) (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| Heap@@15) (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@@15) (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@15) (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4194 (store (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@15) o_3@@3 f_10@@3 v@@3) (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| Heap@@15) (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@@15) (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@15) (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| Heap@@15)))
)))
(assert (forall ((o_3@@4 T@Ref) (f_8 T@Field_4267_4268) (Heap@@16 T@PolymorphicMapType_4194) ) (!  (=> (select (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@16) o_3@@4 $allocated) (select (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@16) (select (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| Heap@@16) o_3@@4 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| Heap@@16) o_3@@4 f_8))
)))
(assert (forall ((p@@1 T@Field_2354_12215) (v_1@@0 T@FrameType) (q T@Field_2354_12215) (w@@0 T@FrameType) (r T@Field_2354_12215) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4254_4254 p@@1 v_1@@0 q w@@0) (InsidePredicate_4254_4254 q w@@0 r u)) (InsidePredicate_4254_4254 p@@1 v_1@@0 r u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4254_4254 p@@1 v_1@@0 q w@@0) (InsidePredicate_4254_4254 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x_4 () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_4215)
(declare-fun Heap@@17 () T@PolymorphicMapType_4194)
(declare-fun freshObj@0 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_4194)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun y () T@Ref)
(declare-fun z () T@Ref)
(set-info :boogie-vc-id test02)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon6_correct true))
(let ((anon11_Else_correct  (=> (and (not (NN x_4)) (= (ControlFlow 0 11) 7)) anon6_correct)))
(let ((anon11_Then_correct  (=> (NN x_4) (and (=> (= (ControlFlow 0 9) (- 0 10)) (HasDirectPerm_2354_1263 QPMask@0 x_4 f_7)) (=> (HasDirectPerm_2354_1263 QPMask@0 x_4 f_7) (=> (= (ControlFlow 0 9) 7) anon6_correct))))))
(let ((anon10_Then_correct  (=> (not (= x_4 null)) (and (=> (= (ControlFlow 0 12) 9) anon11_Then_correct) (=> (= (ControlFlow 0 12) 11) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (and (= x_4 null) (= (ControlFlow 0 8) 7)) anon6_correct)))
(let ((anon9_Else_correct  (=> (forall ((x_3 T@Ref) ) (!  (=> (not (= x_3 null)) (and (NN x_3) (= (select (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@@17) x_3 f_7) 0)))
 :qid |stdinbpl.432:20|
 :skolemid |36|
 :pattern ( (NN x_3))
)) (=> (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0)) (=> (and (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@17) freshObj@0 $allocated))) (and (= Heap@0 (PolymorphicMapType_4194 (store (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@17) freshObj@0 $allocated true) (|PolymorphicMapType_4194_2219_2220#PolymorphicMapType_4194| Heap@@17) (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@@17) (|PolymorphicMapType_4194_2354_12392#PolymorphicMapType_4194| Heap@@17) (|PolymorphicMapType_4194_4254_12215#PolymorphicMapType_4194| Heap@@17))) (state Heap@0 QPMask@0))) (and (=> (= (ControlFlow 0 3) (- 0 6)) (NN freshObj@0)) (=> (NN freshObj@0) (=> (state Heap@0 QPMask@0) (and (=> (= (ControlFlow 0 3) (- 0 5)) (HasDirectPerm_2354_1263 QPMask@0 freshObj@0 f_7)) (=> (HasDirectPerm_2354_1263 QPMask@0 freshObj@0 f_7) (and (=> (= (ControlFlow 0 3) (- 0 4)) (= (select (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@0) freshObj@0 f_7) 0)) (=> (= (select (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@0) freshObj@0 f_7) 0) (=> (and (state Heap@0 QPMask@0) (= (ControlFlow 0 3) (- 0 2))) false)))))))))))))
(let ((anon8_Else_correct  (and (=> (= (ControlFlow 0 13) (- 0 14)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (not (= x_1 null))) (not (= x_1_1 null))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.385:15|
 :skolemid |30|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (not (= x_1@@0 null))) (not (= x_1_1@@0 null))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.385:15|
 :skolemid |30|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (not (= x_1@@1 null)) (< NoPerm FullPerm)) (and (qpRange2 x_1@@1) (= (invRecv2 x_1@@1) x_1@@1)))
 :qid |stdinbpl.391:22|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@@17) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| QPMask@0) x_1@@1 f_7))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (not (= (invRecv2 o_9) null)) (< NoPerm FullPerm)) (qpRange2 o_9)) (= (invRecv2 o_9) o_9))
 :qid |stdinbpl.395:22|
 :skolemid |32|
 :pattern ( (invRecv2 o_9))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (not (= x_1@@2 null)) (not (= x_1@@2 null)))
 :qid |stdinbpl.401:22|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_4194_2354_1263#PolymorphicMapType_4194| Heap@@17) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| QPMask@0) x_1@@2 f_7))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (not (= (invRecv2 o_9@@0) null)) (< NoPerm FullPerm)) (qpRange2 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv2 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| QPMask@0) o_9@@0 f_7) (+ (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| ZeroMask) o_9@@0 f_7) FullPerm)))) (=> (not (and (and (not (= (invRecv2 o_9@@0) null)) (< NoPerm FullPerm)) (qpRange2 o_9@@0))) (= (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| QPMask@0) o_9@@0 f_7) (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| ZeroMask) o_9@@0 f_7))))
 :qid |stdinbpl.407:22|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| QPMask@0) o_9@@0 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_4254_53) ) (!  (=> true (= (select (|PolymorphicMapType_4215_2354_53#PolymorphicMapType_4215| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_4215_2354_53#PolymorphicMapType_4215| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.411:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_4215_2354_53#PolymorphicMapType_4215| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_4215_2354_53#PolymorphicMapType_4215| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_4267_4268) ) (!  (=> true (= (select (|PolymorphicMapType_4215_2354_4268#PolymorphicMapType_4215| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_4215_2354_4268#PolymorphicMapType_4215| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.411:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_4215_2354_4268#PolymorphicMapType_4215| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_4215_2354_4268#PolymorphicMapType_4215| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_7623_1263) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.411:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_4215_2354_1263#PolymorphicMapType_4215| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_2354_12215) ) (!  (=> true (= (select (|PolymorphicMapType_4215_2354_12215#PolymorphicMapType_4215| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_4215_2354_12215#PolymorphicMapType_4215| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.411:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_4215_2354_12215#PolymorphicMapType_4215| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_4215_2354_12215#PolymorphicMapType_4215| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_2354_12348) ) (!  (=> true (= (select (|PolymorphicMapType_4215_2354_16470#PolymorphicMapType_4215| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_4215_2354_16470#PolymorphicMapType_4215| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.411:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_4215_2354_16470#PolymorphicMapType_4215| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_4215_2354_16470#PolymorphicMapType_4215| QPMask@0) o_9@@5 f_5@@3))
))) (state Heap@@17 QPMask@0)) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 13) 3) anon9_Else_correct) (=> (= (ControlFlow 0 13) 12) anon10_Then_correct)) (=> (= (ControlFlow 0 13) 8) anon10_Else_correct))))))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@17) y $allocated) (select (|PolymorphicMapType_4194_2216_53#PolymorphicMapType_4194| Heap@@17) z $allocated))) (and (=> (= (ControlFlow 0 15) 1) anon8_Then_correct) (=> (= (ControlFlow 0 15) 13) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16) 15) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
