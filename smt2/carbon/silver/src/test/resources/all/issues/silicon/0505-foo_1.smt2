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
(declare-sort T@Field_8382_53 0)
(declare-sort T@Field_8395_8396 0)
(declare-sort T@Field_14616_3298 0)
(declare-sort T@Field_5251_22318 0)
(declare-sort T@Field_5251_22185 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8343 0)) (((PolymorphicMapType_8343 (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| (Array T@Ref T@Field_8395_8396 Real)) (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| (Array T@Ref T@Field_14616_3298 Real)) (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| (Array T@Ref T@Field_8382_53 Real)) (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| (Array T@Ref T@Field_5251_22185 Real)) (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| (Array T@Ref T@Field_5251_22318 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8871 0)) (((PolymorphicMapType_8871 (|PolymorphicMapType_8871_8382_53#PolymorphicMapType_8871| (Array T@Ref T@Field_8382_53 Bool)) (|PolymorphicMapType_8871_8382_8396#PolymorphicMapType_8871| (Array T@Ref T@Field_8395_8396 Bool)) (|PolymorphicMapType_8871_8382_3298#PolymorphicMapType_8871| (Array T@Ref T@Field_14616_3298 Bool)) (|PolymorphicMapType_8871_8382_22185#PolymorphicMapType_8871| (Array T@Ref T@Field_5251_22185 Bool)) (|PolymorphicMapType_8871_8382_23496#PolymorphicMapType_8871| (Array T@Ref T@Field_5251_22318 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8322 0)) (((PolymorphicMapType_8322 (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| (Array T@Ref T@Field_8382_53 Bool)) (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| (Array T@Ref T@Field_8395_8396 T@Ref)) (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| (Array T@Ref T@Field_14616_3298 Int)) (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| (Array T@Ref T@Field_5251_22318 T@PolymorphicMapType_8871)) (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| (Array T@Ref T@Field_5251_22185 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_8382_53)
(declare-fun f_7 () T@Field_8395_8396)
(declare-fun g () T@Field_14616_3298)
(declare-fun succHeap (T@PolymorphicMapType_8322 T@PolymorphicMapType_8322) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8322 T@PolymorphicMapType_8322) Bool)
(declare-fun state (T@PolymorphicMapType_8322 T@PolymorphicMapType_8343) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8343) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8871)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_5261| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_5260| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_5260| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_5260| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8322 T@PolymorphicMapType_8322 T@PolymorphicMapType_8343) Bool)
(declare-fun IsPredicateField_5251_22276 (T@Field_5251_22185) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5251 (T@Field_5251_22185) T@Field_5251_22318)
(declare-fun HasDirectPerm_5251_22249 (T@PolymorphicMapType_8343 T@Ref T@Field_5251_22185) Bool)
(declare-fun IsWandField_5251_24023 (T@Field_5251_22185) Bool)
(declare-fun WandMaskField_5251 (T@Field_5251_22185) T@Field_5251_22318)
(declare-fun dummyHeap () T@PolymorphicMapType_8322)
(declare-fun ZeroMask () T@PolymorphicMapType_8343)
(declare-fun InsidePredicate_8382_8382 (T@Field_5251_22185 T@FrameType T@Field_5251_22185 T@FrameType) Bool)
(declare-fun IsPredicateField_5251_5252 (T@Field_8395_8396) Bool)
(declare-fun IsWandField_5251_5252 (T@Field_8395_8396) Bool)
(declare-fun IsPredicateField_5254_3298 (T@Field_14616_3298) Bool)
(declare-fun IsWandField_5254_3298 (T@Field_14616_3298) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5251_27540 (T@Field_5251_22318) Bool)
(declare-fun IsWandField_5251_27556 (T@Field_5251_22318) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5251_53 (T@Field_8382_53) Bool)
(declare-fun IsWandField_5251_53 (T@Field_8382_53) Bool)
(declare-fun HasDirectPerm_5251_27994 (T@PolymorphicMapType_8343 T@Ref T@Field_5251_22318) Bool)
(declare-fun HasDirectPerm_5251_3298 (T@PolymorphicMapType_8343 T@Ref T@Field_14616_3298) Bool)
(declare-fun HasDirectPerm_5251_53 (T@PolymorphicMapType_8343 T@Ref T@Field_8382_53) Bool)
(declare-fun HasDirectPerm_5251_5252 (T@PolymorphicMapType_8343 T@Ref T@Field_8395_8396) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8343 T@PolymorphicMapType_8343 T@PolymorphicMapType_8343) Bool)
(declare-fun |Set#Difference_5260| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_5260| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Empty_5260| () (Array T@Ref Bool))
(assert (forall ((Heap0 T@PolymorphicMapType_8322) (Heap1 T@PolymorphicMapType_8322) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8322) (Mask T@PolymorphicMapType_8343) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8322) (Heap1@@0 T@PolymorphicMapType_8322) (Heap2 T@PolymorphicMapType_8322) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5251_22318) ) (!  (not (select (|PolymorphicMapType_8871_8382_23496#PolymorphicMapType_8871| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8871_8382_23496#PolymorphicMapType_8871| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5251_22185) ) (!  (not (select (|PolymorphicMapType_8871_8382_22185#PolymorphicMapType_8871| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8871_8382_22185#PolymorphicMapType_8871| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14616_3298) ) (!  (not (select (|PolymorphicMapType_8871_8382_3298#PolymorphicMapType_8871| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8871_8382_3298#PolymorphicMapType_8871| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8395_8396) ) (!  (not (select (|PolymorphicMapType_8871_8382_8396#PolymorphicMapType_8871| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8871_8382_8396#PolymorphicMapType_8871| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8382_53) ) (!  (not (select (|PolymorphicMapType_8871_8382_53#PolymorphicMapType_8871| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8871_8382_53#PolymorphicMapType_8871| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.297:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_5261| (|Set#Union_5261| a@@0 b@@0) b@@0) (|Set#Union_5261| a@@0 b@@0))
 :qid |stdinbpl.249:18|
 :skolemid |38|
 :pattern ( (|Set#Union_5261| (|Set#Union_5261| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_5260| (|Set#Intersection_5260| a@@1 b@@1) b@@1) (|Set#Intersection_5260| a@@1 b@@1))
 :qid |stdinbpl.253:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_5260| (|Set#Intersection_5260| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_5260| r) o) (= r o))
 :qid |stdinbpl.218:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_5260| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_5260| (|Set#Union_5261| a@@2 b@@2)) (|Set#Card_5260| (|Set#Intersection_5260| a@@2 b@@2))) (+ (|Set#Card_5260| a@@2) (|Set#Card_5260| b@@2)))
 :qid |stdinbpl.257:18|
 :skolemid |42|
 :pattern ( (|Set#Card_5260| (|Set#Union_5261| a@@2 b@@2)))
 :pattern ( (|Set#Card_5260| (|Set#Intersection_5260| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.300:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8322) (ExhaleHeap T@PolymorphicMapType_8322) (Mask@@0 T@PolymorphicMapType_8343) (pm_f_3 T@Field_5251_22185) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5251_22249 Mask@@0 null pm_f_3) (IsPredicateField_5251_22276 pm_f_3)) (= (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@0) null (PredicateMaskField_5251 pm_f_3)) (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| ExhaleHeap) null (PredicateMaskField_5251 pm_f_3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5251_22276 pm_f_3) (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| ExhaleHeap) null (PredicateMaskField_5251 pm_f_3)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8322) (ExhaleHeap@@0 T@PolymorphicMapType_8322) (Mask@@1 T@PolymorphicMapType_8343) (pm_f_3@@0 T@Field_5251_22185) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5251_22249 Mask@@1 null pm_f_3@@0) (IsWandField_5251_24023 pm_f_3@@0)) (= (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@1) null (WandMaskField_5251 pm_f_3@@0)) (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| ExhaleHeap@@0) null (WandMaskField_5251 pm_f_3@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5251_24023 pm_f_3@@0) (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| ExhaleHeap@@0) null (WandMaskField_5251 pm_f_3@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8322) (ExhaleHeap@@1 T@PolymorphicMapType_8322) (Mask@@2 T@PolymorphicMapType_8343) (o_8 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| Heap@@2) o_8 $allocated) (select (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| ExhaleHeap@@1) o_8 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| ExhaleHeap@@1) o_8 $allocated))
)))
(assert (forall ((p T@Field_5251_22185) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8382_8382 p v_1 p w))
 :qid |stdinbpl.195:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8382_8382 p v_1 p w))
)))
(assert  (not (IsPredicateField_5251_5252 f_7)))
(assert  (not (IsWandField_5251_5252 f_7)))
(assert  (not (IsPredicateField_5254_3298 g)))
(assert  (not (IsWandField_5254_3298 g)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8322) (ExhaleHeap@@2 T@PolymorphicMapType_8322) (Mask@@3 T@PolymorphicMapType_8343) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_8343) (o_2@@4 T@Ref) (f_4@@4 T@Field_5251_22318) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_5251_27540 f_4@@4))) (not (IsWandField_5251_27556 f_4@@4))) (<= (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_8343) (o_2@@5 T@Ref) (f_4@@5 T@Field_5251_22185) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_5251_22276 f_4@@5))) (not (IsWandField_5251_24023 f_4@@5))) (<= (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_8343) (o_2@@6 T@Ref) (f_4@@6 T@Field_8382_53) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5251_53 f_4@@6))) (not (IsWandField_5251_53 f_4@@6))) (<= (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_8343) (o_2@@7 T@Ref) (f_4@@7 T@Field_14616_3298) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5254_3298 f_4@@7))) (not (IsWandField_5254_3298 f_4@@7))) (<= (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8343) (o_2@@8 T@Ref) (f_4@@8 T@Field_8395_8396) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5251_5252 f_4@@8))) (not (IsWandField_5251_5252 f_4@@8))) (<= (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8343) (o_2@@9 T@Ref) (f_4@@9 T@Field_5251_22318) ) (! (= (HasDirectPerm_5251_27994 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5251_27994 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8343) (o_2@@10 T@Ref) (f_4@@10 T@Field_5251_22185) ) (! (= (HasDirectPerm_5251_22249 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5251_22249 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8343) (o_2@@11 T@Ref) (f_4@@11 T@Field_14616_3298) ) (! (= (HasDirectPerm_5251_3298 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5251_3298 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8343) (o_2@@12 T@Ref) (f_4@@12 T@Field_8382_53) ) (! (= (HasDirectPerm_5251_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5251_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8343) (o_2@@13 T@Ref) (f_4@@13 T@Field_8395_8396) ) (! (= (HasDirectPerm_5251_5252 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5251_5252 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8322) (ExhaleHeap@@3 T@PolymorphicMapType_8322) (Mask@@14 T@PolymorphicMapType_8343) (pm_f_3@@1 T@Field_5251_22185) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_5251_22249 Mask@@14 null pm_f_3@@1) (IsPredicateField_5251_22276 pm_f_3@@1)) (and (and (and (and (forall ((o2_3 T@Ref) (f_12 T@Field_8382_53) ) (!  (=> (select (|PolymorphicMapType_8871_8382_53#PolymorphicMapType_8871| (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@4) null (PredicateMaskField_5251 pm_f_3@@1))) o2_3 f_12) (= (select (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| Heap@@4) o2_3 f_12) (select (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| ExhaleHeap@@3) o2_3 f_12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| ExhaleHeap@@3) o2_3 f_12))
)) (forall ((o2_3@@0 T@Ref) (f_12@@0 T@Field_8395_8396) ) (!  (=> (select (|PolymorphicMapType_8871_8382_8396#PolymorphicMapType_8871| (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@4) null (PredicateMaskField_5251 pm_f_3@@1))) o2_3@@0 f_12@@0) (= (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@4) o2_3@@0 f_12@@0) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| ExhaleHeap@@3) o2_3@@0 f_12@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| ExhaleHeap@@3) o2_3@@0 f_12@@0))
))) (forall ((o2_3@@1 T@Ref) (f_12@@1 T@Field_14616_3298) ) (!  (=> (select (|PolymorphicMapType_8871_8382_3298#PolymorphicMapType_8871| (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@4) null (PredicateMaskField_5251 pm_f_3@@1))) o2_3@@1 f_12@@1) (= (select (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@4) o2_3@@1 f_12@@1) (select (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| ExhaleHeap@@3) o2_3@@1 f_12@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| ExhaleHeap@@3) o2_3@@1 f_12@@1))
))) (forall ((o2_3@@2 T@Ref) (f_12@@2 T@Field_5251_22185) ) (!  (=> (select (|PolymorphicMapType_8871_8382_22185#PolymorphicMapType_8871| (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@4) null (PredicateMaskField_5251 pm_f_3@@1))) o2_3@@2 f_12@@2) (= (select (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| Heap@@4) o2_3@@2 f_12@@2) (select (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| ExhaleHeap@@3) o2_3@@2 f_12@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| ExhaleHeap@@3) o2_3@@2 f_12@@2))
))) (forall ((o2_3@@3 T@Ref) (f_12@@3 T@Field_5251_22318) ) (!  (=> (select (|PolymorphicMapType_8871_8382_23496#PolymorphicMapType_8871| (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@4) null (PredicateMaskField_5251 pm_f_3@@1))) o2_3@@3 f_12@@3) (= (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@4) o2_3@@3 f_12@@3) (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| ExhaleHeap@@3) o2_3@@3 f_12@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| ExhaleHeap@@3) o2_3@@3 f_12@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_5251_22276 pm_f_3@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8322) (ExhaleHeap@@4 T@PolymorphicMapType_8322) (Mask@@15 T@PolymorphicMapType_8343) (pm_f_3@@2 T@Field_5251_22185) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_5251_22249 Mask@@15 null pm_f_3@@2) (IsWandField_5251_24023 pm_f_3@@2)) (and (and (and (and (forall ((o2_3@@4 T@Ref) (f_12@@4 T@Field_8382_53) ) (!  (=> (select (|PolymorphicMapType_8871_8382_53#PolymorphicMapType_8871| (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@5) null (WandMaskField_5251 pm_f_3@@2))) o2_3@@4 f_12@@4) (= (select (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| Heap@@5) o2_3@@4 f_12@@4) (select (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| ExhaleHeap@@4) o2_3@@4 f_12@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| ExhaleHeap@@4) o2_3@@4 f_12@@4))
)) (forall ((o2_3@@5 T@Ref) (f_12@@5 T@Field_8395_8396) ) (!  (=> (select (|PolymorphicMapType_8871_8382_8396#PolymorphicMapType_8871| (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@5) null (WandMaskField_5251 pm_f_3@@2))) o2_3@@5 f_12@@5) (= (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@5) o2_3@@5 f_12@@5) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| ExhaleHeap@@4) o2_3@@5 f_12@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| ExhaleHeap@@4) o2_3@@5 f_12@@5))
))) (forall ((o2_3@@6 T@Ref) (f_12@@6 T@Field_14616_3298) ) (!  (=> (select (|PolymorphicMapType_8871_8382_3298#PolymorphicMapType_8871| (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@5) null (WandMaskField_5251 pm_f_3@@2))) o2_3@@6 f_12@@6) (= (select (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@5) o2_3@@6 f_12@@6) (select (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| ExhaleHeap@@4) o2_3@@6 f_12@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| ExhaleHeap@@4) o2_3@@6 f_12@@6))
))) (forall ((o2_3@@7 T@Ref) (f_12@@7 T@Field_5251_22185) ) (!  (=> (select (|PolymorphicMapType_8871_8382_22185#PolymorphicMapType_8871| (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@5) null (WandMaskField_5251 pm_f_3@@2))) o2_3@@7 f_12@@7) (= (select (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| Heap@@5) o2_3@@7 f_12@@7) (select (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| ExhaleHeap@@4) o2_3@@7 f_12@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| ExhaleHeap@@4) o2_3@@7 f_12@@7))
))) (forall ((o2_3@@8 T@Ref) (f_12@@8 T@Field_5251_22318) ) (!  (=> (select (|PolymorphicMapType_8871_8382_23496#PolymorphicMapType_8871| (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@5) null (WandMaskField_5251 pm_f_3@@2))) o2_3@@8 f_12@@8) (= (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@5) o2_3@@8 f_12@@8) (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| ExhaleHeap@@4) o2_3@@8 f_12@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| ExhaleHeap@@4) o2_3@@8 f_12@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_5251_24023 pm_f_3@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.183:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8322) (ExhaleHeap@@5 T@PolymorphicMapType_8322) (Mask@@16 T@PolymorphicMapType_8343) (o_8@@0 T@Ref) (f_12@@9 T@Field_5251_22318) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_5251_27994 Mask@@16 o_8@@0 f_12@@9) (= (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@6) o_8@@0 f_12@@9) (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| ExhaleHeap@@5) o_8@@0 f_12@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| ExhaleHeap@@5) o_8@@0 f_12@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8322) (ExhaleHeap@@6 T@PolymorphicMapType_8322) (Mask@@17 T@PolymorphicMapType_8343) (o_8@@1 T@Ref) (f_12@@10 T@Field_5251_22185) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_5251_22249 Mask@@17 o_8@@1 f_12@@10) (= (select (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| Heap@@7) o_8@@1 f_12@@10) (select (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| ExhaleHeap@@6) o_8@@1 f_12@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| ExhaleHeap@@6) o_8@@1 f_12@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8322) (ExhaleHeap@@7 T@PolymorphicMapType_8322) (Mask@@18 T@PolymorphicMapType_8343) (o_8@@2 T@Ref) (f_12@@11 T@Field_14616_3298) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_5251_3298 Mask@@18 o_8@@2 f_12@@11) (= (select (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@8) o_8@@2 f_12@@11) (select (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| ExhaleHeap@@7) o_8@@2 f_12@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| ExhaleHeap@@7) o_8@@2 f_12@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8322) (ExhaleHeap@@8 T@PolymorphicMapType_8322) (Mask@@19 T@PolymorphicMapType_8343) (o_8@@3 T@Ref) (f_12@@12 T@Field_8382_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_5251_53 Mask@@19 o_8@@3 f_12@@12) (= (select (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| Heap@@9) o_8@@3 f_12@@12) (select (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| ExhaleHeap@@8) o_8@@3 f_12@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| ExhaleHeap@@8) o_8@@3 f_12@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8322) (ExhaleHeap@@9 T@PolymorphicMapType_8322) (Mask@@20 T@PolymorphicMapType_8343) (o_8@@4 T@Ref) (f_12@@13 T@Field_8395_8396) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_5251_5252 Mask@@20 o_8@@4 f_12@@13) (= (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@10) o_8@@4 f_12@@13) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| ExhaleHeap@@9) o_8@@4 f_12@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| ExhaleHeap@@9) o_8@@4 f_12@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5251_22318) ) (! (= (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5251_22185) ) (! (= (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_8382_53) ) (! (= (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_14616_3298) ) (! (= (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_8395_8396) ) (! (= (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8343) (SummandMask1 T@PolymorphicMapType_8343) (SummandMask2 T@PolymorphicMapType_8343) (o_2@@19 T@Ref) (f_4@@19 T@Field_5251_22318) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8343) (SummandMask1@@0 T@PolymorphicMapType_8343) (SummandMask2@@0 T@PolymorphicMapType_8343) (o_2@@20 T@Ref) (f_4@@20 T@Field_5251_22185) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8343) (SummandMask1@@1 T@PolymorphicMapType_8343) (SummandMask2@@1 T@PolymorphicMapType_8343) (o_2@@21 T@Ref) (f_4@@21 T@Field_8382_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8343) (SummandMask1@@2 T@PolymorphicMapType_8343) (SummandMask2@@2 T@PolymorphicMapType_8343) (o_2@@22 T@Ref) (f_4@@22 T@Field_14616_3298) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8343) (SummandMask1@@3 T@PolymorphicMapType_8343) (SummandMask2@@3 T@PolymorphicMapType_8343) (o_2@@23 T@Ref) (f_4@@23 T@Field_8395_8396) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_5260| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.246:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_5260| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_5260| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_5260| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_5260| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.261:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_5260| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_5260| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_5260| a@@6 x) y))
 :qid |stdinbpl.226:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_5260| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_5261| a@@7 b@@5) y@@0))
 :qid |stdinbpl.236:18|
 :skolemid |35|
 :pattern ( (|Set#Union_5261| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_5261| a@@8 b@@6) y@@1))
 :qid |stdinbpl.238:18|
 :skolemid |36|
 :pattern ( (|Set#Union_5261| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_5260| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.222:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_5260| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_5260| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.263:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_5260| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_5260| (|Set#Difference_5260| a@@11 b@@8)) (|Set#Card_5260| (|Set#Difference_5260| b@@8 a@@11))) (|Set#Card_5260| (|Set#Intersection_5260| a@@11 b@@8))) (|Set#Card_5260| (|Set#Union_5261| a@@11 b@@8))) (= (|Set#Card_5260| (|Set#Difference_5260| a@@11 b@@8)) (- (|Set#Card_5260| a@@11) (|Set#Card_5260| (|Set#Intersection_5260| a@@11 b@@8)))))
 :qid |stdinbpl.265:18|
 :skolemid |45|
 :pattern ( (|Set#Card_5260| (|Set#Difference_5260| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_5260| s))
 :qid |stdinbpl.208:18|
 :skolemid |22|
 :pattern ( (|Set#Card_5260| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_5260| a@@12 x@@1) x@@1)
 :qid |stdinbpl.224:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_5260| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_5260| (|Set#UnionOne_5260| a@@13 x@@2)) (|Set#Card_5260| a@@13)))
 :qid |stdinbpl.228:18|
 :skolemid |32|
 :pattern ( (|Set#Card_5260| (|Set#UnionOne_5260| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_5260| (|Set#Singleton_5260| r@@0)) 1)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Set#Card_5260| (|Set#Singleton_5260| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_5260| r@@1) r@@1)
 :qid |stdinbpl.217:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_5260| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_5261| a@@14 (|Set#Union_5261| a@@14 b@@9)) (|Set#Union_5261| a@@14 b@@9))
 :qid |stdinbpl.251:18|
 :skolemid |39|
 :pattern ( (|Set#Union_5261| a@@14 (|Set#Union_5261| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_5260| a@@15 (|Set#Intersection_5260| a@@15 b@@10)) (|Set#Intersection_5260| a@@15 b@@10))
 :qid |stdinbpl.255:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_5260| a@@15 (|Set#Intersection_5260| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_5260| o@@3))
 :qid |stdinbpl.211:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_5260| o@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8322) (o_7 T@Ref) (f_2 T@Field_5251_22185) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_8322 (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| Heap@@11) (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@11) (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@11) (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@11) (store (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| Heap@@11) o_7 f_2 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8322 (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| Heap@@11) (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@11) (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@11) (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@11) (store (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| Heap@@11) o_7 f_2 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8322) (o_7@@0 T@Ref) (f_2@@0 T@Field_5251_22318) (v@@0 T@PolymorphicMapType_8871) ) (! (succHeap Heap@@12 (PolymorphicMapType_8322 (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| Heap@@12) (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@12) (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@12) (store (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@12) o_7@@0 f_2@@0 v@@0) (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8322 (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| Heap@@12) (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@12) (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@12) (store (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@12) o_7@@0 f_2@@0 v@@0) (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8322) (o_7@@1 T@Ref) (f_2@@1 T@Field_14616_3298) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_8322 (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| Heap@@13) (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@13) (store (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@13) o_7@@1 f_2@@1 v@@1) (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@13) (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8322 (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| Heap@@13) (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@13) (store (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@13) o_7@@1 f_2@@1 v@@1) (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@13) (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8322) (o_7@@2 T@Ref) (f_2@@2 T@Field_8395_8396) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_8322 (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| Heap@@14) (store (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@14) o_7@@2 f_2@@2 v@@2) (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@14) (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@14) (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8322 (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| Heap@@14) (store (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@14) o_7@@2 f_2@@2 v@@2) (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@14) (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@14) (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8322) (o_7@@3 T@Ref) (f_2@@3 T@Field_8382_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_8322 (store (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| Heap@@15) o_7@@3 f_2@@3 v@@3) (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@15) (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@15) (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@15) (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8322 (store (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| Heap@@15) o_7@@3 f_2@@3 v@@3) (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@15) (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@15) (|PolymorphicMapType_8322_5251_22362#PolymorphicMapType_8322| Heap@@15) (|PolymorphicMapType_8322_8382_22185#PolymorphicMapType_8322| Heap@@15)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.295:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.296:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_5260| s@@0) 0) (= s@@0 |Set#Empty_5260|)) (=> (not (= (|Set#Card_5260| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.214:33|
 :skolemid |24|
))))
 :qid |stdinbpl.212:18|
 :skolemid |25|
 :pattern ( (|Set#Card_5260| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_5260| (|Set#UnionOne_5260| a@@18 x@@4)) (+ (|Set#Card_5260| a@@18) 1)))
 :qid |stdinbpl.230:18|
 :skolemid |33|
 :pattern ( (|Set#Card_5260| (|Set#UnionOne_5260| a@@18 x@@4)))
)))
(assert (forall ((o_7@@4 T@Ref) (f_11 T@Field_8395_8396) (Heap@@16 T@PolymorphicMapType_8322) ) (!  (=> (select (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| Heap@@16) o_7@@4 $allocated) (select (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| Heap@@16) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@16) o_7@@4 f_11) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@16) o_7@@4 f_11))
)))
(assert (forall ((p@@1 T@Field_5251_22185) (v_1@@0 T@FrameType) (q T@Field_5251_22185) (w@@0 T@FrameType) (r@@2 T@Field_5251_22185) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8382_8382 p@@1 v_1@@0 q w@@0) (InsidePredicate_8382_8382 q w@@0 r@@2 u)) (InsidePredicate_8382_8382 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8382_8382 p@@1 v_1@@0 q w@@0) (InsidePredicate_8382_8382 q w@@0 r@@2 u))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.301:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_5261| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.234:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_5261| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun new_set@0 () (Array T@Ref Bool))
(declare-fun x_38 () T@Ref)
(declare-fun Mask@1 () T@PolymorphicMapType_8343)
(declare-fun Heap@@17 () T@PolymorphicMapType_8322)
(declare-fun dummyFunction_3298 (Int) Bool)
(declare-fun neverTriggered4 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_8343)
(declare-fun dummyFunction_5252 (T@Ref) Bool)
(declare-fun neverTriggered3 (T@Ref) Bool)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) T@Ref)
(declare-fun set_2 () (Array T@Ref Bool))
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_8343)
(declare-fun QPMask@0 () T@PolymorphicMapType_8343)
(declare-fun r_1 () T@Ref)
(declare-fun perm@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_8343)
(declare-fun perm@1 () Real)
(declare-fun x_31 () T@Ref)
(declare-fun x_10 () T@Ref)
(declare-fun y_4 () T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(set-info :boogie-vc-id foo_1)
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
 (=> (= (ControlFlow 0 0) 35) (let ((anon15_correct true))
(let ((anon24_Else_correct  (=> (and (not (select new_set@0 x_38)) (= (ControlFlow 0 19) 16)) anon15_correct)))
(let ((anon24_Then_correct  (=> (select new_set@0 x_38) (and (=> (= (ControlFlow 0 17) (- 0 18)) (HasDirectPerm_5251_5252 Mask@1 x_38 f_7)) (=> (HasDirectPerm_5251_5252 Mask@1 x_38 f_7) (=> (= (ControlFlow 0 17) 16) anon15_correct))))))
(let ((anon23_Else_correct  (and (=> (= (ControlFlow 0 13) (- 0 15)) (forall ((x_9_2 T@Ref) ) (!  (=> (and (select new_set@0 x_9_2) (dummyFunction_3298 (select (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@17) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_9_2 f_7) g))) (>= (/ (to_real 2) (to_real 3)) NoPerm))
 :qid |stdinbpl.654:17|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_9_2 f_7))
 :pattern ( (select (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@17) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_9_2 f_7) g))
))) (=> (forall ((x_9_2@@0 T@Ref) ) (!  (=> (and (select new_set@0 x_9_2@@0) (dummyFunction_3298 (select (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@17) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_9_2@@0 f_7) g))) (>= (/ (to_real 2) (to_real 3)) NoPerm))
 :qid |stdinbpl.654:17|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_9_2@@0 f_7))
 :pattern ( (select (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@17) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_9_2@@0 f_7) g))
)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (forall ((x_9_2@@1 T@Ref) (x_9_3 T@Ref) ) (!  (=> (and (and (and (and (not (= x_9_2@@1 x_9_3)) (select new_set@0 x_9_2@@1)) (select new_set@0 x_9_3)) (< NoPerm (/ (to_real 2) (to_real 3)))) (< NoPerm (/ (to_real 2) (to_real 3)))) (not (= (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_9_2@@1 f_7) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_9_3 f_7))))
 :qid |stdinbpl.661:17|
 :skolemid |105|
 :pattern ( (neverTriggered4 x_9_2@@1) (neverTriggered4 x_9_3))
))) (=> (forall ((x_9_2@@2 T@Ref) (x_9_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_9_2@@2 x_9_3@@0)) (select new_set@0 x_9_2@@2)) (select new_set@0 x_9_3@@0)) (< NoPerm (/ (to_real 2) (to_real 3)))) (< NoPerm (/ (to_real 2) (to_real 3)))) (not (= (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_9_2@@2 f_7) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_9_3@@0 f_7))))
 :qid |stdinbpl.661:17|
 :skolemid |105|
 :pattern ( (neverTriggered4 x_9_2@@2) (neverTriggered4 x_9_3@@0))
)) (=> (= (ControlFlow 0 13) (- 0 12)) (forall ((x_9_2@@3 T@Ref) ) (!  (=> (select new_set@0 x_9_2@@3) (>= (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| Mask@1) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_9_2@@3 f_7) g) (/ (to_real 2) (to_real 3))))
 :qid |stdinbpl.668:17|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_9_2@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@17) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_9_2@@3 f_7) g))
)))))))))
(let ((anon22_Else_correct  (and (=> (= (ControlFlow 0 20) (- 0 23)) (forall ((x_7 T@Ref) ) (!  (=> (and (select new_set@0 x_7) (dummyFunction_5252 (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_7 f_7))) (>= (/ (to_real 1) (to_real 3)) NoPerm))
 :qid |stdinbpl.593:17|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_7 f_7))
 :pattern ( (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@2) x_7 f_7))
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_7 f_7))
))) (=> (forall ((x_7@@0 T@Ref) ) (!  (=> (and (select new_set@0 x_7@@0) (dummyFunction_5252 (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_7@@0 f_7))) (>= (/ (to_real 1) (to_real 3)) NoPerm))
 :qid |stdinbpl.593:17|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_7@@0 f_7))
 :pattern ( (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@2) x_7@@0 f_7))
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_7@@0 f_7))
)) (and (=> (= (ControlFlow 0 20) (- 0 22)) (forall ((x_7@@1 T@Ref) (x_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_7@@1 x_7_1)) (select new_set@0 x_7@@1)) (select new_set@0 x_7_1)) (< NoPerm (/ (to_real 1) (to_real 3)))) (< NoPerm (/ (to_real 1) (to_real 3)))) (not (= x_7@@1 x_7_1)))
 :qid |stdinbpl.600:17|
 :skolemid |98|
 :pattern ( (neverTriggered3 x_7@@1) (neverTriggered3 x_7_1))
))) (=> (forall ((x_7@@2 T@Ref) (x_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_7@@2 x_7_1@@0)) (select new_set@0 x_7@@2)) (select new_set@0 x_7_1@@0)) (< NoPerm (/ (to_real 1) (to_real 3)))) (< NoPerm (/ (to_real 1) (to_real 3)))) (not (= x_7@@2 x_7_1@@0)))
 :qid |stdinbpl.600:17|
 :skolemid |98|
 :pattern ( (neverTriggered3 x_7@@2) (neverTriggered3 x_7_1@@0))
)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (forall ((x_7@@3 T@Ref) ) (!  (=> (select new_set@0 x_7@@3) (>= (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| Mask@1) x_7@@3 f_7) (/ (to_real 1) (to_real 3))))
 :qid |stdinbpl.607:17|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_7@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@2) x_7@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_7@@3 f_7))
))) (=> (forall ((x_7@@4 T@Ref) ) (!  (=> (select new_set@0 x_7@@4) (>= (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| Mask@1) x_7@@4 f_7) (/ (to_real 1) (to_real 3))))
 :qid |stdinbpl.607:17|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_7@@4 f_7))
 :pattern ( (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@2) x_7@@4 f_7))
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_7@@4 f_7))
)) (=> (forall ((x_7@@5 T@Ref) ) (!  (=> (and (select new_set@0 x_7@@5) (< NoPerm (/ (to_real 1) (to_real 3)))) (and (qpRange3 x_7@@5) (= (invRecv3 x_7@@5) x_7@@5)))
 :qid |stdinbpl.613:22|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_7@@5 f_7))
 :pattern ( (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@2) x_7@@5 f_7))
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_7@@5 f_7))
)) (=> (and (forall ((o_4 T@Ref) ) (!  (=> (and (select new_set@0 (invRecv3 o_4)) (and (< NoPerm (/ (to_real 1) (to_real 3))) (qpRange3 o_4))) (= (invRecv3 o_4) o_4))
 :qid |stdinbpl.617:22|
 :skolemid |101|
 :pattern ( (invRecv3 o_4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (select new_set@0 (invRecv3 o_4@@0)) (and (< NoPerm (/ (to_real 1) (to_real 3))) (qpRange3 o_4@@0))) (and (= (invRecv3 o_4@@0) o_4@@0) (= (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@2) o_4@@0 f_7) (- (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| Mask@1) o_4@@0 f_7) (/ (to_real 1) (to_real 3)))))) (=> (not (and (select new_set@0 (invRecv3 o_4@@0)) (and (< NoPerm (/ (to_real 1) (to_real 3))) (qpRange3 o_4@@0)))) (= (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@2) o_4@@0 f_7) (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| Mask@1) o_4@@0 f_7))))
 :qid |stdinbpl.623:22|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@2) o_4@@0 f_7))
))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_8382_53) ) (!  (=> true (= (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| Mask@1) o_4@@1 f_5) (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| QPMask@2) o_4@@1 f_5)))
 :qid |stdinbpl.629:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| QPMask@2) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_8395_8396) ) (!  (=> (not (= f_5@@0 f_7)) (= (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| Mask@1) o_4@@2 f_5@@0) (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@2) o_4@@2 f_5@@0)))
 :qid |stdinbpl.629:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@2) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_14616_3298) ) (!  (=> true (= (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| Mask@1) o_4@@3 f_5@@1) (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| QPMask@2) o_4@@3 f_5@@1)))
 :qid |stdinbpl.629:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| QPMask@2) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_5251_22185) ) (!  (=> true (= (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| Mask@1) o_4@@4 f_5@@2) (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| QPMask@2) o_4@@4 f_5@@2)))
 :qid |stdinbpl.629:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| QPMask@2) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_5251_22318) ) (!  (=> true (= (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| Mask@1) o_4@@5 f_5@@3) (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| QPMask@2) o_4@@5 f_5@@3)))
 :qid |stdinbpl.629:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| QPMask@2) o_4@@5 f_5@@3))
))) (state Heap@@17 Mask@1)) (and (and (=> (= (ControlFlow 0 20) 13) anon23_Else_correct) (=> (= (ControlFlow 0 20) 17) anon24_Then_correct)) (=> (= (ControlFlow 0 20) 19) anon24_Else_correct)))))))))))))
(let ((anon22_Then_correct true))
(let ((anon20_Else_correct  (and (=> (= (ControlFlow 0 24) (- 0 29)) (forall ((x_5 T@Ref) (x_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_5 x_5_1)) (select set_2 x_5)) (select set_2 x_5_1)) (< NoPerm (/ (to_real 2) (to_real 3)))) (< NoPerm (/ (to_real 2) (to_real 3)))) (not (= (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_5 f_7) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_5_1 f_7))))
 :qid |stdinbpl.505:15|
 :skolemid |90|
))) (=> (forall ((x_5@@0 T@Ref) (x_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_5@@0 x_5_1@@0)) (select set_2 x_5@@0)) (select set_2 x_5_1@@0)) (< NoPerm (/ (to_real 2) (to_real 3)))) (< NoPerm (/ (to_real 2) (to_real 3)))) (not (= (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_5@@0 f_7) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_5_1@@0 f_7))))
 :qid |stdinbpl.505:15|
 :skolemid |90|
)) (=> (and (forall ((x_5@@1 T@Ref) ) (!  (=> (and (select set_2 x_5@@1) (< NoPerm (/ (to_real 2) (to_real 3)))) (and (qpRange2 (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_5@@1 f_7)) (= (invRecv2 (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_5@@1 f_7)) x_5@@1)))
 :qid |stdinbpl.511:22|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_5@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@17) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_5@@1 f_7) g))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (select set_2 (invRecv2 o_4@@6)) (< NoPerm (/ (to_real 2) (to_real 3)))) (qpRange2 o_4@@6)) (= (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) (invRecv2 o_4@@6) f_7) o_4@@6))
 :qid |stdinbpl.515:22|
 :skolemid |92|
 :pattern ( (invRecv2 o_4@@6))
))) (and (=> (= (ControlFlow 0 24) (- 0 28)) (forall ((x_5@@2 T@Ref) ) (!  (=> (select set_2 x_5@@2) (>= (/ (to_real 2) (to_real 3)) NoPerm))
 :qid |stdinbpl.521:15|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_5@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@17) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_5@@2 f_7) g))
))) (=> (forall ((x_5@@3 T@Ref) ) (!  (=> (select set_2 x_5@@3) (>= (/ (to_real 2) (to_real 3)) NoPerm))
 :qid |stdinbpl.521:15|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_5@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@17) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_5@@3 f_7) g))
)) (=> (and (forall ((x_5@@4 T@Ref) ) (!  (=> (and (select set_2 x_5@@4) (> (/ (to_real 2) (to_real 3)) NoPerm)) (not (= (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_5@@4 f_7) null)))
 :qid |stdinbpl.527:22|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_5@@4 f_7))
 :pattern ( (select (|PolymorphicMapType_8322_5254_3298#PolymorphicMapType_8322| Heap@@17) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_5@@4 f_7) g))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (select set_2 (invRecv2 o_4@@7)) (< NoPerm (/ (to_real 2) (to_real 3)))) (qpRange2 o_4@@7)) (and (=> (< NoPerm (/ (to_real 2) (to_real 3))) (= (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) (invRecv2 o_4@@7) f_7) o_4@@7)) (= (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| QPMask@1) o_4@@7 g) (+ (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| QPMask@0) o_4@@7 g) (/ (to_real 2) (to_real 3)))))) (=> (not (and (and (select set_2 (invRecv2 o_4@@7)) (< NoPerm (/ (to_real 2) (to_real 3)))) (qpRange2 o_4@@7))) (= (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| QPMask@1) o_4@@7 g) (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| QPMask@0) o_4@@7 g))))
 :qid |stdinbpl.533:22|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| QPMask@1) o_4@@7 g))
))) (=> (and (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_8382_53) ) (!  (=> true (= (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| QPMask@0) o_4@@8 f_5@@4) (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| QPMask@1) o_4@@8 f_5@@4)))
 :qid |stdinbpl.537:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| QPMask@0) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| QPMask@1) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_8395_8396) ) (!  (=> true (= (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@0) o_4@@9 f_5@@5) (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@1) o_4@@9 f_5@@5)))
 :qid |stdinbpl.537:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@0) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@1) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_14616_3298) ) (!  (=> (not (= f_5@@6 g)) (= (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| QPMask@0) o_4@@10 f_5@@6) (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| QPMask@1) o_4@@10 f_5@@6)))
 :qid |stdinbpl.537:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| QPMask@0) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| QPMask@1) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_5251_22185) ) (!  (=> true (= (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| QPMask@0) o_4@@11 f_5@@7) (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| QPMask@1) o_4@@11 f_5@@7)))
 :qid |stdinbpl.537:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| QPMask@0) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| QPMask@1) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_5251_22318) ) (!  (=> true (= (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| QPMask@0) o_4@@12 f_5@@8) (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| QPMask@1) o_4@@12 f_5@@8)))
 :qid |stdinbpl.537:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| QPMask@0) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| QPMask@1) o_4@@12 f_5@@8))
))) (state Heap@@17 QPMask@1)) (and (and (state Heap@@17 QPMask@1) (= new_set@0 (|Set#Union_5261| set_2 (|Set#Singleton_5260| r_1)))) (and (state Heap@@17 QPMask@1) (= perm@0 (/ (to_real 1) (to_real 3)))))) (and (=> (= (ControlFlow 0 24) (- 0 27)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (=> (> perm@0 NoPerm) (not (= r_1 null))) (=> (and (and (= Mask@0 (PolymorphicMapType_8343 (store (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@1) r_1 f_7 (+ (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@1) r_1 f_7) perm@0)) (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| QPMask@1) (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| QPMask@1) (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| QPMask@1) (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| QPMask@1))) (state Heap@@17 Mask@0)) (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0))) (and (=> (= (ControlFlow 0 24) (- 0 26)) (HasDirectPerm_5251_5252 Mask@0 r_1 f_7)) (=> (HasDirectPerm_5251_5252 Mask@0 r_1 f_7) (=> (= perm@1 (/ (to_real 2) (to_real 3))) (and (=> (= (ControlFlow 0 24) (- 0 25)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (=> (> perm@1 NoPerm) (not (= (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) r_1 f_7) null))) (=> (and (and (= Mask@1 (PolymorphicMapType_8343 (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| Mask@0) (store (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| Mask@0) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) r_1 f_7) g (+ (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| Mask@0) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) r_1 f_7) g) perm@1)) (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| Mask@0) (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| Mask@0) (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| Mask@0))) (state Heap@@17 Mask@1)) (and (state Heap@@17 Mask@1) (state Heap@@17 Mask@1))) (and (=> (= (ControlFlow 0 24) 11) anon22_Then_correct) (=> (= (ControlFlow 0 24) 20) anon22_Else_correct))))))))))))))))))))))
(let ((anon9_correct true))
(let ((anon21_Else_correct  (=> (and (not (select set_2 x_31)) (= (ControlFlow 0 10) 7)) anon9_correct)))
(let ((anon21_Then_correct  (=> (select set_2 x_31) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_5251_5252 QPMask@0 x_31 f_7)) (=> (HasDirectPerm_5251_5252 QPMask@0 x_31 f_7) (=> (= (ControlFlow 0 8) 7) anon9_correct))))))
(let ((anon18_Else_correct  (=> (and (forall ((x_3 T@Ref) (y_1 T@Ref) ) (!  (=> (and (select set_2 x_3) (and (select set_2 y_1) (not (= x_3 y_1)))) (not (= (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_3 f_7) (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) y_1 f_7))))
 :qid |stdinbpl.489:20|
 :skolemid |89|
 :pattern ( (select set_2 x_3) (select set_2 y_1))
)) (state Heap@@17 QPMask@0)) (and (and (=> (= (ControlFlow 0 30) 24) anon20_Else_correct) (=> (= (ControlFlow 0 30) 8) anon21_Then_correct)) (=> (= (ControlFlow 0 30) 10) anon21_Else_correct)))))
(let ((anon5_correct true))
(let ((anon19_Else_correct  (=> (and (not (and (select set_2 x_10) (and (select set_2 y_4) (not (= x_10 y_4))))) (= (ControlFlow 0 6) 2)) anon5_correct)))
(let ((anon19_Then_correct  (=> (and (select set_2 x_10) (and (select set_2 y_4) (not (= x_10 y_4)))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (HasDirectPerm_5251_5252 QPMask@0 x_10 f_7)) (=> (HasDirectPerm_5251_5252 QPMask@0 x_10 f_7) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_5251_5252 QPMask@0 y_4 f_7)) (=> (HasDirectPerm_5251_5252 QPMask@0 y_4 f_7) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))))
(let ((anon17_Else_correct  (and (=> (= (ControlFlow 0 31) (- 0 33)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select set_2 x_1)) (select set_2 x_1_1)) (< NoPerm (/ (to_real 1) (to_real 3)))) (< NoPerm (/ (to_real 1) (to_real 3)))) (not (= x_1 x_1_1)))
 :qid |stdinbpl.439:15|
 :skolemid |82|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select set_2 x_1@@0)) (select set_2 x_1_1@@0)) (< NoPerm (/ (to_real 1) (to_real 3)))) (< NoPerm (/ (to_real 1) (to_real 3)))) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.439:15|
 :skolemid |82|
)) (=> (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (select set_2 x_1@@1) (< NoPerm (/ (to_real 1) (to_real 3)))) (and (qpRange1 x_1@@1) (= (invRecv1 x_1@@1) x_1@@1)))
 :qid |stdinbpl.445:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@0) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_1@@1 f_7))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (select set_2 (invRecv1 o_4@@13)) (< NoPerm (/ (to_real 1) (to_real 3)))) (qpRange1 o_4@@13)) (= (invRecv1 o_4@@13) o_4@@13))
 :qid |stdinbpl.449:22|
 :skolemid |84|
 :pattern ( (invRecv1 o_4@@13))
))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (forall ((x_1@@2 T@Ref) ) (!  (=> (select set_2 x_1@@2) (>= (/ (to_real 1) (to_real 3)) NoPerm))
 :qid |stdinbpl.455:15|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@0) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_1@@2 f_7))
))) (=> (forall ((x_1@@3 T@Ref) ) (!  (=> (select set_2 x_1@@3) (>= (/ (to_real 1) (to_real 3)) NoPerm))
 :qid |stdinbpl.455:15|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_1@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@0) x_1@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_1@@3 f_7))
)) (=> (and (forall ((x_1@@4 T@Ref) ) (!  (=> (and (select set_2 x_1@@4) (> (/ (to_real 1) (to_real 3)) NoPerm)) (not (= x_1@@4 null)))
 :qid |stdinbpl.461:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_1@@4 f_7))
 :pattern ( (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@0) x_1@@4 f_7))
 :pattern ( (select (|PolymorphicMapType_8322_4949_4950#PolymorphicMapType_8322| Heap@@17) x_1@@4 f_7))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (select set_2 (invRecv1 o_4@@14)) (< NoPerm (/ (to_real 1) (to_real 3)))) (qpRange1 o_4@@14)) (and (=> (< NoPerm (/ (to_real 1) (to_real 3))) (= (invRecv1 o_4@@14) o_4@@14)) (= (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@0) o_4@@14 f_7) (+ (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| ZeroMask) o_4@@14 f_7) (/ (to_real 1) (to_real 3)))))) (=> (not (and (and (select set_2 (invRecv1 o_4@@14)) (< NoPerm (/ (to_real 1) (to_real 3)))) (qpRange1 o_4@@14))) (= (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@0) o_4@@14 f_7) (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| ZeroMask) o_4@@14 f_7))))
 :qid |stdinbpl.467:22|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@0) o_4@@14 f_7))
))) (=> (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_8382_53) ) (!  (=> true (= (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| ZeroMask) o_4@@15 f_5@@9) (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| QPMask@0) o_4@@15 f_5@@9)))
 :qid |stdinbpl.471:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| ZeroMask) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_8343_5251_53#PolymorphicMapType_8343| QPMask@0) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_8395_8396) ) (!  (=> (not (= f_5@@10 f_7)) (= (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| ZeroMask) o_4@@16 f_5@@10) (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@0) o_4@@16 f_5@@10)))
 :qid |stdinbpl.471:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| ZeroMask) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_8343_5251_5252#PolymorphicMapType_8343| QPMask@0) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_14616_3298) ) (!  (=> true (= (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| ZeroMask) o_4@@17 f_5@@11) (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| QPMask@0) o_4@@17 f_5@@11)))
 :qid |stdinbpl.471:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| ZeroMask) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_8343_5254_3298#PolymorphicMapType_8343| QPMask@0) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_5251_22185) ) (!  (=> true (= (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| ZeroMask) o_4@@18 f_5@@12) (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| QPMask@0) o_4@@18 f_5@@12)))
 :qid |stdinbpl.471:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| ZeroMask) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_8343_5251_22185#PolymorphicMapType_8343| QPMask@0) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_5251_22318) ) (!  (=> true (= (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| ZeroMask) o_4@@19 f_5@@13) (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| QPMask@0) o_4@@19 f_5@@13)))
 :qid |stdinbpl.471:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| ZeroMask) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_8343_5251_26425#PolymorphicMapType_8343| QPMask@0) o_4@@19 f_5@@13))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 31) 30) anon18_Else_correct) (=> (= (ControlFlow 0 31) 3) anon19_Then_correct)) (=> (= (ControlFlow 0 31) 6) anon19_Else_correct)))))))))))
(let ((anon17_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_8322_4946_53#PolymorphicMapType_8322| Heap@@17) r_1 $allocated)) (and (=> (= (ControlFlow 0 34) 1) anon17_Then_correct) (=> (= (ControlFlow 0 34) 31) anon17_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 35) 34) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
