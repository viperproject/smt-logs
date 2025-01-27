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
(declare-sort T@Field_18755_53 0)
(declare-sort T@Field_18768_18769 0)
(declare-sort T@Field_25027_3811 0)
(declare-sort T@Field_18755_55691 0)
(declare-sort T@Field_18755_55558 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_18716 0)) (((PolymorphicMapType_18716 (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| (Array T@Ref T@Field_25027_3811 Real)) (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| (Array T@Ref T@Field_18755_53 Real)) (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| (Array T@Ref T@Field_18768_18769 Real)) (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| (Array T@Ref T@Field_18755_55558 Real)) (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| (Array T@Ref T@Field_18755_55691 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19244 0)) (((PolymorphicMapType_19244 (|PolymorphicMapType_19244_18755_53#PolymorphicMapType_19244| (Array T@Ref T@Field_18755_53 Bool)) (|PolymorphicMapType_19244_18755_18769#PolymorphicMapType_19244| (Array T@Ref T@Field_18768_18769 Bool)) (|PolymorphicMapType_19244_18755_3811#PolymorphicMapType_19244| (Array T@Ref T@Field_25027_3811 Bool)) (|PolymorphicMapType_19244_18755_55558#PolymorphicMapType_19244| (Array T@Ref T@Field_18755_55558 Bool)) (|PolymorphicMapType_19244_18755_56869#PolymorphicMapType_19244| (Array T@Ref T@Field_18755_55691 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18695 0)) (((PolymorphicMapType_18695 (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| (Array T@Ref T@Field_18755_53 Bool)) (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| (Array T@Ref T@Field_18768_18769 T@Ref)) (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| (Array T@Ref T@Field_25027_3811 Int)) (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| (Array T@Ref T@Field_18755_55691 T@PolymorphicMapType_19244)) (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| (Array T@Ref T@Field_18755_55558 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_18755_53)
(declare-fun f_7 () T@Field_25027_3811)
(declare-fun succHeap (T@PolymorphicMapType_18695 T@PolymorphicMapType_18695) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_18695 T@PolymorphicMapType_18695) Bool)
(declare-fun state (T@PolymorphicMapType_18695 T@PolymorphicMapType_18716) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_18716) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_19244)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_12020| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_12137| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_12020| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_12020| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_18695 T@PolymorphicMapType_18695 T@PolymorphicMapType_18716) Bool)
(declare-fun IsPredicateField_18755_55649 (T@Field_18755_55558) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_18755 (T@Field_18755_55558) T@Field_18755_55691)
(declare-fun HasDirectPerm_18755_55622 (T@PolymorphicMapType_18716 T@Ref T@Field_18755_55558) Bool)
(declare-fun IsWandField_18755_57396 (T@Field_18755_55558) Bool)
(declare-fun WandMaskField_18755 (T@Field_18755_55558) T@Field_18755_55691)
(declare-fun dummyHeap () T@PolymorphicMapType_18695)
(declare-fun ZeroMask () T@PolymorphicMapType_18716)
(declare-fun InsidePredicate_18755_18755 (T@Field_18755_55558 T@FrameType T@Field_18755_55558 T@FrameType) Bool)
(declare-fun IsPredicateField_11931_3811 (T@Field_25027_3811) Bool)
(declare-fun IsWandField_11931_3811 (T@Field_25027_3811) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11931_60942 (T@Field_18755_55691) Bool)
(declare-fun IsWandField_11931_60958 (T@Field_18755_55691) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11931_18769 (T@Field_18768_18769) Bool)
(declare-fun IsWandField_11931_18769 (T@Field_18768_18769) Bool)
(declare-fun IsPredicateField_11931_53 (T@Field_18755_53) Bool)
(declare-fun IsWandField_11931_53 (T@Field_18755_53) Bool)
(declare-fun HasDirectPerm_18755_61396 (T@PolymorphicMapType_18716 T@Ref T@Field_18755_55691) Bool)
(declare-fun HasDirectPerm_18755_3811 (T@PolymorphicMapType_18716 T@Ref T@Field_25027_3811) Bool)
(declare-fun HasDirectPerm_18755_18769 (T@PolymorphicMapType_18716 T@Ref T@Field_18768_18769) Bool)
(declare-fun HasDirectPerm_18755_53 (T@PolymorphicMapType_18716 T@Ref T@Field_18755_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_18716 T@PolymorphicMapType_18716 T@PolymorphicMapType_18716) Bool)
(declare-fun |Set#Difference_12076| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_12020| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Empty_12020| () (Array T@Ref Bool))
(declare-fun |Set#Subset_11978| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_18695) (Heap1 T@PolymorphicMapType_18695) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_18695) (Mask T@PolymorphicMapType_18716) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_18695) (Heap1@@0 T@PolymorphicMapType_18695) (Heap2 T@PolymorphicMapType_18695) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_18755_55691) ) (!  (not (select (|PolymorphicMapType_19244_18755_56869#PolymorphicMapType_19244| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19244_18755_56869#PolymorphicMapType_19244| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_18755_55558) ) (!  (not (select (|PolymorphicMapType_19244_18755_55558#PolymorphicMapType_19244| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19244_18755_55558#PolymorphicMapType_19244| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_25027_3811) ) (!  (not (select (|PolymorphicMapType_19244_18755_3811#PolymorphicMapType_19244| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19244_18755_3811#PolymorphicMapType_19244| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_18768_18769) ) (!  (not (select (|PolymorphicMapType_19244_18755_18769#PolymorphicMapType_19244| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19244_18755_18769#PolymorphicMapType_19244| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_18755_53) ) (!  (not (select (|PolymorphicMapType_19244_18755_53#PolymorphicMapType_19244| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19244_18755_53#PolymorphicMapType_19244| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.363:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_12020| (|Set#Union_12020| a@@0 b@@0) b@@0) (|Set#Union_12020| a@@0 b@@0))
 :qid |stdinbpl.315:18|
 :skolemid |38|
 :pattern ( (|Set#Union_12020| (|Set#Union_12020| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_12137| (|Set#Intersection_12137| a@@1 b@@1) b@@1) (|Set#Intersection_12137| a@@1 b@@1))
 :qid |stdinbpl.319:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_12137| (|Set#Intersection_12137| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_12020| r) o) (= r o))
 :qid |stdinbpl.284:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_12020| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_12020| (|Set#Union_12020| a@@2 b@@2)) (|Set#Card_12020| (|Set#Intersection_12137| a@@2 b@@2))) (+ (|Set#Card_12020| a@@2) (|Set#Card_12020| b@@2)))
 :qid |stdinbpl.323:18|
 :skolemid |42|
 :pattern ( (|Set#Card_12020| (|Set#Union_12020| a@@2 b@@2)))
 :pattern ( (|Set#Card_12020| (|Set#Intersection_12137| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.366:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_18695) (ExhaleHeap T@PolymorphicMapType_18695) (Mask@@0 T@PolymorphicMapType_18716) (pm_f_31 T@Field_18755_55558) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_18755_55622 Mask@@0 null pm_f_31) (IsPredicateField_18755_55649 pm_f_31)) (= (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@0) null (PredicateMaskField_18755 pm_f_31)) (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap) null (PredicateMaskField_18755 pm_f_31)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_18755_55649 pm_f_31) (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap) null (PredicateMaskField_18755 pm_f_31)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_18695) (ExhaleHeap@@0 T@PolymorphicMapType_18695) (Mask@@1 T@PolymorphicMapType_18716) (pm_f_31@@0 T@Field_18755_55558) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_18755_55622 Mask@@1 null pm_f_31@@0) (IsWandField_18755_57396 pm_f_31@@0)) (= (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@1) null (WandMaskField_18755 pm_f_31@@0)) (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap@@0) null (WandMaskField_18755 pm_f_31@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_18755_57396 pm_f_31@@0) (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap@@0) null (WandMaskField_18755 pm_f_31@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_18695) (ExhaleHeap@@1 T@PolymorphicMapType_18695) (Mask@@2 T@PolymorphicMapType_18716) (o_59 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@2) o_59 $allocated) (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| ExhaleHeap@@1) o_59 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| ExhaleHeap@@1) o_59 $allocated))
)))
(assert (forall ((p T@Field_18755_55558) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18755_18755 p v_1 p w))
 :qid |stdinbpl.261:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18755_18755 p v_1 p w))
)))
(assert  (not (IsPredicateField_11931_3811 f_7)))
(assert  (not (IsWandField_11931_3811 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_18695) (ExhaleHeap@@2 T@PolymorphicMapType_18695) (Mask@@3 T@PolymorphicMapType_18716) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_18716) (o_2@@4 T@Ref) (f_4@@4 T@Field_18755_55691) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_11931_60942 f_4@@4))) (not (IsWandField_11931_60958 f_4@@4))) (<= (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_18716) (o_2@@5 T@Ref) (f_4@@5 T@Field_18755_55558) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_18755_55649 f_4@@5))) (not (IsWandField_18755_57396 f_4@@5))) (<= (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_18716) (o_2@@6 T@Ref) (f_4@@6 T@Field_18768_18769) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_11931_18769 f_4@@6))) (not (IsWandField_11931_18769 f_4@@6))) (<= (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_18716) (o_2@@7 T@Ref) (f_4@@7 T@Field_18755_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_11931_53 f_4@@7))) (not (IsWandField_11931_53 f_4@@7))) (<= (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_18716) (o_2@@8 T@Ref) (f_4@@8 T@Field_25027_3811) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_11931_3811 f_4@@8))) (not (IsWandField_11931_3811 f_4@@8))) (<= (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_18716) (o_2@@9 T@Ref) (f_4@@9 T@Field_18755_55691) ) (! (= (HasDirectPerm_18755_61396 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18755_61396 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_18716) (o_2@@10 T@Ref) (f_4@@10 T@Field_18755_55558) ) (! (= (HasDirectPerm_18755_55622 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18755_55622 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_18716) (o_2@@11 T@Ref) (f_4@@11 T@Field_25027_3811) ) (! (= (HasDirectPerm_18755_3811 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18755_3811 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_18716) (o_2@@12 T@Ref) (f_4@@12 T@Field_18768_18769) ) (! (= (HasDirectPerm_18755_18769 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18755_18769 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_18716) (o_2@@13 T@Ref) (f_4@@13 T@Field_18755_53) ) (! (= (HasDirectPerm_18755_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18755_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_18695) (ExhaleHeap@@3 T@PolymorphicMapType_18695) (Mask@@14 T@PolymorphicMapType_18716) (pm_f_31@@1 T@Field_18755_55558) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_18755_55622 Mask@@14 null pm_f_31@@1) (IsPredicateField_18755_55649 pm_f_31@@1)) (and (and (and (and (forall ((o2_31 T@Ref) (f_28 T@Field_18755_53) ) (!  (=> (select (|PolymorphicMapType_19244_18755_53#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@4) null (PredicateMaskField_18755 pm_f_31@@1))) o2_31 f_28) (= (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@4) o2_31 f_28) (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31 f_28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31 f_28))
)) (forall ((o2_31@@0 T@Ref) (f_28@@0 T@Field_18768_18769) ) (!  (=> (select (|PolymorphicMapType_19244_18755_18769#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@4) null (PredicateMaskField_18755 pm_f_31@@1))) o2_31@@0 f_28@@0) (= (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@4) o2_31@@0 f_28@@0) (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31@@0 f_28@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31@@0 f_28@@0))
))) (forall ((o2_31@@1 T@Ref) (f_28@@1 T@Field_25027_3811) ) (!  (=> (select (|PolymorphicMapType_19244_18755_3811#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@4) null (PredicateMaskField_18755 pm_f_31@@1))) o2_31@@1 f_28@@1) (= (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@4) o2_31@@1 f_28@@1) (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31@@1 f_28@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31@@1 f_28@@1))
))) (forall ((o2_31@@2 T@Ref) (f_28@@2 T@Field_18755_55558) ) (!  (=> (select (|PolymorphicMapType_19244_18755_55558#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@4) null (PredicateMaskField_18755 pm_f_31@@1))) o2_31@@2 f_28@@2) (= (select (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@4) o2_31@@2 f_28@@2) (select (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31@@2 f_28@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31@@2 f_28@@2))
))) (forall ((o2_31@@3 T@Ref) (f_28@@3 T@Field_18755_55691) ) (!  (=> (select (|PolymorphicMapType_19244_18755_56869#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@4) null (PredicateMaskField_18755 pm_f_31@@1))) o2_31@@3 f_28@@3) (= (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@4) o2_31@@3 f_28@@3) (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31@@3 f_28@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31@@3 f_28@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_18755_55649 pm_f_31@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_18695) (ExhaleHeap@@4 T@PolymorphicMapType_18695) (Mask@@15 T@PolymorphicMapType_18716) (pm_f_31@@2 T@Field_18755_55558) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_18755_55622 Mask@@15 null pm_f_31@@2) (IsWandField_18755_57396 pm_f_31@@2)) (and (and (and (and (forall ((o2_31@@4 T@Ref) (f_28@@4 T@Field_18755_53) ) (!  (=> (select (|PolymorphicMapType_19244_18755_53#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@5) null (WandMaskField_18755 pm_f_31@@2))) o2_31@@4 f_28@@4) (= (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@5) o2_31@@4 f_28@@4) (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@4 f_28@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@4 f_28@@4))
)) (forall ((o2_31@@5 T@Ref) (f_28@@5 T@Field_18768_18769) ) (!  (=> (select (|PolymorphicMapType_19244_18755_18769#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@5) null (WandMaskField_18755 pm_f_31@@2))) o2_31@@5 f_28@@5) (= (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@5) o2_31@@5 f_28@@5) (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@5 f_28@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@5 f_28@@5))
))) (forall ((o2_31@@6 T@Ref) (f_28@@6 T@Field_25027_3811) ) (!  (=> (select (|PolymorphicMapType_19244_18755_3811#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@5) null (WandMaskField_18755 pm_f_31@@2))) o2_31@@6 f_28@@6) (= (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@5) o2_31@@6 f_28@@6) (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@6 f_28@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@6 f_28@@6))
))) (forall ((o2_31@@7 T@Ref) (f_28@@7 T@Field_18755_55558) ) (!  (=> (select (|PolymorphicMapType_19244_18755_55558#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@5) null (WandMaskField_18755 pm_f_31@@2))) o2_31@@7 f_28@@7) (= (select (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@5) o2_31@@7 f_28@@7) (select (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@7 f_28@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@7 f_28@@7))
))) (forall ((o2_31@@8 T@Ref) (f_28@@8 T@Field_18755_55691) ) (!  (=> (select (|PolymorphicMapType_19244_18755_56869#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@5) null (WandMaskField_18755 pm_f_31@@2))) o2_31@@8 f_28@@8) (= (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@5) o2_31@@8 f_28@@8) (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@8 f_28@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@8 f_28@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_18755_57396 pm_f_31@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.249:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_18695) (ExhaleHeap@@5 T@PolymorphicMapType_18695) (Mask@@16 T@PolymorphicMapType_18716) (o_59@@0 T@Ref) (f_28@@9 T@Field_18755_55691) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_18755_61396 Mask@@16 o_59@@0 f_28@@9) (= (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@6) o_59@@0 f_28@@9) (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap@@5) o_59@@0 f_28@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap@@5) o_59@@0 f_28@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_18695) (ExhaleHeap@@6 T@PolymorphicMapType_18695) (Mask@@17 T@PolymorphicMapType_18716) (o_59@@1 T@Ref) (f_28@@10 T@Field_18755_55558) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_18755_55622 Mask@@17 o_59@@1 f_28@@10) (= (select (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@7) o_59@@1 f_28@@10) (select (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| ExhaleHeap@@6) o_59@@1 f_28@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| ExhaleHeap@@6) o_59@@1 f_28@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_18695) (ExhaleHeap@@7 T@PolymorphicMapType_18695) (Mask@@18 T@PolymorphicMapType_18716) (o_59@@2 T@Ref) (f_28@@11 T@Field_25027_3811) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_18755_3811 Mask@@18 o_59@@2 f_28@@11) (= (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@8) o_59@@2 f_28@@11) (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| ExhaleHeap@@7) o_59@@2 f_28@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| ExhaleHeap@@7) o_59@@2 f_28@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_18695) (ExhaleHeap@@8 T@PolymorphicMapType_18695) (Mask@@19 T@PolymorphicMapType_18716) (o_59@@3 T@Ref) (f_28@@12 T@Field_18768_18769) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_18755_18769 Mask@@19 o_59@@3 f_28@@12) (= (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@9) o_59@@3 f_28@@12) (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| ExhaleHeap@@8) o_59@@3 f_28@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| ExhaleHeap@@8) o_59@@3 f_28@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_18695) (ExhaleHeap@@9 T@PolymorphicMapType_18695) (Mask@@20 T@PolymorphicMapType_18716) (o_59@@4 T@Ref) (f_28@@13 T@Field_18755_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_18755_53 Mask@@20 o_59@@4 f_28@@13) (= (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@10) o_59@@4 f_28@@13) (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| ExhaleHeap@@9) o_59@@4 f_28@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| ExhaleHeap@@9) o_59@@4 f_28@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_18755_55691) ) (! (= (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_18755_55558) ) (! (= (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_18768_18769) ) (! (= (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_18755_53) ) (! (= (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_25027_3811) ) (! (= (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_18716) (SummandMask1 T@PolymorphicMapType_18716) (SummandMask2 T@PolymorphicMapType_18716) (o_2@@19 T@Ref) (f_4@@19 T@Field_18755_55691) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_18716) (SummandMask1@@0 T@PolymorphicMapType_18716) (SummandMask2@@0 T@PolymorphicMapType_18716) (o_2@@20 T@Ref) (f_4@@20 T@Field_18755_55558) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_18716) (SummandMask1@@1 T@PolymorphicMapType_18716) (SummandMask2@@1 T@PolymorphicMapType_18716) (o_2@@21 T@Ref) (f_4@@21 T@Field_18768_18769) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_18716) (SummandMask1@@2 T@PolymorphicMapType_18716) (SummandMask2@@2 T@PolymorphicMapType_18716) (o_2@@22 T@Ref) (f_4@@22 T@Field_18755_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_18716) (SummandMask1@@3 T@PolymorphicMapType_18716) (SummandMask2@@3 T@PolymorphicMapType_18716) (o_2@@23 T@Ref) (f_4@@23 T@Field_25027_3811) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_12137| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.312:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_12137| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_12137| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_12137| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_12076| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.327:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_12076| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_12076| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_12020| a@@6 x) y))
 :qid |stdinbpl.292:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_12020| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_12020| a@@7 b@@5) y@@0))
 :qid |stdinbpl.302:18|
 :skolemid |35|
 :pattern ( (|Set#Union_12020| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_12020| a@@8 b@@6) y@@1))
 :qid |stdinbpl.304:18|
 :skolemid |36|
 :pattern ( (|Set#Union_12020| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_12020| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.288:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_12020| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_12076| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.329:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_12076| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_12020| (|Set#Difference_12076| a@@11 b@@8)) (|Set#Card_12020| (|Set#Difference_12076| b@@8 a@@11))) (|Set#Card_12020| (|Set#Intersection_12137| a@@11 b@@8))) (|Set#Card_12020| (|Set#Union_12020| a@@11 b@@8))) (= (|Set#Card_12020| (|Set#Difference_12076| a@@11 b@@8)) (- (|Set#Card_12020| a@@11) (|Set#Card_12020| (|Set#Intersection_12137| a@@11 b@@8)))))
 :qid |stdinbpl.331:18|
 :skolemid |45|
 :pattern ( (|Set#Card_12020| (|Set#Difference_12076| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_12020| s))
 :qid |stdinbpl.274:18|
 :skolemid |22|
 :pattern ( (|Set#Card_12020| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_12020| a@@12 x@@1) x@@1)
 :qid |stdinbpl.290:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_12020| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_12020| (|Set#UnionOne_12020| a@@13 x@@2)) (|Set#Card_12020| a@@13)))
 :qid |stdinbpl.294:18|
 :skolemid |32|
 :pattern ( (|Set#Card_12020| (|Set#UnionOne_12020| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_12020| (|Set#Singleton_12020| r@@0)) 1)
 :qid |stdinbpl.285:18|
 :skolemid |28|
 :pattern ( (|Set#Card_12020| (|Set#Singleton_12020| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_12020| r@@1) r@@1)
 :qid |stdinbpl.283:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_12020| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_12020| a@@14 (|Set#Union_12020| a@@14 b@@9)) (|Set#Union_12020| a@@14 b@@9))
 :qid |stdinbpl.317:18|
 :skolemid |39|
 :pattern ( (|Set#Union_12020| a@@14 (|Set#Union_12020| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_12137| a@@15 (|Set#Intersection_12137| a@@15 b@@10)) (|Set#Intersection_12137| a@@15 b@@10))
 :qid |stdinbpl.321:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_12137| a@@15 (|Set#Intersection_12137| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_12020| o@@3))
 :qid |stdinbpl.277:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_12020| o@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_18695) (o_49 T@Ref) (f_70 T@Field_18755_55558) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_18695 (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@11) (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@11) (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@11) (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@11) (store (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@11) o_49 f_70 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18695 (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@11) (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@11) (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@11) (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@11) (store (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@11) o_49 f_70 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_18695) (o_49@@0 T@Ref) (f_70@@0 T@Field_18755_55691) (v@@0 T@PolymorphicMapType_19244) ) (! (succHeap Heap@@12 (PolymorphicMapType_18695 (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@12) (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@12) (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@12) (store (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@12) o_49@@0 f_70@@0 v@@0) (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18695 (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@12) (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@12) (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@12) (store (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@12) o_49@@0 f_70@@0 v@@0) (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_18695) (o_49@@1 T@Ref) (f_70@@1 T@Field_25027_3811) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_18695 (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@13) (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@13) (store (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@13) o_49@@1 f_70@@1 v@@1) (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@13) (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18695 (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@13) (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@13) (store (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@13) o_49@@1 f_70@@1 v@@1) (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@13) (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_18695) (o_49@@2 T@Ref) (f_70@@2 T@Field_18768_18769) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_18695 (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@14) (store (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@14) o_49@@2 f_70@@2 v@@2) (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@14) (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@14) (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18695 (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@14) (store (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@14) o_49@@2 f_70@@2 v@@2) (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@14) (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@14) (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_18695) (o_49@@3 T@Ref) (f_70@@3 T@Field_18755_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_18695 (store (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@15) o_49@@3 f_70@@3 v@@3) (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@15) (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@15) (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@15) (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18695 (store (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@15) o_49@@3 f_70@@3 v@@3) (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@15) (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@15) (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@15) (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@15)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.361:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.362:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_12020| s@@0) 0) (= s@@0 |Set#Empty_12020|)) (=> (not (= (|Set#Card_12020| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.280:33|
 :skolemid |24|
))))
 :qid |stdinbpl.278:18|
 :skolemid |25|
 :pattern ( (|Set#Card_12020| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) ) (! (= (|Set#Subset_11978| a@@18 b@@13) (forall ((o@@4 T@Ref) ) (!  (=> (select a@@18 o@@4) (select b@@13 o@@4))
 :qid |stdinbpl.340:32|
 :skolemid |46|
 :pattern ( (select a@@18 o@@4))
 :pattern ( (select b@@13 o@@4))
)))
 :qid |stdinbpl.339:17|
 :skolemid |47|
 :pattern ( (|Set#Subset_11978| a@@18 b@@13))
)))
(assert (forall ((a@@19 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@19 x@@4)) (= (|Set#Card_12020| (|Set#UnionOne_12020| a@@19 x@@4)) (+ (|Set#Card_12020| a@@19) 1)))
 :qid |stdinbpl.296:18|
 :skolemid |33|
 :pattern ( (|Set#Card_12020| (|Set#UnionOne_12020| a@@19 x@@4)))
)))
(assert (forall ((o_49@@4 T@Ref) (f_30 T@Field_18768_18769) (Heap@@16 T@PolymorphicMapType_18695) ) (!  (=> (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@16) o_49@@4 $allocated) (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@16) (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@16) o_49@@4 f_30) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@16) o_49@@4 f_30))
)))
(assert (forall ((p@@1 T@Field_18755_55558) (v_1@@0 T@FrameType) (q T@Field_18755_55558) (w@@0 T@FrameType) (r@@2 T@Field_18755_55558) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18755_18755 p@@1 v_1@@0 q w@@0) (InsidePredicate_18755_18755 q w@@0 r@@2 u)) (InsidePredicate_18755_18755 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.256:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18755_18755 p@@1 v_1@@0 q w@@0) (InsidePredicate_18755_18755 q w@@0 r@@2 u))
)))
(assert (forall ((a@@20 Int) ) (!  (=> (< a@@20 0) (= (|Math#clip| a@@20) 0))
 :qid |stdinbpl.367:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@20))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@21 (Array T@Ref Bool)) (b@@14 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Union_12020| a@@21 b@@14) o@@5)  (or (select a@@21 o@@5) (select b@@14 o@@5)))
 :qid |stdinbpl.300:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_12020| a@@21 b@@14) o@@5))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered3 (T@Ref) Bool)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_18695)
(declare-fun QPMask@2 () T@PolymorphicMapType_18716)
(declare-fun QPMask@1 () T@PolymorphicMapType_18716)
(declare-fun neverTriggered2 (T@Ref) Bool)
(declare-fun Heap@@17 () T@PolymorphicMapType_18695)
(declare-fun QPMask@0 () T@PolymorphicMapType_18716)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(set-info :boogie-vc-id t1_2)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon9_Else_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (forall ((w_1_1 T@Ref) (w_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= w_1_1 w_1_2)) (select xs w_1_1)) (select xs w_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= w_1_1 w_1_2)))
 :qid |stdinbpl.602:17|
 :skolemid |94|
 :pattern ( (neverTriggered3 w_1_1) (neverTriggered3 w_1_2))
))) (=> (forall ((w_1_1@@0 T@Ref) (w_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= w_1_1@@0 w_1_2@@0)) (select xs w_1_1@@0)) (select xs w_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= w_1_1@@0 w_1_2@@0)))
 :qid |stdinbpl.602:17|
 :skolemid |94|
 :pattern ( (neverTriggered3 w_1_1@@0) (neverTriggered3 w_1_2@@0))
)) (=> (= (ControlFlow 0 5) (- 0 4)) (forall ((w_1_1@@1 T@Ref) ) (!  (=> (select xs w_1_1@@1) (>= (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@1) w_1_1@@1 f_7) FullPerm))
 :qid |stdinbpl.609:17|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| ExhaleHeap@0) w_1_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@2) w_1_1@@1 f_7))
 :pattern ( (select xs w_1_1@@1))
)))))))
(let ((anon9_Then_correct true))
(let ((anon8_Else_correct  (and (=> (= (ControlFlow 0 7) (- 0 9)) (forall ((z_1 T@Ref) (z_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= z_1 z_1_1)) (select xs z_1)) (select xs z_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_1 z_1_1)))
 :qid |stdinbpl.547:17|
 :skolemid |88|
 :pattern ( (neverTriggered2 z_1) (neverTriggered2 z_1_1))
))) (=> (forall ((z_1@@0 T@Ref) (z_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= z_1@@0 z_1_1@@0)) (select xs z_1@@0)) (select xs z_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_1@@0 z_1_1@@0)))
 :qid |stdinbpl.547:17|
 :skolemid |88|
 :pattern ( (neverTriggered2 z_1@@0) (neverTriggered2 z_1_1@@0))
)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (forall ((z_1@@1 T@Ref) ) (!  (=> (select xs z_1@@1) (>= (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@0) z_1@@1 f_7) FullPerm))
 :qid |stdinbpl.554:17|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@17) z_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@1) z_1@@1 f_7))
 :pattern ( (select xs z_1@@1))
))) (=> (forall ((z_1@@2 T@Ref) ) (!  (=> (select xs z_1@@2) (>= (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@0) z_1@@2 f_7) FullPerm))
 :qid |stdinbpl.554:17|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@17) z_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@1) z_1@@2 f_7))
 :pattern ( (select xs z_1@@2))
)) (=> (forall ((z_1@@3 T@Ref) ) (!  (=> (and (select xs z_1@@3) (< NoPerm FullPerm)) (and (qpRange2 z_1@@3) (= (invRecv2 z_1@@3) z_1@@3)))
 :qid |stdinbpl.560:22|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@17) z_1@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@1) z_1@@3 f_7))
 :pattern ( (select xs z_1@@3))
)) (=> (and (forall ((o_9 T@Ref) ) (!  (=> (and (select xs (invRecv2 o_9)) (and (< NoPerm FullPerm) (qpRange2 o_9))) (= (invRecv2 o_9) o_9))
 :qid |stdinbpl.564:22|
 :skolemid |91|
 :pattern ( (invRecv2 o_9))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (select xs (invRecv2 o_9@@0)) (and (< NoPerm FullPerm) (qpRange2 o_9@@0))) (and (= (invRecv2 o_9@@0) o_9@@0) (= (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@1) o_9@@0 f_7) (- (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@0) o_9@@0 f_7) FullPerm)))) (=> (not (and (select xs (invRecv2 o_9@@0)) (and (< NoPerm FullPerm) (qpRange2 o_9@@0)))) (= (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@1) o_9@@0 f_7) (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@0) o_9@@0 f_7))))
 :qid |stdinbpl.570:22|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@1) o_9@@0 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_18755_53) ) (!  (=> true (= (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| QPMask@0) o_9@@1 f_5) (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| QPMask@1) o_9@@1 f_5)))
 :qid |stdinbpl.576:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| QPMask@1) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_18768_18769) ) (!  (=> true (= (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| QPMask@0) o_9@@2 f_5@@0) (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| QPMask@1) o_9@@2 f_5@@0)))
 :qid |stdinbpl.576:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| QPMask@1) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_25027_3811) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@0) o_9@@3 f_5@@1) (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@1) o_9@@3 f_5@@1)))
 :qid |stdinbpl.576:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@1) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_18755_55558) ) (!  (=> true (= (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| QPMask@0) o_9@@4 f_5@@2) (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| QPMask@1) o_9@@4 f_5@@2)))
 :qid |stdinbpl.576:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| QPMask@1) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_18755_55691) ) (!  (=> true (= (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| QPMask@0) o_9@@5 f_5@@3) (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| QPMask@1) o_9@@5 f_5@@3)))
 :qid |stdinbpl.576:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| QPMask@1) o_9@@5 f_5@@3))
))) (and (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1) (state ExhaleHeap@0 QPMask@1))) (and (=> (= (ControlFlow 0 7) 3) anon9_Then_correct) (=> (= (ControlFlow 0 7) 5) anon9_Else_correct)))))))))))
(let ((anon8_Then_correct true))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (forall ((y_1 T@Ref) (y_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= y_1 y_1_1)) (select xs y_1)) (select xs y_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= y_1 y_1_1)))
 :qid |stdinbpl.492:15|
 :skolemid |82|
))) (=> (forall ((y_1@@0 T@Ref) (y_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= y_1@@0 y_1_1@@0)) (select xs y_1@@0)) (select xs y_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= y_1@@0 y_1_1@@0)))
 :qid |stdinbpl.492:15|
 :skolemid |82|
)) (=> (and (and (forall ((y_1@@1 T@Ref) ) (!  (=> (and (select xs y_1@@1) (< NoPerm FullPerm)) (and (qpRange1 y_1@@1) (= (invRecv1 y_1@@1) y_1@@1)))
 :qid |stdinbpl.498:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@17) y_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@0) y_1@@1 f_7))
 :pattern ( (select xs y_1@@1))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (select xs (invRecv1 o_9@@6)) (< NoPerm FullPerm)) (qpRange1 o_9@@6)) (= (invRecv1 o_9@@6) o_9@@6))
 :qid |stdinbpl.502:22|
 :skolemid |84|
 :pattern ( (invRecv1 o_9@@6))
))) (and (forall ((y_1@@2 T@Ref) ) (!  (=> (select xs y_1@@2) (not (= y_1@@2 null)))
 :qid |stdinbpl.508:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@17) y_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@0) y_1@@2 f_7))
 :pattern ( (select xs y_1@@2))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (select xs (invRecv1 o_9@@7)) (< NoPerm FullPerm)) (qpRange1 o_9@@7)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_9@@7) o_9@@7)) (= (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@0) o_9@@7 f_7) (+ (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| ZeroMask) o_9@@7 f_7) FullPerm)))) (=> (not (and (and (select xs (invRecv1 o_9@@7)) (< NoPerm FullPerm)) (qpRange1 o_9@@7))) (= (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@0) o_9@@7 f_7) (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| ZeroMask) o_9@@7 f_7))))
 :qid |stdinbpl.514:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@0) o_9@@7 f_7))
)))) (=> (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_18755_53) ) (!  (=> true (= (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| ZeroMask) o_9@@8 f_5@@4) (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| QPMask@0) o_9@@8 f_5@@4)))
 :qid |stdinbpl.518:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| ZeroMask) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| QPMask@0) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_18768_18769) ) (!  (=> true (= (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| ZeroMask) o_9@@9 f_5@@5) (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| QPMask@0) o_9@@9 f_5@@5)))
 :qid |stdinbpl.518:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| ZeroMask) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| QPMask@0) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_25027_3811) ) (!  (=> (not (= f_5@@6 f_7)) (= (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| ZeroMask) o_9@@10 f_5@@6) (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@0) o_9@@10 f_5@@6)))
 :qid |stdinbpl.518:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| ZeroMask) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| QPMask@0) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_18755_55558) ) (!  (=> true (= (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| ZeroMask) o_9@@11 f_5@@7) (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| QPMask@0) o_9@@11 f_5@@7)))
 :qid |stdinbpl.518:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| ZeroMask) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| QPMask@0) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_18755_55691) ) (!  (=> true (= (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| ZeroMask) o_9@@12 f_5@@8) (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| QPMask@0) o_9@@12 f_5@@8)))
 :qid |stdinbpl.518:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| ZeroMask) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| QPMask@0) o_9@@12 f_5@@8))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (=> (= (ControlFlow 0 10) 2) anon8_Then_correct) (=> (= (ControlFlow 0 10) 7) anon8_Else_correct))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 12) 1) anon7_Then_correct) (=> (= (ControlFlow 0 12) 10) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 13) 12) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 4))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
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
(declare-sort T@Field_18755_53 0)
(declare-sort T@Field_18768_18769 0)
(declare-sort T@Field_25027_3811 0)
(declare-sort T@Field_18755_55691 0)
(declare-sort T@Field_18755_55558 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_18716 0)) (((PolymorphicMapType_18716 (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| (Array T@Ref T@Field_25027_3811 Real)) (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| (Array T@Ref T@Field_18755_53 Real)) (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| (Array T@Ref T@Field_18768_18769 Real)) (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| (Array T@Ref T@Field_18755_55558 Real)) (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| (Array T@Ref T@Field_18755_55691 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19244 0)) (((PolymorphicMapType_19244 (|PolymorphicMapType_19244_18755_53#PolymorphicMapType_19244| (Array T@Ref T@Field_18755_53 Bool)) (|PolymorphicMapType_19244_18755_18769#PolymorphicMapType_19244| (Array T@Ref T@Field_18768_18769 Bool)) (|PolymorphicMapType_19244_18755_3811#PolymorphicMapType_19244| (Array T@Ref T@Field_25027_3811 Bool)) (|PolymorphicMapType_19244_18755_55558#PolymorphicMapType_19244| (Array T@Ref T@Field_18755_55558 Bool)) (|PolymorphicMapType_19244_18755_56869#PolymorphicMapType_19244| (Array T@Ref T@Field_18755_55691 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18695 0)) (((PolymorphicMapType_18695 (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| (Array T@Ref T@Field_18755_53 Bool)) (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| (Array T@Ref T@Field_18768_18769 T@Ref)) (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| (Array T@Ref T@Field_25027_3811 Int)) (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| (Array T@Ref T@Field_18755_55691 T@PolymorphicMapType_19244)) (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| (Array T@Ref T@Field_18755_55558 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_18755_53)
(declare-fun f_7 () T@Field_25027_3811)
(declare-fun succHeap (T@PolymorphicMapType_18695 T@PolymorphicMapType_18695) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_18695 T@PolymorphicMapType_18695) Bool)
(declare-fun state (T@PolymorphicMapType_18695 T@PolymorphicMapType_18716) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_18716) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_19244)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_12020| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_12137| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_12020| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_12020| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_18695 T@PolymorphicMapType_18695 T@PolymorphicMapType_18716) Bool)
(declare-fun IsPredicateField_18755_55649 (T@Field_18755_55558) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_18755 (T@Field_18755_55558) T@Field_18755_55691)
(declare-fun HasDirectPerm_18755_55622 (T@PolymorphicMapType_18716 T@Ref T@Field_18755_55558) Bool)
(declare-fun IsWandField_18755_57396 (T@Field_18755_55558) Bool)
(declare-fun WandMaskField_18755 (T@Field_18755_55558) T@Field_18755_55691)
(declare-fun dummyHeap () T@PolymorphicMapType_18695)
(declare-fun ZeroMask () T@PolymorphicMapType_18716)
(declare-fun InsidePredicate_18755_18755 (T@Field_18755_55558 T@FrameType T@Field_18755_55558 T@FrameType) Bool)
(declare-fun IsPredicateField_11931_3811 (T@Field_25027_3811) Bool)
(declare-fun IsWandField_11931_3811 (T@Field_25027_3811) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11931_60942 (T@Field_18755_55691) Bool)
(declare-fun IsWandField_11931_60958 (T@Field_18755_55691) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11931_18769 (T@Field_18768_18769) Bool)
(declare-fun IsWandField_11931_18769 (T@Field_18768_18769) Bool)
(declare-fun IsPredicateField_11931_53 (T@Field_18755_53) Bool)
(declare-fun IsWandField_11931_53 (T@Field_18755_53) Bool)
(declare-fun HasDirectPerm_18755_61396 (T@PolymorphicMapType_18716 T@Ref T@Field_18755_55691) Bool)
(declare-fun HasDirectPerm_18755_3811 (T@PolymorphicMapType_18716 T@Ref T@Field_25027_3811) Bool)
(declare-fun HasDirectPerm_18755_18769 (T@PolymorphicMapType_18716 T@Ref T@Field_18768_18769) Bool)
(declare-fun HasDirectPerm_18755_53 (T@PolymorphicMapType_18716 T@Ref T@Field_18755_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_18716 T@PolymorphicMapType_18716 T@PolymorphicMapType_18716) Bool)
(declare-fun |Set#Difference_12076| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_12020| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Empty_12020| () (Array T@Ref Bool))
(declare-fun |Set#Subset_11978| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_18695) (Heap1 T@PolymorphicMapType_18695) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_18695) (Mask T@PolymorphicMapType_18716) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_18695) (Heap1@@0 T@PolymorphicMapType_18695) (Heap2 T@PolymorphicMapType_18695) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_18755_55691) ) (!  (not (select (|PolymorphicMapType_19244_18755_56869#PolymorphicMapType_19244| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19244_18755_56869#PolymorphicMapType_19244| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_18755_55558) ) (!  (not (select (|PolymorphicMapType_19244_18755_55558#PolymorphicMapType_19244| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19244_18755_55558#PolymorphicMapType_19244| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_25027_3811) ) (!  (not (select (|PolymorphicMapType_19244_18755_3811#PolymorphicMapType_19244| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19244_18755_3811#PolymorphicMapType_19244| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_18768_18769) ) (!  (not (select (|PolymorphicMapType_19244_18755_18769#PolymorphicMapType_19244| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19244_18755_18769#PolymorphicMapType_19244| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_18755_53) ) (!  (not (select (|PolymorphicMapType_19244_18755_53#PolymorphicMapType_19244| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19244_18755_53#PolymorphicMapType_19244| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.363:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_12020| (|Set#Union_12020| a@@0 b@@0) b@@0) (|Set#Union_12020| a@@0 b@@0))
 :qid |stdinbpl.315:18|
 :skolemid |38|
 :pattern ( (|Set#Union_12020| (|Set#Union_12020| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_12137| (|Set#Intersection_12137| a@@1 b@@1) b@@1) (|Set#Intersection_12137| a@@1 b@@1))
 :qid |stdinbpl.319:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_12137| (|Set#Intersection_12137| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_12020| r) o) (= r o))
 :qid |stdinbpl.284:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_12020| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_12020| (|Set#Union_12020| a@@2 b@@2)) (|Set#Card_12020| (|Set#Intersection_12137| a@@2 b@@2))) (+ (|Set#Card_12020| a@@2) (|Set#Card_12020| b@@2)))
 :qid |stdinbpl.323:18|
 :skolemid |42|
 :pattern ( (|Set#Card_12020| (|Set#Union_12020| a@@2 b@@2)))
 :pattern ( (|Set#Card_12020| (|Set#Intersection_12137| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.366:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_18695) (ExhaleHeap T@PolymorphicMapType_18695) (Mask@@0 T@PolymorphicMapType_18716) (pm_f_31 T@Field_18755_55558) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_18755_55622 Mask@@0 null pm_f_31) (IsPredicateField_18755_55649 pm_f_31)) (= (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@0) null (PredicateMaskField_18755 pm_f_31)) (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap) null (PredicateMaskField_18755 pm_f_31)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_18755_55649 pm_f_31) (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap) null (PredicateMaskField_18755 pm_f_31)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_18695) (ExhaleHeap@@0 T@PolymorphicMapType_18695) (Mask@@1 T@PolymorphicMapType_18716) (pm_f_31@@0 T@Field_18755_55558) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_18755_55622 Mask@@1 null pm_f_31@@0) (IsWandField_18755_57396 pm_f_31@@0)) (= (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@1) null (WandMaskField_18755 pm_f_31@@0)) (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap@@0) null (WandMaskField_18755 pm_f_31@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_18755_57396 pm_f_31@@0) (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap@@0) null (WandMaskField_18755 pm_f_31@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_18695) (ExhaleHeap@@1 T@PolymorphicMapType_18695) (Mask@@2 T@PolymorphicMapType_18716) (o_59 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@2) o_59 $allocated) (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| ExhaleHeap@@1) o_59 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| ExhaleHeap@@1) o_59 $allocated))
)))
(assert (forall ((p T@Field_18755_55558) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18755_18755 p v_1 p w))
 :qid |stdinbpl.261:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18755_18755 p v_1 p w))
)))
(assert  (not (IsPredicateField_11931_3811 f_7)))
(assert  (not (IsWandField_11931_3811 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_18695) (ExhaleHeap@@2 T@PolymorphicMapType_18695) (Mask@@3 T@PolymorphicMapType_18716) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_18716) (o_2@@4 T@Ref) (f_4@@4 T@Field_18755_55691) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_11931_60942 f_4@@4))) (not (IsWandField_11931_60958 f_4@@4))) (<= (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_18716) (o_2@@5 T@Ref) (f_4@@5 T@Field_18755_55558) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_18755_55649 f_4@@5))) (not (IsWandField_18755_57396 f_4@@5))) (<= (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_18716) (o_2@@6 T@Ref) (f_4@@6 T@Field_18768_18769) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_11931_18769 f_4@@6))) (not (IsWandField_11931_18769 f_4@@6))) (<= (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_18716) (o_2@@7 T@Ref) (f_4@@7 T@Field_18755_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_11931_53 f_4@@7))) (not (IsWandField_11931_53 f_4@@7))) (<= (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_18716) (o_2@@8 T@Ref) (f_4@@8 T@Field_25027_3811) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_11931_3811 f_4@@8))) (not (IsWandField_11931_3811 f_4@@8))) (<= (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_18716) (o_2@@9 T@Ref) (f_4@@9 T@Field_18755_55691) ) (! (= (HasDirectPerm_18755_61396 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18755_61396 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_18716) (o_2@@10 T@Ref) (f_4@@10 T@Field_18755_55558) ) (! (= (HasDirectPerm_18755_55622 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18755_55622 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_18716) (o_2@@11 T@Ref) (f_4@@11 T@Field_25027_3811) ) (! (= (HasDirectPerm_18755_3811 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18755_3811 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_18716) (o_2@@12 T@Ref) (f_4@@12 T@Field_18768_18769) ) (! (= (HasDirectPerm_18755_18769 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18755_18769 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_18716) (o_2@@13 T@Ref) (f_4@@13 T@Field_18755_53) ) (! (= (HasDirectPerm_18755_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18755_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_18695) (ExhaleHeap@@3 T@PolymorphicMapType_18695) (Mask@@14 T@PolymorphicMapType_18716) (pm_f_31@@1 T@Field_18755_55558) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_18755_55622 Mask@@14 null pm_f_31@@1) (IsPredicateField_18755_55649 pm_f_31@@1)) (and (and (and (and (forall ((o2_31 T@Ref) (f_28 T@Field_18755_53) ) (!  (=> (select (|PolymorphicMapType_19244_18755_53#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@4) null (PredicateMaskField_18755 pm_f_31@@1))) o2_31 f_28) (= (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@4) o2_31 f_28) (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31 f_28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31 f_28))
)) (forall ((o2_31@@0 T@Ref) (f_28@@0 T@Field_18768_18769) ) (!  (=> (select (|PolymorphicMapType_19244_18755_18769#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@4) null (PredicateMaskField_18755 pm_f_31@@1))) o2_31@@0 f_28@@0) (= (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@4) o2_31@@0 f_28@@0) (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31@@0 f_28@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31@@0 f_28@@0))
))) (forall ((o2_31@@1 T@Ref) (f_28@@1 T@Field_25027_3811) ) (!  (=> (select (|PolymorphicMapType_19244_18755_3811#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@4) null (PredicateMaskField_18755 pm_f_31@@1))) o2_31@@1 f_28@@1) (= (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@4) o2_31@@1 f_28@@1) (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31@@1 f_28@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31@@1 f_28@@1))
))) (forall ((o2_31@@2 T@Ref) (f_28@@2 T@Field_18755_55558) ) (!  (=> (select (|PolymorphicMapType_19244_18755_55558#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@4) null (PredicateMaskField_18755 pm_f_31@@1))) o2_31@@2 f_28@@2) (= (select (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@4) o2_31@@2 f_28@@2) (select (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31@@2 f_28@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31@@2 f_28@@2))
))) (forall ((o2_31@@3 T@Ref) (f_28@@3 T@Field_18755_55691) ) (!  (=> (select (|PolymorphicMapType_19244_18755_56869#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@4) null (PredicateMaskField_18755 pm_f_31@@1))) o2_31@@3 f_28@@3) (= (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@4) o2_31@@3 f_28@@3) (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31@@3 f_28@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap@@3) o2_31@@3 f_28@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_18755_55649 pm_f_31@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_18695) (ExhaleHeap@@4 T@PolymorphicMapType_18695) (Mask@@15 T@PolymorphicMapType_18716) (pm_f_31@@2 T@Field_18755_55558) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_18755_55622 Mask@@15 null pm_f_31@@2) (IsWandField_18755_57396 pm_f_31@@2)) (and (and (and (and (forall ((o2_31@@4 T@Ref) (f_28@@4 T@Field_18755_53) ) (!  (=> (select (|PolymorphicMapType_19244_18755_53#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@5) null (WandMaskField_18755 pm_f_31@@2))) o2_31@@4 f_28@@4) (= (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@5) o2_31@@4 f_28@@4) (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@4 f_28@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@4 f_28@@4))
)) (forall ((o2_31@@5 T@Ref) (f_28@@5 T@Field_18768_18769) ) (!  (=> (select (|PolymorphicMapType_19244_18755_18769#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@5) null (WandMaskField_18755 pm_f_31@@2))) o2_31@@5 f_28@@5) (= (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@5) o2_31@@5 f_28@@5) (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@5 f_28@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@5 f_28@@5))
))) (forall ((o2_31@@6 T@Ref) (f_28@@6 T@Field_25027_3811) ) (!  (=> (select (|PolymorphicMapType_19244_18755_3811#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@5) null (WandMaskField_18755 pm_f_31@@2))) o2_31@@6 f_28@@6) (= (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@5) o2_31@@6 f_28@@6) (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@6 f_28@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@6 f_28@@6))
))) (forall ((o2_31@@7 T@Ref) (f_28@@7 T@Field_18755_55558) ) (!  (=> (select (|PolymorphicMapType_19244_18755_55558#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@5) null (WandMaskField_18755 pm_f_31@@2))) o2_31@@7 f_28@@7) (= (select (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@5) o2_31@@7 f_28@@7) (select (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@7 f_28@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@7 f_28@@7))
))) (forall ((o2_31@@8 T@Ref) (f_28@@8 T@Field_18755_55691) ) (!  (=> (select (|PolymorphicMapType_19244_18755_56869#PolymorphicMapType_19244| (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@5) null (WandMaskField_18755 pm_f_31@@2))) o2_31@@8 f_28@@8) (= (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@5) o2_31@@8 f_28@@8) (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@8 f_28@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap@@4) o2_31@@8 f_28@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_18755_57396 pm_f_31@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.249:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_18695) (ExhaleHeap@@5 T@PolymorphicMapType_18695) (Mask@@16 T@PolymorphicMapType_18716) (o_59@@0 T@Ref) (f_28@@9 T@Field_18755_55691) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_18755_61396 Mask@@16 o_59@@0 f_28@@9) (= (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@6) o_59@@0 f_28@@9) (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap@@5) o_59@@0 f_28@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| ExhaleHeap@@5) o_59@@0 f_28@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_18695) (ExhaleHeap@@6 T@PolymorphicMapType_18695) (Mask@@17 T@PolymorphicMapType_18716) (o_59@@1 T@Ref) (f_28@@10 T@Field_18755_55558) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_18755_55622 Mask@@17 o_59@@1 f_28@@10) (= (select (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@7) o_59@@1 f_28@@10) (select (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| ExhaleHeap@@6) o_59@@1 f_28@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| ExhaleHeap@@6) o_59@@1 f_28@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_18695) (ExhaleHeap@@7 T@PolymorphicMapType_18695) (Mask@@18 T@PolymorphicMapType_18716) (o_59@@2 T@Ref) (f_28@@11 T@Field_25027_3811) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_18755_3811 Mask@@18 o_59@@2 f_28@@11) (= (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@8) o_59@@2 f_28@@11) (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| ExhaleHeap@@7) o_59@@2 f_28@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| ExhaleHeap@@7) o_59@@2 f_28@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_18695) (ExhaleHeap@@8 T@PolymorphicMapType_18695) (Mask@@19 T@PolymorphicMapType_18716) (o_59@@3 T@Ref) (f_28@@12 T@Field_18768_18769) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_18755_18769 Mask@@19 o_59@@3 f_28@@12) (= (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@9) o_59@@3 f_28@@12) (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| ExhaleHeap@@8) o_59@@3 f_28@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| ExhaleHeap@@8) o_59@@3 f_28@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_18695) (ExhaleHeap@@9 T@PolymorphicMapType_18695) (Mask@@20 T@PolymorphicMapType_18716) (o_59@@4 T@Ref) (f_28@@13 T@Field_18755_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_18755_53 Mask@@20 o_59@@4 f_28@@13) (= (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@10) o_59@@4 f_28@@13) (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| ExhaleHeap@@9) o_59@@4 f_28@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| ExhaleHeap@@9) o_59@@4 f_28@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_18755_55691) ) (! (= (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_18755_55558) ) (! (= (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_18768_18769) ) (! (= (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_18755_53) ) (! (= (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_25027_3811) ) (! (= (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_18716) (SummandMask1 T@PolymorphicMapType_18716) (SummandMask2 T@PolymorphicMapType_18716) (o_2@@19 T@Ref) (f_4@@19 T@Field_18755_55691) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18716_11931_59813#PolymorphicMapType_18716| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_18716) (SummandMask1@@0 T@PolymorphicMapType_18716) (SummandMask2@@0 T@PolymorphicMapType_18716) (o_2@@20 T@Ref) (f_4@@20 T@Field_18755_55558) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18716_11931_55558#PolymorphicMapType_18716| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_18716) (SummandMask1@@1 T@PolymorphicMapType_18716) (SummandMask2@@1 T@PolymorphicMapType_18716) (o_2@@21 T@Ref) (f_4@@21 T@Field_18768_18769) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18716_11931_18769#PolymorphicMapType_18716| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_18716) (SummandMask1@@2 T@PolymorphicMapType_18716) (SummandMask2@@2 T@PolymorphicMapType_18716) (o_2@@22 T@Ref) (f_4@@22 T@Field_18755_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18716_11931_53#PolymorphicMapType_18716| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_18716) (SummandMask1@@3 T@PolymorphicMapType_18716) (SummandMask2@@3 T@PolymorphicMapType_18716) (o_2@@23 T@Ref) (f_4@@23 T@Field_25027_3811) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18716_11931_3811#PolymorphicMapType_18716| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_12137| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.312:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_12137| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_12137| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_12137| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_12076| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.327:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_12076| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_12076| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_12020| a@@6 x) y))
 :qid |stdinbpl.292:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_12020| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_12020| a@@7 b@@5) y@@0))
 :qid |stdinbpl.302:18|
 :skolemid |35|
 :pattern ( (|Set#Union_12020| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_12020| a@@8 b@@6) y@@1))
 :qid |stdinbpl.304:18|
 :skolemid |36|
 :pattern ( (|Set#Union_12020| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_12020| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.288:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_12020| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_12076| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.329:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_12076| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_12020| (|Set#Difference_12076| a@@11 b@@8)) (|Set#Card_12020| (|Set#Difference_12076| b@@8 a@@11))) (|Set#Card_12020| (|Set#Intersection_12137| a@@11 b@@8))) (|Set#Card_12020| (|Set#Union_12020| a@@11 b@@8))) (= (|Set#Card_12020| (|Set#Difference_12076| a@@11 b@@8)) (- (|Set#Card_12020| a@@11) (|Set#Card_12020| (|Set#Intersection_12137| a@@11 b@@8)))))
 :qid |stdinbpl.331:18|
 :skolemid |45|
 :pattern ( (|Set#Card_12020| (|Set#Difference_12076| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_12020| s))
 :qid |stdinbpl.274:18|
 :skolemid |22|
 :pattern ( (|Set#Card_12020| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_12020| a@@12 x@@1) x@@1)
 :qid |stdinbpl.290:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_12020| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_12020| (|Set#UnionOne_12020| a@@13 x@@2)) (|Set#Card_12020| a@@13)))
 :qid |stdinbpl.294:18|
 :skolemid |32|
 :pattern ( (|Set#Card_12020| (|Set#UnionOne_12020| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_12020| (|Set#Singleton_12020| r@@0)) 1)
 :qid |stdinbpl.285:18|
 :skolemid |28|
 :pattern ( (|Set#Card_12020| (|Set#Singleton_12020| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_12020| r@@1) r@@1)
 :qid |stdinbpl.283:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_12020| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_12020| a@@14 (|Set#Union_12020| a@@14 b@@9)) (|Set#Union_12020| a@@14 b@@9))
 :qid |stdinbpl.317:18|
 :skolemid |39|
 :pattern ( (|Set#Union_12020| a@@14 (|Set#Union_12020| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_12137| a@@15 (|Set#Intersection_12137| a@@15 b@@10)) (|Set#Intersection_12137| a@@15 b@@10))
 :qid |stdinbpl.321:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_12137| a@@15 (|Set#Intersection_12137| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_12020| o@@3))
 :qid |stdinbpl.277:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_12020| o@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_18695) (o_49 T@Ref) (f_70 T@Field_18755_55558) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_18695 (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@11) (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@11) (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@11) (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@11) (store (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@11) o_49 f_70 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18695 (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@11) (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@11) (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@11) (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@11) (store (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@11) o_49 f_70 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_18695) (o_49@@0 T@Ref) (f_70@@0 T@Field_18755_55691) (v@@0 T@PolymorphicMapType_19244) ) (! (succHeap Heap@@12 (PolymorphicMapType_18695 (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@12) (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@12) (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@12) (store (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@12) o_49@@0 f_70@@0 v@@0) (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18695 (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@12) (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@12) (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@12) (store (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@12) o_49@@0 f_70@@0 v@@0) (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_18695) (o_49@@1 T@Ref) (f_70@@1 T@Field_25027_3811) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_18695 (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@13) (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@13) (store (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@13) o_49@@1 f_70@@1 v@@1) (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@13) (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18695 (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@13) (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@13) (store (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@13) o_49@@1 f_70@@1 v@@1) (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@13) (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_18695) (o_49@@2 T@Ref) (f_70@@2 T@Field_18768_18769) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_18695 (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@14) (store (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@14) o_49@@2 f_70@@2 v@@2) (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@14) (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@14) (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18695 (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@14) (store (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@14) o_49@@2 f_70@@2 v@@2) (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@14) (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@14) (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_18695) (o_49@@3 T@Ref) (f_70@@3 T@Field_18755_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_18695 (store (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@15) o_49@@3 f_70@@3 v@@3) (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@15) (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@15) (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@15) (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18695 (store (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@15) o_49@@3 f_70@@3 v@@3) (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@15) (|PolymorphicMapType_18695_11931_3811#PolymorphicMapType_18695| Heap@@15) (|PolymorphicMapType_18695_18755_55735#PolymorphicMapType_18695| Heap@@15) (|PolymorphicMapType_18695_18755_55558#PolymorphicMapType_18695| Heap@@15)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.361:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.362:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_12020| s@@0) 0) (= s@@0 |Set#Empty_12020|)) (=> (not (= (|Set#Card_12020| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.280:33|
 :skolemid |24|
))))
 :qid |stdinbpl.278:18|
 :skolemid |25|
 :pattern ( (|Set#Card_12020| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) ) (! (= (|Set#Subset_11978| a@@18 b@@13) (forall ((o@@4 T@Ref) ) (!  (=> (select a@@18 o@@4) (select b@@13 o@@4))
 :qid |stdinbpl.340:32|
 :skolemid |46|
 :pattern ( (select a@@18 o@@4))
 :pattern ( (select b@@13 o@@4))
)))
 :qid |stdinbpl.339:17|
 :skolemid |47|
 :pattern ( (|Set#Subset_11978| a@@18 b@@13))
)))
(assert (forall ((a@@19 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@19 x@@4)) (= (|Set#Card_12020| (|Set#UnionOne_12020| a@@19 x@@4)) (+ (|Set#Card_12020| a@@19) 1)))
 :qid |stdinbpl.296:18|
 :skolemid |33|
 :pattern ( (|Set#Card_12020| (|Set#UnionOne_12020| a@@19 x@@4)))
)))
(assert (forall ((o_49@@4 T@Ref) (f_30 T@Field_18768_18769) (Heap@@16 T@PolymorphicMapType_18695) ) (!  (=> (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@16) o_49@@4 $allocated) (select (|PolymorphicMapType_18695_11538_53#PolymorphicMapType_18695| Heap@@16) (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@16) o_49@@4 f_30) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_18695_11541_11542#PolymorphicMapType_18695| Heap@@16) o_49@@4 f_30))
)))
(assert (forall ((p@@1 T@Field_18755_55558) (v_1@@0 T@FrameType) (q T@Field_18755_55558) (w@@0 T@FrameType) (r@@2 T@Field_18755_55558) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18755_18755 p@@1 v_1@@0 q w@@0) (InsidePredicate_18755_18755 q w@@0 r@@2 u)) (InsidePredicate_18755_18755 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.256:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18755_18755 p@@1 v_1@@0 q w@@0) (InsidePredicate_18755_18755 q w@@0 r@@2 u))
)))
(assert (forall ((a@@20 Int) ) (!  (=> (< a@@20 0) (= (|Math#clip| a@@20) 0))
 :qid |stdinbpl.367:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@20))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@21 (Array T@Ref Bool)) (b@@14 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Union_12020| a@@21 b@@14) o@@5)  (or (select a@@21 o@@5) (select b@@14 o@@5)))
 :qid |stdinbpl.300:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_12020| a@@21 b@@14) o@@5))
)))
; Invalid

