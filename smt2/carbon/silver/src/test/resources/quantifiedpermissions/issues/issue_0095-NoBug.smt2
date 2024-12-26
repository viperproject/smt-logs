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
(declare-sort T@Field_9939_53 0)
(declare-sort T@Field_9952_9953 0)
(declare-sort T@Field_16180_16181 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_16194_16199 0)
(declare-sort T@Field_6148_53 0)
(declare-sort T@Field_6148_9953 0)
(declare-sort T@Field_9939_6149 0)
(declare-sort T@Field_9939_16199 0)
(declare-datatypes ((T@PolymorphicMapType_9900 0)) (((PolymorphicMapType_9900 (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| (Array T@Ref T@Field_9952_9953 Real)) (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| (Array T@Ref T@Field_16180_16181 Real)) (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| (Array T@Ref T@Field_9939_6149 Real)) (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| (Array T@Ref T@Field_9939_53 Real)) (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| (Array T@Ref T@Field_9939_16199 Real)) (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| (Array T@Ref T@Field_6148_9953 Real)) (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| (Array T@Ref T@Field_6148_53 Real)) (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| (Array T@Ref T@Field_16194_16199 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10428 0)) (((PolymorphicMapType_10428 (|PolymorphicMapType_10428_6142_6143#PolymorphicMapType_10428| (Array T@Ref T@Field_9952_9953 Bool)) (|PolymorphicMapType_10428_6142_53#PolymorphicMapType_10428| (Array T@Ref T@Field_9939_53 Bool)) (|PolymorphicMapType_10428_6142_16181#PolymorphicMapType_10428| (Array T@Ref T@Field_9939_6149 Bool)) (|PolymorphicMapType_10428_6142_30135#PolymorphicMapType_10428| (Array T@Ref T@Field_9939_16199 Bool)) (|PolymorphicMapType_10428_16180_6143#PolymorphicMapType_10428| (Array T@Ref T@Field_6148_9953 Bool)) (|PolymorphicMapType_10428_16180_53#PolymorphicMapType_10428| (Array T@Ref T@Field_6148_53 Bool)) (|PolymorphicMapType_10428_16180_16181#PolymorphicMapType_10428| (Array T@Ref T@Field_16180_16181 Bool)) (|PolymorphicMapType_10428_16180_30985#PolymorphicMapType_10428| (Array T@Ref T@Field_16194_16199 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9879 0)) (((PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| (Array T@Ref T@Field_9939_53 Bool)) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| (Array T@Ref T@Field_9952_9953 T@Ref)) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| (Array T@Ref T@Field_16180_16181 T@FrameType)) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| (Array T@Ref T@Field_16194_16199 T@PolymorphicMapType_10428)) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| (Array T@Ref T@Field_6148_53 Bool)) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| (Array T@Ref T@Field_6148_9953 T@Ref)) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| (Array T@Ref T@Field_9939_6149 T@FrameType)) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| (Array T@Ref T@Field_9939_16199 T@PolymorphicMapType_10428)) ) ) ))
(declare-fun $allocated () T@Field_9939_53)
(declare-fun next () T@Field_9952_9953)
(declare-fun succHeap (T@PolymorphicMapType_9879 T@PolymorphicMapType_9879) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9879 T@PolymorphicMapType_9879) Bool)
(declare-fun state (T@PolymorphicMapType_9879 T@PolymorphicMapType_9900) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9900) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9879 T@PolymorphicMapType_9879 T@PolymorphicMapType_9900) Bool)
(declare-fun IsPredicateField_9939_29189 (T@Field_9939_6149) Bool)
(declare-fun HasDirectPerm_9939_6149 (T@PolymorphicMapType_9900 T@Ref T@Field_9939_6149) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9939 (T@Field_9939_6149) T@Field_9939_16199)
(declare-fun IsPredicateField_6148_6149 (T@Field_16180_16181) Bool)
(declare-fun HasDirectPerm_6148_6149 (T@PolymorphicMapType_9900 T@Ref T@Field_16180_16181) Bool)
(declare-fun PredicateMaskField_6148 (T@Field_16180_16181) T@Field_16194_16199)
(declare-fun IsWandField_9939_32150 (T@Field_9939_6149) Bool)
(declare-fun WandMaskField_9939 (T@Field_9939_6149) T@Field_9939_16199)
(declare-fun IsWandField_6148_31793 (T@Field_16180_16181) Bool)
(declare-fun WandMaskField_6148 (T@Field_16180_16181) T@Field_16194_16199)
(declare-fun ZeroPMask () T@PolymorphicMapType_10428)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun Valid ((Array T@Ref Bool)) T@Field_16180_16181)
(declare-fun |Valid#trigger_6148| (T@PolymorphicMapType_9879 T@Field_16180_16181) Bool)
(declare-fun |Valid#everUsed_6148| (T@Field_16180_16181) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun |Valid#sm| ((Array T@Ref Bool)) T@Field_16194_16199)
(declare-fun dummyHeap () T@PolymorphicMapType_9879)
(declare-fun ZeroMask () T@PolymorphicMapType_9900)
(declare-fun InsidePredicate_16180_16180 (T@Field_16180_16181 T@FrameType T@Field_16180_16181 T@FrameType) Bool)
(declare-fun InsidePredicate_9939_9939 (T@Field_9939_6149 T@FrameType T@Field_9939_6149 T@FrameType) Bool)
(declare-fun IsPredicateField_6142_6143 (T@Field_9952_9953) Bool)
(declare-fun IsWandField_6142_6143 (T@Field_9952_9953) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6148_37861 (T@Field_16194_16199) Bool)
(declare-fun IsWandField_6148_37877 (T@Field_16194_16199) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6148_53 (T@Field_6148_53) Bool)
(declare-fun IsWandField_6148_53 (T@Field_6148_53) Bool)
(declare-fun IsPredicateField_6148_6143 (T@Field_6148_9953) Bool)
(declare-fun IsWandField_6148_6143 (T@Field_6148_9953) Bool)
(declare-fun IsPredicateField_6142_37198 (T@Field_9939_16199) Bool)
(declare-fun IsWandField_6142_37214 (T@Field_9939_16199) Bool)
(declare-fun IsPredicateField_6142_53 (T@Field_9939_53) Bool)
(declare-fun IsWandField_6142_53 (T@Field_9939_53) Bool)
(declare-fun HasDirectPerm_9939_28576 (T@PolymorphicMapType_9900 T@Ref T@Field_9939_16199) Bool)
(declare-fun HasDirectPerm_9939_9953 (T@PolymorphicMapType_9900 T@Ref T@Field_9952_9953) Bool)
(declare-fun HasDirectPerm_9939_53 (T@PolymorphicMapType_9900 T@Ref T@Field_9939_53) Bool)
(declare-fun HasDirectPerm_6148_27691 (T@PolymorphicMapType_9900 T@Ref T@Field_16194_16199) Bool)
(declare-fun HasDirectPerm_6148_9953 (T@PolymorphicMapType_9900 T@Ref T@Field_6148_9953) Bool)
(declare-fun HasDirectPerm_6148_53 (T@PolymorphicMapType_9900 T@Ref T@Field_6148_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9900 T@PolymorphicMapType_9900 T@PolymorphicMapType_9900) Bool)
(declare-fun getPredWandId_6148_6149 (T@Field_16180_16181) Int)
(declare-fun |Valid#condqp1| (T@PolymorphicMapType_9879 (Array T@Ref Bool)) Int)
(declare-fun |sk_Valid#condqp1| (Int Int) T@Ref)
(declare-fun InsidePredicate_16180_9939 (T@Field_16180_16181 T@FrameType T@Field_9939_6149 T@FrameType) Bool)
(declare-fun InsidePredicate_9939_16180 (T@Field_9939_6149 T@FrameType T@Field_16180_16181 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_9879) (Heap1 T@PolymorphicMapType_9879) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9879) (Mask T@PolymorphicMapType_9900) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9879) (ExhaleHeap T@PolymorphicMapType_9879) (Mask@@0 T@PolymorphicMapType_9900) (pm_f_3 T@Field_9939_6149) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9939_6149 Mask@@0 null pm_f_3) (IsPredicateField_9939_29189 pm_f_3)) (and (and (and (and (and (and (and (forall ((o2_3 T@Ref) (f_12 T@Field_9952_9953) ) (!  (=> (select (|PolymorphicMapType_10428_6142_6143#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@0) null (PredicateMaskField_9939 pm_f_3))) o2_3 f_12) (= (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@0) o2_3 f_12) (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap) o2_3 f_12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap) o2_3 f_12))
)) (forall ((o2_3@@0 T@Ref) (f_12@@0 T@Field_9939_53) ) (!  (=> (select (|PolymorphicMapType_10428_6142_53#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@0) null (PredicateMaskField_9939 pm_f_3))) o2_3@@0 f_12@@0) (= (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@0) o2_3@@0 f_12@@0) (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap) o2_3@@0 f_12@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap) o2_3@@0 f_12@@0))
))) (forall ((o2_3@@1 T@Ref) (f_12@@1 T@Field_9939_6149) ) (!  (=> (select (|PolymorphicMapType_10428_6142_16181#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@0) null (PredicateMaskField_9939 pm_f_3))) o2_3@@1 f_12@@1) (= (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@0) o2_3@@1 f_12@@1) (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap) o2_3@@1 f_12@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap) o2_3@@1 f_12@@1))
))) (forall ((o2_3@@2 T@Ref) (f_12@@2 T@Field_9939_16199) ) (!  (=> (select (|PolymorphicMapType_10428_6142_30135#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@0) null (PredicateMaskField_9939 pm_f_3))) o2_3@@2 f_12@@2) (= (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@0) o2_3@@2 f_12@@2) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap) o2_3@@2 f_12@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap) o2_3@@2 f_12@@2))
))) (forall ((o2_3@@3 T@Ref) (f_12@@3 T@Field_6148_9953) ) (!  (=> (select (|PolymorphicMapType_10428_16180_6143#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@0) null (PredicateMaskField_9939 pm_f_3))) o2_3@@3 f_12@@3) (= (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@0) o2_3@@3 f_12@@3) (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap) o2_3@@3 f_12@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap) o2_3@@3 f_12@@3))
))) (forall ((o2_3@@4 T@Ref) (f_12@@4 T@Field_6148_53) ) (!  (=> (select (|PolymorphicMapType_10428_16180_53#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@0) null (PredicateMaskField_9939 pm_f_3))) o2_3@@4 f_12@@4) (= (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@0) o2_3@@4 f_12@@4) (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap) o2_3@@4 f_12@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap) o2_3@@4 f_12@@4))
))) (forall ((o2_3@@5 T@Ref) (f_12@@5 T@Field_16180_16181) ) (!  (=> (select (|PolymorphicMapType_10428_16180_16181#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@0) null (PredicateMaskField_9939 pm_f_3))) o2_3@@5 f_12@@5) (= (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@0) o2_3@@5 f_12@@5) (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap) o2_3@@5 f_12@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap) o2_3@@5 f_12@@5))
))) (forall ((o2_3@@6 T@Ref) (f_12@@6 T@Field_16194_16199) ) (!  (=> (select (|PolymorphicMapType_10428_16180_30985#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@0) null (PredicateMaskField_9939 pm_f_3))) o2_3@@6 f_12@@6) (= (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@0) o2_3@@6 f_12@@6) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap) o2_3@@6 f_12@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap) o2_3@@6 f_12@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_9939_29189 pm_f_3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9879) (ExhaleHeap@@0 T@PolymorphicMapType_9879) (Mask@@1 T@PolymorphicMapType_9900) (pm_f_3@@0 T@Field_16180_16181) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6148_6149 Mask@@1 null pm_f_3@@0) (IsPredicateField_6148_6149 pm_f_3@@0)) (and (and (and (and (and (and (and (forall ((o2_3@@7 T@Ref) (f_12@@7 T@Field_9952_9953) ) (!  (=> (select (|PolymorphicMapType_10428_6142_6143#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@1) null (PredicateMaskField_6148 pm_f_3@@0))) o2_3@@7 f_12@@7) (= (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@1) o2_3@@7 f_12@@7) (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap@@0) o2_3@@7 f_12@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap@@0) o2_3@@7 f_12@@7))
)) (forall ((o2_3@@8 T@Ref) (f_12@@8 T@Field_9939_53) ) (!  (=> (select (|PolymorphicMapType_10428_6142_53#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@1) null (PredicateMaskField_6148 pm_f_3@@0))) o2_3@@8 f_12@@8) (= (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@1) o2_3@@8 f_12@@8) (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@0) o2_3@@8 f_12@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@0) o2_3@@8 f_12@@8))
))) (forall ((o2_3@@9 T@Ref) (f_12@@9 T@Field_9939_6149) ) (!  (=> (select (|PolymorphicMapType_10428_6142_16181#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@1) null (PredicateMaskField_6148 pm_f_3@@0))) o2_3@@9 f_12@@9) (= (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@1) o2_3@@9 f_12@@9) (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap@@0) o2_3@@9 f_12@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap@@0) o2_3@@9 f_12@@9))
))) (forall ((o2_3@@10 T@Ref) (f_12@@10 T@Field_9939_16199) ) (!  (=> (select (|PolymorphicMapType_10428_6142_30135#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@1) null (PredicateMaskField_6148 pm_f_3@@0))) o2_3@@10 f_12@@10) (= (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@1) o2_3@@10 f_12@@10) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@0) o2_3@@10 f_12@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@0) o2_3@@10 f_12@@10))
))) (forall ((o2_3@@11 T@Ref) (f_12@@11 T@Field_6148_9953) ) (!  (=> (select (|PolymorphicMapType_10428_16180_6143#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@1) null (PredicateMaskField_6148 pm_f_3@@0))) o2_3@@11 f_12@@11) (= (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@1) o2_3@@11 f_12@@11) (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap@@0) o2_3@@11 f_12@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap@@0) o2_3@@11 f_12@@11))
))) (forall ((o2_3@@12 T@Ref) (f_12@@12 T@Field_6148_53) ) (!  (=> (select (|PolymorphicMapType_10428_16180_53#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@1) null (PredicateMaskField_6148 pm_f_3@@0))) o2_3@@12 f_12@@12) (= (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@1) o2_3@@12 f_12@@12) (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap@@0) o2_3@@12 f_12@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap@@0) o2_3@@12 f_12@@12))
))) (forall ((o2_3@@13 T@Ref) (f_12@@13 T@Field_16180_16181) ) (!  (=> (select (|PolymorphicMapType_10428_16180_16181#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@1) null (PredicateMaskField_6148 pm_f_3@@0))) o2_3@@13 f_12@@13) (= (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@1) o2_3@@13 f_12@@13) (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap@@0) o2_3@@13 f_12@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap@@0) o2_3@@13 f_12@@13))
))) (forall ((o2_3@@14 T@Ref) (f_12@@14 T@Field_16194_16199) ) (!  (=> (select (|PolymorphicMapType_10428_16180_30985#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@1) null (PredicateMaskField_6148 pm_f_3@@0))) o2_3@@14 f_12@@14) (= (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@1) o2_3@@14 f_12@@14) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@0) o2_3@@14 f_12@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@0) o2_3@@14 f_12@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6148_6149 pm_f_3@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9879) (ExhaleHeap@@1 T@PolymorphicMapType_9879) (Mask@@2 T@PolymorphicMapType_9900) (pm_f_3@@1 T@Field_9939_6149) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_9939_6149 Mask@@2 null pm_f_3@@1) (IsWandField_9939_32150 pm_f_3@@1)) (and (and (and (and (and (and (and (forall ((o2_3@@15 T@Ref) (f_12@@15 T@Field_9952_9953) ) (!  (=> (select (|PolymorphicMapType_10428_6142_6143#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@2) null (WandMaskField_9939 pm_f_3@@1))) o2_3@@15 f_12@@15) (= (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@2) o2_3@@15 f_12@@15) (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap@@1) o2_3@@15 f_12@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap@@1) o2_3@@15 f_12@@15))
)) (forall ((o2_3@@16 T@Ref) (f_12@@16 T@Field_9939_53) ) (!  (=> (select (|PolymorphicMapType_10428_6142_53#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@2) null (WandMaskField_9939 pm_f_3@@1))) o2_3@@16 f_12@@16) (= (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@2) o2_3@@16 f_12@@16) (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@1) o2_3@@16 f_12@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@1) o2_3@@16 f_12@@16))
))) (forall ((o2_3@@17 T@Ref) (f_12@@17 T@Field_9939_6149) ) (!  (=> (select (|PolymorphicMapType_10428_6142_16181#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@2) null (WandMaskField_9939 pm_f_3@@1))) o2_3@@17 f_12@@17) (= (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@2) o2_3@@17 f_12@@17) (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap@@1) o2_3@@17 f_12@@17)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap@@1) o2_3@@17 f_12@@17))
))) (forall ((o2_3@@18 T@Ref) (f_12@@18 T@Field_9939_16199) ) (!  (=> (select (|PolymorphicMapType_10428_6142_30135#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@2) null (WandMaskField_9939 pm_f_3@@1))) o2_3@@18 f_12@@18) (= (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@2) o2_3@@18 f_12@@18) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@1) o2_3@@18 f_12@@18)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@1) o2_3@@18 f_12@@18))
))) (forall ((o2_3@@19 T@Ref) (f_12@@19 T@Field_6148_9953) ) (!  (=> (select (|PolymorphicMapType_10428_16180_6143#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@2) null (WandMaskField_9939 pm_f_3@@1))) o2_3@@19 f_12@@19) (= (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@2) o2_3@@19 f_12@@19) (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap@@1) o2_3@@19 f_12@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap@@1) o2_3@@19 f_12@@19))
))) (forall ((o2_3@@20 T@Ref) (f_12@@20 T@Field_6148_53) ) (!  (=> (select (|PolymorphicMapType_10428_16180_53#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@2) null (WandMaskField_9939 pm_f_3@@1))) o2_3@@20 f_12@@20) (= (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@2) o2_3@@20 f_12@@20) (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap@@1) o2_3@@20 f_12@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap@@1) o2_3@@20 f_12@@20))
))) (forall ((o2_3@@21 T@Ref) (f_12@@21 T@Field_16180_16181) ) (!  (=> (select (|PolymorphicMapType_10428_16180_16181#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@2) null (WandMaskField_9939 pm_f_3@@1))) o2_3@@21 f_12@@21) (= (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@2) o2_3@@21 f_12@@21) (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap@@1) o2_3@@21 f_12@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap@@1) o2_3@@21 f_12@@21))
))) (forall ((o2_3@@22 T@Ref) (f_12@@22 T@Field_16194_16199) ) (!  (=> (select (|PolymorphicMapType_10428_16180_30985#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@2) null (WandMaskField_9939 pm_f_3@@1))) o2_3@@22 f_12@@22) (= (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@2) o2_3@@22 f_12@@22) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@1) o2_3@@22 f_12@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@1) o2_3@@22 f_12@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_9939_32150 pm_f_3@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9879) (ExhaleHeap@@2 T@PolymorphicMapType_9879) (Mask@@3 T@PolymorphicMapType_9900) (pm_f_3@@2 T@Field_16180_16181) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6148_6149 Mask@@3 null pm_f_3@@2) (IsWandField_6148_31793 pm_f_3@@2)) (and (and (and (and (and (and (and (forall ((o2_3@@23 T@Ref) (f_12@@23 T@Field_9952_9953) ) (!  (=> (select (|PolymorphicMapType_10428_6142_6143#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@3) null (WandMaskField_6148 pm_f_3@@2))) o2_3@@23 f_12@@23) (= (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@3) o2_3@@23 f_12@@23) (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap@@2) o2_3@@23 f_12@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap@@2) o2_3@@23 f_12@@23))
)) (forall ((o2_3@@24 T@Ref) (f_12@@24 T@Field_9939_53) ) (!  (=> (select (|PolymorphicMapType_10428_6142_53#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@3) null (WandMaskField_6148 pm_f_3@@2))) o2_3@@24 f_12@@24) (= (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@3) o2_3@@24 f_12@@24) (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@2) o2_3@@24 f_12@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@2) o2_3@@24 f_12@@24))
))) (forall ((o2_3@@25 T@Ref) (f_12@@25 T@Field_9939_6149) ) (!  (=> (select (|PolymorphicMapType_10428_6142_16181#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@3) null (WandMaskField_6148 pm_f_3@@2))) o2_3@@25 f_12@@25) (= (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@3) o2_3@@25 f_12@@25) (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap@@2) o2_3@@25 f_12@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap@@2) o2_3@@25 f_12@@25))
))) (forall ((o2_3@@26 T@Ref) (f_12@@26 T@Field_9939_16199) ) (!  (=> (select (|PolymorphicMapType_10428_6142_30135#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@3) null (WandMaskField_6148 pm_f_3@@2))) o2_3@@26 f_12@@26) (= (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@3) o2_3@@26 f_12@@26) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@2) o2_3@@26 f_12@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@2) o2_3@@26 f_12@@26))
))) (forall ((o2_3@@27 T@Ref) (f_12@@27 T@Field_6148_9953) ) (!  (=> (select (|PolymorphicMapType_10428_16180_6143#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@3) null (WandMaskField_6148 pm_f_3@@2))) o2_3@@27 f_12@@27) (= (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@3) o2_3@@27 f_12@@27) (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap@@2) o2_3@@27 f_12@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap@@2) o2_3@@27 f_12@@27))
))) (forall ((o2_3@@28 T@Ref) (f_12@@28 T@Field_6148_53) ) (!  (=> (select (|PolymorphicMapType_10428_16180_53#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@3) null (WandMaskField_6148 pm_f_3@@2))) o2_3@@28 f_12@@28) (= (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@3) o2_3@@28 f_12@@28) (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap@@2) o2_3@@28 f_12@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap@@2) o2_3@@28 f_12@@28))
))) (forall ((o2_3@@29 T@Ref) (f_12@@29 T@Field_16180_16181) ) (!  (=> (select (|PolymorphicMapType_10428_16180_16181#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@3) null (WandMaskField_6148 pm_f_3@@2))) o2_3@@29 f_12@@29) (= (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@3) o2_3@@29 f_12@@29) (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap@@2) o2_3@@29 f_12@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap@@2) o2_3@@29 f_12@@29))
))) (forall ((o2_3@@30 T@Ref) (f_12@@30 T@Field_16194_16199) ) (!  (=> (select (|PolymorphicMapType_10428_16180_30985#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@3) null (WandMaskField_6148 pm_f_3@@2))) o2_3@@30 f_12@@30) (= (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@3) o2_3@@30 f_12@@30) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@2) o2_3@@30 f_12@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@2) o2_3@@30 f_12@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_6148_31793 pm_f_3@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9879) (Heap1@@0 T@PolymorphicMapType_9879) (Heap2 T@PolymorphicMapType_9879) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16194_16199) ) (!  (not (select (|PolymorphicMapType_10428_16180_30985#PolymorphicMapType_10428| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10428_16180_30985#PolymorphicMapType_10428| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16180_16181) ) (!  (not (select (|PolymorphicMapType_10428_16180_16181#PolymorphicMapType_10428| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10428_16180_16181#PolymorphicMapType_10428| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6148_53) ) (!  (not (select (|PolymorphicMapType_10428_16180_53#PolymorphicMapType_10428| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10428_16180_53#PolymorphicMapType_10428| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6148_9953) ) (!  (not (select (|PolymorphicMapType_10428_16180_6143#PolymorphicMapType_10428| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10428_16180_6143#PolymorphicMapType_10428| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9939_16199) ) (!  (not (select (|PolymorphicMapType_10428_6142_30135#PolymorphicMapType_10428| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10428_6142_30135#PolymorphicMapType_10428| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_9939_6149) ) (!  (not (select (|PolymorphicMapType_10428_6142_16181#PolymorphicMapType_10428| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10428_6142_16181#PolymorphicMapType_10428| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_9939_53) ) (!  (not (select (|PolymorphicMapType_10428_6142_53#PolymorphicMapType_10428| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10428_6142_53#PolymorphicMapType_10428| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_9952_9953) ) (!  (not (select (|PolymorphicMapType_10428_6142_6143#PolymorphicMapType_10428| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10428_6142_6143#PolymorphicMapType_10428| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.300:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((nodes_1 (Array T@Ref Bool)) ) (! (IsPredicateField_6148_6149 (Valid nodes_1))
 :qid |stdinbpl.413:15|
 :skolemid |83|
 :pattern ( (Valid nodes_1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9879) (nodes_1@@0 (Array T@Ref Bool)) ) (! (|Valid#everUsed_6148| (Valid nodes_1@@0))
 :qid |stdinbpl.432:15|
 :skolemid |87|
 :pattern ( (|Valid#trigger_6148| Heap@@4 (Valid nodes_1@@0)))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.303:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9879) (ExhaleHeap@@3 T@PolymorphicMapType_9879) (Mask@@4 T@PolymorphicMapType_9900) (pm_f_3@@3 T@Field_9939_6149) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_9939_6149 Mask@@4 null pm_f_3@@3) (IsPredicateField_9939_29189 pm_f_3@@3)) (= (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@5) null (PredicateMaskField_9939 pm_f_3@@3)) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@3) null (PredicateMaskField_9939 pm_f_3@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_9939_29189 pm_f_3@@3) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@3) null (PredicateMaskField_9939 pm_f_3@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9879) (ExhaleHeap@@4 T@PolymorphicMapType_9879) (Mask@@5 T@PolymorphicMapType_9900) (pm_f_3@@4 T@Field_16180_16181) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_6148_6149 Mask@@5 null pm_f_3@@4) (IsPredicateField_6148_6149 pm_f_3@@4)) (= (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@6) null (PredicateMaskField_6148 pm_f_3@@4)) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@4) null (PredicateMaskField_6148 pm_f_3@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_6148_6149 pm_f_3@@4) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@4) null (PredicateMaskField_6148 pm_f_3@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9879) (ExhaleHeap@@5 T@PolymorphicMapType_9879) (Mask@@6 T@PolymorphicMapType_9900) (pm_f_3@@5 T@Field_9939_6149) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_9939_6149 Mask@@6 null pm_f_3@@5) (IsWandField_9939_32150 pm_f_3@@5)) (= (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@7) null (WandMaskField_9939 pm_f_3@@5)) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@5) null (WandMaskField_9939 pm_f_3@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_9939_32150 pm_f_3@@5) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@5) null (WandMaskField_9939 pm_f_3@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9879) (ExhaleHeap@@6 T@PolymorphicMapType_9879) (Mask@@7 T@PolymorphicMapType_9900) (pm_f_3@@6 T@Field_16180_16181) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_6148_6149 Mask@@7 null pm_f_3@@6) (IsWandField_6148_31793 pm_f_3@@6)) (= (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@8) null (WandMaskField_6148 pm_f_3@@6)) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@6) null (WandMaskField_6148 pm_f_3@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_6148_31793 pm_f_3@@6) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@6) null (WandMaskField_6148 pm_f_3@@6)))
)))
(assert (forall ((nodes_1@@1 (Array T@Ref Bool)) (nodes2 (Array T@Ref Bool)) ) (!  (=> (= (Valid nodes_1@@1) (Valid nodes2)) (= nodes_1@@1 nodes2))
 :qid |stdinbpl.423:15|
 :skolemid |85|
 :pattern ( (Valid nodes_1@@1) (Valid nodes2))
)))
(assert (forall ((nodes_1@@2 (Array T@Ref Bool)) (nodes2@@0 (Array T@Ref Bool)) ) (!  (=> (= (|Valid#sm| nodes_1@@2) (|Valid#sm| nodes2@@0)) (= nodes_1@@2 nodes2@@0))
 :qid |stdinbpl.427:15|
 :skolemid |86|
 :pattern ( (|Valid#sm| nodes_1@@2) (|Valid#sm| nodes2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9879) (ExhaleHeap@@7 T@PolymorphicMapType_9879) (Mask@@8 T@PolymorphicMapType_9900) (o_8 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@9) o_8 $allocated) (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@7) o_8 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@7) o_8 $allocated))
)))
(assert (forall ((p T@Field_16180_16181) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_16180_16180 p v_1 p w))
 :qid |stdinbpl.198:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16180_16180 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_9939_6149) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9939_9939 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.198:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9939_9939 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_6142_6143 next)))
(assert  (not (IsWandField_6142_6143 next)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9879) (ExhaleHeap@@8 T@PolymorphicMapType_9879) (Mask@@9 T@PolymorphicMapType_9900) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9900) (o_2@@7 T@Ref) (f_4@@7 T@Field_16194_16199) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6148_37861 f_4@@7))) (not (IsWandField_6148_37877 f_4@@7))) (<= (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9900) (o_2@@8 T@Ref) (f_4@@8 T@Field_6148_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6148_53 f_4@@8))) (not (IsWandField_6148_53 f_4@@8))) (<= (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9900) (o_2@@9 T@Ref) (f_4@@9 T@Field_16180_16181) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6148_6149 f_4@@9))) (not (IsWandField_6148_31793 f_4@@9))) (<= (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9900) (o_2@@10 T@Ref) (f_4@@10 T@Field_6148_9953) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6148_6143 f_4@@10))) (not (IsWandField_6148_6143 f_4@@10))) (<= (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9900) (o_2@@11 T@Ref) (f_4@@11 T@Field_9939_16199) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6142_37198 f_4@@11))) (not (IsWandField_6142_37214 f_4@@11))) (<= (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9900) (o_2@@12 T@Ref) (f_4@@12 T@Field_9939_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6142_53 f_4@@12))) (not (IsWandField_6142_53 f_4@@12))) (<= (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9900) (o_2@@13 T@Ref) (f_4@@13 T@Field_9939_6149) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_9939_29189 f_4@@13))) (not (IsWandField_9939_32150 f_4@@13))) (<= (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9900) (o_2@@14 T@Ref) (f_4@@14 T@Field_9952_9953) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6142_6143 f_4@@14))) (not (IsWandField_6142_6143 f_4@@14))) (<= (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9900) (o_2@@15 T@Ref) (f_4@@15 T@Field_9939_16199) ) (! (= (HasDirectPerm_9939_28576 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9939_28576 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9900) (o_2@@16 T@Ref) (f_4@@16 T@Field_9952_9953) ) (! (= (HasDirectPerm_9939_9953 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9939_9953 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9900) (o_2@@17 T@Ref) (f_4@@17 T@Field_9939_53) ) (! (= (HasDirectPerm_9939_53 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9939_53 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9900) (o_2@@18 T@Ref) (f_4@@18 T@Field_9939_6149) ) (! (= (HasDirectPerm_9939_6149 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9939_6149 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9900) (o_2@@19 T@Ref) (f_4@@19 T@Field_16194_16199) ) (! (= (HasDirectPerm_6148_27691 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6148_27691 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9900) (o_2@@20 T@Ref) (f_4@@20 T@Field_6148_9953) ) (! (= (HasDirectPerm_6148_9953 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6148_9953 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9900) (o_2@@21 T@Ref) (f_4@@21 T@Field_6148_53) ) (! (= (HasDirectPerm_6148_53 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6148_53 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9900) (o_2@@22 T@Ref) (f_4@@22 T@Field_16180_16181) ) (! (= (HasDirectPerm_6148_6149 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6148_6149 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.186:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9879) (ExhaleHeap@@9 T@PolymorphicMapType_9879) (Mask@@26 T@PolymorphicMapType_9900) (o_8@@0 T@Ref) (f_12@@31 T@Field_9939_16199) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_9939_28576 Mask@@26 o_8@@0 f_12@@31) (= (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@11) o_8@@0 f_12@@31) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@9) o_8@@0 f_12@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@9) o_8@@0 f_12@@31))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9879) (ExhaleHeap@@10 T@PolymorphicMapType_9879) (Mask@@27 T@PolymorphicMapType_9900) (o_8@@1 T@Ref) (f_12@@32 T@Field_9952_9953) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_9939_9953 Mask@@27 o_8@@1 f_12@@32) (= (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@12) o_8@@1 f_12@@32) (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap@@10) o_8@@1 f_12@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap@@10) o_8@@1 f_12@@32))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9879) (ExhaleHeap@@11 T@PolymorphicMapType_9879) (Mask@@28 T@PolymorphicMapType_9900) (o_8@@2 T@Ref) (f_12@@33 T@Field_9939_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_9939_53 Mask@@28 o_8@@2 f_12@@33) (= (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@13) o_8@@2 f_12@@33) (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@11) o_8@@2 f_12@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@11) o_8@@2 f_12@@33))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9879) (ExhaleHeap@@12 T@PolymorphicMapType_9879) (Mask@@29 T@PolymorphicMapType_9900) (o_8@@3 T@Ref) (f_12@@34 T@Field_9939_6149) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_9939_6149 Mask@@29 o_8@@3 f_12@@34) (= (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@14) o_8@@3 f_12@@34) (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap@@12) o_8@@3 f_12@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap@@12) o_8@@3 f_12@@34))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9879) (ExhaleHeap@@13 T@PolymorphicMapType_9879) (Mask@@30 T@PolymorphicMapType_9900) (o_8@@4 T@Ref) (f_12@@35 T@Field_16194_16199) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_6148_27691 Mask@@30 o_8@@4 f_12@@35) (= (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@15) o_8@@4 f_12@@35) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@13) o_8@@4 f_12@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@13) o_8@@4 f_12@@35))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9879) (ExhaleHeap@@14 T@PolymorphicMapType_9879) (Mask@@31 T@PolymorphicMapType_9900) (o_8@@5 T@Ref) (f_12@@36 T@Field_6148_9953) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_6148_9953 Mask@@31 o_8@@5 f_12@@36) (= (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@16) o_8@@5 f_12@@36) (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap@@14) o_8@@5 f_12@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap@@14) o_8@@5 f_12@@36))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9879) (ExhaleHeap@@15 T@PolymorphicMapType_9879) (Mask@@32 T@PolymorphicMapType_9900) (o_8@@6 T@Ref) (f_12@@37 T@Field_6148_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_6148_53 Mask@@32 o_8@@6 f_12@@37) (= (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@17) o_8@@6 f_12@@37) (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap@@15) o_8@@6 f_12@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap@@15) o_8@@6 f_12@@37))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9879) (ExhaleHeap@@16 T@PolymorphicMapType_9879) (Mask@@33 T@PolymorphicMapType_9900) (o_8@@7 T@Ref) (f_12@@38 T@Field_16180_16181) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_6148_6149 Mask@@33 o_8@@7 f_12@@38) (= (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@18) o_8@@7 f_12@@38) (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap@@16) o_8@@7 f_12@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap@@16) o_8@@7 f_12@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_16194_16199) ) (! (= (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_6148_53) ) (! (= (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_16180_16181) ) (! (= (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_6148_9953) ) (! (= (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_9939_16199) ) (! (= (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_9939_53) ) (! (= (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_9939_6149) ) (! (= (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_9952_9953) ) (! (= (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9900) (SummandMask1 T@PolymorphicMapType_9900) (SummandMask2 T@PolymorphicMapType_9900) (o_2@@31 T@Ref) (f_4@@31 T@Field_16194_16199) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9900) (SummandMask1@@0 T@PolymorphicMapType_9900) (SummandMask2@@0 T@PolymorphicMapType_9900) (o_2@@32 T@Ref) (f_4@@32 T@Field_6148_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9900) (SummandMask1@@1 T@PolymorphicMapType_9900) (SummandMask2@@1 T@PolymorphicMapType_9900) (o_2@@33 T@Ref) (f_4@@33 T@Field_16180_16181) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9900) (SummandMask1@@2 T@PolymorphicMapType_9900) (SummandMask2@@2 T@PolymorphicMapType_9900) (o_2@@34 T@Ref) (f_4@@34 T@Field_6148_9953) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9900) (SummandMask1@@3 T@PolymorphicMapType_9900) (SummandMask2@@3 T@PolymorphicMapType_9900) (o_2@@35 T@Ref) (f_4@@35 T@Field_9939_16199) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9900) (SummandMask1@@4 T@PolymorphicMapType_9900) (SummandMask2@@4 T@PolymorphicMapType_9900) (o_2@@36 T@Ref) (f_4@@36 T@Field_9939_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9900) (SummandMask1@@5 T@PolymorphicMapType_9900) (SummandMask2@@5 T@PolymorphicMapType_9900) (o_2@@37 T@Ref) (f_4@@37 T@Field_9939_6149) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9900) (SummandMask1@@6 T@PolymorphicMapType_9900) (SummandMask2@@6 T@PolymorphicMapType_9900) (o_2@@38 T@Ref) (f_4@@38 T@Field_9952_9953) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((nodes_1@@3 (Array T@Ref Bool)) ) (! (= (getPredWandId_6148_6149 (Valid nodes_1@@3)) 0)
 :qid |stdinbpl.417:15|
 :skolemid |84|
 :pattern ( (Valid nodes_1@@3))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9879) (o_7 T@Ref) (f_2 T@Field_16194_16199) (v T@PolymorphicMapType_10428) ) (! (succHeap Heap@@19 (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@19) (store (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@19) o_7 f_2 v) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@19) (store (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@19) o_7 f_2 v) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9879) (o_7@@0 T@Ref) (f_2@@0 T@Field_16180_16181) (v@@0 T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@20) (store (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@20) o_7@@0 f_2@@0 v@@0) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@20) (store (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@20) o_7@@0 f_2@@0 v@@0) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9879) (o_7@@1 T@Ref) (f_2@@1 T@Field_6148_9953) (v@@1 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@21) (store (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@21) o_7@@1 f_2@@1 v@@1) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@21) (store (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@21) o_7@@1 f_2@@1 v@@1) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9879) (o_7@@2 T@Ref) (f_2@@2 T@Field_6148_53) (v@@2 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@22) (store (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@22) o_7@@2 f_2@@2 v@@2) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@22) (store (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@22) o_7@@2 f_2@@2 v@@2) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9879) (o_7@@3 T@Ref) (f_2@@3 T@Field_9939_16199) (v@@3 T@PolymorphicMapType_10428) ) (! (succHeap Heap@@23 (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@23) (store (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@23) o_7@@3 f_2@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@23) (store (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@23) o_7@@3 f_2@@3 v@@3)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9879) (o_7@@4 T@Ref) (f_2@@4 T@Field_9939_6149) (v@@4 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@24) (store (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@24) o_7@@4 f_2@@4 v@@4) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@24) (store (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@24) o_7@@4 f_2@@4 v@@4) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9879) (o_7@@5 T@Ref) (f_2@@5 T@Field_9952_9953) (v@@5 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@25) (store (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@25) o_7@@5 f_2@@5 v@@5) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@25) (store (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@25) o_7@@5 f_2@@5 v@@5) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9879) (o_7@@6 T@Ref) (f_2@@6 T@Field_9939_53) (v@@6 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_9879 (store (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@26) o_7@@6 f_2@@6 v@@6) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9879 (store (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@26) o_7@@6 f_2@@6 v@@6) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@26)))
)))
(assert (forall ((nodes_1@@4 (Array T@Ref Bool)) ) (! (= (PredicateMaskField_6148 (Valid nodes_1@@4)) (|Valid#sm| nodes_1@@4))
 :qid |stdinbpl.409:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_6148 (Valid nodes_1@@4)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.298:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.299:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_9879) (Heap1Heap T@PolymorphicMapType_9879) (nodes_1@@5 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select nodes_1@@5 (|sk_Valid#condqp1| (|Valid#condqp1| Heap2Heap nodes_1@@5) (|Valid#condqp1| Heap1Heap nodes_1@@5))) (< NoPerm FullPerm))  (and (select nodes_1@@5 (|sk_Valid#condqp1| (|Valid#condqp1| Heap2Heap nodes_1@@5) (|Valid#condqp1| Heap1Heap nodes_1@@5))) (< NoPerm FullPerm))) (=> (and (select nodes_1@@5 (|sk_Valid#condqp1| (|Valid#condqp1| Heap2Heap nodes_1@@5) (|Valid#condqp1| Heap1Heap nodes_1@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap2Heap) (|sk_Valid#condqp1| (|Valid#condqp1| Heap2Heap nodes_1@@5) (|Valid#condqp1| Heap1Heap nodes_1@@5)) next) (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap1Heap) (|sk_Valid#condqp1| (|Valid#condqp1| Heap2Heap nodes_1@@5) (|Valid#condqp1| Heap1Heap nodes_1@@5)) next)))) (= (|Valid#condqp1| Heap2Heap nodes_1@@5) (|Valid#condqp1| Heap1Heap nodes_1@@5)))
 :qid |stdinbpl.443:15|
 :skolemid |88|
 :pattern ( (|Valid#condqp1| Heap2Heap nodes_1@@5) (|Valid#condqp1| Heap1Heap nodes_1@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((o_7@@7 T@Ref) (f_11 T@Field_9952_9953) (Heap@@27 T@PolymorphicMapType_9879) ) (!  (=> (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@27) o_7@@7 $allocated) (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@27) (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@27) o_7@@7 f_11) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@27) o_7@@7 f_11))
)))
(assert (forall ((p@@2 T@Field_16180_16181) (v_1@@1 T@FrameType) (q T@Field_16180_16181) (w@@1 T@FrameType) (r T@Field_16180_16181) (u T@FrameType) ) (!  (=> (and (InsidePredicate_16180_16180 p@@2 v_1@@1 q w@@1) (InsidePredicate_16180_16180 q w@@1 r u)) (InsidePredicate_16180_16180 p@@2 v_1@@1 r u))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16180_16180 p@@2 v_1@@1 q w@@1) (InsidePredicate_16180_16180 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_16180_16181) (v_1@@2 T@FrameType) (q@@0 T@Field_16180_16181) (w@@2 T@FrameType) (r@@0 T@Field_9939_6149) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_16180_16180 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_16180_9939 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_16180_9939 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16180_16180 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_16180_9939 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_16180_16181) (v_1@@3 T@FrameType) (q@@1 T@Field_9939_6149) (w@@3 T@FrameType) (r@@1 T@Field_16180_16181) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_16180_9939 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_9939_16180 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_16180_16180 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16180_9939 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_9939_16180 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_16180_16181) (v_1@@4 T@FrameType) (q@@2 T@Field_9939_6149) (w@@4 T@FrameType) (r@@2 T@Field_9939_6149) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_16180_9939 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_9939_9939 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_16180_9939 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16180_9939 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_9939_9939 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_9939_6149) (v_1@@5 T@FrameType) (q@@3 T@Field_16180_16181) (w@@5 T@FrameType) (r@@3 T@Field_16180_16181) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_9939_16180 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_16180_16180 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_9939_16180 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9939_16180 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_16180_16180 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_9939_6149) (v_1@@6 T@FrameType) (q@@4 T@Field_16180_16181) (w@@6 T@FrameType) (r@@4 T@Field_9939_6149) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_9939_16180 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_16180_9939 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_9939_9939 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9939_16180 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_16180_9939 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_9939_6149) (v_1@@7 T@FrameType) (q@@5 T@Field_9939_6149) (w@@7 T@FrameType) (r@@5 T@Field_16180_16181) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_9939_9939 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_9939_16180 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_9939_16180 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9939_9939 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_9939_16180 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_9939_6149) (v_1@@8 T@FrameType) (q@@6 T@Field_9939_6149) (w@@8 T@FrameType) (r@@6 T@Field_9939_6149) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_9939_9939 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_9939_9939 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_9939_9939 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9939_9939 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_9939_9939 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.304:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@2 () T@PolymorphicMapType_9900)
(declare-fun nodes_1@@6 () (Array T@Ref Bool))
(declare-fun Heap@4 () T@PolymorphicMapType_9879)
(declare-fun Heap@1 () T@PolymorphicMapType_9879)
(declare-fun Heap@2 () T@PolymorphicMapType_9879)
(declare-fun Heap@3 () T@PolymorphicMapType_9879)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun rd_1 () Real)
(declare-fun QPMask@0 () T@PolymorphicMapType_9900)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) T@Ref)
(declare-fun Mask@1 () T@PolymorphicMapType_9900)
(declare-fun QPMask@1 () T@PolymorphicMapType_9900)
(declare-fun dummyFunction_6143 (T@Ref) Bool)
(declare-fun neverTriggered5 (T@Ref) Bool)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) T@Ref)
(declare-fun FrameFragment_3509 (Int) T@FrameType)
(declare-fun Heap@@28 () T@PolymorphicMapType_9879)
(declare-fun Heap@0 () T@PolymorphicMapType_9879)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_9900)
(set-info :boogie-vc-id NoBug)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon6_correct true))
(let ((anon9_Else_correct  (=> (HasDirectPerm_6148_6149 Mask@2 null (Valid nodes_1@@6)) (=> (and (= Heap@4 Heap@1) (= (ControlFlow 0 3) 1)) anon6_correct))))
(let ((anon9_Then_correct  (=> (not (HasDirectPerm_6148_6149 Mask@2 null (Valid nodes_1@@6))) (=> (and (and (= Heap@2 (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@1) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@1) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@1) (store (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@1) null (|Valid#sm| nodes_1@@6) ZeroPMask) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@1) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@1) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@1) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@1))) (= Heap@3 (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@2) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@2) (store (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@2) null (Valid nodes_1@@6) freshVersion@0) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@2) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@2) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@2) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@2) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@2)))) (and (= Heap@4 Heap@3) (= (ControlFlow 0 2) 1))) anon6_correct))))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 4) (- 0 11)) (forall ((n T@Ref) (n_4 T@Ref) ) (!  (=> (and (and (and (and (not (= n n_4)) (select nodes_1@@6 n)) (select nodes_1@@6 n_4)) (< NoPerm rd_1)) (< NoPerm rd_1)) (not (= n n_4)))
 :qid |stdinbpl.742:15|
 :skolemid |111|
))) (=> (forall ((n@@0 T@Ref) (n_4@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n@@0 n_4@@0)) (select nodes_1@@6 n@@0)) (select nodes_1@@6 n_4@@0)) (< NoPerm rd_1)) (< NoPerm rd_1)) (not (= n@@0 n_4@@0)))
 :qid |stdinbpl.742:15|
 :skolemid |111|
)) (=> (and (forall ((n@@1 T@Ref) ) (!  (=> (and (select nodes_1@@6 n@@1) (< NoPerm rd_1)) (and (qpRange4 n@@1) (= (invRecv4 n@@1) n@@1)))
 :qid |stdinbpl.748:22|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@1) n@@1 next))
 :pattern ( (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@0) n@@1 next))
 :pattern ( (select nodes_1@@6 n@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select nodes_1@@6 (invRecv4 o_4)) (< NoPerm rd_1)) (qpRange4 o_4)) (= (invRecv4 o_4) o_4))
 :qid |stdinbpl.752:22|
 :skolemid |113|
 :pattern ( (invRecv4 o_4))
))) (and (=> (= (ControlFlow 0 4) (- 0 10)) (forall ((n@@2 T@Ref) ) (!  (=> (select nodes_1@@6 n@@2) (>= rd_1 NoPerm))
 :qid |stdinbpl.758:15|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@1) n@@2 next))
 :pattern ( (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@0) n@@2 next))
 :pattern ( (select nodes_1@@6 n@@2))
))) (=> (forall ((n@@3 T@Ref) ) (!  (=> (select nodes_1@@6 n@@3) (>= rd_1 NoPerm))
 :qid |stdinbpl.758:15|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@1) n@@3 next))
 :pattern ( (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@0) n@@3 next))
 :pattern ( (select nodes_1@@6 n@@3))
)) (=> (and (forall ((n@@4 T@Ref) ) (!  (=> (and (select nodes_1@@6 n@@4) (> rd_1 NoPerm)) (not (= n@@4 null)))
 :qid |stdinbpl.764:22|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@1) n@@4 next))
 :pattern ( (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@0) n@@4 next))
 :pattern ( (select nodes_1@@6 n@@4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select nodes_1@@6 (invRecv4 o_4@@0)) (< NoPerm rd_1)) (qpRange4 o_4@@0)) (and (=> (< NoPerm rd_1) (= (invRecv4 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@0) o_4@@0 next) (+ (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| Mask@1) o_4@@0 next) rd_1)))) (=> (not (and (and (select nodes_1@@6 (invRecv4 o_4@@0)) (< NoPerm rd_1)) (qpRange4 o_4@@0))) (= (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@0) o_4@@0 next) (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| Mask@1) o_4@@0 next))))
 :qid |stdinbpl.770:22|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@0) o_4@@0 next))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_9939_53) ) (!  (=> true (= (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| Mask@1) o_4@@1 f_5) (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.774:29|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| Mask@1) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_9952_9953) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| Mask@1) o_4@@2 f_5@@0) (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.774:29|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| Mask@1) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_9939_6149) ) (!  (=> true (= (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| Mask@1) o_4@@3 f_5@@1) (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.774:29|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| Mask@1) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_9939_16199) ) (!  (=> true (= (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| Mask@1) o_4@@4 f_5@@2) (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.774:29|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| Mask@1) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_6148_53) ) (!  (=> true (= (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| Mask@1) o_4@@5 f_5@@3) (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.774:29|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| Mask@1) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| QPMask@0) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_6148_9953) ) (!  (=> true (= (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| Mask@1) o_4@@6 f_5@@4) (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| QPMask@0) o_4@@6 f_5@@4)))
 :qid |stdinbpl.774:29|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| Mask@1) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| QPMask@0) o_4@@6 f_5@@4))
))) (forall ((o_4@@7 T@Ref) (f_5@@5 T@Field_16180_16181) ) (!  (=> true (= (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| Mask@1) o_4@@7 f_5@@5) (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| QPMask@0) o_4@@7 f_5@@5)))
 :qid |stdinbpl.774:29|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| Mask@1) o_4@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| QPMask@0) o_4@@7 f_5@@5))
))) (forall ((o_4@@8 T@Ref) (f_5@@6 T@Field_16194_16199) ) (!  (=> true (= (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| Mask@1) o_4@@8 f_5@@6) (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| QPMask@0) o_4@@8 f_5@@6)))
 :qid |stdinbpl.774:29|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| Mask@1) o_4@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| QPMask@0) o_4@@8 f_5@@6))
))) (state Heap@1 QPMask@0)) (and (state Heap@1 QPMask@0) (state Heap@1 QPMask@0))) (and (=> (= (ControlFlow 0 4) (- 0 9)) (> rd_1 NoPerm)) (=> (> rd_1 NoPerm) (and (=> (= (ControlFlow 0 4) (- 0 8)) (forall ((n_1 T@Ref) ) (!  (=> (and (select nodes_1@@6 n_1) (dummyFunction_6143 (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@1) n_1 next))) (>= rd_1 NoPerm))
 :qid |stdinbpl.792:17|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@1) n_1 next))
 :pattern ( (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@1) n_1 next))
 :pattern ( (select nodes_1@@6 n_1))
))) (=> (forall ((n_1@@0 T@Ref) ) (!  (=> (and (select nodes_1@@6 n_1@@0) (dummyFunction_6143 (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@1) n_1@@0 next))) (>= rd_1 NoPerm))
 :qid |stdinbpl.792:17|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@1) n_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@1) n_1@@0 next))
 :pattern ( (select nodes_1@@6 n_1@@0))
)) (and (=> (= (ControlFlow 0 4) (- 0 7)) (forall ((n_1@@1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@1 n_1_1)) (select nodes_1@@6 n_1@@1)) (select nodes_1@@6 n_1_1)) (< NoPerm rd_1)) (< NoPerm rd_1)) (not (= n_1@@1 n_1_1)))
 :qid |stdinbpl.799:17|
 :skolemid |119|
 :pattern ( (neverTriggered5 n_1@@1) (neverTriggered5 n_1_1))
))) (=> (forall ((n_1@@2 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@2 n_1_1@@0)) (select nodes_1@@6 n_1@@2)) (select nodes_1@@6 n_1_1@@0)) (< NoPerm rd_1)) (< NoPerm rd_1)) (not (= n_1@@2 n_1_1@@0)))
 :qid |stdinbpl.799:17|
 :skolemid |119|
 :pattern ( (neverTriggered5 n_1@@2) (neverTriggered5 n_1_1@@0))
)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (forall ((n_1@@3 T@Ref) ) (!  (=> (select nodes_1@@6 n_1@@3) (>= (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@0) n_1@@3 next) rd_1))
 :qid |stdinbpl.806:17|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@1) n_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@1) n_1@@3 next))
 :pattern ( (select nodes_1@@6 n_1@@3))
))) (=> (forall ((n_1@@4 T@Ref) ) (!  (=> (select nodes_1@@6 n_1@@4) (>= (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@0) n_1@@4 next) rd_1))
 :qid |stdinbpl.806:17|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@1) n_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@1) n_1@@4 next))
 :pattern ( (select nodes_1@@6 n_1@@4))
)) (=> (forall ((n_1@@5 T@Ref) ) (!  (=> (and (select nodes_1@@6 n_1@@5) (< NoPerm rd_1)) (and (qpRange5 n_1@@5) (= (invRecv5 n_1@@5) n_1@@5)))
 :qid |stdinbpl.812:22|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@1) n_1@@5 next))
 :pattern ( (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@1) n_1@@5 next))
 :pattern ( (select nodes_1@@6 n_1@@5))
)) (=> (and (forall ((o_4@@9 T@Ref) ) (!  (=> (and (select nodes_1@@6 (invRecv5 o_4@@9)) (and (< NoPerm rd_1) (qpRange5 o_4@@9))) (= (invRecv5 o_4@@9) o_4@@9))
 :qid |stdinbpl.816:22|
 :skolemid |122|
 :pattern ( (invRecv5 o_4@@9))
)) (forall ((o_4@@10 T@Ref) ) (!  (and (=> (and (select nodes_1@@6 (invRecv5 o_4@@10)) (and (< NoPerm rd_1) (qpRange5 o_4@@10))) (and (= (invRecv5 o_4@@10) o_4@@10) (= (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@1) o_4@@10 next) (- (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@0) o_4@@10 next) rd_1)))) (=> (not (and (select nodes_1@@6 (invRecv5 o_4@@10)) (and (< NoPerm rd_1) (qpRange5 o_4@@10)))) (= (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@1) o_4@@10 next) (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@0) o_4@@10 next))))
 :qid |stdinbpl.822:22|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@1) o_4@@10 next))
))) (=> (and (and (and (and (and (and (and (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_9939_53) ) (!  (=> true (= (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| QPMask@0) o_4@@11 f_5@@7) (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| QPMask@1) o_4@@11 f_5@@7)))
 :qid |stdinbpl.828:29|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| QPMask@1) o_4@@11 f_5@@7))
)) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_9952_9953) ) (!  (=> (not (= f_5@@8 next)) (= (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@0) o_4@@12 f_5@@8) (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@1) o_4@@12 f_5@@8)))
 :qid |stdinbpl.828:29|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@1) o_4@@12 f_5@@8))
))) (forall ((o_4@@13 T@Ref) (f_5@@9 T@Field_9939_6149) ) (!  (=> true (= (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| QPMask@0) o_4@@13 f_5@@9) (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| QPMask@1) o_4@@13 f_5@@9)))
 :qid |stdinbpl.828:29|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| QPMask@1) o_4@@13 f_5@@9))
))) (forall ((o_4@@14 T@Ref) (f_5@@10 T@Field_9939_16199) ) (!  (=> true (= (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| QPMask@0) o_4@@14 f_5@@10) (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| QPMask@1) o_4@@14 f_5@@10)))
 :qid |stdinbpl.828:29|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| QPMask@1) o_4@@14 f_5@@10))
))) (forall ((o_4@@15 T@Ref) (f_5@@11 T@Field_6148_53) ) (!  (=> true (= (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| QPMask@0) o_4@@15 f_5@@11) (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| QPMask@1) o_4@@15 f_5@@11)))
 :qid |stdinbpl.828:29|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| QPMask@1) o_4@@15 f_5@@11))
))) (forall ((o_4@@16 T@Ref) (f_5@@12 T@Field_6148_9953) ) (!  (=> true (= (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| QPMask@0) o_4@@16 f_5@@12) (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| QPMask@1) o_4@@16 f_5@@12)))
 :qid |stdinbpl.828:29|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| QPMask@1) o_4@@16 f_5@@12))
))) (forall ((o_4@@17 T@Ref) (f_5@@13 T@Field_16180_16181) ) (!  (=> true (= (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| QPMask@0) o_4@@17 f_5@@13) (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| QPMask@1) o_4@@17 f_5@@13)))
 :qid |stdinbpl.828:29|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| QPMask@1) o_4@@17 f_5@@13))
))) (forall ((o_4@@18 T@Ref) (f_5@@14 T@Field_16194_16199) ) (!  (=> true (= (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| QPMask@0) o_4@@18 f_5@@14) (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| QPMask@1) o_4@@18 f_5@@14)))
 :qid |stdinbpl.828:29|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| QPMask@1) o_4@@18 f_5@@14))
))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (>= rd_1 NoPerm)) (=> (>= rd_1 NoPerm) (=> (= Mask@2 (PolymorphicMapType_9900 (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| QPMask@1) (store (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| QPMask@1) null (Valid nodes_1@@6) (+ (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| QPMask@1) null (Valid nodes_1@@6)) rd_1)) (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| QPMask@1) (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| QPMask@1) (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| QPMask@1) (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| QPMask@1) (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| QPMask@1) (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| QPMask@1))) (=> (and (and (state Heap@1 Mask@2) (state Heap@1 Mask@2)) (and (|Valid#trigger_6148| Heap@1 (Valid nodes_1@@6)) (= (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@1) null (Valid nodes_1@@6)) (FrameFragment_3509 (|Valid#condqp1| Heap@1 nodes_1@@6))))) (and (=> (= (ControlFlow 0 4) 2) anon9_Then_correct) (=> (= (ControlFlow 0 4) 3) anon9_Else_correct))))))))))))))))))))))))))
(let ((anon8_Else_correct  (=> (HasDirectPerm_6148_6149 Mask@1 null (Valid nodes_1@@6)) (=> (and (= Heap@1 Heap@@28) (= (ControlFlow 0 13) 4)) anon4_correct))))
(let ((anon8_Then_correct  (=> (and (and (not (HasDirectPerm_6148_6149 Mask@1 null (Valid nodes_1@@6))) (= Heap@0 (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@28) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@28) (store (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@28) null (Valid nodes_1@@6) newVersion@0) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@28) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@28) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@28) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@28) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@28)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 12) 4))) anon4_correct)))
(let ((anon2_correct  (=> (= Mask@1 (PolymorphicMapType_9900 (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| Mask@0) (store (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| Mask@0) null (Valid nodes_1@@6) (- (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| Mask@0) null (Valid nodes_1@@6)) rd_1)) (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| Mask@0) (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| Mask@0) (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| Mask@0) (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| Mask@0) (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| Mask@0) (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| Mask@0))) (and (=> (= (ControlFlow 0 14) 12) anon8_Then_correct) (=> (= (ControlFlow 0 14) 13) anon8_Else_correct)))))
(let ((anon7_Else_correct  (=> (and (= rd_1 NoPerm) (= (ControlFlow 0 17) 14)) anon2_correct)))
(let ((anon7_Then_correct  (=> (not (= rd_1 NoPerm)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (<= rd_1 (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| Mask@0) null (Valid nodes_1@@6)))) (=> (<= rd_1 (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| Mask@0) null (Valid nodes_1@@6))) (=> (= (ControlFlow 0 15) 14) anon2_correct))))))
(let ((anon0_correct  (=> (and (and (state Heap@@28 ZeroMask) AssumePermUpperBound) (and (= rd_1 FullPerm) (state Heap@@28 ZeroMask))) (and (=> (= (ControlFlow 0 18) (- 0 21)) (>= rd_1 NoPerm)) (=> (>= rd_1 NoPerm) (=> (= Mask@0 (PolymorphicMapType_9900 (|PolymorphicMapType_9900_6142_6143#PolymorphicMapType_9900| ZeroMask) (store (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| ZeroMask) null (Valid nodes_1@@6) (+ (select (|PolymorphicMapType_9900_6148_6149#PolymorphicMapType_9900| ZeroMask) null (Valid nodes_1@@6)) rd_1)) (|PolymorphicMapType_9900_6142_6149#PolymorphicMapType_9900| ZeroMask) (|PolymorphicMapType_9900_6142_53#PolymorphicMapType_9900| ZeroMask) (|PolymorphicMapType_9900_6142_35706#PolymorphicMapType_9900| ZeroMask) (|PolymorphicMapType_9900_6148_6143#PolymorphicMapType_9900| ZeroMask) (|PolymorphicMapType_9900_6148_53#PolymorphicMapType_9900| ZeroMask) (|PolymorphicMapType_9900_6148_36037#PolymorphicMapType_9900| ZeroMask))) (=> (and (state Heap@@28 Mask@0) (state Heap@@28 Mask@0)) (and (=> (= (ControlFlow 0 18) (- 0 20)) (> rd_1 NoPerm)) (=> (> rd_1 NoPerm) (=> (and (|Valid#trigger_6148| Heap@@28 (Valid nodes_1@@6)) (= (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@28) null (Valid nodes_1@@6)) (FrameFragment_3509 (|Valid#condqp1| Heap@@28 nodes_1@@6)))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (>= rd_1 NoPerm)) (=> (>= rd_1 NoPerm) (and (=> (= (ControlFlow 0 18) 15) anon7_Then_correct) (=> (= (ControlFlow 0 18) 17) anon7_Else_correct))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 22) 18) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
