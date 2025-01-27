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
(assert (forall ((Heap@@0 T@PolymorphicMapType_9879) (ExhaleHeap T@PolymorphicMapType_9879) (Mask@@0 T@PolymorphicMapType_9900) (pm_f_6 T@Field_9939_6149) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9939_6149 Mask@@0 null pm_f_6) (IsPredicateField_9939_29189 pm_f_6)) (and (and (and (and (and (and (and (forall ((o2_6 T@Ref) (f_25 T@Field_9952_9953) ) (!  (=> (select (|PolymorphicMapType_10428_6142_6143#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@0) null (PredicateMaskField_9939 pm_f_6))) o2_6 f_25) (= (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@0) o2_6 f_25) (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap) o2_6 f_25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap) o2_6 f_25))
)) (forall ((o2_6@@0 T@Ref) (f_25@@0 T@Field_9939_53) ) (!  (=> (select (|PolymorphicMapType_10428_6142_53#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@0) null (PredicateMaskField_9939 pm_f_6))) o2_6@@0 f_25@@0) (= (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@0) o2_6@@0 f_25@@0) (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap) o2_6@@0 f_25@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap) o2_6@@0 f_25@@0))
))) (forall ((o2_6@@1 T@Ref) (f_25@@1 T@Field_9939_6149) ) (!  (=> (select (|PolymorphicMapType_10428_6142_16181#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@0) null (PredicateMaskField_9939 pm_f_6))) o2_6@@1 f_25@@1) (= (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@0) o2_6@@1 f_25@@1) (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap) o2_6@@1 f_25@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap) o2_6@@1 f_25@@1))
))) (forall ((o2_6@@2 T@Ref) (f_25@@2 T@Field_9939_16199) ) (!  (=> (select (|PolymorphicMapType_10428_6142_30135#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@0) null (PredicateMaskField_9939 pm_f_6))) o2_6@@2 f_25@@2) (= (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@0) o2_6@@2 f_25@@2) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap) o2_6@@2 f_25@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap) o2_6@@2 f_25@@2))
))) (forall ((o2_6@@3 T@Ref) (f_25@@3 T@Field_6148_9953) ) (!  (=> (select (|PolymorphicMapType_10428_16180_6143#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@0) null (PredicateMaskField_9939 pm_f_6))) o2_6@@3 f_25@@3) (= (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@0) o2_6@@3 f_25@@3) (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap) o2_6@@3 f_25@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap) o2_6@@3 f_25@@3))
))) (forall ((o2_6@@4 T@Ref) (f_25@@4 T@Field_6148_53) ) (!  (=> (select (|PolymorphicMapType_10428_16180_53#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@0) null (PredicateMaskField_9939 pm_f_6))) o2_6@@4 f_25@@4) (= (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@0) o2_6@@4 f_25@@4) (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap) o2_6@@4 f_25@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap) o2_6@@4 f_25@@4))
))) (forall ((o2_6@@5 T@Ref) (f_25@@5 T@Field_16180_16181) ) (!  (=> (select (|PolymorphicMapType_10428_16180_16181#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@0) null (PredicateMaskField_9939 pm_f_6))) o2_6@@5 f_25@@5) (= (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@0) o2_6@@5 f_25@@5) (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap) o2_6@@5 f_25@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap) o2_6@@5 f_25@@5))
))) (forall ((o2_6@@6 T@Ref) (f_25@@6 T@Field_16194_16199) ) (!  (=> (select (|PolymorphicMapType_10428_16180_30985#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@0) null (PredicateMaskField_9939 pm_f_6))) o2_6@@6 f_25@@6) (= (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@0) o2_6@@6 f_25@@6) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap) o2_6@@6 f_25@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap) o2_6@@6 f_25@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_9939_29189 pm_f_6))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9879) (ExhaleHeap@@0 T@PolymorphicMapType_9879) (Mask@@1 T@PolymorphicMapType_9900) (pm_f_6@@0 T@Field_16180_16181) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6148_6149 Mask@@1 null pm_f_6@@0) (IsPredicateField_6148_6149 pm_f_6@@0)) (and (and (and (and (and (and (and (forall ((o2_6@@7 T@Ref) (f_25@@7 T@Field_9952_9953) ) (!  (=> (select (|PolymorphicMapType_10428_6142_6143#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@1) null (PredicateMaskField_6148 pm_f_6@@0))) o2_6@@7 f_25@@7) (= (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@1) o2_6@@7 f_25@@7) (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap@@0) o2_6@@7 f_25@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap@@0) o2_6@@7 f_25@@7))
)) (forall ((o2_6@@8 T@Ref) (f_25@@8 T@Field_9939_53) ) (!  (=> (select (|PolymorphicMapType_10428_6142_53#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@1) null (PredicateMaskField_6148 pm_f_6@@0))) o2_6@@8 f_25@@8) (= (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@1) o2_6@@8 f_25@@8) (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@0) o2_6@@8 f_25@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@0) o2_6@@8 f_25@@8))
))) (forall ((o2_6@@9 T@Ref) (f_25@@9 T@Field_9939_6149) ) (!  (=> (select (|PolymorphicMapType_10428_6142_16181#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@1) null (PredicateMaskField_6148 pm_f_6@@0))) o2_6@@9 f_25@@9) (= (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@1) o2_6@@9 f_25@@9) (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap@@0) o2_6@@9 f_25@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap@@0) o2_6@@9 f_25@@9))
))) (forall ((o2_6@@10 T@Ref) (f_25@@10 T@Field_9939_16199) ) (!  (=> (select (|PolymorphicMapType_10428_6142_30135#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@1) null (PredicateMaskField_6148 pm_f_6@@0))) o2_6@@10 f_25@@10) (= (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@1) o2_6@@10 f_25@@10) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@0) o2_6@@10 f_25@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@0) o2_6@@10 f_25@@10))
))) (forall ((o2_6@@11 T@Ref) (f_25@@11 T@Field_6148_9953) ) (!  (=> (select (|PolymorphicMapType_10428_16180_6143#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@1) null (PredicateMaskField_6148 pm_f_6@@0))) o2_6@@11 f_25@@11) (= (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@1) o2_6@@11 f_25@@11) (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap@@0) o2_6@@11 f_25@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap@@0) o2_6@@11 f_25@@11))
))) (forall ((o2_6@@12 T@Ref) (f_25@@12 T@Field_6148_53) ) (!  (=> (select (|PolymorphicMapType_10428_16180_53#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@1) null (PredicateMaskField_6148 pm_f_6@@0))) o2_6@@12 f_25@@12) (= (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@1) o2_6@@12 f_25@@12) (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap@@0) o2_6@@12 f_25@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap@@0) o2_6@@12 f_25@@12))
))) (forall ((o2_6@@13 T@Ref) (f_25@@13 T@Field_16180_16181) ) (!  (=> (select (|PolymorphicMapType_10428_16180_16181#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@1) null (PredicateMaskField_6148 pm_f_6@@0))) o2_6@@13 f_25@@13) (= (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@1) o2_6@@13 f_25@@13) (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap@@0) o2_6@@13 f_25@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap@@0) o2_6@@13 f_25@@13))
))) (forall ((o2_6@@14 T@Ref) (f_25@@14 T@Field_16194_16199) ) (!  (=> (select (|PolymorphicMapType_10428_16180_30985#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@1) null (PredicateMaskField_6148 pm_f_6@@0))) o2_6@@14 f_25@@14) (= (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@1) o2_6@@14 f_25@@14) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@0) o2_6@@14 f_25@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@0) o2_6@@14 f_25@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6148_6149 pm_f_6@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9879) (ExhaleHeap@@1 T@PolymorphicMapType_9879) (Mask@@2 T@PolymorphicMapType_9900) (pm_f_6@@1 T@Field_9939_6149) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_9939_6149 Mask@@2 null pm_f_6@@1) (IsWandField_9939_32150 pm_f_6@@1)) (and (and (and (and (and (and (and (forall ((o2_6@@15 T@Ref) (f_25@@15 T@Field_9952_9953) ) (!  (=> (select (|PolymorphicMapType_10428_6142_6143#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@2) null (WandMaskField_9939 pm_f_6@@1))) o2_6@@15 f_25@@15) (= (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@2) o2_6@@15 f_25@@15) (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap@@1) o2_6@@15 f_25@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap@@1) o2_6@@15 f_25@@15))
)) (forall ((o2_6@@16 T@Ref) (f_25@@16 T@Field_9939_53) ) (!  (=> (select (|PolymorphicMapType_10428_6142_53#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@2) null (WandMaskField_9939 pm_f_6@@1))) o2_6@@16 f_25@@16) (= (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@2) o2_6@@16 f_25@@16) (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@1) o2_6@@16 f_25@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@1) o2_6@@16 f_25@@16))
))) (forall ((o2_6@@17 T@Ref) (f_25@@17 T@Field_9939_6149) ) (!  (=> (select (|PolymorphicMapType_10428_6142_16181#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@2) null (WandMaskField_9939 pm_f_6@@1))) o2_6@@17 f_25@@17) (= (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@2) o2_6@@17 f_25@@17) (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap@@1) o2_6@@17 f_25@@17)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap@@1) o2_6@@17 f_25@@17))
))) (forall ((o2_6@@18 T@Ref) (f_25@@18 T@Field_9939_16199) ) (!  (=> (select (|PolymorphicMapType_10428_6142_30135#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@2) null (WandMaskField_9939 pm_f_6@@1))) o2_6@@18 f_25@@18) (= (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@2) o2_6@@18 f_25@@18) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@1) o2_6@@18 f_25@@18)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@1) o2_6@@18 f_25@@18))
))) (forall ((o2_6@@19 T@Ref) (f_25@@19 T@Field_6148_9953) ) (!  (=> (select (|PolymorphicMapType_10428_16180_6143#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@2) null (WandMaskField_9939 pm_f_6@@1))) o2_6@@19 f_25@@19) (= (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@2) o2_6@@19 f_25@@19) (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap@@1) o2_6@@19 f_25@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap@@1) o2_6@@19 f_25@@19))
))) (forall ((o2_6@@20 T@Ref) (f_25@@20 T@Field_6148_53) ) (!  (=> (select (|PolymorphicMapType_10428_16180_53#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@2) null (WandMaskField_9939 pm_f_6@@1))) o2_6@@20 f_25@@20) (= (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@2) o2_6@@20 f_25@@20) (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap@@1) o2_6@@20 f_25@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap@@1) o2_6@@20 f_25@@20))
))) (forall ((o2_6@@21 T@Ref) (f_25@@21 T@Field_16180_16181) ) (!  (=> (select (|PolymorphicMapType_10428_16180_16181#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@2) null (WandMaskField_9939 pm_f_6@@1))) o2_6@@21 f_25@@21) (= (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@2) o2_6@@21 f_25@@21) (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap@@1) o2_6@@21 f_25@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap@@1) o2_6@@21 f_25@@21))
))) (forall ((o2_6@@22 T@Ref) (f_25@@22 T@Field_16194_16199) ) (!  (=> (select (|PolymorphicMapType_10428_16180_30985#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@2) null (WandMaskField_9939 pm_f_6@@1))) o2_6@@22 f_25@@22) (= (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@2) o2_6@@22 f_25@@22) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@1) o2_6@@22 f_25@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@1) o2_6@@22 f_25@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_9939_32150 pm_f_6@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9879) (ExhaleHeap@@2 T@PolymorphicMapType_9879) (Mask@@3 T@PolymorphicMapType_9900) (pm_f_6@@2 T@Field_16180_16181) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6148_6149 Mask@@3 null pm_f_6@@2) (IsWandField_6148_31793 pm_f_6@@2)) (and (and (and (and (and (and (and (forall ((o2_6@@23 T@Ref) (f_25@@23 T@Field_9952_9953) ) (!  (=> (select (|PolymorphicMapType_10428_6142_6143#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@3) null (WandMaskField_6148 pm_f_6@@2))) o2_6@@23 f_25@@23) (= (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@3) o2_6@@23 f_25@@23) (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap@@2) o2_6@@23 f_25@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap@@2) o2_6@@23 f_25@@23))
)) (forall ((o2_6@@24 T@Ref) (f_25@@24 T@Field_9939_53) ) (!  (=> (select (|PolymorphicMapType_10428_6142_53#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@3) null (WandMaskField_6148 pm_f_6@@2))) o2_6@@24 f_25@@24) (= (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@3) o2_6@@24 f_25@@24) (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@2) o2_6@@24 f_25@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@2) o2_6@@24 f_25@@24))
))) (forall ((o2_6@@25 T@Ref) (f_25@@25 T@Field_9939_6149) ) (!  (=> (select (|PolymorphicMapType_10428_6142_16181#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@3) null (WandMaskField_6148 pm_f_6@@2))) o2_6@@25 f_25@@25) (= (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@3) o2_6@@25 f_25@@25) (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap@@2) o2_6@@25 f_25@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap@@2) o2_6@@25 f_25@@25))
))) (forall ((o2_6@@26 T@Ref) (f_25@@26 T@Field_9939_16199) ) (!  (=> (select (|PolymorphicMapType_10428_6142_30135#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@3) null (WandMaskField_6148 pm_f_6@@2))) o2_6@@26 f_25@@26) (= (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@3) o2_6@@26 f_25@@26) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@2) o2_6@@26 f_25@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@2) o2_6@@26 f_25@@26))
))) (forall ((o2_6@@27 T@Ref) (f_25@@27 T@Field_6148_9953) ) (!  (=> (select (|PolymorphicMapType_10428_16180_6143#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@3) null (WandMaskField_6148 pm_f_6@@2))) o2_6@@27 f_25@@27) (= (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@3) o2_6@@27 f_25@@27) (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap@@2) o2_6@@27 f_25@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap@@2) o2_6@@27 f_25@@27))
))) (forall ((o2_6@@28 T@Ref) (f_25@@28 T@Field_6148_53) ) (!  (=> (select (|PolymorphicMapType_10428_16180_53#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@3) null (WandMaskField_6148 pm_f_6@@2))) o2_6@@28 f_25@@28) (= (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@3) o2_6@@28 f_25@@28) (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap@@2) o2_6@@28 f_25@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap@@2) o2_6@@28 f_25@@28))
))) (forall ((o2_6@@29 T@Ref) (f_25@@29 T@Field_16180_16181) ) (!  (=> (select (|PolymorphicMapType_10428_16180_16181#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@3) null (WandMaskField_6148 pm_f_6@@2))) o2_6@@29 f_25@@29) (= (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@3) o2_6@@29 f_25@@29) (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap@@2) o2_6@@29 f_25@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap@@2) o2_6@@29 f_25@@29))
))) (forall ((o2_6@@30 T@Ref) (f_25@@30 T@Field_16194_16199) ) (!  (=> (select (|PolymorphicMapType_10428_16180_30985#PolymorphicMapType_10428| (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@3) null (WandMaskField_6148 pm_f_6@@2))) o2_6@@30 f_25@@30) (= (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@3) o2_6@@30 f_25@@30) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@2) o2_6@@30 f_25@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@2) o2_6@@30 f_25@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_6148_31793 pm_f_6@@2))
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
(assert (forall ((nodes (Array T@Ref Bool)) ) (! (IsPredicateField_6148_6149 (Valid nodes))
 :qid |stdinbpl.413:15|
 :skolemid |83|
 :pattern ( (Valid nodes))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9879) (nodes@@0 (Array T@Ref Bool)) ) (! (|Valid#everUsed_6148| (Valid nodes@@0))
 :qid |stdinbpl.432:15|
 :skolemid |87|
 :pattern ( (|Valid#trigger_6148| Heap@@4 (Valid nodes@@0)))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.303:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9879) (ExhaleHeap@@3 T@PolymorphicMapType_9879) (Mask@@4 T@PolymorphicMapType_9900) (pm_f_6@@3 T@Field_9939_6149) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_9939_6149 Mask@@4 null pm_f_6@@3) (IsPredicateField_9939_29189 pm_f_6@@3)) (= (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@5) null (PredicateMaskField_9939 pm_f_6@@3)) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@3) null (PredicateMaskField_9939 pm_f_6@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_9939_29189 pm_f_6@@3) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@3) null (PredicateMaskField_9939 pm_f_6@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9879) (ExhaleHeap@@4 T@PolymorphicMapType_9879) (Mask@@5 T@PolymorphicMapType_9900) (pm_f_6@@4 T@Field_16180_16181) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_6148_6149 Mask@@5 null pm_f_6@@4) (IsPredicateField_6148_6149 pm_f_6@@4)) (= (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@6) null (PredicateMaskField_6148 pm_f_6@@4)) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@4) null (PredicateMaskField_6148 pm_f_6@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_6148_6149 pm_f_6@@4) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@4) null (PredicateMaskField_6148 pm_f_6@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9879) (ExhaleHeap@@5 T@PolymorphicMapType_9879) (Mask@@6 T@PolymorphicMapType_9900) (pm_f_6@@5 T@Field_9939_6149) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_9939_6149 Mask@@6 null pm_f_6@@5) (IsWandField_9939_32150 pm_f_6@@5)) (= (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@7) null (WandMaskField_9939 pm_f_6@@5)) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@5) null (WandMaskField_9939 pm_f_6@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_9939_32150 pm_f_6@@5) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@5) null (WandMaskField_9939 pm_f_6@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9879) (ExhaleHeap@@6 T@PolymorphicMapType_9879) (Mask@@7 T@PolymorphicMapType_9900) (pm_f_6@@6 T@Field_16180_16181) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_6148_6149 Mask@@7 null pm_f_6@@6) (IsWandField_6148_31793 pm_f_6@@6)) (= (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@8) null (WandMaskField_6148 pm_f_6@@6)) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@6) null (WandMaskField_6148 pm_f_6@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_6148_31793 pm_f_6@@6) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@6) null (WandMaskField_6148 pm_f_6@@6)))
)))
(assert (forall ((nodes@@1 (Array T@Ref Bool)) (nodes2 (Array T@Ref Bool)) ) (!  (=> (= (Valid nodes@@1) (Valid nodes2)) (= nodes@@1 nodes2))
 :qid |stdinbpl.423:15|
 :skolemid |85|
 :pattern ( (Valid nodes@@1) (Valid nodes2))
)))
(assert (forall ((nodes@@2 (Array T@Ref Bool)) (nodes2@@0 (Array T@Ref Bool)) ) (!  (=> (= (|Valid#sm| nodes@@2) (|Valid#sm| nodes2@@0)) (= nodes@@2 nodes2@@0))
 :qid |stdinbpl.427:15|
 :skolemid |86|
 :pattern ( (|Valid#sm| nodes@@2) (|Valid#sm| nodes2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9879) (ExhaleHeap@@7 T@PolymorphicMapType_9879) (Mask@@8 T@PolymorphicMapType_9900) (o_17 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@9) o_17 $allocated) (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@7) o_17 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@7) o_17 $allocated))
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
(assert (forall ((Heap@@11 T@PolymorphicMapType_9879) (ExhaleHeap@@9 T@PolymorphicMapType_9879) (Mask@@26 T@PolymorphicMapType_9900) (o_17@@0 T@Ref) (f_25@@31 T@Field_9939_16199) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_9939_28576 Mask@@26 o_17@@0 f_25@@31) (= (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@11) o_17@@0 f_25@@31) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@9) o_17@@0 f_25@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| ExhaleHeap@@9) o_17@@0 f_25@@31))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9879) (ExhaleHeap@@10 T@PolymorphicMapType_9879) (Mask@@27 T@PolymorphicMapType_9900) (o_17@@1 T@Ref) (f_25@@32 T@Field_9952_9953) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_9939_9953 Mask@@27 o_17@@1 f_25@@32) (= (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@12) o_17@@1 f_25@@32) (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap@@10) o_17@@1 f_25@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| ExhaleHeap@@10) o_17@@1 f_25@@32))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9879) (ExhaleHeap@@11 T@PolymorphicMapType_9879) (Mask@@28 T@PolymorphicMapType_9900) (o_17@@2 T@Ref) (f_25@@33 T@Field_9939_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_9939_53 Mask@@28 o_17@@2 f_25@@33) (= (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@13) o_17@@2 f_25@@33) (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@11) o_17@@2 f_25@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| ExhaleHeap@@11) o_17@@2 f_25@@33))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9879) (ExhaleHeap@@12 T@PolymorphicMapType_9879) (Mask@@29 T@PolymorphicMapType_9900) (o_17@@3 T@Ref) (f_25@@34 T@Field_9939_6149) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_9939_6149 Mask@@29 o_17@@3 f_25@@34) (= (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@14) o_17@@3 f_25@@34) (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap@@12) o_17@@3 f_25@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| ExhaleHeap@@12) o_17@@3 f_25@@34))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9879) (ExhaleHeap@@13 T@PolymorphicMapType_9879) (Mask@@30 T@PolymorphicMapType_9900) (o_17@@4 T@Ref) (f_25@@35 T@Field_16194_16199) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_6148_27691 Mask@@30 o_17@@4 f_25@@35) (= (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@15) o_17@@4 f_25@@35) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@13) o_17@@4 f_25@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| ExhaleHeap@@13) o_17@@4 f_25@@35))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9879) (ExhaleHeap@@14 T@PolymorphicMapType_9879) (Mask@@31 T@PolymorphicMapType_9900) (o_17@@5 T@Ref) (f_25@@36 T@Field_6148_9953) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_6148_9953 Mask@@31 o_17@@5 f_25@@36) (= (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@16) o_17@@5 f_25@@36) (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap@@14) o_17@@5 f_25@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| ExhaleHeap@@14) o_17@@5 f_25@@36))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9879) (ExhaleHeap@@15 T@PolymorphicMapType_9879) (Mask@@32 T@PolymorphicMapType_9900) (o_17@@6 T@Ref) (f_25@@37 T@Field_6148_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_6148_53 Mask@@32 o_17@@6 f_25@@37) (= (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@17) o_17@@6 f_25@@37) (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap@@15) o_17@@6 f_25@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| ExhaleHeap@@15) o_17@@6 f_25@@37))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9879) (ExhaleHeap@@16 T@PolymorphicMapType_9879) (Mask@@33 T@PolymorphicMapType_9900) (o_17@@7 T@Ref) (f_25@@38 T@Field_16180_16181) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_6148_6149 Mask@@33 o_17@@7 f_25@@38) (= (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@18) o_17@@7 f_25@@38) (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap@@16) o_17@@7 f_25@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| ExhaleHeap@@16) o_17@@7 f_25@@38))
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
(assert (forall ((nodes@@3 (Array T@Ref Bool)) ) (! (= (getPredWandId_6148_6149 (Valid nodes@@3)) 0)
 :qid |stdinbpl.417:15|
 :skolemid |84|
 :pattern ( (Valid nodes@@3))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9879) (o_16 T@Ref) (f_2 T@Field_16194_16199) (v T@PolymorphicMapType_10428) ) (! (succHeap Heap@@19 (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@19) (store (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@19) o_16 f_2 v) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@19) (store (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@19) o_16 f_2 v) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@19) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9879) (o_16@@0 T@Ref) (f_2@@0 T@Field_16180_16181) (v@@0 T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@20) (store (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@20) o_16@@0 f_2@@0 v@@0) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@20) (store (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@20) o_16@@0 f_2@@0 v@@0) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@20) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9879) (o_16@@1 T@Ref) (f_2@@1 T@Field_6148_9953) (v@@1 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@21) (store (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@21) o_16@@1 f_2@@1 v@@1) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@21) (store (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@21) o_16@@1 f_2@@1 v@@1) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@21) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9879) (o_16@@2 T@Ref) (f_2@@2 T@Field_6148_53) (v@@2 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@22) (store (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@22) o_16@@2 f_2@@2 v@@2) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@22) (store (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@22) o_16@@2 f_2@@2 v@@2) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@22) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9879) (o_16@@3 T@Ref) (f_2@@3 T@Field_9939_16199) (v@@3 T@PolymorphicMapType_10428) ) (! (succHeap Heap@@23 (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@23) (store (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@23) o_16@@3 f_2@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@23) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@23) (store (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@23) o_16@@3 f_2@@3 v@@3)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9879) (o_16@@4 T@Ref) (f_2@@4 T@Field_9939_6149) (v@@4 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@24) (store (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@24) o_16@@4 f_2@@4 v@@4) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@24) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@24) (store (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@24) o_16@@4 f_2@@4 v@@4) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9879) (o_16@@5 T@Ref) (f_2@@5 T@Field_9952_9953) (v@@5 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@25) (store (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@25) o_16@@5 f_2@@5 v@@5) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9879 (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@25) (store (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@25) o_16@@5 f_2@@5 v@@5) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@25) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9879) (o_16@@6 T@Ref) (f_2@@6 T@Field_9939_53) (v@@6 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_9879 (store (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@26) o_16@@6 f_2@@6 v@@6) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9879 (store (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@26) o_16@@6 f_2@@6 v@@6) (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_6148_6149#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_6154_22057#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_6148_53#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_6148_9953#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_9939_6149#PolymorphicMapType_9879| Heap@@26) (|PolymorphicMapType_9879_9939_28618#PolymorphicMapType_9879| Heap@@26)))
)))
(assert (forall ((nodes@@4 (Array T@Ref Bool)) ) (! (= (PredicateMaskField_6148 (Valid nodes@@4)) (|Valid#sm| nodes@@4))
 :qid |stdinbpl.409:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_6148 (Valid nodes@@4)))
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
(assert (forall ((Heap2Heap T@PolymorphicMapType_9879) (Heap1Heap T@PolymorphicMapType_9879) (nodes@@5 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select nodes@@5 (|sk_Valid#condqp1| (|Valid#condqp1| Heap2Heap nodes@@5) (|Valid#condqp1| Heap1Heap nodes@@5))) (< NoPerm FullPerm))  (and (select nodes@@5 (|sk_Valid#condqp1| (|Valid#condqp1| Heap2Heap nodes@@5) (|Valid#condqp1| Heap1Heap nodes@@5))) (< NoPerm FullPerm))) (=> (and (select nodes@@5 (|sk_Valid#condqp1| (|Valid#condqp1| Heap2Heap nodes@@5) (|Valid#condqp1| Heap1Heap nodes@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap2Heap) (|sk_Valid#condqp1| (|Valid#condqp1| Heap2Heap nodes@@5) (|Valid#condqp1| Heap1Heap nodes@@5)) next) (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap1Heap) (|sk_Valid#condqp1| (|Valid#condqp1| Heap2Heap nodes@@5) (|Valid#condqp1| Heap1Heap nodes@@5)) next)))) (= (|Valid#condqp1| Heap2Heap nodes@@5) (|Valid#condqp1| Heap1Heap nodes@@5)))
 :qid |stdinbpl.443:15|
 :skolemid |88|
 :pattern ( (|Valid#condqp1| Heap2Heap nodes@@5) (|Valid#condqp1| Heap1Heap nodes@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((o_16@@7 T@Ref) (f_10 T@Field_9952_9953) (Heap@@27 T@PolymorphicMapType_9879) ) (!  (=> (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@27) o_16@@7 $allocated) (select (|PolymorphicMapType_9879_5833_53#PolymorphicMapType_9879| Heap@@27) (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@27) o_16@@7 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9879_5836_5837#PolymorphicMapType_9879| Heap@@27) o_16@@7 f_10))
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
(declare-fun nodes@@6 () (Array T@Ref Bool))
(declare-fun Heap@@28 () T@PolymorphicMapType_9879)
(set-info :boogie-vc-id |Valid#definedness|)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((n_2 T@Ref) (n_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2 n_2_1)) (select nodes@@6 n_2)) (select nodes@@6 n_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_2 n_2_1)))
 :qid |stdinbpl.466:15|
 :skolemid |89|
)))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@28 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 4) 1) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
