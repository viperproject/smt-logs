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
(declare-sort T@Field_7640_53 0)
(declare-sort T@Field_7653_7654 0)
(declare-sort T@Field_13824_13826 0)
(declare-sort T@Field_13888_3275 0)
(declare-sort T@Field_4707_20398 0)
(declare-sort T@Field_4707_20265 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7601 0)) (((PolymorphicMapType_7601 (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| (Array T@Ref T@Field_13824_13826 Real)) (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| (Array T@Ref T@Field_13888_3275 Real)) (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| (Array T@Ref T@Field_7640_53 Real)) (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| (Array T@Ref T@Field_7653_7654 Real)) (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| (Array T@Ref T@Field_4707_20265 Real)) (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| (Array T@Ref T@Field_4707_20398 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8129 0)) (((PolymorphicMapType_8129 (|PolymorphicMapType_8129_7640_53#PolymorphicMapType_8129| (Array T@Ref T@Field_7640_53 Bool)) (|PolymorphicMapType_8129_7640_7654#PolymorphicMapType_8129| (Array T@Ref T@Field_7653_7654 Bool)) (|PolymorphicMapType_8129_7640_21157#PolymorphicMapType_8129| (Array T@Ref T@Field_13824_13826 Bool)) (|PolymorphicMapType_8129_7640_3275#PolymorphicMapType_8129| (Array T@Ref T@Field_13888_3275 Bool)) (|PolymorphicMapType_8129_7640_20265#PolymorphicMapType_8129| (Array T@Ref T@Field_4707_20265 Bool)) (|PolymorphicMapType_8129_7640_21794#PolymorphicMapType_8129| (Array T@Ref T@Field_4707_20398 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7580 0)) (((PolymorphicMapType_7580 (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| (Array T@Ref T@Field_7640_53 Bool)) (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| (Array T@Ref T@Field_7653_7654 T@Ref)) (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| (Array T@Ref T@Field_13824_13826 (Array T@Ref Bool))) (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| (Array T@Ref T@Field_13888_3275 Int)) (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| (Array T@Ref T@Field_4707_20398 T@PolymorphicMapType_8129)) (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| (Array T@Ref T@Field_4707_20265 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7640_53)
(declare-fun nodes () T@Field_13824_13826)
(declare-fun f_7 () T@Field_13888_3275)
(declare-fun succHeap (T@PolymorphicMapType_7580 T@PolymorphicMapType_7580) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7580 T@PolymorphicMapType_7580) Bool)
(declare-fun state (T@PolymorphicMapType_7580 T@PolymorphicMapType_7601) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7601) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8129)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_4741| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_4741| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_4741| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_4741| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7580 T@PolymorphicMapType_7580 T@PolymorphicMapType_7601) Bool)
(declare-fun IsPredicateField_4707_20356 (T@Field_4707_20265) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4707 (T@Field_4707_20265) T@Field_4707_20398)
(declare-fun HasDirectPerm_4707_20329 (T@PolymorphicMapType_7601 T@Ref T@Field_4707_20265) Bool)
(declare-fun IsWandField_4707_22321 (T@Field_4707_20265) Bool)
(declare-fun WandMaskField_4707 (T@Field_4707_20265) T@Field_4707_20398)
(declare-fun dummyHeap () T@PolymorphicMapType_7580)
(declare-fun ZeroMask () T@PolymorphicMapType_7601)
(declare-fun InsidePredicate_7640_7640 (T@Field_4707_20265 T@FrameType T@Field_4707_20265 T@FrameType) Bool)
(declare-fun IsPredicateField_4707_13850 (T@Field_13824_13826) Bool)
(declare-fun IsWandField_4707_13877 (T@Field_13824_13826) Bool)
(declare-fun IsPredicateField_4712_3275 (T@Field_13888_3275) Bool)
(declare-fun IsWandField_4712_3275 (T@Field_13888_3275) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4707_26480 (T@Field_4707_20398) Bool)
(declare-fun IsWandField_4707_26496 (T@Field_4707_20398) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4707_7654 (T@Field_7653_7654) Bool)
(declare-fun IsWandField_4707_7654 (T@Field_7653_7654) Bool)
(declare-fun IsPredicateField_4707_53 (T@Field_7640_53) Bool)
(declare-fun IsWandField_4707_53 (T@Field_7640_53) Bool)
(declare-fun |Set#Equal_4708| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun HasDirectPerm_4707_27020 (T@PolymorphicMapType_7601 T@Ref T@Field_4707_20398) Bool)
(declare-fun HasDirectPerm_4707_3275 (T@PolymorphicMapType_7601 T@Ref T@Field_13888_3275) Bool)
(declare-fun HasDirectPerm_4707_7654 (T@PolymorphicMapType_7601 T@Ref T@Field_7653_7654) Bool)
(declare-fun HasDirectPerm_4707_53 (T@PolymorphicMapType_7601 T@Ref T@Field_7640_53) Bool)
(declare-fun HasDirectPerm_4707_14360 (T@PolymorphicMapType_7601 T@Ref T@Field_13824_13826) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7601 T@PolymorphicMapType_7601 T@PolymorphicMapType_7601) Bool)
(declare-fun |Set#Difference_4741| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_4741| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Empty_4741| () (Array T@Ref Bool))
(assert (forall ((Heap0 T@PolymorphicMapType_7580) (Heap1 T@PolymorphicMapType_7580) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7580) (Mask T@PolymorphicMapType_7601) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7580) (Heap1@@0 T@PolymorphicMapType_7580) (Heap2 T@PolymorphicMapType_7580) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4707_20398) ) (!  (not (select (|PolymorphicMapType_8129_7640_21794#PolymorphicMapType_8129| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8129_7640_21794#PolymorphicMapType_8129| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4707_20265) ) (!  (not (select (|PolymorphicMapType_8129_7640_20265#PolymorphicMapType_8129| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8129_7640_20265#PolymorphicMapType_8129| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13888_3275) ) (!  (not (select (|PolymorphicMapType_8129_7640_3275#PolymorphicMapType_8129| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8129_7640_3275#PolymorphicMapType_8129| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_13824_13826) ) (!  (not (select (|PolymorphicMapType_8129_7640_21157#PolymorphicMapType_8129| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8129_7640_21157#PolymorphicMapType_8129| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7653_7654) ) (!  (not (select (|PolymorphicMapType_8129_7640_7654#PolymorphicMapType_8129| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8129_7640_7654#PolymorphicMapType_8129| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_7640_53) ) (!  (not (select (|PolymorphicMapType_8129_7640_53#PolymorphicMapType_8129| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8129_7640_53#PolymorphicMapType_8129| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.294:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_4741| (|Set#Union_4741| a@@0 b@@0) b@@0) (|Set#Union_4741| a@@0 b@@0))
 :qid |stdinbpl.246:18|
 :skolemid |38|
 :pattern ( (|Set#Union_4741| (|Set#Union_4741| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_4741| (|Set#Intersection_4741| a@@1 b@@1) b@@1) (|Set#Intersection_4741| a@@1 b@@1))
 :qid |stdinbpl.250:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_4741| (|Set#Intersection_4741| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_4741| r) o) (= r o))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_4741| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_4741| (|Set#Union_4741| a@@2 b@@2)) (|Set#Card_4741| (|Set#Intersection_4741| a@@2 b@@2))) (+ (|Set#Card_4741| a@@2) (|Set#Card_4741| b@@2)))
 :qid |stdinbpl.254:18|
 :skolemid |42|
 :pattern ( (|Set#Card_4741| (|Set#Union_4741| a@@2 b@@2)))
 :pattern ( (|Set#Card_4741| (|Set#Intersection_4741| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.297:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7580) (ExhaleHeap T@PolymorphicMapType_7580) (Mask@@0 T@PolymorphicMapType_7601) (pm_f_5 T@Field_4707_20265) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4707_20329 Mask@@0 null pm_f_5) (IsPredicateField_4707_20356 pm_f_5)) (= (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@0) null (PredicateMaskField_4707 pm_f_5)) (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| ExhaleHeap) null (PredicateMaskField_4707 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4707_20356 pm_f_5) (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| ExhaleHeap) null (PredicateMaskField_4707 pm_f_5)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7580) (ExhaleHeap@@0 T@PolymorphicMapType_7580) (Mask@@1 T@PolymorphicMapType_7601) (pm_f_5@@0 T@Field_4707_20265) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4707_20329 Mask@@1 null pm_f_5@@0) (IsWandField_4707_22321 pm_f_5@@0)) (= (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@1) null (WandMaskField_4707 pm_f_5@@0)) (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| ExhaleHeap@@0) null (WandMaskField_4707 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_4707_22321 pm_f_5@@0) (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| ExhaleHeap@@0) null (WandMaskField_4707 pm_f_5@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7580) (ExhaleHeap@@1 T@PolymorphicMapType_7580) (Mask@@2 T@PolymorphicMapType_7601) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@2) o_12 $allocated) (select (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| ExhaleHeap@@1) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| ExhaleHeap@@1) o_12 $allocated))
)))
(assert (forall ((p T@Field_4707_20265) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7640_7640 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7640_7640 p v_1 p w))
)))
(assert  (not (IsPredicateField_4707_13850 nodes)))
(assert  (not (IsWandField_4707_13877 nodes)))
(assert  (not (IsPredicateField_4712_3275 f_7)))
(assert  (not (IsWandField_4712_3275 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7580) (ExhaleHeap@@2 T@PolymorphicMapType_7580) (Mask@@3 T@PolymorphicMapType_7601) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_7601) (o_2@@5 T@Ref) (f_4@@5 T@Field_4707_20398) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4707_26480 f_4@@5))) (not (IsWandField_4707_26496 f_4@@5))) (<= (select (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_7601) (o_2@@6 T@Ref) (f_4@@6 T@Field_4707_20265) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_4707_20356 f_4@@6))) (not (IsWandField_4707_22321 f_4@@6))) (<= (select (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_7601) (o_2@@7 T@Ref) (f_4@@7 T@Field_7653_7654) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4707_7654 f_4@@7))) (not (IsWandField_4707_7654 f_4@@7))) (<= (select (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7601) (o_2@@8 T@Ref) (f_4@@8 T@Field_7640_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4707_53 f_4@@8))) (not (IsWandField_4707_53 f_4@@8))) (<= (select (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7601) (o_2@@9 T@Ref) (f_4@@9 T@Field_13888_3275) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4712_3275 f_4@@9))) (not (IsWandField_4712_3275 f_4@@9))) (<= (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7601) (o_2@@10 T@Ref) (f_4@@10 T@Field_13824_13826) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4707_13850 f_4@@10))) (not (IsWandField_4707_13877 f_4@@10))) (<= (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) ) (! (= (|Set#Equal_4708| a@@4 b@@3) (forall ((o@@0 T@Ref) ) (! (= (select a@@4 o@@0) (select b@@3 o@@0))
 :qid |stdinbpl.279:31|
 :skolemid |48|
 :pattern ( (select a@@4 o@@0))
 :pattern ( (select b@@3 o@@0))
)))
 :qid |stdinbpl.278:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_4708| a@@4 b@@3))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7601) (o_2@@11 T@Ref) (f_4@@11 T@Field_4707_20398) ) (! (= (HasDirectPerm_4707_27020 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4707_27020 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7601) (o_2@@12 T@Ref) (f_4@@12 T@Field_4707_20265) ) (! (= (HasDirectPerm_4707_20329 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4707_20329 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7601) (o_2@@13 T@Ref) (f_4@@13 T@Field_13888_3275) ) (! (= (HasDirectPerm_4707_3275 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4707_3275 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7601) (o_2@@14 T@Ref) (f_4@@14 T@Field_7653_7654) ) (! (= (HasDirectPerm_4707_7654 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4707_7654 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7601) (o_2@@15 T@Ref) (f_4@@15 T@Field_7640_53) ) (! (= (HasDirectPerm_4707_53 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4707_53 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7601) (o_2@@16 T@Ref) (f_4@@16 T@Field_13824_13826) ) (! (= (HasDirectPerm_4707_14360 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4707_14360 Mask@@15 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7580) (ExhaleHeap@@3 T@PolymorphicMapType_7580) (Mask@@16 T@PolymorphicMapType_7601) (o_12@@0 T@Ref) (f_16 T@Field_4707_20398) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_4707_27020 Mask@@16 o_12@@0 f_16) (= (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@4) o_12@@0 f_16) (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| ExhaleHeap@@3) o_12@@0 f_16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| ExhaleHeap@@3) o_12@@0 f_16))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7580) (ExhaleHeap@@4 T@PolymorphicMapType_7580) (Mask@@17 T@PolymorphicMapType_7601) (o_12@@1 T@Ref) (f_16@@0 T@Field_4707_20265) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_4707_20329 Mask@@17 o_12@@1 f_16@@0) (= (select (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| Heap@@5) o_12@@1 f_16@@0) (select (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| ExhaleHeap@@4) o_12@@1 f_16@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| ExhaleHeap@@4) o_12@@1 f_16@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7580) (ExhaleHeap@@5 T@PolymorphicMapType_7580) (Mask@@18 T@PolymorphicMapType_7601) (o_12@@2 T@Ref) (f_16@@1 T@Field_13888_3275) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_4707_3275 Mask@@18 o_12@@2 f_16@@1) (= (select (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@@6) o_12@@2 f_16@@1) (select (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| ExhaleHeap@@5) o_12@@2 f_16@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| ExhaleHeap@@5) o_12@@2 f_16@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7580) (ExhaleHeap@@6 T@PolymorphicMapType_7580) (Mask@@19 T@PolymorphicMapType_7601) (o_12@@3 T@Ref) (f_16@@2 T@Field_7653_7654) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_4707_7654 Mask@@19 o_12@@3 f_16@@2) (= (select (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| Heap@@7) o_12@@3 f_16@@2) (select (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| ExhaleHeap@@6) o_12@@3 f_16@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| ExhaleHeap@@6) o_12@@3 f_16@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7580) (ExhaleHeap@@7 T@PolymorphicMapType_7580) (Mask@@20 T@PolymorphicMapType_7601) (o_12@@4 T@Ref) (f_16@@3 T@Field_7640_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_4707_53 Mask@@20 o_12@@4 f_16@@3) (= (select (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@8) o_12@@4 f_16@@3) (select (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| ExhaleHeap@@7) o_12@@4 f_16@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| ExhaleHeap@@7) o_12@@4 f_16@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7580) (ExhaleHeap@@8 T@PolymorphicMapType_7580) (Mask@@21 T@PolymorphicMapType_7601) (o_12@@5 T@Ref) (f_16@@4 T@Field_13824_13826) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_4707_14360 Mask@@21 o_12@@5 f_16@@4) (= (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@9) o_12@@5 f_16@@4) (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| ExhaleHeap@@8) o_12@@5 f_16@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| ExhaleHeap@@8) o_12@@5 f_16@@4))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_4707_20398) ) (! (= (select (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_4707_20265) ) (! (= (select (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_7653_7654) ) (! (= (select (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_7640_53) ) (! (= (select (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_13888_3275) ) (! (= (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_13824_13826) ) (! (= (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7601) (SummandMask1 T@PolymorphicMapType_7601) (SummandMask2 T@PolymorphicMapType_7601) (o_2@@23 T@Ref) (f_4@@23 T@Field_4707_20398) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7601) (SummandMask1@@0 T@PolymorphicMapType_7601) (SummandMask2@@0 T@PolymorphicMapType_7601) (o_2@@24 T@Ref) (f_4@@24 T@Field_4707_20265) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7601) (SummandMask1@@1 T@PolymorphicMapType_7601) (SummandMask2@@1 T@PolymorphicMapType_7601) (o_2@@25 T@Ref) (f_4@@25 T@Field_7653_7654) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7601) (SummandMask1@@2 T@PolymorphicMapType_7601) (SummandMask2@@2 T@PolymorphicMapType_7601) (o_2@@26 T@Ref) (f_4@@26 T@Field_7640_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7601) (SummandMask1@@3 T@PolymorphicMapType_7601) (SummandMask2@@3 T@PolymorphicMapType_7601) (o_2@@27 T@Ref) (f_4@@27 T@Field_13888_3275) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7601) (SummandMask1@@4 T@PolymorphicMapType_7601) (SummandMask2@@4 T@PolymorphicMapType_7601) (o_2@@28 T@Ref) (f_4@@28 T@Field_13824_13826) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Intersection_4741| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (select b@@4 o@@1)))
 :qid |stdinbpl.243:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_4741| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Intersection_4741| a@@5 b@@4) (select a@@5 o@@1))
 :pattern ( (|Set#Intersection_4741| a@@5 b@@4) (select b@@4 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (o@@2 T@Ref) ) (! (= (select (|Set#Difference_4741| a@@6 b@@5) o@@2)  (and (select a@@6 o@@2) (not (select b@@5 o@@2))))
 :qid |stdinbpl.258:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_4741| a@@6 b@@5) o@@2))
 :pattern ( (|Set#Difference_4741| a@@6 b@@5) (select a@@6 o@@2))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_4708| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.280:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_4708| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@8 y) (select (|Set#UnionOne_4741| a@@8 x) y))
 :qid |stdinbpl.223:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_4741| a@@8 x) (select a@@8 y))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@9 y@@0) (select (|Set#Union_4741| a@@9 b@@7) y@@0))
 :qid |stdinbpl.233:18|
 :skolemid |35|
 :pattern ( (|Set#Union_4741| a@@9 b@@7) (select a@@9 y@@0))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@8 y@@1) (select (|Set#Union_4741| a@@10 b@@8) y@@1))
 :qid |stdinbpl.235:18|
 :skolemid |36|
 :pattern ( (|Set#Union_4741| a@@10 b@@8) (select b@@8 y@@1))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@3 T@Ref) ) (! (= (select (|Set#UnionOne_4741| a@@11 x@@0) o@@3)  (or (= o@@3 x@@0) (select a@@11 o@@3)))
 :qid |stdinbpl.219:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_4741| a@@11 x@@0) o@@3))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@9 y@@2) (not (select (|Set#Difference_4741| a@@12 b@@9) y@@2)))
 :qid |stdinbpl.260:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_4741| a@@12 b@@9) (select b@@9 y@@2))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_4741| (|Set#Difference_4741| a@@13 b@@10)) (|Set#Card_4741| (|Set#Difference_4741| b@@10 a@@13))) (|Set#Card_4741| (|Set#Intersection_4741| a@@13 b@@10))) (|Set#Card_4741| (|Set#Union_4741| a@@13 b@@10))) (= (|Set#Card_4741| (|Set#Difference_4741| a@@13 b@@10)) (- (|Set#Card_4741| a@@13) (|Set#Card_4741| (|Set#Intersection_4741| a@@13 b@@10)))))
 :qid |stdinbpl.262:18|
 :skolemid |45|
 :pattern ( (|Set#Card_4741| (|Set#Difference_4741| a@@13 b@@10)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_4741| s))
 :qid |stdinbpl.205:18|
 :skolemid |22|
 :pattern ( (|Set#Card_4741| s))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7580) (ExhaleHeap@@9 T@PolymorphicMapType_7580) (Mask@@22 T@PolymorphicMapType_7601) (pm_f_5@@1 T@Field_4707_20265) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_4707_20329 Mask@@22 null pm_f_5@@1) (IsPredicateField_4707_20356 pm_f_5@@1)) (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16@@5 T@Field_7640_53) ) (!  (=> (select (|PolymorphicMapType_8129_7640_53#PolymorphicMapType_8129| (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@10) null (PredicateMaskField_4707 pm_f_5@@1))) o2_5 f_16@@5) (= (select (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@10) o2_5 f_16@@5) (select (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| ExhaleHeap@@9) o2_5 f_16@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| ExhaleHeap@@9) o2_5 f_16@@5))
)) (forall ((o2_5@@0 T@Ref) (f_16@@6 T@Field_7653_7654) ) (!  (=> (select (|PolymorphicMapType_8129_7640_7654#PolymorphicMapType_8129| (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@10) null (PredicateMaskField_4707 pm_f_5@@1))) o2_5@@0 f_16@@6) (= (select (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| Heap@@10) o2_5@@0 f_16@@6) (select (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| ExhaleHeap@@9) o2_5@@0 f_16@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| ExhaleHeap@@9) o2_5@@0 f_16@@6))
))) (forall ((o2_5@@1 T@Ref) (f_16@@7 T@Field_13824_13826) ) (!  (=> (select (|PolymorphicMapType_8129_7640_21157#PolymorphicMapType_8129| (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@10) null (PredicateMaskField_4707 pm_f_5@@1))) o2_5@@1 f_16@@7) (= (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@10) o2_5@@1 f_16@@7) (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| ExhaleHeap@@9) o2_5@@1 f_16@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| ExhaleHeap@@9) o2_5@@1 f_16@@7))
))) (forall ((o2_5@@2 T@Ref) (f_16@@8 T@Field_13888_3275) ) (!  (=> (select (|PolymorphicMapType_8129_7640_3275#PolymorphicMapType_8129| (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@10) null (PredicateMaskField_4707 pm_f_5@@1))) o2_5@@2 f_16@@8) (= (select (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@@10) o2_5@@2 f_16@@8) (select (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| ExhaleHeap@@9) o2_5@@2 f_16@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| ExhaleHeap@@9) o2_5@@2 f_16@@8))
))) (forall ((o2_5@@3 T@Ref) (f_16@@9 T@Field_4707_20265) ) (!  (=> (select (|PolymorphicMapType_8129_7640_20265#PolymorphicMapType_8129| (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@10) null (PredicateMaskField_4707 pm_f_5@@1))) o2_5@@3 f_16@@9) (= (select (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| Heap@@10) o2_5@@3 f_16@@9) (select (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| ExhaleHeap@@9) o2_5@@3 f_16@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| ExhaleHeap@@9) o2_5@@3 f_16@@9))
))) (forall ((o2_5@@4 T@Ref) (f_16@@10 T@Field_4707_20398) ) (!  (=> (select (|PolymorphicMapType_8129_7640_21794#PolymorphicMapType_8129| (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@10) null (PredicateMaskField_4707 pm_f_5@@1))) o2_5@@4 f_16@@10) (= (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@10) o2_5@@4 f_16@@10) (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| ExhaleHeap@@9) o2_5@@4 f_16@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| ExhaleHeap@@9) o2_5@@4 f_16@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_4707_20356 pm_f_5@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7580) (ExhaleHeap@@10 T@PolymorphicMapType_7580) (Mask@@23 T@PolymorphicMapType_7601) (pm_f_5@@2 T@Field_4707_20265) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_4707_20329 Mask@@23 null pm_f_5@@2) (IsWandField_4707_22321 pm_f_5@@2)) (and (and (and (and (and (forall ((o2_5@@5 T@Ref) (f_16@@11 T@Field_7640_53) ) (!  (=> (select (|PolymorphicMapType_8129_7640_53#PolymorphicMapType_8129| (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@11) null (WandMaskField_4707 pm_f_5@@2))) o2_5@@5 f_16@@11) (= (select (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@11) o2_5@@5 f_16@@11) (select (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| ExhaleHeap@@10) o2_5@@5 f_16@@11)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| ExhaleHeap@@10) o2_5@@5 f_16@@11))
)) (forall ((o2_5@@6 T@Ref) (f_16@@12 T@Field_7653_7654) ) (!  (=> (select (|PolymorphicMapType_8129_7640_7654#PolymorphicMapType_8129| (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@11) null (WandMaskField_4707 pm_f_5@@2))) o2_5@@6 f_16@@12) (= (select (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| Heap@@11) o2_5@@6 f_16@@12) (select (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| ExhaleHeap@@10) o2_5@@6 f_16@@12)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| ExhaleHeap@@10) o2_5@@6 f_16@@12))
))) (forall ((o2_5@@7 T@Ref) (f_16@@13 T@Field_13824_13826) ) (!  (=> (select (|PolymorphicMapType_8129_7640_21157#PolymorphicMapType_8129| (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@11) null (WandMaskField_4707 pm_f_5@@2))) o2_5@@7 f_16@@13) (= (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@11) o2_5@@7 f_16@@13) (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| ExhaleHeap@@10) o2_5@@7 f_16@@13)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| ExhaleHeap@@10) o2_5@@7 f_16@@13))
))) (forall ((o2_5@@8 T@Ref) (f_16@@14 T@Field_13888_3275) ) (!  (=> (select (|PolymorphicMapType_8129_7640_3275#PolymorphicMapType_8129| (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@11) null (WandMaskField_4707 pm_f_5@@2))) o2_5@@8 f_16@@14) (= (select (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@@11) o2_5@@8 f_16@@14) (select (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| ExhaleHeap@@10) o2_5@@8 f_16@@14)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| ExhaleHeap@@10) o2_5@@8 f_16@@14))
))) (forall ((o2_5@@9 T@Ref) (f_16@@15 T@Field_4707_20265) ) (!  (=> (select (|PolymorphicMapType_8129_7640_20265#PolymorphicMapType_8129| (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@11) null (WandMaskField_4707 pm_f_5@@2))) o2_5@@9 f_16@@15) (= (select (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| Heap@@11) o2_5@@9 f_16@@15) (select (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| ExhaleHeap@@10) o2_5@@9 f_16@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| ExhaleHeap@@10) o2_5@@9 f_16@@15))
))) (forall ((o2_5@@10 T@Ref) (f_16@@16 T@Field_4707_20398) ) (!  (=> (select (|PolymorphicMapType_8129_7640_21794#PolymorphicMapType_8129| (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@11) null (WandMaskField_4707 pm_f_5@@2))) o2_5@@10 f_16@@16) (= (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@11) o2_5@@10 f_16@@16) (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| ExhaleHeap@@10) o2_5@@10 f_16@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| ExhaleHeap@@10) o2_5@@10 f_16@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_4707_22321 pm_f_5@@2))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_4741| a@@14 x@@1) x@@1)
 :qid |stdinbpl.221:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_4741| a@@14 x@@1))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@15 x@@2) (= (|Set#Card_4741| (|Set#UnionOne_4741| a@@15 x@@2)) (|Set#Card_4741| a@@15)))
 :qid |stdinbpl.225:18|
 :skolemid |32|
 :pattern ( (|Set#Card_4741| (|Set#UnionOne_4741| a@@15 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_4741| (|Set#Singleton_4741| r@@0)) 1)
 :qid |stdinbpl.216:18|
 :skolemid |28|
 :pattern ( (|Set#Card_4741| (|Set#Singleton_4741| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_4741| r@@1) r@@1)
 :qid |stdinbpl.214:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_4741| r@@1))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) ) (! (= (|Set#Union_4741| a@@16 (|Set#Union_4741| a@@16 b@@11)) (|Set#Union_4741| a@@16 b@@11))
 :qid |stdinbpl.248:18|
 :skolemid |39|
 :pattern ( (|Set#Union_4741| a@@16 (|Set#Union_4741| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_4741| a@@17 (|Set#Intersection_4741| a@@17 b@@12)) (|Set#Intersection_4741| a@@17 b@@12))
 :qid |stdinbpl.252:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_4741| a@@17 (|Set#Intersection_4741| a@@17 b@@12)))
)))
(assert (forall ((o@@4 T@Ref) ) (!  (not (select |Set#Empty_4741| o@@4))
 :qid |stdinbpl.208:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_4741| o@@4))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7580) (o_11 T@Ref) (f_17 T@Field_4707_20265) (v T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_7580 (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@12) (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| Heap@@12) (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@12) (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@@12) (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@12) (store (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| Heap@@12) o_11 f_17 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7580 (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@12) (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| Heap@@12) (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@12) (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@@12) (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@12) (store (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| Heap@@12) o_11 f_17 v)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7580) (o_11@@0 T@Ref) (f_17@@0 T@Field_4707_20398) (v@@0 T@PolymorphicMapType_8129) ) (! (succHeap Heap@@13 (PolymorphicMapType_7580 (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@13) (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| Heap@@13) (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@13) (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@@13) (store (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@13) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7580 (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@13) (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| Heap@@13) (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@13) (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@@13) (store (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@13) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7580) (o_11@@1 T@Ref) (f_17@@1 T@Field_13888_3275) (v@@1 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_7580 (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@14) (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| Heap@@14) (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@14) (store (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@@14) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@14) (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7580 (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@14) (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| Heap@@14) (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@14) (store (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@@14) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@14) (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7580) (o_11@@2 T@Ref) (f_17@@2 T@Field_13824_13826) (v@@2 (Array T@Ref Bool)) ) (! (succHeap Heap@@15 (PolymorphicMapType_7580 (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@15) (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| Heap@@15) (store (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@15) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@@15) (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@15) (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7580 (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@15) (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| Heap@@15) (store (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@15) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@@15) (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@15) (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7580) (o_11@@3 T@Ref) (f_17@@3 T@Field_7653_7654) (v@@3 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_7580 (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@16) (store (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| Heap@@16) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@16) (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@@16) (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@16) (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7580 (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@16) (store (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| Heap@@16) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@16) (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@@16) (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@16) (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7580) (o_11@@4 T@Ref) (f_17@@4 T@Field_7640_53) (v@@4 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_7580 (store (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@17) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| Heap@@17) (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@17) (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@@17) (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@17) (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7580 (store (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@17) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| Heap@@17) (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@17) (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@@17) (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@17) (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| Heap@@17)))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.292:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.293:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_4741| s@@0) 0) (= s@@0 |Set#Empty_4741|)) (=> (not (= (|Set#Card_4741| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.211:33|
 :skolemid |24|
))))
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Set#Card_4741| s@@0))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@20 x@@4)) (= (|Set#Card_4741| (|Set#UnionOne_4741| a@@20 x@@4)) (+ (|Set#Card_4741| a@@20) 1)))
 :qid |stdinbpl.227:18|
 :skolemid |33|
 :pattern ( (|Set#Card_4741| (|Set#UnionOne_4741| a@@20 x@@4)))
)))
(assert (forall ((o_11@@5 T@Ref) (f_10 T@Field_7653_7654) (Heap@@18 T@PolymorphicMapType_7580) ) (!  (=> (select (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@18) o_11@@5 $allocated) (select (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@18) (select (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| Heap@@18) o_11@@5 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| Heap@@18) o_11@@5 f_10))
)))
(assert (forall ((p@@1 T@Field_4707_20265) (v_1@@0 T@FrameType) (q T@Field_4707_20265) (w@@0 T@FrameType) (r@@2 T@Field_4707_20265) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7640_7640 p@@1 v_1@@0 q w@@0) (InsidePredicate_7640_7640 q w@@0 r@@2 u)) (InsidePredicate_7640_7640 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7640_7640 p@@1 v_1@@0 q w@@0) (InsidePredicate_7640_7640 q w@@0 r@@2 u))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.298:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Union_4741| a@@22 b@@15) o@@5)  (or (select a@@22 o@@5) (select b@@15 o@@5)))
 :qid |stdinbpl.231:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_4741| a@@22 b@@15) o@@5))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_7580)
(declare-fun this () T@Ref)
(declare-fun PostMask@0 () T@PolymorphicMapType_7601)
(declare-fun Mask@1 () T@PolymorphicMapType_7601)
(declare-fun QPMask@0 () T@PolymorphicMapType_7601)
(declare-fun neverTriggered3 (T@Ref) Bool)
(declare-fun Heap@0 () T@PolymorphicMapType_7580)
(declare-fun QPMask@1 () T@PolymorphicMapType_7601)
(declare-fun Heap@@19 () T@PolymorphicMapType_7580)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_7601)
(set-info :boogie-vc-id m)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon11_Else_correct  (=> (= (ControlFlow 0 17) (- 0 16)) (forall ((z_1 T@Ref) (z_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= z_1 z_1_1)) (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| PostHeap@0) this nodes) z_1)) (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| PostHeap@0) this nodes) z_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_1 z_1_1)))
 :qid |stdinbpl.497:15|
 :skolemid |88|
)))))
(let ((anon11_Then_correct  (=> (= (ControlFlow 0 15) (- 0 14)) (HasDirectPerm_4707_14360 PostMask@0 this nodes))))
(let ((anon10_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (and (not (= this null)) (= PostMask@0 (PolymorphicMapType_7601 (store (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| ZeroMask) this nodes (+ (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| ZeroMask) this nodes) FullPerm)) (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| ZeroMask) (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| ZeroMask) (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| ZeroMask) (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| ZeroMask) (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 18) 15) anon11_Then_correct) (=> (= (ControlFlow 0 18) 17) anon11_Else_correct))))))
(let ((anon8_correct  (=> (= Mask@1 (PolymorphicMapType_7601 (store (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| QPMask@0) this nodes (- (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| QPMask@0) this nodes) FullPerm)) (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| QPMask@0) (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| QPMask@0) (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| QPMask@0) (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| QPMask@0) (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| QPMask@0))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall ((z_2 T@Ref) (z_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= z_2 z_2_1)) (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@0) this nodes) z_2)) (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@0) this nodes) z_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_2 z_2_1)))
 :qid |stdinbpl.569:17|
 :skolemid |94|
 :pattern ( (neverTriggered3 z_2) (neverTriggered3 z_2_1))
))) (=> (forall ((z_2@@0 T@Ref) (z_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= z_2@@0 z_2_1@@0)) (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@0) this nodes) z_2@@0)) (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@0) this nodes) z_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_2@@0 z_2_1@@0)))
 :qid |stdinbpl.569:17|
 :skolemid |94|
 :pattern ( (neverTriggered3 z_2@@0) (neverTriggered3 z_2_1@@0))
)) (=> (= (ControlFlow 0 4) (- 0 3)) (forall ((z_2@@1 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@0) this nodes) z_2@@1) (>= (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| Mask@1) z_2@@1 f_7) FullPerm))
 :qid |stdinbpl.576:17|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@0) z_2@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| QPMask@1) z_2@@1 f_7))
 :pattern ( (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@0) this nodes) z_2@@1))
))))))))
(let ((anon12_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 8) 4)) anon8_correct)))
(let ((anon12_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (<= FullPerm (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| QPMask@0) this nodes))) (=> (<= FullPerm (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| QPMask@0) this nodes)) (=> (= (ControlFlow 0 6) 4) anon8_correct))))))
(let ((anon10_Else_correct  (and (=> (= (ControlFlow 0 9) (- 0 13)) (= FullPerm (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| QPMask@0) this nodes))) (=> (= FullPerm (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| QPMask@0) this nodes)) (=> (and (= Heap@0 (PolymorphicMapType_7580 (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@19) (|PolymorphicMapType_7580_4409_4410#PolymorphicMapType_7580| Heap@@19) (store (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@19) this nodes |Set#Empty_4741|) (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@@19) (|PolymorphicMapType_7580_4707_20442#PolymorphicMapType_7580| Heap@@19) (|PolymorphicMapType_7580_7640_20265#PolymorphicMapType_7580| Heap@@19))) (state Heap@0 QPMask@0)) (and (=> (= (ControlFlow 0 9) (- 0 12)) (HasDirectPerm_4707_14360 QPMask@0 this nodes)) (=> (HasDirectPerm_4707_14360 QPMask@0 this nodes) (and (=> (= (ControlFlow 0 9) (- 0 11)) (HasDirectPerm_4707_14360 QPMask@0 this nodes)) (=> (HasDirectPerm_4707_14360 QPMask@0 this nodes) (and (=> (= (ControlFlow 0 9) (- 0 10)) (|Set#Equal_4708| (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@0) this nodes) (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@19) this nodes))) (=> (|Set#Equal_4708| (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@0) this nodes) (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@19) this nodes)) (=> (state Heap@0 QPMask@0) (and (=> (= (ControlFlow 0 9) 6) anon12_Then_correct) (=> (= (ControlFlow 0 9) 8) anon12_Else_correct))))))))))))))
(let ((anon9_Else_correct  (and (=> (= (ControlFlow 0 19) (- 0 20)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@19) this nodes) x_1)) (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@19) this nodes) x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.439:15|
 :skolemid |82|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@19) this nodes) x_1@@0)) (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@19) this nodes) x_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.439:15|
 :skolemid |82|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@19) this nodes) x_1@@1) (< NoPerm FullPerm)) (and (qpRange1 x_1@@1) (= (invRecv1 x_1@@1) x_1@@1)))
 :qid |stdinbpl.445:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@@19) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| QPMask@0) x_1@@1 f_7))
 :pattern ( (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@19) this nodes) x_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@19) this nodes) (invRecv1 o_4)) (< NoPerm FullPerm)) (qpRange1 o_4)) (= (invRecv1 o_4) o_4))
 :qid |stdinbpl.449:22|
 :skolemid |84|
 :pattern ( (invRecv1 o_4))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@19) this nodes) x_1@@2) (not (= x_1@@2 null)))
 :qid |stdinbpl.455:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_7580_4712_3275#PolymorphicMapType_7580| Heap@@19) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| QPMask@0) x_1@@2 f_7))
 :pattern ( (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@19) this nodes) x_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@19) this nodes) (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| Mask@0) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (select (select (|PolymorphicMapType_7580_4707_14472#PolymorphicMapType_7580| Heap@@19) this nodes) (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| Mask@0) o_4@@0 f_7))))
 :qid |stdinbpl.461:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| QPMask@0) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_7640_53) ) (!  (=> true (= (select (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| Mask@0) o_4@@1 f_5) (select (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.465:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| Mask@0) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_7653_7654) ) (!  (=> true (= (select (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| Mask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.465:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| Mask@0) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_13824_13826) ) (!  (=> true (= (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| Mask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.465:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| Mask@0) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_13888_3275) ) (!  (=> (not (= f_5@@2 f_7)) (= (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| Mask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.465:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| Mask@0) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_4707_20265) ) (!  (=> true (= (select (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| Mask@0) o_4@@5 f_5@@3) (select (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.465:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| Mask@0) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| QPMask@0) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_4707_20398) ) (!  (=> true (= (select (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| Mask@0) o_4@@6 f_5@@4) (select (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| QPMask@0) o_4@@6 f_5@@4)))
 :qid |stdinbpl.465:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| Mask@0) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| QPMask@0) o_4@@6 f_5@@4))
))) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (=> (= (ControlFlow 0 19) 18) anon10_Then_correct) (=> (= (ControlFlow 0 19) 9) anon10_Else_correct))))))))
(let ((anon9_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_4707_14360 Mask@0 this nodes))))
(let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_7580_4406_53#PolymorphicMapType_7580| Heap@@19) this $allocated)) (=> (and (and (not (= this null)) (= Mask@0 (PolymorphicMapType_7601 (store (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| ZeroMask) this nodes (+ (select (|PolymorphicMapType_7601_4707_14203#PolymorphicMapType_7601| ZeroMask) this nodes) FullPerm)) (|PolymorphicMapType_7601_4712_3275#PolymorphicMapType_7601| ZeroMask) (|PolymorphicMapType_7601_4707_53#PolymorphicMapType_7601| ZeroMask) (|PolymorphicMapType_7601_4707_7654#PolymorphicMapType_7601| ZeroMask) (|PolymorphicMapType_7601_4707_20265#PolymorphicMapType_7601| ZeroMask) (|PolymorphicMapType_7601_4707_25124#PolymorphicMapType_7601| ZeroMask)))) (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0))) (and (=> (= (ControlFlow 0 21) 2) anon9_Then_correct) (=> (= (ControlFlow 0 21) 19) anon9_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 22) 21) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 9) (- 10))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
