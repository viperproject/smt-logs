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
(declare-sort T@Field_5431_53 0)
(declare-sort T@Field_5444_5445 0)
(declare-sort T@Field_8887_1344 0)
(declare-sort T@Field_8934_8935 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_8947_8952 0)
(declare-sort T@Field_3327_53 0)
(declare-sort T@Field_3327_5445 0)
(declare-sort T@Field_3327_1344 0)
(declare-sort T@Field_5431_3328 0)
(declare-sort T@Field_5431_8952 0)
(declare-datatypes ((T@PolymorphicMapType_5392 0)) (((PolymorphicMapType_5392 (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| (Array T@Ref T@Field_8887_1344 Real)) (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| (Array T@Ref T@Field_8934_8935 Real)) (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| (Array T@Ref T@Field_5431_3328 Real)) (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| (Array T@Ref T@Field_5431_53 Real)) (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| (Array T@Ref T@Field_5444_5445 Real)) (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| (Array T@Ref T@Field_5431_8952 Real)) (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| (Array T@Ref T@Field_3327_1344 Real)) (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| (Array T@Ref T@Field_3327_53 Real)) (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| (Array T@Ref T@Field_3327_5445 Real)) (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| (Array T@Ref T@Field_8947_8952 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5920 0)) (((PolymorphicMapType_5920 (|PolymorphicMapType_5920_3324_1344#PolymorphicMapType_5920| (Array T@Ref T@Field_8887_1344 Bool)) (|PolymorphicMapType_5920_3324_53#PolymorphicMapType_5920| (Array T@Ref T@Field_5431_53 Bool)) (|PolymorphicMapType_5920_3324_5445#PolymorphicMapType_5920| (Array T@Ref T@Field_5444_5445 Bool)) (|PolymorphicMapType_5920_3324_8935#PolymorphicMapType_5920| (Array T@Ref T@Field_5431_3328 Bool)) (|PolymorphicMapType_5920_3324_19099#PolymorphicMapType_5920| (Array T@Ref T@Field_5431_8952 Bool)) (|PolymorphicMapType_5920_8934_1344#PolymorphicMapType_5920| (Array T@Ref T@Field_3327_1344 Bool)) (|PolymorphicMapType_5920_8934_53#PolymorphicMapType_5920| (Array T@Ref T@Field_3327_53 Bool)) (|PolymorphicMapType_5920_8934_5445#PolymorphicMapType_5920| (Array T@Ref T@Field_3327_5445 Bool)) (|PolymorphicMapType_5920_8934_8935#PolymorphicMapType_5920| (Array T@Ref T@Field_8934_8935 Bool)) (|PolymorphicMapType_5920_8934_20147#PolymorphicMapType_5920| (Array T@Ref T@Field_8947_8952 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5371 0)) (((PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| (Array T@Ref T@Field_5431_53 Bool)) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| (Array T@Ref T@Field_5444_5445 T@Ref)) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| (Array T@Ref T@Field_8887_1344 Int)) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| (Array T@Ref T@Field_8934_8935 T@FrameType)) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| (Array T@Ref T@Field_8947_8952 T@PolymorphicMapType_5920)) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| (Array T@Ref T@Field_3327_53 Bool)) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| (Array T@Ref T@Field_3327_5445 T@Ref)) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| (Array T@Ref T@Field_3327_1344 Int)) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| (Array T@Ref T@Field_5431_3328 T@FrameType)) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| (Array T@Ref T@Field_5431_8952 T@PolymorphicMapType_5920)) ) ) ))
(declare-fun $allocated () T@Field_5431_53)
(declare-fun val () T@Field_8887_1344)
(declare-fun succHeap (T@PolymorphicMapType_5371 T@PolymorphicMapType_5371) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5371 T@PolymorphicMapType_5371) Bool)
(declare-fun state (T@PolymorphicMapType_5371 T@PolymorphicMapType_5392) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5392) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5920)
(declare-sort T@ArrayDomainType 0)
(declare-fun array (T@ArrayDomainType) T@Field_8934_8935)
(declare-fun IsPredicateField_3327_3328 (T@Field_8934_8935) Bool)
(declare-fun |array#trigger_3327| (T@PolymorphicMapType_5371 T@Field_8934_8935) Bool)
(declare-fun |array#everUsed_3327| (T@Field_8934_8935) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5371 T@PolymorphicMapType_5371 T@PolymorphicMapType_5392) Bool)
(declare-fun IsPredicateField_5431_17952 (T@Field_5431_3328) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5431 (T@Field_5431_3328) T@Field_5431_8952)
(declare-fun HasDirectPerm_5431_3328 (T@PolymorphicMapType_5392 T@Ref T@Field_5431_3328) Bool)
(declare-fun PredicateMaskField_3327 (T@Field_8934_8935) T@Field_8947_8952)
(declare-fun HasDirectPerm_3327_3328 (T@PolymorphicMapType_5392 T@Ref T@Field_8934_8935) Bool)
(declare-fun IsWandField_5431_21312 (T@Field_5431_3328) Bool)
(declare-fun WandMaskField_5431 (T@Field_5431_3328) T@Field_5431_8952)
(declare-fun IsWandField_3327_20955 (T@Field_8934_8935) Bool)
(declare-fun WandMaskField_3327 (T@Field_8934_8935) T@Field_8947_8952)
(declare-fun |array#sm| (T@ArrayDomainType) T@Field_8947_8952)
(declare-fun dummyHeap () T@PolymorphicMapType_5371)
(declare-fun ZeroMask () T@PolymorphicMapType_5392)
(declare-fun InsidePredicate_8934_8934 (T@Field_8934_8935 T@FrameType T@Field_8934_8935 T@FrameType) Bool)
(declare-fun InsidePredicate_5431_5431 (T@Field_5431_3328 T@FrameType T@Field_5431_3328 T@FrameType) Bool)
(declare-fun IsPredicateField_3324_1344 (T@Field_8887_1344) Bool)
(declare-fun IsWandField_3324_1344 (T@Field_8887_1344) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3327_28244 (T@Field_8947_8952) Bool)
(declare-fun IsWandField_3327_28260 (T@Field_8947_8952) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3327_5445 (T@Field_3327_5445) Bool)
(declare-fun IsWandField_3327_5445 (T@Field_3327_5445) Bool)
(declare-fun IsPredicateField_3327_53 (T@Field_3327_53) Bool)
(declare-fun IsWandField_3327_53 (T@Field_3327_53) Bool)
(declare-fun IsPredicateField_3327_1344 (T@Field_3327_1344) Bool)
(declare-fun IsWandField_3327_1344 (T@Field_3327_1344) Bool)
(declare-fun IsPredicateField_3324_27413 (T@Field_5431_8952) Bool)
(declare-fun IsWandField_3324_27429 (T@Field_5431_8952) Bool)
(declare-fun IsPredicateField_3324_5445 (T@Field_5444_5445) Bool)
(declare-fun IsWandField_3324_5445 (T@Field_5444_5445) Bool)
(declare-fun IsPredicateField_3324_53 (T@Field_5431_53) Bool)
(declare-fun IsWandField_3324_53 (T@Field_5431_53) Bool)
(declare-fun HasDirectPerm_5431_17339 (T@PolymorphicMapType_5392 T@Ref T@Field_5431_8952) Bool)
(declare-fun HasDirectPerm_5431_1344 (T@PolymorphicMapType_5392 T@Ref T@Field_8887_1344) Bool)
(declare-fun HasDirectPerm_5431_5445 (T@PolymorphicMapType_5392 T@Ref T@Field_5444_5445) Bool)
(declare-fun HasDirectPerm_5431_53 (T@PolymorphicMapType_5392 T@Ref T@Field_5431_53) Bool)
(declare-fun HasDirectPerm_3327_16246 (T@PolymorphicMapType_5392 T@Ref T@Field_8947_8952) Bool)
(declare-fun HasDirectPerm_3327_1344 (T@PolymorphicMapType_5392 T@Ref T@Field_3327_1344) Bool)
(declare-fun HasDirectPerm_3327_5445 (T@PolymorphicMapType_5392 T@Ref T@Field_3327_5445) Bool)
(declare-fun HasDirectPerm_3327_53 (T@PolymorphicMapType_5392 T@Ref T@Field_3327_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5392 T@PolymorphicMapType_5392 T@PolymorphicMapType_5392) Bool)
(declare-fun getPredWandId_3327_3328 (T@Field_8934_8935) Int)
(declare-fun |array#condqp1| (T@PolymorphicMapType_5371 T@ArrayDomainType) Int)
(declare-fun |sk_array#condqp1| (Int Int) Int)
(declare-fun len_1 (T@ArrayDomainType) Int)
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun InsidePredicate_8934_5431 (T@Field_8934_8935 T@FrameType T@Field_5431_3328 T@FrameType) Bool)
(declare-fun InsidePredicate_5431_8934 (T@Field_5431_3328 T@FrameType T@Field_8934_8935 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5371) (Heap1 T@PolymorphicMapType_5371) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5371) (Mask T@PolymorphicMapType_5392) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5371) (Heap1@@0 T@PolymorphicMapType_5371) (Heap2 T@PolymorphicMapType_5371) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8947_8952) ) (!  (not (select (|PolymorphicMapType_5920_8934_20147#PolymorphicMapType_5920| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5920_8934_20147#PolymorphicMapType_5920| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8934_8935) ) (!  (not (select (|PolymorphicMapType_5920_8934_8935#PolymorphicMapType_5920| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5920_8934_8935#PolymorphicMapType_5920| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3327_5445) ) (!  (not (select (|PolymorphicMapType_5920_8934_5445#PolymorphicMapType_5920| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5920_8934_5445#PolymorphicMapType_5920| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3327_53) ) (!  (not (select (|PolymorphicMapType_5920_8934_53#PolymorphicMapType_5920| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5920_8934_53#PolymorphicMapType_5920| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3327_1344) ) (!  (not (select (|PolymorphicMapType_5920_8934_1344#PolymorphicMapType_5920| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5920_8934_1344#PolymorphicMapType_5920| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_5431_8952) ) (!  (not (select (|PolymorphicMapType_5920_3324_19099#PolymorphicMapType_5920| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5920_3324_19099#PolymorphicMapType_5920| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5431_3328) ) (!  (not (select (|PolymorphicMapType_5920_3324_8935#PolymorphicMapType_5920| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5920_3324_8935#PolymorphicMapType_5920| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_5444_5445) ) (!  (not (select (|PolymorphicMapType_5920_3324_5445#PolymorphicMapType_5920| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5920_3324_5445#PolymorphicMapType_5920| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_5431_53) ) (!  (not (select (|PolymorphicMapType_5920_3324_53#PolymorphicMapType_5920| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5920_3324_53#PolymorphicMapType_5920| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_8887_1344) ) (!  (not (select (|PolymorphicMapType_5920_3324_1344#PolymorphicMapType_5920| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5920_3324_1344#PolymorphicMapType_5920| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a_2 T@ArrayDomainType) ) (! (IsPredicateField_3327_3328 (array a_2))
 :qid |stdinbpl.235:15|
 :skolemid |24|
 :pattern ( (array a_2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5371) (a_2@@0 T@ArrayDomainType) ) (! (|array#everUsed_3327| (array a_2@@0))
 :qid |stdinbpl.254:15|
 :skolemid |28|
 :pattern ( (|array#trigger_3327| Heap@@0 (array a_2@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5371) (ExhaleHeap T@PolymorphicMapType_5371) (Mask@@0 T@PolymorphicMapType_5392) (pm_f_9 T@Field_5431_3328) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5431_3328 Mask@@0 null pm_f_9) (IsPredicateField_5431_17952 pm_f_9)) (= (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@1) null (PredicateMaskField_5431 pm_f_9)) (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| ExhaleHeap) null (PredicateMaskField_5431 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_5431_17952 pm_f_9) (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| ExhaleHeap) null (PredicateMaskField_5431 pm_f_9)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5371) (ExhaleHeap@@0 T@PolymorphicMapType_5371) (Mask@@1 T@PolymorphicMapType_5392) (pm_f_9@@0 T@Field_8934_8935) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3327_3328 Mask@@1 null pm_f_9@@0) (IsPredicateField_3327_3328 pm_f_9@@0)) (= (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@2) null (PredicateMaskField_3327 pm_f_9@@0)) (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| ExhaleHeap@@0) null (PredicateMaskField_3327 pm_f_9@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3327_3328 pm_f_9@@0) (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| ExhaleHeap@@0) null (PredicateMaskField_3327 pm_f_9@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5371) (ExhaleHeap@@1 T@PolymorphicMapType_5371) (Mask@@2 T@PolymorphicMapType_5392) (pm_f_9@@1 T@Field_5431_3328) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5431_3328 Mask@@2 null pm_f_9@@1) (IsWandField_5431_21312 pm_f_9@@1)) (= (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@3) null (WandMaskField_5431 pm_f_9@@1)) (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| ExhaleHeap@@1) null (WandMaskField_5431 pm_f_9@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_5431_21312 pm_f_9@@1) (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| ExhaleHeap@@1) null (WandMaskField_5431 pm_f_9@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5371) (ExhaleHeap@@2 T@PolymorphicMapType_5371) (Mask@@3 T@PolymorphicMapType_5392) (pm_f_9@@2 T@Field_8934_8935) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3327_3328 Mask@@3 null pm_f_9@@2) (IsWandField_3327_20955 pm_f_9@@2)) (= (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@4) null (WandMaskField_3327 pm_f_9@@2)) (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| ExhaleHeap@@2) null (WandMaskField_3327 pm_f_9@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_3327_20955 pm_f_9@@2) (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| ExhaleHeap@@2) null (WandMaskField_3327 pm_f_9@@2)))
)))
(assert (forall ((a_2@@1 T@ArrayDomainType) (a2 T@ArrayDomainType) ) (!  (=> (= (array a_2@@1) (array a2)) (= a_2@@1 a2))
 :qid |stdinbpl.245:15|
 :skolemid |26|
 :pattern ( (array a_2@@1) (array a2))
)))
(assert (forall ((a_2@@2 T@ArrayDomainType) (a2@@0 T@ArrayDomainType) ) (!  (=> (= (|array#sm| a_2@@2) (|array#sm| a2@@0)) (= a_2@@2 a2@@0))
 :qid |stdinbpl.249:15|
 :skolemid |27|
 :pattern ( (|array#sm| a_2@@2) (|array#sm| a2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5371) (ExhaleHeap@@3 T@PolymorphicMapType_5371) (Mask@@4 T@PolymorphicMapType_5392) (pm_f_9@@3 T@Field_5431_3328) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_5431_3328 Mask@@4 null pm_f_9@@3) (IsPredicateField_5431_17952 pm_f_9@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_8887_1344) ) (!  (=> (select (|PolymorphicMapType_5920_3324_1344#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@5) null (PredicateMaskField_5431 pm_f_9@@3))) o2_9 f_24) (= (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@5) o2_9 f_24) (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_5431_53) ) (!  (=> (select (|PolymorphicMapType_5920_3324_53#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@5) null (PredicateMaskField_5431 pm_f_9@@3))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@5) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_5444_5445) ) (!  (=> (select (|PolymorphicMapType_5920_3324_5445#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@5) null (PredicateMaskField_5431 pm_f_9@@3))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@5) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_5431_3328) ) (!  (=> (select (|PolymorphicMapType_5920_3324_8935#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@5) null (PredicateMaskField_5431 pm_f_9@@3))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@5) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9@@2 f_24@@2))
))) (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_5431_8952) ) (!  (=> (select (|PolymorphicMapType_5920_3324_19099#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@5) null (PredicateMaskField_5431 pm_f_9@@3))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@5) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9@@3 f_24@@3))
))) (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_3327_1344) ) (!  (=> (select (|PolymorphicMapType_5920_8934_1344#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@5) null (PredicateMaskField_5431 pm_f_9@@3))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@5) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9@@4 f_24@@4))
))) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_3327_53) ) (!  (=> (select (|PolymorphicMapType_5920_8934_53#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@5) null (PredicateMaskField_5431 pm_f_9@@3))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@5) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_3327_5445) ) (!  (=> (select (|PolymorphicMapType_5920_8934_5445#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@5) null (PredicateMaskField_5431 pm_f_9@@3))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@5) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9@@6 f_24@@6))
))) (forall ((o2_9@@7 T@Ref) (f_24@@7 T@Field_8934_8935) ) (!  (=> (select (|PolymorphicMapType_5920_8934_8935#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@5) null (PredicateMaskField_5431 pm_f_9@@3))) o2_9@@7 f_24@@7) (= (select (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@5) o2_9@@7 f_24@@7) (select (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9@@7 f_24@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9@@7 f_24@@7))
))) (forall ((o2_9@@8 T@Ref) (f_24@@8 T@Field_8947_8952) ) (!  (=> (select (|PolymorphicMapType_5920_8934_20147#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@5) null (PredicateMaskField_5431 pm_f_9@@3))) o2_9@@8 f_24@@8) (= (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@5) o2_9@@8 f_24@@8) (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9@@8 f_24@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| ExhaleHeap@@3) o2_9@@8 f_24@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_5431_17952 pm_f_9@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5371) (ExhaleHeap@@4 T@PolymorphicMapType_5371) (Mask@@5 T@PolymorphicMapType_5392) (pm_f_9@@4 T@Field_8934_8935) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3327_3328 Mask@@5 null pm_f_9@@4) (IsPredicateField_3327_3328 pm_f_9@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_9@@9 T@Ref) (f_24@@9 T@Field_8887_1344) ) (!  (=> (select (|PolymorphicMapType_5920_3324_1344#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@6) null (PredicateMaskField_3327 pm_f_9@@4))) o2_9@@9 f_24@@9) (= (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@6) o2_9@@9 f_24@@9) (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@9 f_24@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@9 f_24@@9))
)) (forall ((o2_9@@10 T@Ref) (f_24@@10 T@Field_5431_53) ) (!  (=> (select (|PolymorphicMapType_5920_3324_53#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@6) null (PredicateMaskField_3327 pm_f_9@@4))) o2_9@@10 f_24@@10) (= (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@6) o2_9@@10 f_24@@10) (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@10 f_24@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@10 f_24@@10))
))) (forall ((o2_9@@11 T@Ref) (f_24@@11 T@Field_5444_5445) ) (!  (=> (select (|PolymorphicMapType_5920_3324_5445#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@6) null (PredicateMaskField_3327 pm_f_9@@4))) o2_9@@11 f_24@@11) (= (select (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@6) o2_9@@11 f_24@@11) (select (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@11 f_24@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@11 f_24@@11))
))) (forall ((o2_9@@12 T@Ref) (f_24@@12 T@Field_5431_3328) ) (!  (=> (select (|PolymorphicMapType_5920_3324_8935#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@6) null (PredicateMaskField_3327 pm_f_9@@4))) o2_9@@12 f_24@@12) (= (select (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@6) o2_9@@12 f_24@@12) (select (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@12 f_24@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@12 f_24@@12))
))) (forall ((o2_9@@13 T@Ref) (f_24@@13 T@Field_5431_8952) ) (!  (=> (select (|PolymorphicMapType_5920_3324_19099#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@6) null (PredicateMaskField_3327 pm_f_9@@4))) o2_9@@13 f_24@@13) (= (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@6) o2_9@@13 f_24@@13) (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@13 f_24@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@13 f_24@@13))
))) (forall ((o2_9@@14 T@Ref) (f_24@@14 T@Field_3327_1344) ) (!  (=> (select (|PolymorphicMapType_5920_8934_1344#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@6) null (PredicateMaskField_3327 pm_f_9@@4))) o2_9@@14 f_24@@14) (= (select (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@6) o2_9@@14 f_24@@14) (select (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@14 f_24@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@14 f_24@@14))
))) (forall ((o2_9@@15 T@Ref) (f_24@@15 T@Field_3327_53) ) (!  (=> (select (|PolymorphicMapType_5920_8934_53#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@6) null (PredicateMaskField_3327 pm_f_9@@4))) o2_9@@15 f_24@@15) (= (select (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@6) o2_9@@15 f_24@@15) (select (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@15 f_24@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@15 f_24@@15))
))) (forall ((o2_9@@16 T@Ref) (f_24@@16 T@Field_3327_5445) ) (!  (=> (select (|PolymorphicMapType_5920_8934_5445#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@6) null (PredicateMaskField_3327 pm_f_9@@4))) o2_9@@16 f_24@@16) (= (select (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@6) o2_9@@16 f_24@@16) (select (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@16 f_24@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@16 f_24@@16))
))) (forall ((o2_9@@17 T@Ref) (f_24@@17 T@Field_8934_8935) ) (!  (=> (select (|PolymorphicMapType_5920_8934_8935#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@6) null (PredicateMaskField_3327 pm_f_9@@4))) o2_9@@17 f_24@@17) (= (select (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@6) o2_9@@17 f_24@@17) (select (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@17 f_24@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@17 f_24@@17))
))) (forall ((o2_9@@18 T@Ref) (f_24@@18 T@Field_8947_8952) ) (!  (=> (select (|PolymorphicMapType_5920_8934_20147#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@6) null (PredicateMaskField_3327 pm_f_9@@4))) o2_9@@18 f_24@@18) (= (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@6) o2_9@@18 f_24@@18) (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@18 f_24@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| ExhaleHeap@@4) o2_9@@18 f_24@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3327_3328 pm_f_9@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5371) (ExhaleHeap@@5 T@PolymorphicMapType_5371) (Mask@@6 T@PolymorphicMapType_5392) (pm_f_9@@5 T@Field_5431_3328) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_5431_3328 Mask@@6 null pm_f_9@@5) (IsWandField_5431_21312 pm_f_9@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_9@@19 T@Ref) (f_24@@19 T@Field_8887_1344) ) (!  (=> (select (|PolymorphicMapType_5920_3324_1344#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@7) null (WandMaskField_5431 pm_f_9@@5))) o2_9@@19 f_24@@19) (= (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@7) o2_9@@19 f_24@@19) (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@19 f_24@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@19 f_24@@19))
)) (forall ((o2_9@@20 T@Ref) (f_24@@20 T@Field_5431_53) ) (!  (=> (select (|PolymorphicMapType_5920_3324_53#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@7) null (WandMaskField_5431 pm_f_9@@5))) o2_9@@20 f_24@@20) (= (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@7) o2_9@@20 f_24@@20) (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@20 f_24@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@20 f_24@@20))
))) (forall ((o2_9@@21 T@Ref) (f_24@@21 T@Field_5444_5445) ) (!  (=> (select (|PolymorphicMapType_5920_3324_5445#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@7) null (WandMaskField_5431 pm_f_9@@5))) o2_9@@21 f_24@@21) (= (select (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@7) o2_9@@21 f_24@@21) (select (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@21 f_24@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@21 f_24@@21))
))) (forall ((o2_9@@22 T@Ref) (f_24@@22 T@Field_5431_3328) ) (!  (=> (select (|PolymorphicMapType_5920_3324_8935#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@7) null (WandMaskField_5431 pm_f_9@@5))) o2_9@@22 f_24@@22) (= (select (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@7) o2_9@@22 f_24@@22) (select (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@22 f_24@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@22 f_24@@22))
))) (forall ((o2_9@@23 T@Ref) (f_24@@23 T@Field_5431_8952) ) (!  (=> (select (|PolymorphicMapType_5920_3324_19099#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@7) null (WandMaskField_5431 pm_f_9@@5))) o2_9@@23 f_24@@23) (= (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@7) o2_9@@23 f_24@@23) (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@23 f_24@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@23 f_24@@23))
))) (forall ((o2_9@@24 T@Ref) (f_24@@24 T@Field_3327_1344) ) (!  (=> (select (|PolymorphicMapType_5920_8934_1344#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@7) null (WandMaskField_5431 pm_f_9@@5))) o2_9@@24 f_24@@24) (= (select (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@7) o2_9@@24 f_24@@24) (select (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@24 f_24@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@24 f_24@@24))
))) (forall ((o2_9@@25 T@Ref) (f_24@@25 T@Field_3327_53) ) (!  (=> (select (|PolymorphicMapType_5920_8934_53#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@7) null (WandMaskField_5431 pm_f_9@@5))) o2_9@@25 f_24@@25) (= (select (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@7) o2_9@@25 f_24@@25) (select (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@25 f_24@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@25 f_24@@25))
))) (forall ((o2_9@@26 T@Ref) (f_24@@26 T@Field_3327_5445) ) (!  (=> (select (|PolymorphicMapType_5920_8934_5445#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@7) null (WandMaskField_5431 pm_f_9@@5))) o2_9@@26 f_24@@26) (= (select (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@7) o2_9@@26 f_24@@26) (select (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@26 f_24@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@26 f_24@@26))
))) (forall ((o2_9@@27 T@Ref) (f_24@@27 T@Field_8934_8935) ) (!  (=> (select (|PolymorphicMapType_5920_8934_8935#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@7) null (WandMaskField_5431 pm_f_9@@5))) o2_9@@27 f_24@@27) (= (select (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@7) o2_9@@27 f_24@@27) (select (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@27 f_24@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@27 f_24@@27))
))) (forall ((o2_9@@28 T@Ref) (f_24@@28 T@Field_8947_8952) ) (!  (=> (select (|PolymorphicMapType_5920_8934_20147#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@7) null (WandMaskField_5431 pm_f_9@@5))) o2_9@@28 f_24@@28) (= (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@7) o2_9@@28 f_24@@28) (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@28 f_24@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| ExhaleHeap@@5) o2_9@@28 f_24@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_5431_21312 pm_f_9@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5371) (ExhaleHeap@@6 T@PolymorphicMapType_5371) (Mask@@7 T@PolymorphicMapType_5392) (pm_f_9@@6 T@Field_8934_8935) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3327_3328 Mask@@7 null pm_f_9@@6) (IsWandField_3327_20955 pm_f_9@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_9@@29 T@Ref) (f_24@@29 T@Field_8887_1344) ) (!  (=> (select (|PolymorphicMapType_5920_3324_1344#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@8) null (WandMaskField_3327 pm_f_9@@6))) o2_9@@29 f_24@@29) (= (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@8) o2_9@@29 f_24@@29) (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@29 f_24@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@29 f_24@@29))
)) (forall ((o2_9@@30 T@Ref) (f_24@@30 T@Field_5431_53) ) (!  (=> (select (|PolymorphicMapType_5920_3324_53#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@8) null (WandMaskField_3327 pm_f_9@@6))) o2_9@@30 f_24@@30) (= (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@8) o2_9@@30 f_24@@30) (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@30 f_24@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@30 f_24@@30))
))) (forall ((o2_9@@31 T@Ref) (f_24@@31 T@Field_5444_5445) ) (!  (=> (select (|PolymorphicMapType_5920_3324_5445#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@8) null (WandMaskField_3327 pm_f_9@@6))) o2_9@@31 f_24@@31) (= (select (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@8) o2_9@@31 f_24@@31) (select (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@31 f_24@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@31 f_24@@31))
))) (forall ((o2_9@@32 T@Ref) (f_24@@32 T@Field_5431_3328) ) (!  (=> (select (|PolymorphicMapType_5920_3324_8935#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@8) null (WandMaskField_3327 pm_f_9@@6))) o2_9@@32 f_24@@32) (= (select (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@8) o2_9@@32 f_24@@32) (select (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@32 f_24@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@32 f_24@@32))
))) (forall ((o2_9@@33 T@Ref) (f_24@@33 T@Field_5431_8952) ) (!  (=> (select (|PolymorphicMapType_5920_3324_19099#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@8) null (WandMaskField_3327 pm_f_9@@6))) o2_9@@33 f_24@@33) (= (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@8) o2_9@@33 f_24@@33) (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@33 f_24@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@33 f_24@@33))
))) (forall ((o2_9@@34 T@Ref) (f_24@@34 T@Field_3327_1344) ) (!  (=> (select (|PolymorphicMapType_5920_8934_1344#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@8) null (WandMaskField_3327 pm_f_9@@6))) o2_9@@34 f_24@@34) (= (select (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@8) o2_9@@34 f_24@@34) (select (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@34 f_24@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@34 f_24@@34))
))) (forall ((o2_9@@35 T@Ref) (f_24@@35 T@Field_3327_53) ) (!  (=> (select (|PolymorphicMapType_5920_8934_53#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@8) null (WandMaskField_3327 pm_f_9@@6))) o2_9@@35 f_24@@35) (= (select (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@8) o2_9@@35 f_24@@35) (select (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@35 f_24@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@35 f_24@@35))
))) (forall ((o2_9@@36 T@Ref) (f_24@@36 T@Field_3327_5445) ) (!  (=> (select (|PolymorphicMapType_5920_8934_5445#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@8) null (WandMaskField_3327 pm_f_9@@6))) o2_9@@36 f_24@@36) (= (select (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@8) o2_9@@36 f_24@@36) (select (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@36 f_24@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@36 f_24@@36))
))) (forall ((o2_9@@37 T@Ref) (f_24@@37 T@Field_8934_8935) ) (!  (=> (select (|PolymorphicMapType_5920_8934_8935#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@8) null (WandMaskField_3327 pm_f_9@@6))) o2_9@@37 f_24@@37) (= (select (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@8) o2_9@@37 f_24@@37) (select (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@37 f_24@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@37 f_24@@37))
))) (forall ((o2_9@@38 T@Ref) (f_24@@38 T@Field_8947_8952) ) (!  (=> (select (|PolymorphicMapType_5920_8934_20147#PolymorphicMapType_5920| (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@8) null (WandMaskField_3327 pm_f_9@@6))) o2_9@@38 f_24@@38) (= (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@8) o2_9@@38 f_24@@38) (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@38 f_24@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| ExhaleHeap@@6) o2_9@@38 f_24@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_3327_20955 pm_f_9@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5371) (ExhaleHeap@@7 T@PolymorphicMapType_5371) (Mask@@8 T@PolymorphicMapType_5392) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@9) o_27 $allocated) (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| ExhaleHeap@@7) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| ExhaleHeap@@7) o_27 $allocated))
)))
(assert (forall ((p T@Field_8934_8935) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8934_8934 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8934_8934 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_5431_3328) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_5431_5431 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5431_5431 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3324_1344 val)))
(assert  (not (IsWandField_3324_1344 val)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5371) (ExhaleHeap@@8 T@PolymorphicMapType_5371) (Mask@@9 T@PolymorphicMapType_5392) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5392) (o_2@@9 T@Ref) (f_4@@9 T@Field_8947_8952) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3327_28244 f_4@@9))) (not (IsWandField_3327_28260 f_4@@9))) (<= (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5392) (o_2@@10 T@Ref) (f_4@@10 T@Field_3327_5445) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3327_5445 f_4@@10))) (not (IsWandField_3327_5445 f_4@@10))) (<= (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5392) (o_2@@11 T@Ref) (f_4@@11 T@Field_3327_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3327_53 f_4@@11))) (not (IsWandField_3327_53 f_4@@11))) (<= (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5392) (o_2@@12 T@Ref) (f_4@@12 T@Field_8934_8935) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3327_3328 f_4@@12))) (not (IsWandField_3327_20955 f_4@@12))) (<= (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5392) (o_2@@13 T@Ref) (f_4@@13 T@Field_3327_1344) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3327_1344 f_4@@13))) (not (IsWandField_3327_1344 f_4@@13))) (<= (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5392) (o_2@@14 T@Ref) (f_4@@14 T@Field_5431_8952) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3324_27413 f_4@@14))) (not (IsWandField_3324_27429 f_4@@14))) (<= (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5392) (o_2@@15 T@Ref) (f_4@@15 T@Field_5444_5445) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3324_5445 f_4@@15))) (not (IsWandField_3324_5445 f_4@@15))) (<= (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5392) (o_2@@16 T@Ref) (f_4@@16 T@Field_5431_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3324_53 f_4@@16))) (not (IsWandField_3324_53 f_4@@16))) (<= (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5392) (o_2@@17 T@Ref) (f_4@@17 T@Field_5431_3328) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5431_17952 f_4@@17))) (not (IsWandField_5431_21312 f_4@@17))) (<= (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_5392) (o_2@@18 T@Ref) (f_4@@18 T@Field_8887_1344) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3324_1344 f_4@@18))) (not (IsWandField_3324_1344 f_4@@18))) (<= (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_5392) (o_2@@19 T@Ref) (f_4@@19 T@Field_5431_8952) ) (! (= (HasDirectPerm_5431_17339 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5431_17339 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_5392) (o_2@@20 T@Ref) (f_4@@20 T@Field_8887_1344) ) (! (= (HasDirectPerm_5431_1344 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5431_1344 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_5392) (o_2@@21 T@Ref) (f_4@@21 T@Field_5444_5445) ) (! (= (HasDirectPerm_5431_5445 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5431_5445 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_5392) (o_2@@22 T@Ref) (f_4@@22 T@Field_5431_53) ) (! (= (HasDirectPerm_5431_53 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5431_53 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_5392) (o_2@@23 T@Ref) (f_4@@23 T@Field_5431_3328) ) (! (= (HasDirectPerm_5431_3328 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5431_3328 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_5392) (o_2@@24 T@Ref) (f_4@@24 T@Field_8947_8952) ) (! (= (HasDirectPerm_3327_16246 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3327_16246 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_5392) (o_2@@25 T@Ref) (f_4@@25 T@Field_3327_1344) ) (! (= (HasDirectPerm_3327_1344 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3327_1344 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_5392) (o_2@@26 T@Ref) (f_4@@26 T@Field_3327_5445) ) (! (= (HasDirectPerm_3327_5445 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3327_5445 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_5392) (o_2@@27 T@Ref) (f_4@@27 T@Field_3327_53) ) (! (= (HasDirectPerm_3327_53 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3327_53 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_5392) (o_2@@28 T@Ref) (f_4@@28 T@Field_8934_8935) ) (! (= (HasDirectPerm_3327_3328 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3327_3328 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5371) (ExhaleHeap@@9 T@PolymorphicMapType_5371) (Mask@@30 T@PolymorphicMapType_5392) (o_27@@0 T@Ref) (f_24@@39 T@Field_5431_8952) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_5431_17339 Mask@@30 o_27@@0 f_24@@39) (= (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@11) o_27@@0 f_24@@39) (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| ExhaleHeap@@9) o_27@@0 f_24@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| ExhaleHeap@@9) o_27@@0 f_24@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5371) (ExhaleHeap@@10 T@PolymorphicMapType_5371) (Mask@@31 T@PolymorphicMapType_5392) (o_27@@1 T@Ref) (f_24@@40 T@Field_8887_1344) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_5431_1344 Mask@@31 o_27@@1 f_24@@40) (= (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@12) o_27@@1 f_24@@40) (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| ExhaleHeap@@10) o_27@@1 f_24@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| ExhaleHeap@@10) o_27@@1 f_24@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5371) (ExhaleHeap@@11 T@PolymorphicMapType_5371) (Mask@@32 T@PolymorphicMapType_5392) (o_27@@2 T@Ref) (f_24@@41 T@Field_5444_5445) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_5431_5445 Mask@@32 o_27@@2 f_24@@41) (= (select (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@13) o_27@@2 f_24@@41) (select (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| ExhaleHeap@@11) o_27@@2 f_24@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| ExhaleHeap@@11) o_27@@2 f_24@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5371) (ExhaleHeap@@12 T@PolymorphicMapType_5371) (Mask@@33 T@PolymorphicMapType_5392) (o_27@@3 T@Ref) (f_24@@42 T@Field_5431_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_5431_53 Mask@@33 o_27@@3 f_24@@42) (= (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@14) o_27@@3 f_24@@42) (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| ExhaleHeap@@12) o_27@@3 f_24@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| ExhaleHeap@@12) o_27@@3 f_24@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5371) (ExhaleHeap@@13 T@PolymorphicMapType_5371) (Mask@@34 T@PolymorphicMapType_5392) (o_27@@4 T@Ref) (f_24@@43 T@Field_5431_3328) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_5431_3328 Mask@@34 o_27@@4 f_24@@43) (= (select (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@15) o_27@@4 f_24@@43) (select (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| ExhaleHeap@@13) o_27@@4 f_24@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| ExhaleHeap@@13) o_27@@4 f_24@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5371) (ExhaleHeap@@14 T@PolymorphicMapType_5371) (Mask@@35 T@PolymorphicMapType_5392) (o_27@@5 T@Ref) (f_24@@44 T@Field_8947_8952) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_3327_16246 Mask@@35 o_27@@5 f_24@@44) (= (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@16) o_27@@5 f_24@@44) (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| ExhaleHeap@@14) o_27@@5 f_24@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| ExhaleHeap@@14) o_27@@5 f_24@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5371) (ExhaleHeap@@15 T@PolymorphicMapType_5371) (Mask@@36 T@PolymorphicMapType_5392) (o_27@@6 T@Ref) (f_24@@45 T@Field_3327_1344) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_3327_1344 Mask@@36 o_27@@6 f_24@@45) (= (select (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@17) o_27@@6 f_24@@45) (select (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| ExhaleHeap@@15) o_27@@6 f_24@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| ExhaleHeap@@15) o_27@@6 f_24@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5371) (ExhaleHeap@@16 T@PolymorphicMapType_5371) (Mask@@37 T@PolymorphicMapType_5392) (o_27@@7 T@Ref) (f_24@@46 T@Field_3327_5445) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_3327_5445 Mask@@37 o_27@@7 f_24@@46) (= (select (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@18) o_27@@7 f_24@@46) (select (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| ExhaleHeap@@16) o_27@@7 f_24@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| ExhaleHeap@@16) o_27@@7 f_24@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5371) (ExhaleHeap@@17 T@PolymorphicMapType_5371) (Mask@@38 T@PolymorphicMapType_5392) (o_27@@8 T@Ref) (f_24@@47 T@Field_3327_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_3327_53 Mask@@38 o_27@@8 f_24@@47) (= (select (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@19) o_27@@8 f_24@@47) (select (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| ExhaleHeap@@17) o_27@@8 f_24@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| ExhaleHeap@@17) o_27@@8 f_24@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5371) (ExhaleHeap@@18 T@PolymorphicMapType_5371) (Mask@@39 T@PolymorphicMapType_5392) (o_27@@9 T@Ref) (f_24@@48 T@Field_8934_8935) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_3327_3328 Mask@@39 o_27@@9 f_24@@48) (= (select (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@20) o_27@@9 f_24@@48) (select (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| ExhaleHeap@@18) o_27@@9 f_24@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| ExhaleHeap@@18) o_27@@9 f_24@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_8947_8952) ) (! (= (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_3327_5445) ) (! (= (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_3327_53) ) (! (= (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_8934_8935) ) (! (= (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_3327_1344) ) (! (= (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_5431_8952) ) (! (= (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_5444_5445) ) (! (= (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_5431_53) ) (! (= (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_5431_3328) ) (! (= (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_8887_1344) ) (! (= (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5392) (SummandMask1 T@PolymorphicMapType_5392) (SummandMask2 T@PolymorphicMapType_5392) (o_2@@39 T@Ref) (f_4@@39 T@Field_8947_8952) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5392) (SummandMask1@@0 T@PolymorphicMapType_5392) (SummandMask2@@0 T@PolymorphicMapType_5392) (o_2@@40 T@Ref) (f_4@@40 T@Field_3327_5445) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5392) (SummandMask1@@1 T@PolymorphicMapType_5392) (SummandMask2@@1 T@PolymorphicMapType_5392) (o_2@@41 T@Ref) (f_4@@41 T@Field_3327_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5392) (SummandMask1@@2 T@PolymorphicMapType_5392) (SummandMask2@@2 T@PolymorphicMapType_5392) (o_2@@42 T@Ref) (f_4@@42 T@Field_8934_8935) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5392) (SummandMask1@@3 T@PolymorphicMapType_5392) (SummandMask2@@3 T@PolymorphicMapType_5392) (o_2@@43 T@Ref) (f_4@@43 T@Field_3327_1344) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_5392) (SummandMask1@@4 T@PolymorphicMapType_5392) (SummandMask2@@4 T@PolymorphicMapType_5392) (o_2@@44 T@Ref) (f_4@@44 T@Field_5431_8952) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_5392) (SummandMask1@@5 T@PolymorphicMapType_5392) (SummandMask2@@5 T@PolymorphicMapType_5392) (o_2@@45 T@Ref) (f_4@@45 T@Field_5444_5445) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_5392) (SummandMask1@@6 T@PolymorphicMapType_5392) (SummandMask2@@6 T@PolymorphicMapType_5392) (o_2@@46 T@Ref) (f_4@@46 T@Field_5431_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_5392) (SummandMask1@@7 T@PolymorphicMapType_5392) (SummandMask2@@7 T@PolymorphicMapType_5392) (o_2@@47 T@Ref) (f_4@@47 T@Field_5431_3328) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_5392) (SummandMask1@@8 T@PolymorphicMapType_5392) (SummandMask2@@8 T@PolymorphicMapType_5392) (o_2@@48 T@Ref) (f_4@@48 T@Field_8887_1344) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a_2@@3 T@ArrayDomainType) ) (! (= (getPredWandId_3327_3328 (array a_2@@3)) 0)
 :qid |stdinbpl.239:15|
 :skolemid |25|
 :pattern ( (array a_2@@3))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_5371) (Heap1Heap T@PolymorphicMapType_5371) (a_2@@4 T@ArrayDomainType) ) (!  (=> (and (=  (and (and (<= 0 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4))) (< (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4)) (len_1 a_2@@4))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4))) (< (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4)) (len_1 a_2@@4))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4))) (< (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4)) (len_1 a_2@@4))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap2Heap) (loc a_2@@4 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4))) val) (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap1Heap) (loc a_2@@4 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4))) val)))) (= (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4)))
 :qid |stdinbpl.265:15|
 :skolemid |29|
 :pattern ( (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5371) (o_20 T@Ref) (f_31 T@Field_8947_8952) (v T@PolymorphicMapType_5920) ) (! (succHeap Heap@@21 (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@21) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@21) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@21) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@21) (store (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@21) o_20 f_31 v) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@21) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@21) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@21) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@21) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@21) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@21) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@21) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@21) (store (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@21) o_20 f_31 v) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@21) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@21) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@21) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@21) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5371) (o_20@@0 T@Ref) (f_31@@0 T@Field_8934_8935) (v@@0 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@22) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@22) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@22) (store (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@22) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@22) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@22) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@22) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@22) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@22) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@22) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@22) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@22) (store (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@22) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@22) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@22) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@22) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@22) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@22) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5371) (o_20@@1 T@Ref) (f_31@@1 T@Field_3327_1344) (v@@1 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@23) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@23) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@23) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@23) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@23) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@23) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@23) (store (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@23) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@23) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@23) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@23) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@23) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@23) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@23) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@23) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@23) (store (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@23) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@23) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5371) (o_20@@2 T@Ref) (f_31@@2 T@Field_3327_5445) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@24) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@24) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@24) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@24) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@24) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@24) (store (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@24) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@24) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@24) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@24) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@24) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@24) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@24) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@24) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@24) (store (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@24) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@24) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@24) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5371) (o_20@@3 T@Ref) (f_31@@3 T@Field_3327_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@25) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@25) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@25) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@25) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@25) (store (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@25) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@25) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@25) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@25) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@25) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@25) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@25) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@25) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@25) (store (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@25) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@25) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@25) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@25) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5371) (o_20@@4 T@Ref) (f_31@@4 T@Field_5431_8952) (v@@4 T@PolymorphicMapType_5920) ) (! (succHeap Heap@@26 (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@26) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@26) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@26) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@26) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@26) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@26) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@26) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@26) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@26) (store (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@26) o_20@@4 f_31@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@26) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@26) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@26) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@26) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@26) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@26) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@26) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@26) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@26) (store (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@26) o_20@@4 f_31@@4 v@@4)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5371) (o_20@@5 T@Ref) (f_31@@5 T@Field_5431_3328) (v@@5 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@27) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@27) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@27) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@27) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@27) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@27) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@27) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@27) (store (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@27) o_20@@5 f_31@@5 v@@5) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@27) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@27) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@27) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@27) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@27) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@27) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@27) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@27) (store (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@27) o_20@@5 f_31@@5 v@@5) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5371) (o_20@@6 T@Ref) (f_31@@6 T@Field_8887_1344) (v@@6 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@28) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@28) (store (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@28) o_20@@6 f_31@@6 v@@6) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@28) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@28) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@28) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@28) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@28) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@28) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@28) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@28) (store (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@28) o_20@@6 f_31@@6 v@@6) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@28) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@28) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@28) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@28) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@28) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@28) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5371) (o_20@@7 T@Ref) (f_31@@7 T@Field_5444_5445) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@29) (store (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@29) o_20@@7 f_31@@7 v@@7) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@29) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@29) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@29) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@29) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@29) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@29) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@29) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@29) (store (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@29) o_20@@7 f_31@@7 v@@7) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@29) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@29) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@29) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@29) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@29) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@29) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@29) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5371) (o_20@@8 T@Ref) (f_31@@8 T@Field_5431_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_5371 (store (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@30) o_20@@8 f_31@@8 v@@8) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@30) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@30) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@30) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@30) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@30) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@30) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@30) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@30) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5371 (store (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@30) o_20@@8 f_31@@8 v@@8) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@30) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@30) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@30) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@30) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@30) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@30) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@30) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@30) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@30)))
)))
(assert (forall ((a_2@@5 T@ArrayDomainType) ) (! (= (PredicateMaskField_3327 (array a_2@@5)) (|array#sm| a_2@@5))
 :qid |stdinbpl.231:15|
 :skolemid |23|
 :pattern ( (PredicateMaskField_3327 (array a_2@@5)))
)))
(assert (forall ((o_20@@9 T@Ref) (f_17 T@Field_5444_5445) (Heap@@31 T@PolymorphicMapType_5371) ) (!  (=> (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@31) o_20@@9 $allocated) (select (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@31) (select (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@31) o_20@@9 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@31) o_20@@9 f_17))
)))
(assert (forall ((p@@2 T@Field_8934_8935) (v_1@@1 T@FrameType) (q T@Field_8934_8935) (w@@1 T@FrameType) (r T@Field_8934_8935) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8934_8934 p@@2 v_1@@1 q w@@1) (InsidePredicate_8934_8934 q w@@1 r u)) (InsidePredicate_8934_8934 p@@2 v_1@@1 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8934_8934 p@@2 v_1@@1 q w@@1) (InsidePredicate_8934_8934 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_8934_8935) (v_1@@2 T@FrameType) (q@@0 T@Field_8934_8935) (w@@2 T@FrameType) (r@@0 T@Field_5431_3328) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_8934_8934 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8934_5431 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_8934_5431 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8934_8934 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8934_5431 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_8934_8935) (v_1@@3 T@FrameType) (q@@1 T@Field_5431_3328) (w@@3 T@FrameType) (r@@1 T@Field_8934_8935) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_8934_5431 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_5431_8934 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_8934_8934 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8934_5431 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_5431_8934 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_8934_8935) (v_1@@4 T@FrameType) (q@@2 T@Field_5431_3328) (w@@4 T@FrameType) (r@@2 T@Field_5431_3328) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_8934_5431 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_5431_5431 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_8934_5431 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8934_5431 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_5431_5431 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_5431_3328) (v_1@@5 T@FrameType) (q@@3 T@Field_8934_8935) (w@@5 T@FrameType) (r@@3 T@Field_8934_8935) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_5431_8934 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8934_8934 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_5431_8934 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5431_8934 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8934_8934 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_5431_3328) (v_1@@6 T@FrameType) (q@@4 T@Field_8934_8935) (w@@6 T@FrameType) (r@@4 T@Field_5431_3328) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_5431_8934 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8934_5431 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_5431_5431 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5431_8934 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8934_5431 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_5431_3328) (v_1@@7 T@FrameType) (q@@5 T@Field_5431_3328) (w@@7 T@FrameType) (r@@5 T@Field_8934_8935) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_5431_5431 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_5431_8934 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_5431_8934 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5431_5431 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_5431_8934 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_5431_3328) (v_1@@8 T@FrameType) (q@@6 T@Field_5431_3328) (w@@8 T@FrameType) (r@@6 T@Field_5431_3328) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_5431_5431 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_5431_5431 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_5431_5431 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5431_5431 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_5431_5431 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a_2@@6 T@ArrayDomainType) (i Int) (j_9 Int) ) (!  (=> (and (>= i 0) (and (>= j_9 0) (and (< i (len_1 a_2@@6)) (and (< j_9 (len_1 a_2@@6)) (not (= i j_9)))))) (not (= (loc a_2@@6 i) (loc a_2@@6 j_9))))
 :qid |stdinbpl.211:15|
 :skolemid |22|
 :pattern ( (loc a_2@@6 i) (loc a_2@@6 j_9))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@2 () T@PolymorphicMapType_5392)
(declare-fun a_2@@7 () T@ArrayDomainType)
(declare-fun Heap@4 () T@PolymorphicMapType_5371)
(declare-fun Heap@1 () T@PolymorphicMapType_5371)
(declare-fun Heap@2 () T@PolymorphicMapType_5371)
(declare-fun Heap@3 () T@PolymorphicMapType_5371)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_5392)
(declare-fun Mask@1 () T@PolymorphicMapType_5392)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_5392)
(declare-fun FrameFragment_1535 (Int) T@FrameType)
(declare-fun Heap@@32 () T@PolymorphicMapType_5371)
(declare-fun Heap@0 () T@PolymorphicMapType_5371)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_5392)
(set-info :boogie-vc-id _treeToArray)
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
(let ((anon9_Else_correct  (=> (HasDirectPerm_3327_3328 Mask@2 null (array a_2@@7)) (=> (and (= Heap@4 Heap@1) (= (ControlFlow 0 3) 1)) anon6_correct))))
(let ((anon9_Then_correct  (=> (not (HasDirectPerm_3327_3328 Mask@2 null (array a_2@@7))) (=> (and (and (= Heap@2 (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@1) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@1) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@1) (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@1) (store (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@1) null (|array#sm| a_2@@7) ZeroPMask) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@1) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@1) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@1) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@1) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@1))) (= Heap@3 (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@2) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@2) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@2) (store (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@2) null (array a_2@@7) freshVersion@0) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@2) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@2) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@2) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@2) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@2) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@2)))) (and (= Heap@4 Heap@3) (= (ControlFlow 0 2) 1))) anon6_correct))))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 4) (- 0 7)) (forall ((i@@0 Int) (i_77 Int) ) (!  (=> (and (and (and (and (not (= i@@0 i_77)) (and (<= 0 i@@0) (< i@@0 (len_1 a_2@@7)))) (and (<= 0 i_77) (< i_77 (len_1 a_2@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@7 i@@0) (loc a_2@@7 i_77))))
 :qid |stdinbpl.376:15|
 :skolemid |36|
))) (=> (forall ((i@@1 Int) (i_77@@0 Int) ) (!  (=> (and (and (and (and (not (= i@@1 i_77@@0)) (and (<= 0 i@@1) (< i@@1 (len_1 a_2@@7)))) (and (<= 0 i_77@@0) (< i_77@@0 (len_1 a_2@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@7 i@@1) (loc a_2@@7 i_77@@0))))
 :qid |stdinbpl.376:15|
 :skolemid |36|
)) (=> (and (and (forall ((i@@2 Int) ) (!  (=> (and (and (<= 0 i@@2) (< i@@2 (len_1 a_2@@7))) (< NoPerm FullPerm)) (and (qpRange2 (loc a_2@@7 i@@2)) (= (invRecv2 (loc a_2@@7 i@@2)) i@@2)))
 :qid |stdinbpl.382:22|
 :skolemid |37|
 :pattern ( (loc a_2@@7 i@@2))
 :pattern ( (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@1) (loc a_2@@7 i@@2) val))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv2 o_4)) (< (invRecv2 o_4) (len_1 a_2@@7))) (< NoPerm FullPerm)) (qpRange2 o_4)) (= (loc a_2@@7 (invRecv2 o_4)) o_4))
 :qid |stdinbpl.386:22|
 :skolemid |38|
 :pattern ( (invRecv2 o_4))
))) (and (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (len_1 a_2@@7))) (not (= (loc a_2@@7 i@@3) null)))
 :qid |stdinbpl.392:22|
 :skolemid |39|
 :pattern ( (loc a_2@@7 i@@3))
 :pattern ( (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@1) (loc a_2@@7 i@@3) val))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (len_1 a_2@@7))) (< NoPerm FullPerm)) (qpRange2 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@7 (invRecv2 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| QPMask@0) o_4@@0 val) (+ (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| Mask@1) o_4@@0 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (len_1 a_2@@7))) (< NoPerm FullPerm)) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| QPMask@0) o_4@@0 val) (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| Mask@1) o_4@@0 val))))
 :qid |stdinbpl.398:22|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| QPMask@0) o_4@@0 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_5431_53) ) (!  (=> true (= (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| Mask@1) o_4@@1 f_5) (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.402:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| Mask@1) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_5444_5445) ) (!  (=> true (= (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| Mask@1) o_4@@2 f_5@@0) (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.402:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| Mask@1) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_8887_1344) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| Mask@1) o_4@@3 f_5@@1) (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.402:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| Mask@1) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_5431_3328) ) (!  (=> true (= (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| Mask@1) o_4@@4 f_5@@2) (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.402:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| Mask@1) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_5431_8952) ) (!  (=> true (= (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| Mask@1) o_4@@5 f_5@@3) (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.402:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| Mask@1) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| QPMask@0) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_3327_53) ) (!  (=> true (= (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| Mask@1) o_4@@6 f_5@@4) (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| QPMask@0) o_4@@6 f_5@@4)))
 :qid |stdinbpl.402:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| Mask@1) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| QPMask@0) o_4@@6 f_5@@4))
))) (forall ((o_4@@7 T@Ref) (f_5@@5 T@Field_3327_5445) ) (!  (=> true (= (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| Mask@1) o_4@@7 f_5@@5) (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| QPMask@0) o_4@@7 f_5@@5)))
 :qid |stdinbpl.402:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| Mask@1) o_4@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| QPMask@0) o_4@@7 f_5@@5))
))) (forall ((o_4@@8 T@Ref) (f_5@@6 T@Field_3327_1344) ) (!  (=> true (= (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| Mask@1) o_4@@8 f_5@@6) (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| QPMask@0) o_4@@8 f_5@@6)))
 :qid |stdinbpl.402:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| Mask@1) o_4@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| QPMask@0) o_4@@8 f_5@@6))
))) (forall ((o_4@@9 T@Ref) (f_5@@7 T@Field_8934_8935) ) (!  (=> true (= (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| Mask@1) o_4@@9 f_5@@7) (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| QPMask@0) o_4@@9 f_5@@7)))
 :qid |stdinbpl.402:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| Mask@1) o_4@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| QPMask@0) o_4@@9 f_5@@7))
))) (forall ((o_4@@10 T@Ref) (f_5@@8 T@Field_8947_8952) ) (!  (=> true (= (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| Mask@1) o_4@@10 f_5@@8) (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| QPMask@0) o_4@@10 f_5@@8)))
 :qid |stdinbpl.402:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| Mask@1) o_4@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| QPMask@0) o_4@@10 f_5@@8))
))) (state Heap@1 QPMask@0)) (and (state Heap@1 QPMask@0) (state Heap@1 QPMask@0))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= 0 i_1) (< i_1 (len_1 a_2@@7)))) (and (<= 0 i_1_1) (< i_1_1 (len_1 a_2@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@7 i_1) (loc a_2@@7 i_1_1))))
 :qid |stdinbpl.421:17|
 :skolemid |42|
 :pattern ( (neverTriggered3 i_1) (neverTriggered3 i_1_1))
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= 0 i_1@@0) (< i_1@@0 (len_1 a_2@@7)))) (and (<= 0 i_1_1@@0) (< i_1_1@@0 (len_1 a_2@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@7 i_1@@0) (loc a_2@@7 i_1_1@@0))))
 :qid |stdinbpl.421:17|
 :skolemid |42|
 :pattern ( (neverTriggered3 i_1@@0) (neverTriggered3 i_1_1@@0))
)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall ((i_1@@1 Int) ) (!  (=> (and (<= 0 i_1@@1) (< i_1@@1 (len_1 a_2@@7))) (>= (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| QPMask@0) (loc a_2@@7 i_1@@1) val) FullPerm))
 :qid |stdinbpl.428:17|
 :skolemid |43|
 :pattern ( (loc a_2@@7 i_1@@1))
 :pattern ( (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@1) (loc a_2@@7 i_1@@1) val))
))) (=> (forall ((i_1@@2 Int) ) (!  (=> (and (<= 0 i_1@@2) (< i_1@@2 (len_1 a_2@@7))) (>= (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| QPMask@0) (loc a_2@@7 i_1@@2) val) FullPerm))
 :qid |stdinbpl.428:17|
 :skolemid |43|
 :pattern ( (loc a_2@@7 i_1@@2))
 :pattern ( (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@1) (loc a_2@@7 i_1@@2) val))
)) (=> (forall ((i_1@@3 Int) ) (!  (=> (and (and (<= 0 i_1@@3) (< i_1@@3 (len_1 a_2@@7))) (< NoPerm FullPerm)) (and (qpRange3 (loc a_2@@7 i_1@@3)) (= (invRecv3 (loc a_2@@7 i_1@@3)) i_1@@3)))
 :qid |stdinbpl.434:22|
 :skolemid |44|
 :pattern ( (loc a_2@@7 i_1@@3))
 :pattern ( (select (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@1) (loc a_2@@7 i_1@@3) val))
)) (=> (and (forall ((o_4@@11 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv3 o_4@@11)) (< (invRecv3 o_4@@11) (len_1 a_2@@7))) (and (< NoPerm FullPerm) (qpRange3 o_4@@11))) (= (loc a_2@@7 (invRecv3 o_4@@11)) o_4@@11))
 :qid |stdinbpl.438:22|
 :skolemid |45|
 :pattern ( (invRecv3 o_4@@11))
)) (forall ((o_4@@12 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv3 o_4@@12)) (< (invRecv3 o_4@@12) (len_1 a_2@@7))) (and (< NoPerm FullPerm) (qpRange3 o_4@@12))) (and (= (loc a_2@@7 (invRecv3 o_4@@12)) o_4@@12) (= (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| QPMask@1) o_4@@12 val) (- (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| QPMask@0) o_4@@12 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv3 o_4@@12)) (< (invRecv3 o_4@@12) (len_1 a_2@@7))) (and (< NoPerm FullPerm) (qpRange3 o_4@@12)))) (= (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| QPMask@1) o_4@@12 val) (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| QPMask@0) o_4@@12 val))))
 :qid |stdinbpl.444:22|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| QPMask@1) o_4@@12 val))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@13 T@Ref) (f_5@@9 T@Field_5431_53) ) (!  (=> true (= (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| QPMask@0) o_4@@13 f_5@@9) (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| QPMask@1) o_4@@13 f_5@@9)))
 :qid |stdinbpl.450:29|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| QPMask@1) o_4@@13 f_5@@9))
)) (forall ((o_4@@14 T@Ref) (f_5@@10 T@Field_5444_5445) ) (!  (=> true (= (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| QPMask@0) o_4@@14 f_5@@10) (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| QPMask@1) o_4@@14 f_5@@10)))
 :qid |stdinbpl.450:29|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| QPMask@1) o_4@@14 f_5@@10))
))) (forall ((o_4@@15 T@Ref) (f_5@@11 T@Field_8887_1344) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| QPMask@0) o_4@@15 f_5@@11) (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| QPMask@1) o_4@@15 f_5@@11)))
 :qid |stdinbpl.450:29|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| QPMask@1) o_4@@15 f_5@@11))
))) (forall ((o_4@@16 T@Ref) (f_5@@12 T@Field_5431_3328) ) (!  (=> true (= (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| QPMask@0) o_4@@16 f_5@@12) (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| QPMask@1) o_4@@16 f_5@@12)))
 :qid |stdinbpl.450:29|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| QPMask@1) o_4@@16 f_5@@12))
))) (forall ((o_4@@17 T@Ref) (f_5@@13 T@Field_5431_8952) ) (!  (=> true (= (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| QPMask@0) o_4@@17 f_5@@13) (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| QPMask@1) o_4@@17 f_5@@13)))
 :qid |stdinbpl.450:29|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| QPMask@1) o_4@@17 f_5@@13))
))) (forall ((o_4@@18 T@Ref) (f_5@@14 T@Field_3327_53) ) (!  (=> true (= (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| QPMask@0) o_4@@18 f_5@@14) (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| QPMask@1) o_4@@18 f_5@@14)))
 :qid |stdinbpl.450:29|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| QPMask@1) o_4@@18 f_5@@14))
))) (forall ((o_4@@19 T@Ref) (f_5@@15 T@Field_3327_5445) ) (!  (=> true (= (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| QPMask@0) o_4@@19 f_5@@15) (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| QPMask@1) o_4@@19 f_5@@15)))
 :qid |stdinbpl.450:29|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| QPMask@1) o_4@@19 f_5@@15))
))) (forall ((o_4@@20 T@Ref) (f_5@@16 T@Field_3327_1344) ) (!  (=> true (= (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| QPMask@0) o_4@@20 f_5@@16) (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| QPMask@1) o_4@@20 f_5@@16)))
 :qid |stdinbpl.450:29|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| QPMask@1) o_4@@20 f_5@@16))
))) (forall ((o_4@@21 T@Ref) (f_5@@17 T@Field_8934_8935) ) (!  (=> true (= (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| QPMask@0) o_4@@21 f_5@@17) (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| QPMask@1) o_4@@21 f_5@@17)))
 :qid |stdinbpl.450:29|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| QPMask@1) o_4@@21 f_5@@17))
))) (forall ((o_4@@22 T@Ref) (f_5@@18 T@Field_8947_8952) ) (!  (=> true (= (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| QPMask@0) o_4@@22 f_5@@18) (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| QPMask@1) o_4@@22 f_5@@18)))
 :qid |stdinbpl.450:29|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| QPMask@1) o_4@@22 f_5@@18))
))) (= Mask@2 (PolymorphicMapType_5392 (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| QPMask@1) (store (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| QPMask@1) null (array a_2@@7) (+ (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| QPMask@1) null (array a_2@@7)) FullPerm)) (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| QPMask@1) (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| QPMask@1) (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| QPMask@1) (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| QPMask@1) (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| QPMask@1) (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| QPMask@1) (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| QPMask@1) (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| QPMask@1)))) (and (and (state Heap@1 Mask@2) (state Heap@1 Mask@2)) (and (|array#trigger_3327| Heap@1 (array a_2@@7)) (= (select (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@1) null (array a_2@@7)) (FrameFragment_1535 (|array#condqp1| Heap@1 a_2@@7)))))) (and (=> (= (ControlFlow 0 4) 2) anon9_Then_correct) (=> (= (ControlFlow 0 4) 3) anon9_Else_correct)))))))))))))))
(let ((anon8_Else_correct  (=> (HasDirectPerm_3327_3328 Mask@1 null (array a_2@@7)) (=> (and (= Heap@1 Heap@@32) (= (ControlFlow 0 9) 4)) anon4_correct))))
(let ((anon8_Then_correct  (=> (and (and (not (HasDirectPerm_3327_3328 Mask@1 null (array a_2@@7))) (= Heap@0 (PolymorphicMapType_5371 (|PolymorphicMapType_5371_3182_53#PolymorphicMapType_5371| Heap@@32) (|PolymorphicMapType_5371_3185_3186#PolymorphicMapType_5371| Heap@@32) (|PolymorphicMapType_5371_3324_1344#PolymorphicMapType_5371| Heap@@32) (store (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@32) null (array a_2@@7) newVersion@0) (|PolymorphicMapType_5371_3331_14656#PolymorphicMapType_5371| Heap@@32) (|PolymorphicMapType_5371_3327_53#PolymorphicMapType_5371| Heap@@32) (|PolymorphicMapType_5371_3327_5445#PolymorphicMapType_5371| Heap@@32) (|PolymorphicMapType_5371_3327_1344#PolymorphicMapType_5371| Heap@@32) (|PolymorphicMapType_5371_5431_3328#PolymorphicMapType_5371| Heap@@32) (|PolymorphicMapType_5371_5431_17381#PolymorphicMapType_5371| Heap@@32)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 8) 4))) anon4_correct)))
(let ((anon2_correct  (=> (= Mask@1 (PolymorphicMapType_5392 (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| Mask@0) (store (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| Mask@0) null (array a_2@@7) (- (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| Mask@0) null (array a_2@@7)) FullPerm)) (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| Mask@0) (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| Mask@0) (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| Mask@0) (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| Mask@0) (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| Mask@0) (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| Mask@0) (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| Mask@0) (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| Mask@0))) (and (=> (= (ControlFlow 0 10) 8) anon8_Then_correct) (=> (= (ControlFlow 0 10) 9) anon8_Else_correct)))))
(let ((anon7_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 13) 10)) anon2_correct)))
(let ((anon7_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (<= FullPerm (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| Mask@0) null (array a_2@@7)))) (=> (<= FullPerm (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| Mask@0) null (array a_2@@7))) (=> (= (ControlFlow 0 11) 10) anon2_correct))))))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and AssumePermUpperBound (= Mask@0 (PolymorphicMapType_5392 (|PolymorphicMapType_5392_3324_1344#PolymorphicMapType_5392| ZeroMask) (store (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| ZeroMask) null (array a_2@@7) (+ (select (|PolymorphicMapType_5392_3327_3328#PolymorphicMapType_5392| ZeroMask) null (array a_2@@7)) FullPerm)) (|PolymorphicMapType_5392_3324_3328#PolymorphicMapType_5392| ZeroMask) (|PolymorphicMapType_5392_3324_53#PolymorphicMapType_5392| ZeroMask) (|PolymorphicMapType_5392_3324_5445#PolymorphicMapType_5392| ZeroMask) (|PolymorphicMapType_5392_3324_25541#PolymorphicMapType_5392| ZeroMask) (|PolymorphicMapType_5392_3327_1344#PolymorphicMapType_5392| ZeroMask) (|PolymorphicMapType_5392_3327_53#PolymorphicMapType_5392| ZeroMask) (|PolymorphicMapType_5392_3327_5445#PolymorphicMapType_5392| ZeroMask) (|PolymorphicMapType_5392_3327_25952#PolymorphicMapType_5392| ZeroMask)))) (=> (and (and (state Heap@@32 Mask@0) (state Heap@@32 Mask@0)) (and (|array#trigger_3327| Heap@@32 (array a_2@@7)) (= (select (|PolymorphicMapType_5371_3327_3328#PolymorphicMapType_5371| Heap@@32) null (array a_2@@7)) (FrameFragment_1535 (|array#condqp1| Heap@@32 a_2@@7))))) (and (=> (= (ControlFlow 0 14) 11) anon7_Then_correct) (=> (= (ControlFlow 0 14) 13) anon7_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15) 14) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
