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
(declare-sort T@Field_4013_53 0)
(declare-sort T@Field_4026_4027 0)
(declare-sort T@Field_7341_7342 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_2123_53 0)
(declare-sort T@Field_2123_4027 0)
(declare-sort T@Field_7354_7359 0)
(declare-sort T@Field_4013_2124 0)
(declare-sort T@Field_4013_7359 0)
(declare-datatypes ((T@PolymorphicMapType_3974 0)) (((PolymorphicMapType_3974 (|PolymorphicMapType_3974_2123_2124#PolymorphicMapType_3974| (Array T@Ref T@Field_7341_7342 Real)) (|PolymorphicMapType_3974_2123_53#PolymorphicMapType_3974| (Array T@Ref T@Field_2123_53 Real)) (|PolymorphicMapType_3974_2123_4027#PolymorphicMapType_3974| (Array T@Ref T@Field_2123_4027 Real)) (|PolymorphicMapType_3974_2123_19799#PolymorphicMapType_3974| (Array T@Ref T@Field_7354_7359 Real)) (|PolymorphicMapType_3974_4013_2124#PolymorphicMapType_3974| (Array T@Ref T@Field_4013_2124 Real)) (|PolymorphicMapType_3974_4013_53#PolymorphicMapType_3974| (Array T@Ref T@Field_4013_53 Real)) (|PolymorphicMapType_3974_4013_4027#PolymorphicMapType_3974| (Array T@Ref T@Field_4026_4027 Real)) (|PolymorphicMapType_3974_4013_20145#PolymorphicMapType_3974| (Array T@Ref T@Field_4013_7359 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4502 0)) (((PolymorphicMapType_4502 (|PolymorphicMapType_4502_4013_53#PolymorphicMapType_4502| (Array T@Ref T@Field_4013_53 Bool)) (|PolymorphicMapType_4502_4013_4027#PolymorphicMapType_4502| (Array T@Ref T@Field_4026_4027 Bool)) (|PolymorphicMapType_4502_4013_7342#PolymorphicMapType_4502| (Array T@Ref T@Field_4013_2124 Bool)) (|PolymorphicMapType_4502_4013_14228#PolymorphicMapType_4502| (Array T@Ref T@Field_4013_7359 Bool)) (|PolymorphicMapType_4502_7341_53#PolymorphicMapType_4502| (Array T@Ref T@Field_2123_53 Bool)) (|PolymorphicMapType_4502_7341_4027#PolymorphicMapType_4502| (Array T@Ref T@Field_2123_4027 Bool)) (|PolymorphicMapType_4502_7341_7342#PolymorphicMapType_4502| (Array T@Ref T@Field_7341_7342 Bool)) (|PolymorphicMapType_4502_7341_15078#PolymorphicMapType_4502| (Array T@Ref T@Field_7354_7359 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3953 0)) (((PolymorphicMapType_3953 (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| (Array T@Ref T@Field_4013_53 Bool)) (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| (Array T@Ref T@Field_4026_4027 T@Ref)) (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| (Array T@Ref T@Field_7341_7342 T@FrameType)) (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| (Array T@Ref T@Field_2123_53 Bool)) (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| (Array T@Ref T@Field_2123_4027 T@Ref)) (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| (Array T@Ref T@Field_7354_7359 T@PolymorphicMapType_4502)) (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| (Array T@Ref T@Field_4013_2124 T@FrameType)) (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| (Array T@Ref T@Field_4013_7359 T@PolymorphicMapType_4502)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3953 T@PolymorphicMapType_3953) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3953 T@PolymorphicMapType_3953) Bool)
(declare-fun state (T@PolymorphicMapType_3953 T@PolymorphicMapType_3974) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3974) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3953 T@PolymorphicMapType_3953 T@PolymorphicMapType_3974) Bool)
(declare-fun IsPredicateField_4013_13267 (T@Field_4013_2124) Bool)
(declare-fun HasDirectPerm_4013_2124 (T@PolymorphicMapType_3974 T@Ref T@Field_4013_2124) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4013 (T@Field_4013_2124) T@Field_4013_7359)
(declare-fun IsPredicateField_2123_2124 (T@Field_7341_7342) Bool)
(declare-fun HasDirectPerm_2123_2124 (T@PolymorphicMapType_3974 T@Ref T@Field_7341_7342) Bool)
(declare-fun PredicateMaskField_2123 (T@Field_7341_7342) T@Field_7354_7359)
(declare-fun IsWandField_4013_16243 (T@Field_4013_2124) Bool)
(declare-fun WandMaskField_4013 (T@Field_4013_2124) T@Field_4013_7359)
(declare-fun IsWandField_2123_15886 (T@Field_7341_7342) Bool)
(declare-fun WandMaskField_2123 (T@Field_7341_7342) T@Field_7354_7359)
(declare-fun ZeroPMask () T@PolymorphicMapType_4502)
(declare-fun mustSendBounded$ (T@Ref) T@Field_7341_7342)
(declare-fun |mustSendBounded$#trigger_2123| (T@PolymorphicMapType_3953 T@Field_7341_7342) Bool)
(declare-fun |mustSendBounded$#everUsed_2123| (T@Field_7341_7342) Bool)
(declare-fun |mustSendBounded$#sm| (T@Ref) T@Field_7354_7359)
(declare-fun dummyHeap () T@PolymorphicMapType_3953)
(declare-fun ZeroMask () T@PolymorphicMapType_3974)
(declare-fun $allocated () T@Field_4013_53)
(declare-fun InsidePredicate_7341_7341 (T@Field_7341_7342 T@FrameType T@Field_7341_7342 T@FrameType) Bool)
(declare-fun InsidePredicate_4013_4013 (T@Field_4013_2124 T@FrameType T@Field_4013_2124 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4013_21983 (T@Field_4013_7359) Bool)
(declare-fun IsWandField_4013_21999 (T@Field_4013_7359) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4013_4027 (T@Field_4026_4027) Bool)
(declare-fun IsWandField_4013_4027 (T@Field_4026_4027) Bool)
(declare-fun IsPredicateField_4013_53 (T@Field_4013_53) Bool)
(declare-fun IsWandField_4013_53 (T@Field_4013_53) Bool)
(declare-fun IsPredicateField_2123_21320 (T@Field_7354_7359) Bool)
(declare-fun IsWandField_2123_21336 (T@Field_7354_7359) Bool)
(declare-fun IsPredicateField_2123_4027 (T@Field_2123_4027) Bool)
(declare-fun IsWandField_2123_4027 (T@Field_2123_4027) Bool)
(declare-fun IsPredicateField_2123_53 (T@Field_2123_53) Bool)
(declare-fun IsWandField_2123_53 (T@Field_2123_53) Bool)
(declare-fun HasDirectPerm_4013_12654 (T@PolymorphicMapType_3974 T@Ref T@Field_4013_7359) Bool)
(declare-fun HasDirectPerm_4013_4027 (T@PolymorphicMapType_3974 T@Ref T@Field_4026_4027) Bool)
(declare-fun HasDirectPerm_4013_53 (T@PolymorphicMapType_3974 T@Ref T@Field_4013_53) Bool)
(declare-fun HasDirectPerm_2123_11726 (T@PolymorphicMapType_3974 T@Ref T@Field_7354_7359) Bool)
(declare-fun HasDirectPerm_2123_4027 (T@PolymorphicMapType_3974 T@Ref T@Field_2123_4027) Bool)
(declare-fun HasDirectPerm_2123_53 (T@PolymorphicMapType_3974 T@Ref T@Field_2123_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3974 T@PolymorphicMapType_3974 T@PolymorphicMapType_3974) Bool)
(declare-fun getPredWandId_2123_2124 (T@Field_7341_7342) Int)
(declare-fun InsidePredicate_7341_4013 (T@Field_7341_7342 T@FrameType T@Field_4013_2124 T@FrameType) Bool)
(declare-fun InsidePredicate_4013_7341 (T@Field_4013_2124 T@FrameType T@Field_7341_7342 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3953) (Heap1 T@PolymorphicMapType_3953) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3953) (Mask T@PolymorphicMapType_3974) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3953) (ExhaleHeap T@PolymorphicMapType_3953) (Mask@@0 T@PolymorphicMapType_3974) (pm_f_2 T@Field_4013_2124) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4013_2124 Mask@@0 null pm_f_2) (IsPredicateField_4013_13267 pm_f_2)) (and (and (and (and (and (and (and (forall ((o2_2 T@Ref) (f_9 T@Field_4013_53) ) (!  (=> (select (|PolymorphicMapType_4502_4013_53#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@0) null (PredicateMaskField_4013 pm_f_2))) o2_2 f_9) (= (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@0) o2_2 f_9) (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| ExhaleHeap) o2_2 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| ExhaleHeap) o2_2 f_9))
)) (forall ((o2_2@@0 T@Ref) (f_9@@0 T@Field_4026_4027) ) (!  (=> (select (|PolymorphicMapType_4502_4013_4027#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@0) null (PredicateMaskField_4013 pm_f_2))) o2_2@@0 f_9@@0) (= (select (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@0) o2_2@@0 f_9@@0) (select (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| ExhaleHeap) o2_2@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| ExhaleHeap) o2_2@@0 f_9@@0))
))) (forall ((o2_2@@1 T@Ref) (f_9@@1 T@Field_4013_2124) ) (!  (=> (select (|PolymorphicMapType_4502_4013_7342#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@0) null (PredicateMaskField_4013 pm_f_2))) o2_2@@1 f_9@@1) (= (select (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@0) o2_2@@1 f_9@@1) (select (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| ExhaleHeap) o2_2@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| ExhaleHeap) o2_2@@1 f_9@@1))
))) (forall ((o2_2@@2 T@Ref) (f_9@@2 T@Field_4013_7359) ) (!  (=> (select (|PolymorphicMapType_4502_4013_14228#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@0) null (PredicateMaskField_4013 pm_f_2))) o2_2@@2 f_9@@2) (= (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@0) o2_2@@2 f_9@@2) (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| ExhaleHeap) o2_2@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| ExhaleHeap) o2_2@@2 f_9@@2))
))) (forall ((o2_2@@3 T@Ref) (f_9@@3 T@Field_2123_53) ) (!  (=> (select (|PolymorphicMapType_4502_7341_53#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@0) null (PredicateMaskField_4013 pm_f_2))) o2_2@@3 f_9@@3) (= (select (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@0) o2_2@@3 f_9@@3) (select (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| ExhaleHeap) o2_2@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| ExhaleHeap) o2_2@@3 f_9@@3))
))) (forall ((o2_2@@4 T@Ref) (f_9@@4 T@Field_2123_4027) ) (!  (=> (select (|PolymorphicMapType_4502_7341_4027#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@0) null (PredicateMaskField_4013 pm_f_2))) o2_2@@4 f_9@@4) (= (select (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@0) o2_2@@4 f_9@@4) (select (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| ExhaleHeap) o2_2@@4 f_9@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| ExhaleHeap) o2_2@@4 f_9@@4))
))) (forall ((o2_2@@5 T@Ref) (f_9@@5 T@Field_7341_7342) ) (!  (=> (select (|PolymorphicMapType_4502_7341_7342#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@0) null (PredicateMaskField_4013 pm_f_2))) o2_2@@5 f_9@@5) (= (select (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@0) o2_2@@5 f_9@@5) (select (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| ExhaleHeap) o2_2@@5 f_9@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| ExhaleHeap) o2_2@@5 f_9@@5))
))) (forall ((o2_2@@6 T@Ref) (f_9@@6 T@Field_7354_7359) ) (!  (=> (select (|PolymorphicMapType_4502_7341_15078#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@0) null (PredicateMaskField_4013 pm_f_2))) o2_2@@6 f_9@@6) (= (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@0) o2_2@@6 f_9@@6) (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| ExhaleHeap) o2_2@@6 f_9@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| ExhaleHeap) o2_2@@6 f_9@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4013_13267 pm_f_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3953) (ExhaleHeap@@0 T@PolymorphicMapType_3953) (Mask@@1 T@PolymorphicMapType_3974) (pm_f_2@@0 T@Field_7341_7342) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2123_2124 Mask@@1 null pm_f_2@@0) (IsPredicateField_2123_2124 pm_f_2@@0)) (and (and (and (and (and (and (and (forall ((o2_2@@7 T@Ref) (f_9@@7 T@Field_4013_53) ) (!  (=> (select (|PolymorphicMapType_4502_4013_53#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@1) null (PredicateMaskField_2123 pm_f_2@@0))) o2_2@@7 f_9@@7) (= (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@1) o2_2@@7 f_9@@7) (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| ExhaleHeap@@0) o2_2@@7 f_9@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| ExhaleHeap@@0) o2_2@@7 f_9@@7))
)) (forall ((o2_2@@8 T@Ref) (f_9@@8 T@Field_4026_4027) ) (!  (=> (select (|PolymorphicMapType_4502_4013_4027#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@1) null (PredicateMaskField_2123 pm_f_2@@0))) o2_2@@8 f_9@@8) (= (select (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@1) o2_2@@8 f_9@@8) (select (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| ExhaleHeap@@0) o2_2@@8 f_9@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| ExhaleHeap@@0) o2_2@@8 f_9@@8))
))) (forall ((o2_2@@9 T@Ref) (f_9@@9 T@Field_4013_2124) ) (!  (=> (select (|PolymorphicMapType_4502_4013_7342#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@1) null (PredicateMaskField_2123 pm_f_2@@0))) o2_2@@9 f_9@@9) (= (select (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@1) o2_2@@9 f_9@@9) (select (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| ExhaleHeap@@0) o2_2@@9 f_9@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| ExhaleHeap@@0) o2_2@@9 f_9@@9))
))) (forall ((o2_2@@10 T@Ref) (f_9@@10 T@Field_4013_7359) ) (!  (=> (select (|PolymorphicMapType_4502_4013_14228#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@1) null (PredicateMaskField_2123 pm_f_2@@0))) o2_2@@10 f_9@@10) (= (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@1) o2_2@@10 f_9@@10) (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| ExhaleHeap@@0) o2_2@@10 f_9@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| ExhaleHeap@@0) o2_2@@10 f_9@@10))
))) (forall ((o2_2@@11 T@Ref) (f_9@@11 T@Field_2123_53) ) (!  (=> (select (|PolymorphicMapType_4502_7341_53#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@1) null (PredicateMaskField_2123 pm_f_2@@0))) o2_2@@11 f_9@@11) (= (select (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@1) o2_2@@11 f_9@@11) (select (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| ExhaleHeap@@0) o2_2@@11 f_9@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| ExhaleHeap@@0) o2_2@@11 f_9@@11))
))) (forall ((o2_2@@12 T@Ref) (f_9@@12 T@Field_2123_4027) ) (!  (=> (select (|PolymorphicMapType_4502_7341_4027#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@1) null (PredicateMaskField_2123 pm_f_2@@0))) o2_2@@12 f_9@@12) (= (select (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@1) o2_2@@12 f_9@@12) (select (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| ExhaleHeap@@0) o2_2@@12 f_9@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| ExhaleHeap@@0) o2_2@@12 f_9@@12))
))) (forall ((o2_2@@13 T@Ref) (f_9@@13 T@Field_7341_7342) ) (!  (=> (select (|PolymorphicMapType_4502_7341_7342#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@1) null (PredicateMaskField_2123 pm_f_2@@0))) o2_2@@13 f_9@@13) (= (select (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@1) o2_2@@13 f_9@@13) (select (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| ExhaleHeap@@0) o2_2@@13 f_9@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| ExhaleHeap@@0) o2_2@@13 f_9@@13))
))) (forall ((o2_2@@14 T@Ref) (f_9@@14 T@Field_7354_7359) ) (!  (=> (select (|PolymorphicMapType_4502_7341_15078#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@1) null (PredicateMaskField_2123 pm_f_2@@0))) o2_2@@14 f_9@@14) (= (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@1) o2_2@@14 f_9@@14) (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| ExhaleHeap@@0) o2_2@@14 f_9@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| ExhaleHeap@@0) o2_2@@14 f_9@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_2123_2124 pm_f_2@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3953) (ExhaleHeap@@1 T@PolymorphicMapType_3953) (Mask@@2 T@PolymorphicMapType_3974) (pm_f_2@@1 T@Field_4013_2124) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4013_2124 Mask@@2 null pm_f_2@@1) (IsWandField_4013_16243 pm_f_2@@1)) (and (and (and (and (and (and (and (forall ((o2_2@@15 T@Ref) (f_9@@15 T@Field_4013_53) ) (!  (=> (select (|PolymorphicMapType_4502_4013_53#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@2) null (WandMaskField_4013 pm_f_2@@1))) o2_2@@15 f_9@@15) (= (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@2) o2_2@@15 f_9@@15) (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| ExhaleHeap@@1) o2_2@@15 f_9@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| ExhaleHeap@@1) o2_2@@15 f_9@@15))
)) (forall ((o2_2@@16 T@Ref) (f_9@@16 T@Field_4026_4027) ) (!  (=> (select (|PolymorphicMapType_4502_4013_4027#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@2) null (WandMaskField_4013 pm_f_2@@1))) o2_2@@16 f_9@@16) (= (select (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@2) o2_2@@16 f_9@@16) (select (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| ExhaleHeap@@1) o2_2@@16 f_9@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| ExhaleHeap@@1) o2_2@@16 f_9@@16))
))) (forall ((o2_2@@17 T@Ref) (f_9@@17 T@Field_4013_2124) ) (!  (=> (select (|PolymorphicMapType_4502_4013_7342#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@2) null (WandMaskField_4013 pm_f_2@@1))) o2_2@@17 f_9@@17) (= (select (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@2) o2_2@@17 f_9@@17) (select (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| ExhaleHeap@@1) o2_2@@17 f_9@@17)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| ExhaleHeap@@1) o2_2@@17 f_9@@17))
))) (forall ((o2_2@@18 T@Ref) (f_9@@18 T@Field_4013_7359) ) (!  (=> (select (|PolymorphicMapType_4502_4013_14228#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@2) null (WandMaskField_4013 pm_f_2@@1))) o2_2@@18 f_9@@18) (= (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@2) o2_2@@18 f_9@@18) (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| ExhaleHeap@@1) o2_2@@18 f_9@@18)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| ExhaleHeap@@1) o2_2@@18 f_9@@18))
))) (forall ((o2_2@@19 T@Ref) (f_9@@19 T@Field_2123_53) ) (!  (=> (select (|PolymorphicMapType_4502_7341_53#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@2) null (WandMaskField_4013 pm_f_2@@1))) o2_2@@19 f_9@@19) (= (select (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@2) o2_2@@19 f_9@@19) (select (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| ExhaleHeap@@1) o2_2@@19 f_9@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| ExhaleHeap@@1) o2_2@@19 f_9@@19))
))) (forall ((o2_2@@20 T@Ref) (f_9@@20 T@Field_2123_4027) ) (!  (=> (select (|PolymorphicMapType_4502_7341_4027#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@2) null (WandMaskField_4013 pm_f_2@@1))) o2_2@@20 f_9@@20) (= (select (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@2) o2_2@@20 f_9@@20) (select (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| ExhaleHeap@@1) o2_2@@20 f_9@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| ExhaleHeap@@1) o2_2@@20 f_9@@20))
))) (forall ((o2_2@@21 T@Ref) (f_9@@21 T@Field_7341_7342) ) (!  (=> (select (|PolymorphicMapType_4502_7341_7342#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@2) null (WandMaskField_4013 pm_f_2@@1))) o2_2@@21 f_9@@21) (= (select (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@2) o2_2@@21 f_9@@21) (select (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| ExhaleHeap@@1) o2_2@@21 f_9@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| ExhaleHeap@@1) o2_2@@21 f_9@@21))
))) (forall ((o2_2@@22 T@Ref) (f_9@@22 T@Field_7354_7359) ) (!  (=> (select (|PolymorphicMapType_4502_7341_15078#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@2) null (WandMaskField_4013 pm_f_2@@1))) o2_2@@22 f_9@@22) (= (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@2) o2_2@@22 f_9@@22) (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| ExhaleHeap@@1) o2_2@@22 f_9@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| ExhaleHeap@@1) o2_2@@22 f_9@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_4013_16243 pm_f_2@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3953) (ExhaleHeap@@2 T@PolymorphicMapType_3953) (Mask@@3 T@PolymorphicMapType_3974) (pm_f_2@@2 T@Field_7341_7342) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_2123_2124 Mask@@3 null pm_f_2@@2) (IsWandField_2123_15886 pm_f_2@@2)) (and (and (and (and (and (and (and (forall ((o2_2@@23 T@Ref) (f_9@@23 T@Field_4013_53) ) (!  (=> (select (|PolymorphicMapType_4502_4013_53#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@3) null (WandMaskField_2123 pm_f_2@@2))) o2_2@@23 f_9@@23) (= (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@3) o2_2@@23 f_9@@23) (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| ExhaleHeap@@2) o2_2@@23 f_9@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| ExhaleHeap@@2) o2_2@@23 f_9@@23))
)) (forall ((o2_2@@24 T@Ref) (f_9@@24 T@Field_4026_4027) ) (!  (=> (select (|PolymorphicMapType_4502_4013_4027#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@3) null (WandMaskField_2123 pm_f_2@@2))) o2_2@@24 f_9@@24) (= (select (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@3) o2_2@@24 f_9@@24) (select (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| ExhaleHeap@@2) o2_2@@24 f_9@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| ExhaleHeap@@2) o2_2@@24 f_9@@24))
))) (forall ((o2_2@@25 T@Ref) (f_9@@25 T@Field_4013_2124) ) (!  (=> (select (|PolymorphicMapType_4502_4013_7342#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@3) null (WandMaskField_2123 pm_f_2@@2))) o2_2@@25 f_9@@25) (= (select (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@3) o2_2@@25 f_9@@25) (select (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| ExhaleHeap@@2) o2_2@@25 f_9@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| ExhaleHeap@@2) o2_2@@25 f_9@@25))
))) (forall ((o2_2@@26 T@Ref) (f_9@@26 T@Field_4013_7359) ) (!  (=> (select (|PolymorphicMapType_4502_4013_14228#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@3) null (WandMaskField_2123 pm_f_2@@2))) o2_2@@26 f_9@@26) (= (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@3) o2_2@@26 f_9@@26) (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| ExhaleHeap@@2) o2_2@@26 f_9@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| ExhaleHeap@@2) o2_2@@26 f_9@@26))
))) (forall ((o2_2@@27 T@Ref) (f_9@@27 T@Field_2123_53) ) (!  (=> (select (|PolymorphicMapType_4502_7341_53#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@3) null (WandMaskField_2123 pm_f_2@@2))) o2_2@@27 f_9@@27) (= (select (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@3) o2_2@@27 f_9@@27) (select (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| ExhaleHeap@@2) o2_2@@27 f_9@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| ExhaleHeap@@2) o2_2@@27 f_9@@27))
))) (forall ((o2_2@@28 T@Ref) (f_9@@28 T@Field_2123_4027) ) (!  (=> (select (|PolymorphicMapType_4502_7341_4027#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@3) null (WandMaskField_2123 pm_f_2@@2))) o2_2@@28 f_9@@28) (= (select (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@3) o2_2@@28 f_9@@28) (select (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| ExhaleHeap@@2) o2_2@@28 f_9@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| ExhaleHeap@@2) o2_2@@28 f_9@@28))
))) (forall ((o2_2@@29 T@Ref) (f_9@@29 T@Field_7341_7342) ) (!  (=> (select (|PolymorphicMapType_4502_7341_7342#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@3) null (WandMaskField_2123 pm_f_2@@2))) o2_2@@29 f_9@@29) (= (select (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@3) o2_2@@29 f_9@@29) (select (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| ExhaleHeap@@2) o2_2@@29 f_9@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| ExhaleHeap@@2) o2_2@@29 f_9@@29))
))) (forall ((o2_2@@30 T@Ref) (f_9@@30 T@Field_7354_7359) ) (!  (=> (select (|PolymorphicMapType_4502_7341_15078#PolymorphicMapType_4502| (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@3) null (WandMaskField_2123 pm_f_2@@2))) o2_2@@30 f_9@@30) (= (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@3) o2_2@@30 f_9@@30) (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| ExhaleHeap@@2) o2_2@@30 f_9@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| ExhaleHeap@@2) o2_2@@30 f_9@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_2123_15886 pm_f_2@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3953) (Heap1@@0 T@PolymorphicMapType_3953) (Heap2 T@PolymorphicMapType_3953) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7354_7359) ) (!  (not (select (|PolymorphicMapType_4502_7341_15078#PolymorphicMapType_4502| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4502_7341_15078#PolymorphicMapType_4502| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7341_7342) ) (!  (not (select (|PolymorphicMapType_4502_7341_7342#PolymorphicMapType_4502| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4502_7341_7342#PolymorphicMapType_4502| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_2123_4027) ) (!  (not (select (|PolymorphicMapType_4502_7341_4027#PolymorphicMapType_4502| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4502_7341_4027#PolymorphicMapType_4502| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_2123_53) ) (!  (not (select (|PolymorphicMapType_4502_7341_53#PolymorphicMapType_4502| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4502_7341_53#PolymorphicMapType_4502| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4013_7359) ) (!  (not (select (|PolymorphicMapType_4502_4013_14228#PolymorphicMapType_4502| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4502_4013_14228#PolymorphicMapType_4502| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4013_2124) ) (!  (not (select (|PolymorphicMapType_4502_4013_7342#PolymorphicMapType_4502| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4502_4013_7342#PolymorphicMapType_4502| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4026_4027) ) (!  (not (select (|PolymorphicMapType_4502_4013_4027#PolymorphicMapType_4502| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4502_4013_4027#PolymorphicMapType_4502| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_4013_53) ) (!  (not (select (|PolymorphicMapType_4502_4013_53#PolymorphicMapType_4502| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4502_4013_53#PolymorphicMapType_4502| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((r$ T@Ref) ) (! (IsPredicateField_2123_2124 (mustSendBounded$ r$))
 :qid |stdinbpl.187:15|
 :skolemid |23|
 :pattern ( (mustSendBounded$ r$))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3953) (r$@@0 T@Ref) ) (! (|mustSendBounded$#everUsed_2123| (mustSendBounded$ r$@@0))
 :qid |stdinbpl.206:15|
 :skolemid |27|
 :pattern ( (|mustSendBounded$#trigger_2123| Heap@@4 (mustSendBounded$ r$@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3953) (ExhaleHeap@@3 T@PolymorphicMapType_3953) (Mask@@4 T@PolymorphicMapType_3974) (pm_f_2@@3 T@Field_4013_2124) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_4013_2124 Mask@@4 null pm_f_2@@3) (IsPredicateField_4013_13267 pm_f_2@@3)) (= (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@5) null (PredicateMaskField_4013 pm_f_2@@3)) (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| ExhaleHeap@@3) null (PredicateMaskField_4013 pm_f_2@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_4013_13267 pm_f_2@@3) (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| ExhaleHeap@@3) null (PredicateMaskField_4013 pm_f_2@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3953) (ExhaleHeap@@4 T@PolymorphicMapType_3953) (Mask@@5 T@PolymorphicMapType_3974) (pm_f_2@@4 T@Field_7341_7342) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_2123_2124 Mask@@5 null pm_f_2@@4) (IsPredicateField_2123_2124 pm_f_2@@4)) (= (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@6) null (PredicateMaskField_2123 pm_f_2@@4)) (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| ExhaleHeap@@4) null (PredicateMaskField_2123 pm_f_2@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_2123_2124 pm_f_2@@4) (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| ExhaleHeap@@4) null (PredicateMaskField_2123 pm_f_2@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3953) (ExhaleHeap@@5 T@PolymorphicMapType_3953) (Mask@@6 T@PolymorphicMapType_3974) (pm_f_2@@5 T@Field_4013_2124) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_4013_2124 Mask@@6 null pm_f_2@@5) (IsWandField_4013_16243 pm_f_2@@5)) (= (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@7) null (WandMaskField_4013 pm_f_2@@5)) (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| ExhaleHeap@@5) null (WandMaskField_4013 pm_f_2@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_4013_16243 pm_f_2@@5) (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| ExhaleHeap@@5) null (WandMaskField_4013 pm_f_2@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3953) (ExhaleHeap@@6 T@PolymorphicMapType_3953) (Mask@@7 T@PolymorphicMapType_3974) (pm_f_2@@6 T@Field_7341_7342) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_2123_2124 Mask@@7 null pm_f_2@@6) (IsWandField_2123_15886 pm_f_2@@6)) (= (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@8) null (WandMaskField_2123 pm_f_2@@6)) (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| ExhaleHeap@@6) null (WandMaskField_2123 pm_f_2@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_2123_15886 pm_f_2@@6) (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| ExhaleHeap@@6) null (WandMaskField_2123 pm_f_2@@6)))
)))
(assert (forall ((r$@@1 T@Ref) (r$2 T@Ref) ) (!  (=> (= (mustSendBounded$ r$@@1) (mustSendBounded$ r$2)) (= r$@@1 r$2))
 :qid |stdinbpl.197:15|
 :skolemid |25|
 :pattern ( (mustSendBounded$ r$@@1) (mustSendBounded$ r$2))
)))
(assert (forall ((r$@@2 T@Ref) (r$2@@0 T@Ref) ) (!  (=> (= (|mustSendBounded$#sm| r$@@2) (|mustSendBounded$#sm| r$2@@0)) (= r$@@2 r$2@@0))
 :qid |stdinbpl.201:15|
 :skolemid |26|
 :pattern ( (|mustSendBounded$#sm| r$@@2) (|mustSendBounded$#sm| r$2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3953) (ExhaleHeap@@7 T@PolymorphicMapType_3953) (Mask@@8 T@PolymorphicMapType_3974) (o_6 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@9) o_6 $allocated) (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| ExhaleHeap@@7) o_6 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| ExhaleHeap@@7) o_6 $allocated))
)))
(assert (forall ((p T@Field_7341_7342) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7341_7341 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7341_7341 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_4013_2124) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4013_4013 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4013_4013 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3953) (ExhaleHeap@@8 T@PolymorphicMapType_3953) (Mask@@9 T@PolymorphicMapType_3974) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3974) (o_2@@7 T@Ref) (f_4@@7 T@Field_4013_7359) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_3974_4013_20145#PolymorphicMapType_3974| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4013_21983 f_4@@7))) (not (IsWandField_4013_21999 f_4@@7))) (<= (select (|PolymorphicMapType_3974_4013_20145#PolymorphicMapType_3974| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_3974_4013_20145#PolymorphicMapType_3974| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3974) (o_2@@8 T@Ref) (f_4@@8 T@Field_4026_4027) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_3974_4013_4027#PolymorphicMapType_3974| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4013_4027 f_4@@8))) (not (IsWandField_4013_4027 f_4@@8))) (<= (select (|PolymorphicMapType_3974_4013_4027#PolymorphicMapType_3974| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_3974_4013_4027#PolymorphicMapType_3974| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3974) (o_2@@9 T@Ref) (f_4@@9 T@Field_4013_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_3974_4013_53#PolymorphicMapType_3974| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4013_53 f_4@@9))) (not (IsWandField_4013_53 f_4@@9))) (<= (select (|PolymorphicMapType_3974_4013_53#PolymorphicMapType_3974| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_3974_4013_53#PolymorphicMapType_3974| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3974) (o_2@@10 T@Ref) (f_4@@10 T@Field_4013_2124) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_3974_4013_2124#PolymorphicMapType_3974| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4013_13267 f_4@@10))) (not (IsWandField_4013_16243 f_4@@10))) (<= (select (|PolymorphicMapType_3974_4013_2124#PolymorphicMapType_3974| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_3974_4013_2124#PolymorphicMapType_3974| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3974) (o_2@@11 T@Ref) (f_4@@11 T@Field_7354_7359) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_3974_2123_19799#PolymorphicMapType_3974| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_2123_21320 f_4@@11))) (not (IsWandField_2123_21336 f_4@@11))) (<= (select (|PolymorphicMapType_3974_2123_19799#PolymorphicMapType_3974| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_3974_2123_19799#PolymorphicMapType_3974| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_3974) (o_2@@12 T@Ref) (f_4@@12 T@Field_2123_4027) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_3974_2123_4027#PolymorphicMapType_3974| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_2123_4027 f_4@@12))) (not (IsWandField_2123_4027 f_4@@12))) (<= (select (|PolymorphicMapType_3974_2123_4027#PolymorphicMapType_3974| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_3974_2123_4027#PolymorphicMapType_3974| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_3974) (o_2@@13 T@Ref) (f_4@@13 T@Field_2123_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_3974_2123_53#PolymorphicMapType_3974| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_2123_53 f_4@@13))) (not (IsWandField_2123_53 f_4@@13))) (<= (select (|PolymorphicMapType_3974_2123_53#PolymorphicMapType_3974| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_3974_2123_53#PolymorphicMapType_3974| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_3974) (o_2@@14 T@Ref) (f_4@@14 T@Field_7341_7342) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_3974_2123_2124#PolymorphicMapType_3974| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2123_2124 f_4@@14))) (not (IsWandField_2123_15886 f_4@@14))) (<= (select (|PolymorphicMapType_3974_2123_2124#PolymorphicMapType_3974| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_3974_2123_2124#PolymorphicMapType_3974| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_3974) (o_2@@15 T@Ref) (f_4@@15 T@Field_4013_7359) ) (! (= (HasDirectPerm_4013_12654 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_3974_4013_20145#PolymorphicMapType_3974| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4013_12654 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_3974) (o_2@@16 T@Ref) (f_4@@16 T@Field_4026_4027) ) (! (= (HasDirectPerm_4013_4027 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_3974_4013_4027#PolymorphicMapType_3974| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4013_4027 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_3974) (o_2@@17 T@Ref) (f_4@@17 T@Field_4013_53) ) (! (= (HasDirectPerm_4013_53 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_3974_4013_53#PolymorphicMapType_3974| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4013_53 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_3974) (o_2@@18 T@Ref) (f_4@@18 T@Field_4013_2124) ) (! (= (HasDirectPerm_4013_2124 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_3974_4013_2124#PolymorphicMapType_3974| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4013_2124 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_3974) (o_2@@19 T@Ref) (f_4@@19 T@Field_7354_7359) ) (! (= (HasDirectPerm_2123_11726 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_3974_2123_19799#PolymorphicMapType_3974| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2123_11726 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_3974) (o_2@@20 T@Ref) (f_4@@20 T@Field_2123_4027) ) (! (= (HasDirectPerm_2123_4027 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_3974_2123_4027#PolymorphicMapType_3974| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2123_4027 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_3974) (o_2@@21 T@Ref) (f_4@@21 T@Field_2123_53) ) (! (= (HasDirectPerm_2123_53 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_3974_2123_53#PolymorphicMapType_3974| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2123_53 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_3974) (o_2@@22 T@Ref) (f_4@@22 T@Field_7341_7342) ) (! (= (HasDirectPerm_2123_2124 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_3974_2123_2124#PolymorphicMapType_3974| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2123_2124 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3953) (ExhaleHeap@@9 T@PolymorphicMapType_3953) (Mask@@26 T@PolymorphicMapType_3974) (o_6@@0 T@Ref) (f_9@@31 T@Field_4013_7359) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_4013_12654 Mask@@26 o_6@@0 f_9@@31) (= (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@11) o_6@@0 f_9@@31) (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| ExhaleHeap@@9) o_6@@0 f_9@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| ExhaleHeap@@9) o_6@@0 f_9@@31))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3953) (ExhaleHeap@@10 T@PolymorphicMapType_3953) (Mask@@27 T@PolymorphicMapType_3974) (o_6@@1 T@Ref) (f_9@@32 T@Field_4026_4027) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_4013_4027 Mask@@27 o_6@@1 f_9@@32) (= (select (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@12) o_6@@1 f_9@@32) (select (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| ExhaleHeap@@10) o_6@@1 f_9@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| ExhaleHeap@@10) o_6@@1 f_9@@32))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3953) (ExhaleHeap@@11 T@PolymorphicMapType_3953) (Mask@@28 T@PolymorphicMapType_3974) (o_6@@2 T@Ref) (f_9@@33 T@Field_4013_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_4013_53 Mask@@28 o_6@@2 f_9@@33) (= (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@13) o_6@@2 f_9@@33) (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| ExhaleHeap@@11) o_6@@2 f_9@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| ExhaleHeap@@11) o_6@@2 f_9@@33))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3953) (ExhaleHeap@@12 T@PolymorphicMapType_3953) (Mask@@29 T@PolymorphicMapType_3974) (o_6@@3 T@Ref) (f_9@@34 T@Field_4013_2124) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_4013_2124 Mask@@29 o_6@@3 f_9@@34) (= (select (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@14) o_6@@3 f_9@@34) (select (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| ExhaleHeap@@12) o_6@@3 f_9@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| ExhaleHeap@@12) o_6@@3 f_9@@34))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3953) (ExhaleHeap@@13 T@PolymorphicMapType_3953) (Mask@@30 T@PolymorphicMapType_3974) (o_6@@4 T@Ref) (f_9@@35 T@Field_7354_7359) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_2123_11726 Mask@@30 o_6@@4 f_9@@35) (= (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@15) o_6@@4 f_9@@35) (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| ExhaleHeap@@13) o_6@@4 f_9@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| ExhaleHeap@@13) o_6@@4 f_9@@35))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3953) (ExhaleHeap@@14 T@PolymorphicMapType_3953) (Mask@@31 T@PolymorphicMapType_3974) (o_6@@5 T@Ref) (f_9@@36 T@Field_2123_4027) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_2123_4027 Mask@@31 o_6@@5 f_9@@36) (= (select (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@16) o_6@@5 f_9@@36) (select (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| ExhaleHeap@@14) o_6@@5 f_9@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| ExhaleHeap@@14) o_6@@5 f_9@@36))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3953) (ExhaleHeap@@15 T@PolymorphicMapType_3953) (Mask@@32 T@PolymorphicMapType_3974) (o_6@@6 T@Ref) (f_9@@37 T@Field_2123_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_2123_53 Mask@@32 o_6@@6 f_9@@37) (= (select (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@17) o_6@@6 f_9@@37) (select (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| ExhaleHeap@@15) o_6@@6 f_9@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| ExhaleHeap@@15) o_6@@6 f_9@@37))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3953) (ExhaleHeap@@16 T@PolymorphicMapType_3953) (Mask@@33 T@PolymorphicMapType_3974) (o_6@@7 T@Ref) (f_9@@38 T@Field_7341_7342) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_2123_2124 Mask@@33 o_6@@7 f_9@@38) (= (select (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@18) o_6@@7 f_9@@38) (select (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| ExhaleHeap@@16) o_6@@7 f_9@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| ExhaleHeap@@16) o_6@@7 f_9@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_4013_7359) ) (! (= (select (|PolymorphicMapType_3974_4013_20145#PolymorphicMapType_3974| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3974_4013_20145#PolymorphicMapType_3974| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_4026_4027) ) (! (= (select (|PolymorphicMapType_3974_4013_4027#PolymorphicMapType_3974| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3974_4013_4027#PolymorphicMapType_3974| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_4013_53) ) (! (= (select (|PolymorphicMapType_3974_4013_53#PolymorphicMapType_3974| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3974_4013_53#PolymorphicMapType_3974| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_4013_2124) ) (! (= (select (|PolymorphicMapType_3974_4013_2124#PolymorphicMapType_3974| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3974_4013_2124#PolymorphicMapType_3974| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_7354_7359) ) (! (= (select (|PolymorphicMapType_3974_2123_19799#PolymorphicMapType_3974| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3974_2123_19799#PolymorphicMapType_3974| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_2123_4027) ) (! (= (select (|PolymorphicMapType_3974_2123_4027#PolymorphicMapType_3974| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3974_2123_4027#PolymorphicMapType_3974| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_2123_53) ) (! (= (select (|PolymorphicMapType_3974_2123_53#PolymorphicMapType_3974| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3974_2123_53#PolymorphicMapType_3974| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_7341_7342) ) (! (= (select (|PolymorphicMapType_3974_2123_2124#PolymorphicMapType_3974| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3974_2123_2124#PolymorphicMapType_3974| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3974) (SummandMask1 T@PolymorphicMapType_3974) (SummandMask2 T@PolymorphicMapType_3974) (o_2@@31 T@Ref) (f_4@@31 T@Field_4013_7359) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3974_4013_20145#PolymorphicMapType_3974| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_3974_4013_20145#PolymorphicMapType_3974| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_3974_4013_20145#PolymorphicMapType_3974| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3974_4013_20145#PolymorphicMapType_3974| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3974_4013_20145#PolymorphicMapType_3974| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3974_4013_20145#PolymorphicMapType_3974| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3974) (SummandMask1@@0 T@PolymorphicMapType_3974) (SummandMask2@@0 T@PolymorphicMapType_3974) (o_2@@32 T@Ref) (f_4@@32 T@Field_4026_4027) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3974_4013_4027#PolymorphicMapType_3974| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_3974_4013_4027#PolymorphicMapType_3974| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_3974_4013_4027#PolymorphicMapType_3974| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3974_4013_4027#PolymorphicMapType_3974| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3974_4013_4027#PolymorphicMapType_3974| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3974_4013_4027#PolymorphicMapType_3974| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3974) (SummandMask1@@1 T@PolymorphicMapType_3974) (SummandMask2@@1 T@PolymorphicMapType_3974) (o_2@@33 T@Ref) (f_4@@33 T@Field_4013_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3974_4013_53#PolymorphicMapType_3974| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_3974_4013_53#PolymorphicMapType_3974| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_3974_4013_53#PolymorphicMapType_3974| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3974_4013_53#PolymorphicMapType_3974| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3974_4013_53#PolymorphicMapType_3974| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3974_4013_53#PolymorphicMapType_3974| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3974) (SummandMask1@@2 T@PolymorphicMapType_3974) (SummandMask2@@2 T@PolymorphicMapType_3974) (o_2@@34 T@Ref) (f_4@@34 T@Field_4013_2124) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3974_4013_2124#PolymorphicMapType_3974| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_3974_4013_2124#PolymorphicMapType_3974| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_3974_4013_2124#PolymorphicMapType_3974| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3974_4013_2124#PolymorphicMapType_3974| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3974_4013_2124#PolymorphicMapType_3974| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3974_4013_2124#PolymorphicMapType_3974| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3974) (SummandMask1@@3 T@PolymorphicMapType_3974) (SummandMask2@@3 T@PolymorphicMapType_3974) (o_2@@35 T@Ref) (f_4@@35 T@Field_7354_7359) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3974_2123_19799#PolymorphicMapType_3974| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_3974_2123_19799#PolymorphicMapType_3974| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_3974_2123_19799#PolymorphicMapType_3974| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3974_2123_19799#PolymorphicMapType_3974| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3974_2123_19799#PolymorphicMapType_3974| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3974_2123_19799#PolymorphicMapType_3974| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_3974) (SummandMask1@@4 T@PolymorphicMapType_3974) (SummandMask2@@4 T@PolymorphicMapType_3974) (o_2@@36 T@Ref) (f_4@@36 T@Field_2123_4027) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_3974_2123_4027#PolymorphicMapType_3974| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_3974_2123_4027#PolymorphicMapType_3974| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_3974_2123_4027#PolymorphicMapType_3974| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3974_2123_4027#PolymorphicMapType_3974| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3974_2123_4027#PolymorphicMapType_3974| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3974_2123_4027#PolymorphicMapType_3974| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_3974) (SummandMask1@@5 T@PolymorphicMapType_3974) (SummandMask2@@5 T@PolymorphicMapType_3974) (o_2@@37 T@Ref) (f_4@@37 T@Field_2123_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_3974_2123_53#PolymorphicMapType_3974| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_3974_2123_53#PolymorphicMapType_3974| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_3974_2123_53#PolymorphicMapType_3974| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3974_2123_53#PolymorphicMapType_3974| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3974_2123_53#PolymorphicMapType_3974| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3974_2123_53#PolymorphicMapType_3974| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_3974) (SummandMask1@@6 T@PolymorphicMapType_3974) (SummandMask2@@6 T@PolymorphicMapType_3974) (o_2@@38 T@Ref) (f_4@@38 T@Field_7341_7342) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_3974_2123_2124#PolymorphicMapType_3974| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_3974_2123_2124#PolymorphicMapType_3974| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_3974_2123_2124#PolymorphicMapType_3974| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3974_2123_2124#PolymorphicMapType_3974| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3974_2123_2124#PolymorphicMapType_3974| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3974_2123_2124#PolymorphicMapType_3974| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((r$@@3 T@Ref) ) (! (= (getPredWandId_2123_2124 (mustSendBounded$ r$@@3)) 0)
 :qid |stdinbpl.191:15|
 :skolemid |24|
 :pattern ( (mustSendBounded$ r$@@3))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3953) (o_5 T@Ref) (f_10 T@Field_7354_7359) (v T@PolymorphicMapType_4502) ) (! (succHeap Heap@@19 (PolymorphicMapType_3953 (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@19) (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@19) (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@19) (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@19) (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@19) (store (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@19) o_5 f_10 v) (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@19) (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3953 (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@19) (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@19) (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@19) (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@19) (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@19) (store (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@19) o_5 f_10 v) (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@19) (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3953) (o_5@@0 T@Ref) (f_10@@0 T@Field_7341_7342) (v@@0 T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_3953 (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@20) (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@20) (store (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@20) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@20) (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@20) (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@20) (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@20) (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3953 (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@20) (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@20) (store (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@20) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@20) (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@20) (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@20) (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@20) (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3953) (o_5@@1 T@Ref) (f_10@@1 T@Field_2123_4027) (v@@1 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_3953 (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@21) (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@21) (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@21) (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@21) (store (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@21) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@21) (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@21) (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3953 (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@21) (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@21) (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@21) (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@21) (store (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@21) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@21) (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@21) (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3953) (o_5@@2 T@Ref) (f_10@@2 T@Field_2123_53) (v@@2 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_3953 (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@22) (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@22) (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@22) (store (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@22) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@22) (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@22) (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@22) (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3953 (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@22) (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@22) (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@22) (store (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@22) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@22) (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@22) (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@22) (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_3953) (o_5@@3 T@Ref) (f_10@@3 T@Field_4013_7359) (v@@3 T@PolymorphicMapType_4502) ) (! (succHeap Heap@@23 (PolymorphicMapType_3953 (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@23) (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@23) (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@23) (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@23) (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@23) (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@23) (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@23) (store (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@23) o_5@@3 f_10@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3953 (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@23) (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@23) (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@23) (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@23) (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@23) (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@23) (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@23) (store (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@23) o_5@@3 f_10@@3 v@@3)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_3953) (o_5@@4 T@Ref) (f_10@@4 T@Field_4013_2124) (v@@4 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_3953 (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@24) (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@24) (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@24) (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@24) (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@24) (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@24) (store (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@24) o_5@@4 f_10@@4 v@@4) (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3953 (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@24) (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@24) (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@24) (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@24) (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@24) (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@24) (store (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@24) o_5@@4 f_10@@4 v@@4) (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_3953) (o_5@@5 T@Ref) (f_10@@5 T@Field_4026_4027) (v@@5 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_3953 (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@25) (store (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@25) o_5@@5 f_10@@5 v@@5) (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@25) (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@25) (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@25) (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@25) (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@25) (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3953 (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@25) (store (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@25) o_5@@5 f_10@@5 v@@5) (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@25) (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@25) (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@25) (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@25) (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@25) (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_3953) (o_5@@6 T@Ref) (f_10@@6 T@Field_4013_53) (v@@6 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_3953 (store (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@26) o_5@@6 f_10@@6 v@@6) (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@26) (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@26) (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@26) (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@26) (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@26) (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@26) (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3953 (store (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@26) o_5@@6 f_10@@6 v@@6) (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@26) (|PolymorphicMapType_3953_2123_2124#PolymorphicMapType_3953| Heap@@26) (|PolymorphicMapType_3953_2123_53#PolymorphicMapType_3953| Heap@@26) (|PolymorphicMapType_3953_2123_4027#PolymorphicMapType_3953| Heap@@26) (|PolymorphicMapType_3953_2123_11768#PolymorphicMapType_3953| Heap@@26) (|PolymorphicMapType_3953_4013_2124#PolymorphicMapType_3953| Heap@@26) (|PolymorphicMapType_3953_4013_12696#PolymorphicMapType_3953| Heap@@26)))
)))
(assert (forall ((r$@@4 T@Ref) ) (! (= (PredicateMaskField_2123 (mustSendBounded$ r$@@4)) (|mustSendBounded$#sm| r$@@4))
 :qid |stdinbpl.183:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_2123 (mustSendBounded$ r$@@4)))
)))
(assert (forall ((o_5@@7 T@Ref) (f_3 T@Field_4026_4027) (Heap@@27 T@PolymorphicMapType_3953) ) (!  (=> (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@27) o_5@@7 $allocated) (select (|PolymorphicMapType_3953_1994_53#PolymorphicMapType_3953| Heap@@27) (select (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@27) o_5@@7 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3953_1997_1998#PolymorphicMapType_3953| Heap@@27) o_5@@7 f_3))
)))
(assert (forall ((p@@2 T@Field_7341_7342) (v_1@@1 T@FrameType) (q T@Field_7341_7342) (w@@1 T@FrameType) (r T@Field_7341_7342) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7341_7341 p@@2 v_1@@1 q w@@1) (InsidePredicate_7341_7341 q w@@1 r u)) (InsidePredicate_7341_7341 p@@2 v_1@@1 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7341_7341 p@@2 v_1@@1 q w@@1) (InsidePredicate_7341_7341 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_7341_7342) (v_1@@2 T@FrameType) (q@@0 T@Field_7341_7342) (w@@2 T@FrameType) (r@@0 T@Field_4013_2124) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_7341_7341 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_7341_4013 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_7341_4013 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7341_7341 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_7341_4013 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_7341_7342) (v_1@@3 T@FrameType) (q@@1 T@Field_4013_2124) (w@@3 T@FrameType) (r@@1 T@Field_7341_7342) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_7341_4013 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4013_7341 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_7341_7341 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7341_4013 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4013_7341 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_7341_7342) (v_1@@4 T@FrameType) (q@@2 T@Field_4013_2124) (w@@4 T@FrameType) (r@@2 T@Field_4013_2124) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_7341_4013 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4013_4013 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_7341_4013 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7341_4013 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4013_4013 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_4013_2124) (v_1@@5 T@FrameType) (q@@3 T@Field_7341_7342) (w@@5 T@FrameType) (r@@3 T@Field_7341_7342) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_4013_7341 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_7341_7341 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_4013_7341 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4013_7341 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_7341_7341 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_4013_2124) (v_1@@6 T@FrameType) (q@@4 T@Field_7341_7342) (w@@6 T@FrameType) (r@@4 T@Field_4013_2124) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_4013_7341 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_7341_4013 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_4013_4013 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4013_7341 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_7341_4013 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_4013_2124) (v_1@@7 T@FrameType) (q@@5 T@Field_4013_2124) (w@@7 T@FrameType) (r@@5 T@Field_7341_7342) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_4013_4013 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4013_7341 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_4013_7341 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4013_4013 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4013_7341 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_4013_2124) (v_1@@8 T@FrameType) (q@@6 T@Field_4013_2124) (w@@8 T@FrameType) (r@@6 T@Field_4013_2124) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_4013_4013 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4013_4013 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_4013_4013 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4013_4013 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4013_4013 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |mustSendBounded$#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
