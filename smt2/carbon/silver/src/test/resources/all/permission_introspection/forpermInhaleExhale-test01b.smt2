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
(declare-sort T@Field_6069_53 0)
(declare-sort T@Field_6082_6083 0)
(declare-sort T@Field_9395_1186 0)
(declare-sort T@Field_2919_18349 0)
(declare-sort T@Field_2919_18216 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6030 0)) (((PolymorphicMapType_6030 (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| (Array T@Ref T@Field_9395_1186 Real)) (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| (Array T@Ref T@Field_6069_53 Real)) (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| (Array T@Ref T@Field_6082_6083 Real)) (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| (Array T@Ref T@Field_2919_18216 Real)) (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| (Array T@Ref T@Field_2919_18349 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6558 0)) (((PolymorphicMapType_6558 (|PolymorphicMapType_6558_6069_53#PolymorphicMapType_6558| (Array T@Ref T@Field_6069_53 Bool)) (|PolymorphicMapType_6558_6069_6083#PolymorphicMapType_6558| (Array T@Ref T@Field_6082_6083 Bool)) (|PolymorphicMapType_6558_6069_1186#PolymorphicMapType_6558| (Array T@Ref T@Field_9395_1186 Bool)) (|PolymorphicMapType_6558_6069_18216#PolymorphicMapType_6558| (Array T@Ref T@Field_2919_18216 Bool)) (|PolymorphicMapType_6558_6069_19527#PolymorphicMapType_6558| (Array T@Ref T@Field_2919_18349 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6009 0)) (((PolymorphicMapType_6009 (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| (Array T@Ref T@Field_6069_53 Bool)) (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| (Array T@Ref T@Field_6082_6083 T@Ref)) (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| (Array T@Ref T@Field_9395_1186 Int)) (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| (Array T@Ref T@Field_2919_18349 T@PolymorphicMapType_6558)) (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| (Array T@Ref T@Field_2919_18216 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6069_53)
(declare-fun f_7 () T@Field_9395_1186)
(declare-fun succHeap (T@PolymorphicMapType_6009 T@PolymorphicMapType_6009) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6009 T@PolymorphicMapType_6009) Bool)
(declare-fun state (T@PolymorphicMapType_6009 T@PolymorphicMapType_6030) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6030) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6558)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6009 T@PolymorphicMapType_6009 T@PolymorphicMapType_6030) Bool)
(declare-fun IsPredicateField_2919_18307 (T@Field_2919_18216) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2919 (T@Field_2919_18216) T@Field_2919_18349)
(declare-fun HasDirectPerm_2919_18280 (T@PolymorphicMapType_6030 T@Ref T@Field_2919_18216) Bool)
(declare-fun IsWandField_2919_20054 (T@Field_2919_18216) Bool)
(declare-fun WandMaskField_2919 (T@Field_2919_18216) T@Field_2919_18349)
(declare-fun dummyHeap () T@PolymorphicMapType_6009)
(declare-fun ZeroMask () T@PolymorphicMapType_6030)
(declare-fun InsidePredicate_6069_6069 (T@Field_2919_18216 T@FrameType T@Field_2919_18216 T@FrameType) Bool)
(declare-fun IsPredicateField_2919_1186 (T@Field_9395_1186) Bool)
(declare-fun IsWandField_2919_1186 (T@Field_9395_1186) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2919_23600 (T@Field_2919_18349) Bool)
(declare-fun IsWandField_2919_23616 (T@Field_2919_18349) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2919_6083 (T@Field_6082_6083) Bool)
(declare-fun IsWandField_2919_6083 (T@Field_6082_6083) Bool)
(declare-fun IsPredicateField_2919_53 (T@Field_6069_53) Bool)
(declare-fun IsWandField_2919_53 (T@Field_6069_53) Bool)
(declare-fun HasDirectPerm_2919_24054 (T@PolymorphicMapType_6030 T@Ref T@Field_2919_18349) Bool)
(declare-fun HasDirectPerm_2919_6083 (T@PolymorphicMapType_6030 T@Ref T@Field_6082_6083) Bool)
(declare-fun HasDirectPerm_2919_53 (T@PolymorphicMapType_6030 T@Ref T@Field_6069_53) Bool)
(declare-fun HasDirectPerm_2919_1186 (T@PolymorphicMapType_6030 T@Ref T@Field_9395_1186) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6030 T@PolymorphicMapType_6030 T@PolymorphicMapType_6030) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6009) (Heap1 T@PolymorphicMapType_6009) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6009) (Mask T@PolymorphicMapType_6030) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6009) (Heap1@@0 T@PolymorphicMapType_6009) (Heap2 T@PolymorphicMapType_6009) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2919_18349) ) (!  (not (select (|PolymorphicMapType_6558_6069_19527#PolymorphicMapType_6558| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6558_6069_19527#PolymorphicMapType_6558| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2919_18216) ) (!  (not (select (|PolymorphicMapType_6558_6069_18216#PolymorphicMapType_6558| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6558_6069_18216#PolymorphicMapType_6558| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9395_1186) ) (!  (not (select (|PolymorphicMapType_6558_6069_1186#PolymorphicMapType_6558| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6558_6069_1186#PolymorphicMapType_6558| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6082_6083) ) (!  (not (select (|PolymorphicMapType_6558_6069_6083#PolymorphicMapType_6558| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6558_6069_6083#PolymorphicMapType_6558| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6069_53) ) (!  (not (select (|PolymorphicMapType_6558_6069_53#PolymorphicMapType_6558| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6558_6069_53#PolymorphicMapType_6558| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6009) (ExhaleHeap T@PolymorphicMapType_6009) (Mask@@0 T@PolymorphicMapType_6030) (pm_f_18 T@Field_2919_18216) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2919_18280 Mask@@0 null pm_f_18) (IsPredicateField_2919_18307 pm_f_18)) (= (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@0) null (PredicateMaskField_2919 pm_f_18)) (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap) null (PredicateMaskField_2919 pm_f_18)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2919_18307 pm_f_18) (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap) null (PredicateMaskField_2919 pm_f_18)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6009) (ExhaleHeap@@0 T@PolymorphicMapType_6009) (Mask@@1 T@PolymorphicMapType_6030) (pm_f_18@@0 T@Field_2919_18216) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2919_18280 Mask@@1 null pm_f_18@@0) (IsWandField_2919_20054 pm_f_18@@0)) (= (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@1) null (WandMaskField_2919 pm_f_18@@0)) (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap@@0) null (WandMaskField_2919 pm_f_18@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_2919_20054 pm_f_18@@0) (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap@@0) null (WandMaskField_2919 pm_f_18@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6009) (ExhaleHeap@@1 T@PolymorphicMapType_6009) (Mask@@2 T@PolymorphicMapType_6030) (o_39 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@2) o_39 $allocated) (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| ExhaleHeap@@1) o_39 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| ExhaleHeap@@1) o_39 $allocated))
)))
(assert (forall ((p T@Field_2919_18216) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6069_6069 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6069_6069 p v_1 p w))
)))
(assert  (not (IsPredicateField_2919_1186 f_7)))
(assert  (not (IsWandField_2919_1186 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6009) (ExhaleHeap@@2 T@PolymorphicMapType_6009) (Mask@@3 T@PolymorphicMapType_6030) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_6030) (o_2@@4 T@Ref) (f_4@@4 T@Field_2919_18349) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_2919_23600 f_4@@4))) (not (IsWandField_2919_23616 f_4@@4))) (<= (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_6030) (o_2@@5 T@Ref) (f_4@@5 T@Field_2919_18216) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_2919_18307 f_4@@5))) (not (IsWandField_2919_20054 f_4@@5))) (<= (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6030) (o_2@@6 T@Ref) (f_4@@6 T@Field_6082_6083) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2919_6083 f_4@@6))) (not (IsWandField_2919_6083 f_4@@6))) (<= (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6030) (o_2@@7 T@Ref) (f_4@@7 T@Field_6069_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2919_53 f_4@@7))) (not (IsWandField_2919_53 f_4@@7))) (<= (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6030) (o_2@@8 T@Ref) (f_4@@8 T@Field_9395_1186) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2919_1186 f_4@@8))) (not (IsWandField_2919_1186 f_4@@8))) (<= (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6030) (o_2@@9 T@Ref) (f_4@@9 T@Field_2919_18349) ) (! (= (HasDirectPerm_2919_24054 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2919_24054 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6030) (o_2@@10 T@Ref) (f_4@@10 T@Field_2919_18216) ) (! (= (HasDirectPerm_2919_18280 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2919_18280 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6030) (o_2@@11 T@Ref) (f_4@@11 T@Field_6082_6083) ) (! (= (HasDirectPerm_2919_6083 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2919_6083 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6030) (o_2@@12 T@Ref) (f_4@@12 T@Field_6069_53) ) (! (= (HasDirectPerm_2919_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2919_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6030) (o_2@@13 T@Ref) (f_4@@13 T@Field_9395_1186) ) (! (= (HasDirectPerm_2919_1186 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2919_1186 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6009) (ExhaleHeap@@3 T@PolymorphicMapType_6009) (Mask@@14 T@PolymorphicMapType_6030) (pm_f_18@@1 T@Field_2919_18216) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_2919_18280 Mask@@14 null pm_f_18@@1) (IsPredicateField_2919_18307 pm_f_18@@1)) (and (and (and (and (forall ((o2_18 T@Ref) (f_21 T@Field_6069_53) ) (!  (=> (select (|PolymorphicMapType_6558_6069_53#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@4) null (PredicateMaskField_2919 pm_f_18@@1))) o2_18 f_21) (= (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@4) o2_18 f_21) (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18 f_21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18 f_21))
)) (forall ((o2_18@@0 T@Ref) (f_21@@0 T@Field_6082_6083) ) (!  (=> (select (|PolymorphicMapType_6558_6069_6083#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@4) null (PredicateMaskField_2919 pm_f_18@@1))) o2_18@@0 f_21@@0) (= (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@4) o2_18@@0 f_21@@0) (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18@@0 f_21@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18@@0 f_21@@0))
))) (forall ((o2_18@@1 T@Ref) (f_21@@1 T@Field_9395_1186) ) (!  (=> (select (|PolymorphicMapType_6558_6069_1186#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@4) null (PredicateMaskField_2919 pm_f_18@@1))) o2_18@@1 f_21@@1) (= (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@4) o2_18@@1 f_21@@1) (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18@@1 f_21@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18@@1 f_21@@1))
))) (forall ((o2_18@@2 T@Ref) (f_21@@2 T@Field_2919_18216) ) (!  (=> (select (|PolymorphicMapType_6558_6069_18216#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@4) null (PredicateMaskField_2919 pm_f_18@@1))) o2_18@@2 f_21@@2) (= (select (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@4) o2_18@@2 f_21@@2) (select (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18@@2 f_21@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18@@2 f_21@@2))
))) (forall ((o2_18@@3 T@Ref) (f_21@@3 T@Field_2919_18349) ) (!  (=> (select (|PolymorphicMapType_6558_6069_19527#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@4) null (PredicateMaskField_2919 pm_f_18@@1))) o2_18@@3 f_21@@3) (= (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@4) o2_18@@3 f_21@@3) (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18@@3 f_21@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18@@3 f_21@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_2919_18307 pm_f_18@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6009) (ExhaleHeap@@4 T@PolymorphicMapType_6009) (Mask@@15 T@PolymorphicMapType_6030) (pm_f_18@@2 T@Field_2919_18216) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_2919_18280 Mask@@15 null pm_f_18@@2) (IsWandField_2919_20054 pm_f_18@@2)) (and (and (and (and (forall ((o2_18@@4 T@Ref) (f_21@@4 T@Field_6069_53) ) (!  (=> (select (|PolymorphicMapType_6558_6069_53#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@5) null (WandMaskField_2919 pm_f_18@@2))) o2_18@@4 f_21@@4) (= (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@5) o2_18@@4 f_21@@4) (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@4 f_21@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@4 f_21@@4))
)) (forall ((o2_18@@5 T@Ref) (f_21@@5 T@Field_6082_6083) ) (!  (=> (select (|PolymorphicMapType_6558_6069_6083#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@5) null (WandMaskField_2919 pm_f_18@@2))) o2_18@@5 f_21@@5) (= (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@5) o2_18@@5 f_21@@5) (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@5 f_21@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@5 f_21@@5))
))) (forall ((o2_18@@6 T@Ref) (f_21@@6 T@Field_9395_1186) ) (!  (=> (select (|PolymorphicMapType_6558_6069_1186#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@5) null (WandMaskField_2919 pm_f_18@@2))) o2_18@@6 f_21@@6) (= (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@5) o2_18@@6 f_21@@6) (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@6 f_21@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@6 f_21@@6))
))) (forall ((o2_18@@7 T@Ref) (f_21@@7 T@Field_2919_18216) ) (!  (=> (select (|PolymorphicMapType_6558_6069_18216#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@5) null (WandMaskField_2919 pm_f_18@@2))) o2_18@@7 f_21@@7) (= (select (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@5) o2_18@@7 f_21@@7) (select (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@7 f_21@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@7 f_21@@7))
))) (forall ((o2_18@@8 T@Ref) (f_21@@8 T@Field_2919_18349) ) (!  (=> (select (|PolymorphicMapType_6558_6069_19527#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@5) null (WandMaskField_2919 pm_f_18@@2))) o2_18@@8 f_21@@8) (= (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@5) o2_18@@8 f_21@@8) (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@8 f_21@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@8 f_21@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_2919_20054 pm_f_18@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6009) (ExhaleHeap@@5 T@PolymorphicMapType_6009) (Mask@@16 T@PolymorphicMapType_6030) (o_39@@0 T@Ref) (f_21@@9 T@Field_2919_18349) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_2919_24054 Mask@@16 o_39@@0 f_21@@9) (= (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@6) o_39@@0 f_21@@9) (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap@@5) o_39@@0 f_21@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap@@5) o_39@@0 f_21@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6009) (ExhaleHeap@@6 T@PolymorphicMapType_6009) (Mask@@17 T@PolymorphicMapType_6030) (o_39@@1 T@Ref) (f_21@@10 T@Field_2919_18216) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_2919_18280 Mask@@17 o_39@@1 f_21@@10) (= (select (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@7) o_39@@1 f_21@@10) (select (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| ExhaleHeap@@6) o_39@@1 f_21@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| ExhaleHeap@@6) o_39@@1 f_21@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6009) (ExhaleHeap@@7 T@PolymorphicMapType_6009) (Mask@@18 T@PolymorphicMapType_6030) (o_39@@2 T@Ref) (f_21@@11 T@Field_6082_6083) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_2919_6083 Mask@@18 o_39@@2 f_21@@11) (= (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@8) o_39@@2 f_21@@11) (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| ExhaleHeap@@7) o_39@@2 f_21@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| ExhaleHeap@@7) o_39@@2 f_21@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6009) (ExhaleHeap@@8 T@PolymorphicMapType_6009) (Mask@@19 T@PolymorphicMapType_6030) (o_39@@3 T@Ref) (f_21@@12 T@Field_6069_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_2919_53 Mask@@19 o_39@@3 f_21@@12) (= (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@9) o_39@@3 f_21@@12) (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| ExhaleHeap@@8) o_39@@3 f_21@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| ExhaleHeap@@8) o_39@@3 f_21@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6009) (ExhaleHeap@@9 T@PolymorphicMapType_6009) (Mask@@20 T@PolymorphicMapType_6030) (o_39@@4 T@Ref) (f_21@@13 T@Field_9395_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_2919_1186 Mask@@20 o_39@@4 f_21@@13) (= (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@10) o_39@@4 f_21@@13) (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| ExhaleHeap@@9) o_39@@4 f_21@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| ExhaleHeap@@9) o_39@@4 f_21@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_2919_18349) ) (! (= (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_2919_18216) ) (! (= (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6082_6083) ) (! (= (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6069_53) ) (! (= (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_9395_1186) ) (! (= (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6030) (SummandMask1 T@PolymorphicMapType_6030) (SummandMask2 T@PolymorphicMapType_6030) (o_2@@19 T@Ref) (f_4@@19 T@Field_2919_18349) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6030) (SummandMask1@@0 T@PolymorphicMapType_6030) (SummandMask2@@0 T@PolymorphicMapType_6030) (o_2@@20 T@Ref) (f_4@@20 T@Field_2919_18216) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6030) (SummandMask1@@1 T@PolymorphicMapType_6030) (SummandMask2@@1 T@PolymorphicMapType_6030) (o_2@@21 T@Ref) (f_4@@21 T@Field_6082_6083) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6030) (SummandMask1@@2 T@PolymorphicMapType_6030) (SummandMask2@@2 T@PolymorphicMapType_6030) (o_2@@22 T@Ref) (f_4@@22 T@Field_6069_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6030) (SummandMask1@@3 T@PolymorphicMapType_6030) (SummandMask2@@3 T@PolymorphicMapType_6030) (o_2@@23 T@Ref) (f_4@@23 T@Field_9395_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6009) (o_38 T@Ref) (f_23 T@Field_2919_18216) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_6009 (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@11) (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@11) (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@11) (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@11) (store (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@11) o_38 f_23 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6009 (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@11) (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@11) (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@11) (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@11) (store (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@11) o_38 f_23 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6009) (o_38@@0 T@Ref) (f_23@@0 T@Field_2919_18349) (v@@0 T@PolymorphicMapType_6558) ) (! (succHeap Heap@@12 (PolymorphicMapType_6009 (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@12) (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@12) (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@12) (store (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@12) o_38@@0 f_23@@0 v@@0) (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6009 (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@12) (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@12) (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@12) (store (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@12) o_38@@0 f_23@@0 v@@0) (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6009) (o_38@@1 T@Ref) (f_23@@1 T@Field_9395_1186) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_6009 (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@13) (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@13) (store (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@13) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@13) (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6009 (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@13) (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@13) (store (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@13) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@13) (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6009) (o_38@@2 T@Ref) (f_23@@2 T@Field_6082_6083) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_6009 (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@14) (store (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@14) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@14) (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@14) (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6009 (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@14) (store (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@14) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@14) (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@14) (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6009) (o_38@@3 T@Ref) (f_23@@3 T@Field_6069_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_6009 (store (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@15) o_38@@3 f_23@@3 v@@3) (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@15) (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@15) (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@15) (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6009 (store (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@15) o_38@@3 f_23@@3 v@@3) (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@15) (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@15) (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@15) (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@15)))
)))
(assert (forall ((o_38@@4 T@Ref) (f_51 T@Field_6082_6083) (Heap@@16 T@PolymorphicMapType_6009) ) (!  (=> (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@16) o_38@@4 $allocated) (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@16) (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@16) o_38@@4 f_51) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@16) o_38@@4 f_51))
)))
(assert (forall ((p@@1 T@Field_2919_18216) (v_1@@0 T@FrameType) (q T@Field_2919_18216) (w@@0 T@FrameType) (r T@Field_2919_18216) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6069_6069 p@@1 v_1@@0 q w@@0) (InsidePredicate_6069_6069 q w@@0 r u)) (InsidePredicate_6069_6069 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6069_6069 p@@1 v_1@@0 q w@@0) (InsidePredicate_6069_6069 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_6030)
(declare-fun r_14 () T@Ref)
(declare-fun Heap@@17 () T@PolymorphicMapType_6009)
(declare-fun x () T@Ref)
(set-info :boogie-vc-id test01b)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon3_correct true))
(let ((anon6_Else_correct  (=> (and (not (HasDirectPerm_2919_1186 Mask@0 r_14 f_7)) (= (ControlFlow 0 8) 4)) anon3_correct)))
(let ((anon6_Then_correct  (=> (HasDirectPerm_2919_1186 Mask@0 r_14 f_7) (and (=> (= (ControlFlow 0 5) (- 0 7)) (HasDirectPerm_2919_1186 Mask@0 r_14 f_7)) (=> (HasDirectPerm_2919_1186 Mask@0 r_14 f_7) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_2919_1186 Mask@0 r_14 f_7)) (=> (HasDirectPerm_2919_1186 Mask@0 r_14 f_7) (=> (= (ControlFlow 0 5) 4) anon3_correct))))))))
(let ((anon5_Else_correct  (=> (forall ((r_1_1 T@Ref) ) (!  (=> (HasDirectPerm_2919_1186 Mask@0 r_1_1 f_7) (> (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@17) r_1_1 f_7) 0))
 :qid |stdinbpl.291:20|
 :skolemid |23|
 :pattern ( (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| Mask@0) r_1_1 f_7))
 :pattern ( (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@17) r_1_1 f_7))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_2919_1186 Mask@0 x f_7)) (=> (HasDirectPerm_2919_1186 Mask@0 x f_7) (=> (= (ControlFlow 0 2) (- 0 1)) (> (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@17) x f_7) 0))))))))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@17) x $allocated) (not (= x null))) (and (= Mask@0 (PolymorphicMapType_6030 (store (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| ZeroMask) x f_7) FullPerm)) (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| ZeroMask) (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| ZeroMask) (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| ZeroMask) (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| ZeroMask))) (state Heap@@17 Mask@0))) (and (and (=> (= (ControlFlow 0 9) 2) anon5_Else_correct) (=> (= (ControlFlow 0 9) 5) anon6_Then_correct)) (=> (= (ControlFlow 0 9) 8) anon6_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 9) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
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
(declare-sort T@Field_6069_53 0)
(declare-sort T@Field_6082_6083 0)
(declare-sort T@Field_9395_1186 0)
(declare-sort T@Field_2919_18349 0)
(declare-sort T@Field_2919_18216 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6030 0)) (((PolymorphicMapType_6030 (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| (Array T@Ref T@Field_9395_1186 Real)) (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| (Array T@Ref T@Field_6069_53 Real)) (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| (Array T@Ref T@Field_6082_6083 Real)) (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| (Array T@Ref T@Field_2919_18216 Real)) (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| (Array T@Ref T@Field_2919_18349 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6558 0)) (((PolymorphicMapType_6558 (|PolymorphicMapType_6558_6069_53#PolymorphicMapType_6558| (Array T@Ref T@Field_6069_53 Bool)) (|PolymorphicMapType_6558_6069_6083#PolymorphicMapType_6558| (Array T@Ref T@Field_6082_6083 Bool)) (|PolymorphicMapType_6558_6069_1186#PolymorphicMapType_6558| (Array T@Ref T@Field_9395_1186 Bool)) (|PolymorphicMapType_6558_6069_18216#PolymorphicMapType_6558| (Array T@Ref T@Field_2919_18216 Bool)) (|PolymorphicMapType_6558_6069_19527#PolymorphicMapType_6558| (Array T@Ref T@Field_2919_18349 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6009 0)) (((PolymorphicMapType_6009 (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| (Array T@Ref T@Field_6069_53 Bool)) (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| (Array T@Ref T@Field_6082_6083 T@Ref)) (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| (Array T@Ref T@Field_9395_1186 Int)) (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| (Array T@Ref T@Field_2919_18349 T@PolymorphicMapType_6558)) (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| (Array T@Ref T@Field_2919_18216 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6069_53)
(declare-fun f_7 () T@Field_9395_1186)
(declare-fun succHeap (T@PolymorphicMapType_6009 T@PolymorphicMapType_6009) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6009 T@PolymorphicMapType_6009) Bool)
(declare-fun state (T@PolymorphicMapType_6009 T@PolymorphicMapType_6030) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6030) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6558)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6009 T@PolymorphicMapType_6009 T@PolymorphicMapType_6030) Bool)
(declare-fun IsPredicateField_2919_18307 (T@Field_2919_18216) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2919 (T@Field_2919_18216) T@Field_2919_18349)
(declare-fun HasDirectPerm_2919_18280 (T@PolymorphicMapType_6030 T@Ref T@Field_2919_18216) Bool)
(declare-fun IsWandField_2919_20054 (T@Field_2919_18216) Bool)
(declare-fun WandMaskField_2919 (T@Field_2919_18216) T@Field_2919_18349)
(declare-fun dummyHeap () T@PolymorphicMapType_6009)
(declare-fun ZeroMask () T@PolymorphicMapType_6030)
(declare-fun InsidePredicate_6069_6069 (T@Field_2919_18216 T@FrameType T@Field_2919_18216 T@FrameType) Bool)
(declare-fun IsPredicateField_2919_1186 (T@Field_9395_1186) Bool)
(declare-fun IsWandField_2919_1186 (T@Field_9395_1186) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2919_23600 (T@Field_2919_18349) Bool)
(declare-fun IsWandField_2919_23616 (T@Field_2919_18349) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2919_6083 (T@Field_6082_6083) Bool)
(declare-fun IsWandField_2919_6083 (T@Field_6082_6083) Bool)
(declare-fun IsPredicateField_2919_53 (T@Field_6069_53) Bool)
(declare-fun IsWandField_2919_53 (T@Field_6069_53) Bool)
(declare-fun HasDirectPerm_2919_24054 (T@PolymorphicMapType_6030 T@Ref T@Field_2919_18349) Bool)
(declare-fun HasDirectPerm_2919_6083 (T@PolymorphicMapType_6030 T@Ref T@Field_6082_6083) Bool)
(declare-fun HasDirectPerm_2919_53 (T@PolymorphicMapType_6030 T@Ref T@Field_6069_53) Bool)
(declare-fun HasDirectPerm_2919_1186 (T@PolymorphicMapType_6030 T@Ref T@Field_9395_1186) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6030 T@PolymorphicMapType_6030 T@PolymorphicMapType_6030) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6009) (Heap1 T@PolymorphicMapType_6009) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6009) (Mask T@PolymorphicMapType_6030) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6009) (Heap1@@0 T@PolymorphicMapType_6009) (Heap2 T@PolymorphicMapType_6009) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2919_18349) ) (!  (not (select (|PolymorphicMapType_6558_6069_19527#PolymorphicMapType_6558| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6558_6069_19527#PolymorphicMapType_6558| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2919_18216) ) (!  (not (select (|PolymorphicMapType_6558_6069_18216#PolymorphicMapType_6558| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6558_6069_18216#PolymorphicMapType_6558| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9395_1186) ) (!  (not (select (|PolymorphicMapType_6558_6069_1186#PolymorphicMapType_6558| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6558_6069_1186#PolymorphicMapType_6558| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6082_6083) ) (!  (not (select (|PolymorphicMapType_6558_6069_6083#PolymorphicMapType_6558| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6558_6069_6083#PolymorphicMapType_6558| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6069_53) ) (!  (not (select (|PolymorphicMapType_6558_6069_53#PolymorphicMapType_6558| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6558_6069_53#PolymorphicMapType_6558| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6009) (ExhaleHeap T@PolymorphicMapType_6009) (Mask@@0 T@PolymorphicMapType_6030) (pm_f_18 T@Field_2919_18216) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2919_18280 Mask@@0 null pm_f_18) (IsPredicateField_2919_18307 pm_f_18)) (= (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@0) null (PredicateMaskField_2919 pm_f_18)) (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap) null (PredicateMaskField_2919 pm_f_18)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2919_18307 pm_f_18) (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap) null (PredicateMaskField_2919 pm_f_18)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6009) (ExhaleHeap@@0 T@PolymorphicMapType_6009) (Mask@@1 T@PolymorphicMapType_6030) (pm_f_18@@0 T@Field_2919_18216) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2919_18280 Mask@@1 null pm_f_18@@0) (IsWandField_2919_20054 pm_f_18@@0)) (= (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@1) null (WandMaskField_2919 pm_f_18@@0)) (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap@@0) null (WandMaskField_2919 pm_f_18@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_2919_20054 pm_f_18@@0) (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap@@0) null (WandMaskField_2919 pm_f_18@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6009) (ExhaleHeap@@1 T@PolymorphicMapType_6009) (Mask@@2 T@PolymorphicMapType_6030) (o_39 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@2) o_39 $allocated) (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| ExhaleHeap@@1) o_39 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| ExhaleHeap@@1) o_39 $allocated))
)))
(assert (forall ((p T@Field_2919_18216) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6069_6069 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6069_6069 p v_1 p w))
)))
(assert  (not (IsPredicateField_2919_1186 f_7)))
(assert  (not (IsWandField_2919_1186 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6009) (ExhaleHeap@@2 T@PolymorphicMapType_6009) (Mask@@3 T@PolymorphicMapType_6030) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_6030) (o_2@@4 T@Ref) (f_4@@4 T@Field_2919_18349) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_2919_23600 f_4@@4))) (not (IsWandField_2919_23616 f_4@@4))) (<= (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_6030) (o_2@@5 T@Ref) (f_4@@5 T@Field_2919_18216) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_2919_18307 f_4@@5))) (not (IsWandField_2919_20054 f_4@@5))) (<= (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6030) (o_2@@6 T@Ref) (f_4@@6 T@Field_6082_6083) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2919_6083 f_4@@6))) (not (IsWandField_2919_6083 f_4@@6))) (<= (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6030) (o_2@@7 T@Ref) (f_4@@7 T@Field_6069_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2919_53 f_4@@7))) (not (IsWandField_2919_53 f_4@@7))) (<= (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6030) (o_2@@8 T@Ref) (f_4@@8 T@Field_9395_1186) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2919_1186 f_4@@8))) (not (IsWandField_2919_1186 f_4@@8))) (<= (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6030) (o_2@@9 T@Ref) (f_4@@9 T@Field_2919_18349) ) (! (= (HasDirectPerm_2919_24054 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2919_24054 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6030) (o_2@@10 T@Ref) (f_4@@10 T@Field_2919_18216) ) (! (= (HasDirectPerm_2919_18280 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2919_18280 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6030) (o_2@@11 T@Ref) (f_4@@11 T@Field_6082_6083) ) (! (= (HasDirectPerm_2919_6083 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2919_6083 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6030) (o_2@@12 T@Ref) (f_4@@12 T@Field_6069_53) ) (! (= (HasDirectPerm_2919_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2919_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6030) (o_2@@13 T@Ref) (f_4@@13 T@Field_9395_1186) ) (! (= (HasDirectPerm_2919_1186 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2919_1186 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6009) (ExhaleHeap@@3 T@PolymorphicMapType_6009) (Mask@@14 T@PolymorphicMapType_6030) (pm_f_18@@1 T@Field_2919_18216) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_2919_18280 Mask@@14 null pm_f_18@@1) (IsPredicateField_2919_18307 pm_f_18@@1)) (and (and (and (and (forall ((o2_18 T@Ref) (f_21 T@Field_6069_53) ) (!  (=> (select (|PolymorphicMapType_6558_6069_53#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@4) null (PredicateMaskField_2919 pm_f_18@@1))) o2_18 f_21) (= (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@4) o2_18 f_21) (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18 f_21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18 f_21))
)) (forall ((o2_18@@0 T@Ref) (f_21@@0 T@Field_6082_6083) ) (!  (=> (select (|PolymorphicMapType_6558_6069_6083#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@4) null (PredicateMaskField_2919 pm_f_18@@1))) o2_18@@0 f_21@@0) (= (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@4) o2_18@@0 f_21@@0) (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18@@0 f_21@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18@@0 f_21@@0))
))) (forall ((o2_18@@1 T@Ref) (f_21@@1 T@Field_9395_1186) ) (!  (=> (select (|PolymorphicMapType_6558_6069_1186#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@4) null (PredicateMaskField_2919 pm_f_18@@1))) o2_18@@1 f_21@@1) (= (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@4) o2_18@@1 f_21@@1) (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18@@1 f_21@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18@@1 f_21@@1))
))) (forall ((o2_18@@2 T@Ref) (f_21@@2 T@Field_2919_18216) ) (!  (=> (select (|PolymorphicMapType_6558_6069_18216#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@4) null (PredicateMaskField_2919 pm_f_18@@1))) o2_18@@2 f_21@@2) (= (select (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@4) o2_18@@2 f_21@@2) (select (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18@@2 f_21@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18@@2 f_21@@2))
))) (forall ((o2_18@@3 T@Ref) (f_21@@3 T@Field_2919_18349) ) (!  (=> (select (|PolymorphicMapType_6558_6069_19527#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@4) null (PredicateMaskField_2919 pm_f_18@@1))) o2_18@@3 f_21@@3) (= (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@4) o2_18@@3 f_21@@3) (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18@@3 f_21@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap@@3) o2_18@@3 f_21@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_2919_18307 pm_f_18@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6009) (ExhaleHeap@@4 T@PolymorphicMapType_6009) (Mask@@15 T@PolymorphicMapType_6030) (pm_f_18@@2 T@Field_2919_18216) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_2919_18280 Mask@@15 null pm_f_18@@2) (IsWandField_2919_20054 pm_f_18@@2)) (and (and (and (and (forall ((o2_18@@4 T@Ref) (f_21@@4 T@Field_6069_53) ) (!  (=> (select (|PolymorphicMapType_6558_6069_53#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@5) null (WandMaskField_2919 pm_f_18@@2))) o2_18@@4 f_21@@4) (= (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@5) o2_18@@4 f_21@@4) (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@4 f_21@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@4 f_21@@4))
)) (forall ((o2_18@@5 T@Ref) (f_21@@5 T@Field_6082_6083) ) (!  (=> (select (|PolymorphicMapType_6558_6069_6083#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@5) null (WandMaskField_2919 pm_f_18@@2))) o2_18@@5 f_21@@5) (= (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@5) o2_18@@5 f_21@@5) (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@5 f_21@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@5 f_21@@5))
))) (forall ((o2_18@@6 T@Ref) (f_21@@6 T@Field_9395_1186) ) (!  (=> (select (|PolymorphicMapType_6558_6069_1186#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@5) null (WandMaskField_2919 pm_f_18@@2))) o2_18@@6 f_21@@6) (= (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@5) o2_18@@6 f_21@@6) (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@6 f_21@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@6 f_21@@6))
))) (forall ((o2_18@@7 T@Ref) (f_21@@7 T@Field_2919_18216) ) (!  (=> (select (|PolymorphicMapType_6558_6069_18216#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@5) null (WandMaskField_2919 pm_f_18@@2))) o2_18@@7 f_21@@7) (= (select (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@5) o2_18@@7 f_21@@7) (select (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@7 f_21@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@7 f_21@@7))
))) (forall ((o2_18@@8 T@Ref) (f_21@@8 T@Field_2919_18349) ) (!  (=> (select (|PolymorphicMapType_6558_6069_19527#PolymorphicMapType_6558| (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@5) null (WandMaskField_2919 pm_f_18@@2))) o2_18@@8 f_21@@8) (= (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@5) o2_18@@8 f_21@@8) (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@8 f_21@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap@@4) o2_18@@8 f_21@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_2919_20054 pm_f_18@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6009) (ExhaleHeap@@5 T@PolymorphicMapType_6009) (Mask@@16 T@PolymorphicMapType_6030) (o_39@@0 T@Ref) (f_21@@9 T@Field_2919_18349) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_2919_24054 Mask@@16 o_39@@0 f_21@@9) (= (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@6) o_39@@0 f_21@@9) (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap@@5) o_39@@0 f_21@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| ExhaleHeap@@5) o_39@@0 f_21@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6009) (ExhaleHeap@@6 T@PolymorphicMapType_6009) (Mask@@17 T@PolymorphicMapType_6030) (o_39@@1 T@Ref) (f_21@@10 T@Field_2919_18216) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_2919_18280 Mask@@17 o_39@@1 f_21@@10) (= (select (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@7) o_39@@1 f_21@@10) (select (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| ExhaleHeap@@6) o_39@@1 f_21@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| ExhaleHeap@@6) o_39@@1 f_21@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6009) (ExhaleHeap@@7 T@PolymorphicMapType_6009) (Mask@@18 T@PolymorphicMapType_6030) (o_39@@2 T@Ref) (f_21@@11 T@Field_6082_6083) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_2919_6083 Mask@@18 o_39@@2 f_21@@11) (= (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@8) o_39@@2 f_21@@11) (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| ExhaleHeap@@7) o_39@@2 f_21@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| ExhaleHeap@@7) o_39@@2 f_21@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6009) (ExhaleHeap@@8 T@PolymorphicMapType_6009) (Mask@@19 T@PolymorphicMapType_6030) (o_39@@3 T@Ref) (f_21@@12 T@Field_6069_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_2919_53 Mask@@19 o_39@@3 f_21@@12) (= (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@9) o_39@@3 f_21@@12) (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| ExhaleHeap@@8) o_39@@3 f_21@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| ExhaleHeap@@8) o_39@@3 f_21@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6009) (ExhaleHeap@@9 T@PolymorphicMapType_6009) (Mask@@20 T@PolymorphicMapType_6030) (o_39@@4 T@Ref) (f_21@@13 T@Field_9395_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_2919_1186 Mask@@20 o_39@@4 f_21@@13) (= (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@10) o_39@@4 f_21@@13) (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| ExhaleHeap@@9) o_39@@4 f_21@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| ExhaleHeap@@9) o_39@@4 f_21@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_2919_18349) ) (! (= (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_2919_18216) ) (! (= (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6082_6083) ) (! (= (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6069_53) ) (! (= (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_9395_1186) ) (! (= (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6030) (SummandMask1 T@PolymorphicMapType_6030) (SummandMask2 T@PolymorphicMapType_6030) (o_2@@19 T@Ref) (f_4@@19 T@Field_2919_18349) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6030_2919_22471#PolymorphicMapType_6030| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6030) (SummandMask1@@0 T@PolymorphicMapType_6030) (SummandMask2@@0 T@PolymorphicMapType_6030) (o_2@@20 T@Ref) (f_4@@20 T@Field_2919_18216) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6030_2919_18216#PolymorphicMapType_6030| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6030) (SummandMask1@@1 T@PolymorphicMapType_6030) (SummandMask2@@1 T@PolymorphicMapType_6030) (o_2@@21 T@Ref) (f_4@@21 T@Field_6082_6083) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6030_2919_6083#PolymorphicMapType_6030| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6030) (SummandMask1@@2 T@PolymorphicMapType_6030) (SummandMask2@@2 T@PolymorphicMapType_6030) (o_2@@22 T@Ref) (f_4@@22 T@Field_6069_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6030_2919_53#PolymorphicMapType_6030| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6030) (SummandMask1@@3 T@PolymorphicMapType_6030) (SummandMask2@@3 T@PolymorphicMapType_6030) (o_2@@23 T@Ref) (f_4@@23 T@Field_9395_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6030_2919_1186#PolymorphicMapType_6030| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6009) (o_38 T@Ref) (f_23 T@Field_2919_18216) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_6009 (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@11) (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@11) (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@11) (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@11) (store (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@11) o_38 f_23 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6009 (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@11) (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@11) (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@11) (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@11) (store (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@11) o_38 f_23 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6009) (o_38@@0 T@Ref) (f_23@@0 T@Field_2919_18349) (v@@0 T@PolymorphicMapType_6558) ) (! (succHeap Heap@@12 (PolymorphicMapType_6009 (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@12) (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@12) (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@12) (store (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@12) o_38@@0 f_23@@0 v@@0) (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6009 (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@12) (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@12) (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@12) (store (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@12) o_38@@0 f_23@@0 v@@0) (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6009) (o_38@@1 T@Ref) (f_23@@1 T@Field_9395_1186) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_6009 (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@13) (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@13) (store (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@13) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@13) (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6009 (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@13) (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@13) (store (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@13) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@13) (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6009) (o_38@@2 T@Ref) (f_23@@2 T@Field_6082_6083) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_6009 (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@14) (store (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@14) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@14) (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@14) (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6009 (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@14) (store (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@14) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@14) (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@14) (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6009) (o_38@@3 T@Ref) (f_23@@3 T@Field_6069_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_6009 (store (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@15) o_38@@3 f_23@@3 v@@3) (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@15) (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@15) (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@15) (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6009 (store (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@15) o_38@@3 f_23@@3 v@@3) (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@15) (|PolymorphicMapType_6009_2919_1186#PolymorphicMapType_6009| Heap@@15) (|PolymorphicMapType_6009_2919_18393#PolymorphicMapType_6009| Heap@@15) (|PolymorphicMapType_6009_6069_18216#PolymorphicMapType_6009| Heap@@15)))
)))
(assert (forall ((o_38@@4 T@Ref) (f_51 T@Field_6082_6083) (Heap@@16 T@PolymorphicMapType_6009) ) (!  (=> (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@16) o_38@@4 $allocated) (select (|PolymorphicMapType_6009_2791_53#PolymorphicMapType_6009| Heap@@16) (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@16) o_38@@4 f_51) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6009_2794_2795#PolymorphicMapType_6009| Heap@@16) o_38@@4 f_51))
)))
(assert (forall ((p@@1 T@Field_2919_18216) (v_1@@0 T@FrameType) (q T@Field_2919_18216) (w@@0 T@FrameType) (r T@Field_2919_18216) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6069_6069 p@@1 v_1@@0 q w@@0) (InsidePredicate_6069_6069 q w@@0 r u)) (InsidePredicate_6069_6069 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6069_6069 p@@1 v_1@@0 q w@@0) (InsidePredicate_6069_6069 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

