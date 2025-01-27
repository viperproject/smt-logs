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
(declare-sort T@Field_3976_53 0)
(declare-sort T@Field_3989_3990 0)
(declare-sort T@Field_7303_1189 0)
(declare-sort T@Field_3976_11419 0)
(declare-sort T@Field_3976_11286 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3937 0)) (((PolymorphicMapType_3937 (|PolymorphicMapType_3937_2088_1189#PolymorphicMapType_3937| (Array T@Ref T@Field_7303_1189 Real)) (|PolymorphicMapType_3937_2088_53#PolymorphicMapType_3937| (Array T@Ref T@Field_3976_53 Real)) (|PolymorphicMapType_3937_2088_3990#PolymorphicMapType_3937| (Array T@Ref T@Field_3989_3990 Real)) (|PolymorphicMapType_3937_2088_11286#PolymorphicMapType_3937| (Array T@Ref T@Field_3976_11286 Real)) (|PolymorphicMapType_3937_2088_15541#PolymorphicMapType_3937| (Array T@Ref T@Field_3976_11419 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4465 0)) (((PolymorphicMapType_4465 (|PolymorphicMapType_4465_3976_53#PolymorphicMapType_4465| (Array T@Ref T@Field_3976_53 Bool)) (|PolymorphicMapType_4465_3976_3990#PolymorphicMapType_4465| (Array T@Ref T@Field_3989_3990 Bool)) (|PolymorphicMapType_4465_3976_1189#PolymorphicMapType_4465| (Array T@Ref T@Field_7303_1189 Bool)) (|PolymorphicMapType_4465_3976_11286#PolymorphicMapType_4465| (Array T@Ref T@Field_3976_11286 Bool)) (|PolymorphicMapType_4465_3976_12597#PolymorphicMapType_4465| (Array T@Ref T@Field_3976_11419 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3916 0)) (((PolymorphicMapType_3916 (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| (Array T@Ref T@Field_3976_53 Bool)) (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| (Array T@Ref T@Field_3989_3990 T@Ref)) (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| (Array T@Ref T@Field_7303_1189 Int)) (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| (Array T@Ref T@Field_3976_11419 T@PolymorphicMapType_4465)) (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| (Array T@Ref T@Field_3976_11286 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_3976_53)
(declare-fun f_7 () T@Field_7303_1189)
(declare-fun g () T@Field_7303_1189)
(declare-fun succHeap (T@PolymorphicMapType_3916 T@PolymorphicMapType_3916) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3916 T@PolymorphicMapType_3916) Bool)
(declare-fun state (T@PolymorphicMapType_3916 T@PolymorphicMapType_3937) Bool)
(declare-fun |fun01'| (T@PolymorphicMapType_3916 T@Ref Bool) Int)
(declare-fun |fun01#frame| (T@FrameType T@Ref Bool) Int)
(declare-fun FrameFragment_3266 (T@FrameType) T@FrameType)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun GoodMask (T@PolymorphicMapType_3937) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4465)
(declare-fun dummyFunction_1403 (Int) Bool)
(declare-fun |fun01#triggerStateless| (T@Ref Bool) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3916 T@PolymorphicMapType_3916 T@PolymorphicMapType_3937) Bool)
(declare-fun IsPredicateField_3976_11377 (T@Field_3976_11286) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3976 (T@Field_3976_11286) T@Field_3976_11419)
(declare-fun HasDirectPerm_3976_11350 (T@PolymorphicMapType_3937 T@Ref T@Field_3976_11286) Bool)
(declare-fun IsWandField_3976_13124 (T@Field_3976_11286) Bool)
(declare-fun WandMaskField_3976 (T@Field_3976_11286) T@Field_3976_11419)
(declare-fun dummyHeap () T@PolymorphicMapType_3916)
(declare-fun ZeroMask () T@PolymorphicMapType_3937)
(declare-fun InsidePredicate_3976_3976 (T@Field_3976_11286 T@FrameType T@Field_3976_11286 T@FrameType) Bool)
(declare-fun IsPredicateField_2088_1189 (T@Field_7303_1189) Bool)
(declare-fun IsWandField_2088_1189 (T@Field_7303_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2088_16670 (T@Field_3976_11419) Bool)
(declare-fun IsWandField_2088_16686 (T@Field_3976_11419) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2088_3990 (T@Field_3989_3990) Bool)
(declare-fun IsWandField_2088_3990 (T@Field_3989_3990) Bool)
(declare-fun IsPredicateField_2088_53 (T@Field_3976_53) Bool)
(declare-fun IsWandField_2088_53 (T@Field_3976_53) Bool)
(declare-fun HasDirectPerm_3976_17124 (T@PolymorphicMapType_3937 T@Ref T@Field_3976_11419) Bool)
(declare-fun HasDirectPerm_3976_1189 (T@PolymorphicMapType_3937 T@Ref T@Field_7303_1189) Bool)
(declare-fun HasDirectPerm_3976_3990 (T@PolymorphicMapType_3937 T@Ref T@Field_3989_3990) Bool)
(declare-fun HasDirectPerm_3976_53 (T@PolymorphicMapType_3937 T@Ref T@Field_3976_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun fun01 (T@PolymorphicMapType_3916 T@Ref Bool) Int)
(declare-fun sumMask (T@PolymorphicMapType_3937 T@PolymorphicMapType_3937 T@PolymorphicMapType_3937) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_3916) (Heap1 T@PolymorphicMapType_3916) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3916) (Mask T@PolymorphicMapType_3937) (x T@Ref) (b_24 Bool) ) (!  (=> (state Heap Mask) (= (|fun01'| Heap x b_24) (|fun01#frame| (FrameFragment_3266 (ite b_24 (FrameFragment_1189 (select (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| Heap) x f_7)) (FrameFragment_1189 (select (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| Heap) x g)))) x b_24)))
 :qid |stdinbpl.208:15|
 :skolemid |24|
 :pattern ( (state Heap Mask) (|fun01'| Heap x b_24))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3916) (Mask@@0 T@PolymorphicMapType_3937) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3916) (Heap1@@0 T@PolymorphicMapType_3916) (Heap2 T@PolymorphicMapType_3916) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3976_11419) ) (!  (not (select (|PolymorphicMapType_4465_3976_12597#PolymorphicMapType_4465| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4465_3976_12597#PolymorphicMapType_4465| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3976_11286) ) (!  (not (select (|PolymorphicMapType_4465_3976_11286#PolymorphicMapType_4465| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4465_3976_11286#PolymorphicMapType_4465| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7303_1189) ) (!  (not (select (|PolymorphicMapType_4465_3976_1189#PolymorphicMapType_4465| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4465_3976_1189#PolymorphicMapType_4465| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3989_3990) ) (!  (not (select (|PolymorphicMapType_4465_3976_3990#PolymorphicMapType_4465| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4465_3976_3990#PolymorphicMapType_4465| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3976_53) ) (!  (not (select (|PolymorphicMapType_4465_3976_53#PolymorphicMapType_4465| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4465_3976_53#PolymorphicMapType_4465| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3916) (x@@0 T@Ref) (b_24@@0 Bool) ) (! (dummyFunction_1403 (|fun01#triggerStateless| x@@0 b_24@@0))
 :qid |stdinbpl.201:15|
 :skolemid |23|
 :pattern ( (|fun01'| Heap@@1 x@@0 b_24@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3916) (ExhaleHeap T@PolymorphicMapType_3916) (Mask@@1 T@PolymorphicMapType_3937) (pm_f T@Field_3976_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_3976_11350 Mask@@1 null pm_f) (IsPredicateField_3976_11377 pm_f)) (= (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@2) null (PredicateMaskField_3976 pm_f)) (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| ExhaleHeap) null (PredicateMaskField_3976 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (IsPredicateField_3976_11377 pm_f) (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| ExhaleHeap) null (PredicateMaskField_3976 pm_f)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3916) (ExhaleHeap@@0 T@PolymorphicMapType_3916) (Mask@@2 T@PolymorphicMapType_3937) (pm_f@@0 T@Field_3976_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_3976_11350 Mask@@2 null pm_f@@0) (IsWandField_3976_13124 pm_f@@0)) (= (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@3) null (WandMaskField_3976 pm_f@@0)) (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| ExhaleHeap@@0) null (WandMaskField_3976 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (IsWandField_3976_13124 pm_f@@0) (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| ExhaleHeap@@0) null (WandMaskField_3976 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3916) (ExhaleHeap@@1 T@PolymorphicMapType_3916) (Mask@@3 T@PolymorphicMapType_3937) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| Heap@@4) o_1 $allocated) (select (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_3976_11286) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3976_3976 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3976_3976 p v_1 p w))
)))
(assert  (not (IsPredicateField_2088_1189 f_7)))
(assert  (not (IsWandField_2088_1189 f_7)))
(assert  (not (IsPredicateField_2088_1189 g)))
(assert  (not (IsWandField_2088_1189 g)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3916) (ExhaleHeap@@2 T@PolymorphicMapType_3916) (Mask@@4 T@PolymorphicMapType_3937) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_3937) (o_2@@4 T@Ref) (f_4@@4 T@Field_3976_11419) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_3937_2088_15541#PolymorphicMapType_3937| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_2088_16670 f_4@@4))) (not (IsWandField_2088_16686 f_4@@4))) (<= (select (|PolymorphicMapType_3937_2088_15541#PolymorphicMapType_3937| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_3937_2088_15541#PolymorphicMapType_3937| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3937) (o_2@@5 T@Ref) (f_4@@5 T@Field_3976_11286) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3937_2088_11286#PolymorphicMapType_3937| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3976_11377 f_4@@5))) (not (IsWandField_3976_13124 f_4@@5))) (<= (select (|PolymorphicMapType_3937_2088_11286#PolymorphicMapType_3937| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3937_2088_11286#PolymorphicMapType_3937| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3937) (o_2@@6 T@Ref) (f_4@@6 T@Field_3989_3990) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3937_2088_3990#PolymorphicMapType_3937| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2088_3990 f_4@@6))) (not (IsWandField_2088_3990 f_4@@6))) (<= (select (|PolymorphicMapType_3937_2088_3990#PolymorphicMapType_3937| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3937_2088_3990#PolymorphicMapType_3937| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3937) (o_2@@7 T@Ref) (f_4@@7 T@Field_3976_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3937_2088_53#PolymorphicMapType_3937| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2088_53 f_4@@7))) (not (IsWandField_2088_53 f_4@@7))) (<= (select (|PolymorphicMapType_3937_2088_53#PolymorphicMapType_3937| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3937_2088_53#PolymorphicMapType_3937| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3937) (o_2@@8 T@Ref) (f_4@@8 T@Field_7303_1189) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3937_2088_1189#PolymorphicMapType_3937| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_2088_1189 f_4@@8))) (not (IsWandField_2088_1189 f_4@@8))) (<= (select (|PolymorphicMapType_3937_2088_1189#PolymorphicMapType_3937| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3937_2088_1189#PolymorphicMapType_3937| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3937) (o_2@@9 T@Ref) (f_4@@9 T@Field_3976_11419) ) (! (= (HasDirectPerm_3976_17124 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3937_2088_15541#PolymorphicMapType_3937| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3976_17124 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3937) (o_2@@10 T@Ref) (f_4@@10 T@Field_3976_11286) ) (! (= (HasDirectPerm_3976_11350 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3937_2088_11286#PolymorphicMapType_3937| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3976_11350 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3937) (o_2@@11 T@Ref) (f_4@@11 T@Field_7303_1189) ) (! (= (HasDirectPerm_3976_1189 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_3937_2088_1189#PolymorphicMapType_3937| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3976_1189 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3937) (o_2@@12 T@Ref) (f_4@@12 T@Field_3989_3990) ) (! (= (HasDirectPerm_3976_3990 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_3937_2088_3990#PolymorphicMapType_3937| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3976_3990 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3937) (o_2@@13 T@Ref) (f_4@@13 T@Field_3976_53) ) (! (= (HasDirectPerm_3976_53 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_3937_2088_53#PolymorphicMapType_3937| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3976_53 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3916) (ExhaleHeap@@3 T@PolymorphicMapType_3916) (Mask@@15 T@PolymorphicMapType_3937) (pm_f@@1 T@Field_3976_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_3976_11350 Mask@@15 null pm_f@@1) (IsPredicateField_3976_11377 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3976_53) ) (!  (=> (select (|PolymorphicMapType_4465_3976_53#PolymorphicMapType_4465| (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@6) null (PredicateMaskField_3976 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| Heap@@6) o2 f_2) (select (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3989_3990) ) (!  (=> (select (|PolymorphicMapType_4465_3976_3990#PolymorphicMapType_4465| (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@6) null (PredicateMaskField_3976 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| Heap@@6) o2@@0 f_2@@0) (select (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_7303_1189) ) (!  (=> (select (|PolymorphicMapType_4465_3976_1189#PolymorphicMapType_4465| (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@6) null (PredicateMaskField_3976 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| Heap@@6) o2@@1 f_2@@1) (select (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3976_11286) ) (!  (=> (select (|PolymorphicMapType_4465_3976_11286#PolymorphicMapType_4465| (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@6) null (PredicateMaskField_3976 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| Heap@@6) o2@@2 f_2@@2) (select (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3976_11419) ) (!  (=> (select (|PolymorphicMapType_4465_3976_12597#PolymorphicMapType_4465| (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@6) null (PredicateMaskField_3976 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@6) o2@@3 f_2@@3) (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (IsPredicateField_3976_11377 pm_f@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3916) (ExhaleHeap@@4 T@PolymorphicMapType_3916) (Mask@@16 T@PolymorphicMapType_3937) (pm_f@@2 T@Field_3976_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_3976_11350 Mask@@16 null pm_f@@2) (IsWandField_3976_13124 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3976_53) ) (!  (=> (select (|PolymorphicMapType_4465_3976_53#PolymorphicMapType_4465| (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@7) null (WandMaskField_3976 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| Heap@@7) o2@@4 f_2@@4) (select (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3989_3990) ) (!  (=> (select (|PolymorphicMapType_4465_3976_3990#PolymorphicMapType_4465| (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@7) null (WandMaskField_3976 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| Heap@@7) o2@@5 f_2@@5) (select (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_7303_1189) ) (!  (=> (select (|PolymorphicMapType_4465_3976_1189#PolymorphicMapType_4465| (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@7) null (WandMaskField_3976 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| Heap@@7) o2@@6 f_2@@6) (select (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_3976_11286) ) (!  (=> (select (|PolymorphicMapType_4465_3976_11286#PolymorphicMapType_4465| (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@7) null (WandMaskField_3976 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| Heap@@7) o2@@7 f_2@@7) (select (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_3976_11419) ) (!  (=> (select (|PolymorphicMapType_4465_3976_12597#PolymorphicMapType_4465| (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@7) null (WandMaskField_3976 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@7) o2@@8 f_2@@8) (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (IsWandField_3976_13124 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3916) (ExhaleHeap@@5 T@PolymorphicMapType_3916) (Mask@@17 T@PolymorphicMapType_3937) (o_1@@0 T@Ref) (f_2@@9 T@Field_3976_11419) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_3976_17124 Mask@@17 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@8) o_1@@0 f_2@@9) (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3916) (ExhaleHeap@@6 T@PolymorphicMapType_3916) (Mask@@18 T@PolymorphicMapType_3937) (o_1@@1 T@Ref) (f_2@@10 T@Field_3976_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_3976_11350 Mask@@18 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| Heap@@9) o_1@@1 f_2@@10) (select (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3916) (ExhaleHeap@@7 T@PolymorphicMapType_3916) (Mask@@19 T@PolymorphicMapType_3937) (o_1@@2 T@Ref) (f_2@@11 T@Field_7303_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_3976_1189 Mask@@19 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| Heap@@10) o_1@@2 f_2@@11) (select (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3916) (ExhaleHeap@@8 T@PolymorphicMapType_3916) (Mask@@20 T@PolymorphicMapType_3937) (o_1@@3 T@Ref) (f_2@@12 T@Field_3989_3990) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_3976_3990 Mask@@20 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| Heap@@11) o_1@@3 f_2@@12) (select (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3916) (ExhaleHeap@@9 T@PolymorphicMapType_3916) (Mask@@21 T@PolymorphicMapType_3937) (o_1@@4 T@Ref) (f_2@@13 T@Field_3976_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_3976_53 Mask@@21 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| Heap@@12) o_1@@4 f_2@@13) (select (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3976_11419) ) (! (= (select (|PolymorphicMapType_3937_2088_15541#PolymorphicMapType_3937| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3937_2088_15541#PolymorphicMapType_3937| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3976_11286) ) (! (= (select (|PolymorphicMapType_3937_2088_11286#PolymorphicMapType_3937| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3937_2088_11286#PolymorphicMapType_3937| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_3989_3990) ) (! (= (select (|PolymorphicMapType_3937_2088_3990#PolymorphicMapType_3937| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3937_2088_3990#PolymorphicMapType_3937| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_3976_53) ) (! (= (select (|PolymorphicMapType_3937_2088_53#PolymorphicMapType_3937| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3937_2088_53#PolymorphicMapType_3937| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_7303_1189) ) (! (= (select (|PolymorphicMapType_3937_2088_1189#PolymorphicMapType_3937| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3937_2088_1189#PolymorphicMapType_3937| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3916) (x@@1 T@Ref) (b_24@@1 Bool) ) (!  (and (= (fun01 Heap@@13 x@@1 b_24@@1) (|fun01'| Heap@@13 x@@1 b_24@@1)) (dummyFunction_1403 (|fun01#triggerStateless| x@@1 b_24@@1)))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (fun01 Heap@@13 x@@1 b_24@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3937) (SummandMask1 T@PolymorphicMapType_3937) (SummandMask2 T@PolymorphicMapType_3937) (o_2@@19 T@Ref) (f_4@@19 T@Field_3976_11419) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3937_2088_15541#PolymorphicMapType_3937| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_3937_2088_15541#PolymorphicMapType_3937| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_3937_2088_15541#PolymorphicMapType_3937| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3937_2088_15541#PolymorphicMapType_3937| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3937_2088_15541#PolymorphicMapType_3937| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3937_2088_15541#PolymorphicMapType_3937| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3937) (SummandMask1@@0 T@PolymorphicMapType_3937) (SummandMask2@@0 T@PolymorphicMapType_3937) (o_2@@20 T@Ref) (f_4@@20 T@Field_3976_11286) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3937_2088_11286#PolymorphicMapType_3937| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_3937_2088_11286#PolymorphicMapType_3937| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_3937_2088_11286#PolymorphicMapType_3937| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3937_2088_11286#PolymorphicMapType_3937| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3937_2088_11286#PolymorphicMapType_3937| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3937_2088_11286#PolymorphicMapType_3937| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3937) (SummandMask1@@1 T@PolymorphicMapType_3937) (SummandMask2@@1 T@PolymorphicMapType_3937) (o_2@@21 T@Ref) (f_4@@21 T@Field_3989_3990) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3937_2088_3990#PolymorphicMapType_3937| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_3937_2088_3990#PolymorphicMapType_3937| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_3937_2088_3990#PolymorphicMapType_3937| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3937_2088_3990#PolymorphicMapType_3937| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3937_2088_3990#PolymorphicMapType_3937| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3937_2088_3990#PolymorphicMapType_3937| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3937) (SummandMask1@@2 T@PolymorphicMapType_3937) (SummandMask2@@2 T@PolymorphicMapType_3937) (o_2@@22 T@Ref) (f_4@@22 T@Field_3976_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3937_2088_53#PolymorphicMapType_3937| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_3937_2088_53#PolymorphicMapType_3937| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_3937_2088_53#PolymorphicMapType_3937| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3937_2088_53#PolymorphicMapType_3937| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3937_2088_53#PolymorphicMapType_3937| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3937_2088_53#PolymorphicMapType_3937| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3937) (SummandMask1@@3 T@PolymorphicMapType_3937) (SummandMask2@@3 T@PolymorphicMapType_3937) (o_2@@23 T@Ref) (f_4@@23 T@Field_7303_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3937_2088_1189#PolymorphicMapType_3937| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_3937_2088_1189#PolymorphicMapType_3937| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_3937_2088_1189#PolymorphicMapType_3937| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3937_2088_1189#PolymorphicMapType_3937| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3937_2088_1189#PolymorphicMapType_3937| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3937_2088_1189#PolymorphicMapType_3937| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3916) (o T@Ref) (f_3 T@Field_3976_11286) (v T@FrameType) ) (! (succHeap Heap@@14 (PolymorphicMapType_3916 (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| Heap@@14) (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| Heap@@14) (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| Heap@@14) (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@14) (store (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| Heap@@14) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3916 (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| Heap@@14) (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| Heap@@14) (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| Heap@@14) (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@14) (store (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| Heap@@14) o f_3 v)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3916) (o@@0 T@Ref) (f_3@@0 T@Field_3976_11419) (v@@0 T@PolymorphicMapType_4465) ) (! (succHeap Heap@@15 (PolymorphicMapType_3916 (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| Heap@@15) (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| Heap@@15) (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| Heap@@15) (store (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@15) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3916 (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| Heap@@15) (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| Heap@@15) (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| Heap@@15) (store (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@15) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3916) (o@@1 T@Ref) (f_3@@1 T@Field_7303_1189) (v@@1 Int) ) (! (succHeap Heap@@16 (PolymorphicMapType_3916 (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| Heap@@16) (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| Heap@@16) (store (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| Heap@@16) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@16) (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3916 (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| Heap@@16) (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| Heap@@16) (store (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| Heap@@16) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@16) (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3916) (o@@2 T@Ref) (f_3@@2 T@Field_3989_3990) (v@@2 T@Ref) ) (! (succHeap Heap@@17 (PolymorphicMapType_3916 (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| Heap@@17) (store (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| Heap@@17) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| Heap@@17) (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@17) (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3916 (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| Heap@@17) (store (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| Heap@@17) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| Heap@@17) (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@17) (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3916) (o@@3 T@Ref) (f_3@@3 T@Field_3976_53) (v@@3 Bool) ) (! (succHeap Heap@@18 (PolymorphicMapType_3916 (store (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| Heap@@18) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| Heap@@18) (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| Heap@@18) (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@18) (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3916 (store (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| Heap@@18) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| Heap@@18) (|PolymorphicMapType_3916_2088_1189#PolymorphicMapType_3916| Heap@@18) (|PolymorphicMapType_3916_3976_11463#PolymorphicMapType_3916| Heap@@18) (|PolymorphicMapType_3916_3976_11286#PolymorphicMapType_3916| Heap@@18)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_3989_3990) (Heap@@19 T@PolymorphicMapType_3916) ) (!  (=> (select (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| Heap@@19) o@@4 $allocated) (select (|PolymorphicMapType_3916_1960_53#PolymorphicMapType_3916| Heap@@19) (select (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| Heap@@19) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3916_1963_1964#PolymorphicMapType_3916| Heap@@19) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_3976_11286) (v_1@@0 T@FrameType) (q T@Field_3976_11286) (w@@0 T@FrameType) (r T@Field_3976_11286) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3976_3976 p@@1 v_1@@0 q w@@0) (InsidePredicate_3976_3976 q w@@0 r u)) (InsidePredicate_3976_3976 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3976_3976 p@@1 v_1@@0 q w@@0) (InsidePredicate_3976_3976 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |fun01#definedness|)
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
 (=> (= (ControlFlow 0 0) 5) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
