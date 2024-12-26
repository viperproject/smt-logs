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
(declare-sort T@Field_6268_53 0)
(declare-sort T@Field_6281_6282 0)
(declare-sort T@Field_6268_14622 0)
(declare-sort T@Field_6268_14489 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6229 0)) (((PolymorphicMapType_6229 (|PolymorphicMapType_6229_6268_53#PolymorphicMapType_6229| (Array T@Ref T@Field_6268_53 Real)) (|PolymorphicMapType_6229_6268_6282#PolymorphicMapType_6229| (Array T@Ref T@Field_6281_6282 Real)) (|PolymorphicMapType_6229_6268_14489#PolymorphicMapType_6229| (Array T@Ref T@Field_6268_14489 Real)) (|PolymorphicMapType_6229_6268_18183#PolymorphicMapType_6229| (Array T@Ref T@Field_6268_14622 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6757 0)) (((PolymorphicMapType_6757 (|PolymorphicMapType_6757_6268_53#PolymorphicMapType_6757| (Array T@Ref T@Field_6268_53 Bool)) (|PolymorphicMapType_6757_6268_6282#PolymorphicMapType_6757| (Array T@Ref T@Field_6281_6282 Bool)) (|PolymorphicMapType_6757_6268_14489#PolymorphicMapType_6757| (Array T@Ref T@Field_6268_14489 Bool)) (|PolymorphicMapType_6757_6268_15602#PolymorphicMapType_6757| (Array T@Ref T@Field_6268_14622 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6208 0)) (((PolymorphicMapType_6208 (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| (Array T@Ref T@Field_6268_53 Bool)) (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| (Array T@Ref T@Field_6281_6282 T@Ref)) (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| (Array T@Ref T@Field_6268_14622 T@PolymorphicMapType_6757)) (|PolymorphicMapType_6208_6268_14489#PolymorphicMapType_6208| (Array T@Ref T@Field_6268_14489 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_6208 T@PolymorphicMapType_6208) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6208 T@PolymorphicMapType_6208) Bool)
(declare-fun state (T@PolymorphicMapType_6208 T@PolymorphicMapType_6229) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6229) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6757)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_3330| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Intersection_3| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Singleton_3186| (Int) (Array Int Bool))
(declare-fun |Set#Card_3201| ((Array Int Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6208 T@PolymorphicMapType_6208 T@PolymorphicMapType_6229) Bool)
(declare-fun IsPredicateField_6268_14580 (T@Field_6268_14489) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6268 (T@Field_6268_14489) T@Field_6268_14622)
(declare-fun HasDirectPerm_6268_14553 (T@PolymorphicMapType_6229 T@Ref T@Field_6268_14489) Bool)
(declare-fun IsWandField_6268_16129 (T@Field_6268_14489) Bool)
(declare-fun WandMaskField_6268 (T@Field_6268_14489) T@Field_6268_14622)
(declare-fun dummyHeap () T@PolymorphicMapType_6208)
(declare-fun ZeroMask () T@PolymorphicMapType_6229)
(declare-fun $allocated () T@Field_6268_53)
(declare-fun InsidePredicate_6268_6268 (T@Field_6268_14489 T@FrameType T@Field_6268_14489 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6268_19092 (T@Field_6268_14622) Bool)
(declare-fun IsWandField_6268_19108 (T@Field_6268_14622) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6268_6282 (T@Field_6281_6282) Bool)
(declare-fun IsWandField_6268_6282 (T@Field_6281_6282) Bool)
(declare-fun IsPredicateField_6268_53 (T@Field_6268_53) Bool)
(declare-fun IsWandField_6268_53 (T@Field_6268_53) Bool)
(declare-fun |Set#Equal_3201| ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun HasDirectPerm_6268_19463 (T@PolymorphicMapType_6229 T@Ref T@Field_6268_14622) Bool)
(declare-fun HasDirectPerm_6268_6282 (T@PolymorphicMapType_6229 T@Ref T@Field_6281_6282) Bool)
(declare-fun HasDirectPerm_6268_53 (T@PolymorphicMapType_6229 T@Ref T@Field_6268_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6229 T@PolymorphicMapType_6229 T@PolymorphicMapType_6229) Bool)
(declare-fun |Set#Difference_3201| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#UnionOne_3| ((Array Int Bool) Int) (Array Int Bool))
(declare-fun |Set#Empty_3234| () (Array Int Bool))
(assert (forall ((Heap0 T@PolymorphicMapType_6208) (Heap1 T@PolymorphicMapType_6208) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6208) (Mask T@PolymorphicMapType_6229) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6208) (Heap1@@0 T@PolymorphicMapType_6208) (Heap2 T@PolymorphicMapType_6208) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6268_14622) ) (!  (not (select (|PolymorphicMapType_6757_6268_15602#PolymorphicMapType_6757| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6757_6268_15602#PolymorphicMapType_6757| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6268_14489) ) (!  (not (select (|PolymorphicMapType_6757_6268_14489#PolymorphicMapType_6757| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6757_6268_14489#PolymorphicMapType_6757| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6281_6282) ) (!  (not (select (|PolymorphicMapType_6757_6268_6282#PolymorphicMapType_6757| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6757_6268_6282#PolymorphicMapType_6757| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6268_53) ) (!  (not (select (|PolymorphicMapType_6757_6268_53#PolymorphicMapType_6757| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6757_6268_53#PolymorphicMapType_6757| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.273:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array Int Bool)) (b@@0 (Array Int Bool)) ) (! (= (|Set#Union_3330| (|Set#Union_3330| a@@0 b@@0) b@@0) (|Set#Union_3330| a@@0 b@@0))
 :qid |stdinbpl.225:18|
 :skolemid |38|
 :pattern ( (|Set#Union_3330| (|Set#Union_3330| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array Int Bool)) (b@@1 (Array Int Bool)) ) (! (= (|Set#Intersection_3| (|Set#Intersection_3| a@@1 b@@1) b@@1) (|Set#Intersection_3| a@@1 b@@1))
 :qid |stdinbpl.229:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_3| (|Set#Intersection_3| a@@1 b@@1) b@@1))
)))
(assert (forall ((r Int) (o Int) ) (! (= (select (|Set#Singleton_3186| r) o) (= r o))
 :qid |stdinbpl.194:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_3186| r) o))
)))
(assert (forall ((a@@2 (Array Int Bool)) (b@@2 (Array Int Bool)) ) (! (= (+ (|Set#Card_3201| (|Set#Union_3330| a@@2 b@@2)) (|Set#Card_3201| (|Set#Intersection_3| a@@2 b@@2))) (+ (|Set#Card_3201| a@@2) (|Set#Card_3201| b@@2)))
 :qid |stdinbpl.233:18|
 :skolemid |42|
 :pattern ( (|Set#Card_3201| (|Set#Union_3330| a@@2 b@@2)))
 :pattern ( (|Set#Card_3201| (|Set#Intersection_3| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.276:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6208) (ExhaleHeap T@PolymorphicMapType_6208) (Mask@@0 T@PolymorphicMapType_6229) (pm_f T@Field_6268_14489) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6268_14553 Mask@@0 null pm_f) (IsPredicateField_6268_14580 pm_f)) (= (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@0) null (PredicateMaskField_6268 pm_f)) (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| ExhaleHeap) null (PredicateMaskField_6268 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6268_14580 pm_f) (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| ExhaleHeap) null (PredicateMaskField_6268 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6208) (ExhaleHeap@@0 T@PolymorphicMapType_6208) (Mask@@1 T@PolymorphicMapType_6229) (pm_f@@0 T@Field_6268_14489) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6268_14553 Mask@@1 null pm_f@@0) (IsWandField_6268_16129 pm_f@@0)) (= (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@1) null (WandMaskField_6268 pm_f@@0)) (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| ExhaleHeap@@0) null (WandMaskField_6268 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_6268_16129 pm_f@@0) (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| ExhaleHeap@@0) null (WandMaskField_6268 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6208) (ExhaleHeap@@1 T@PolymorphicMapType_6208) (Mask@@2 T@PolymorphicMapType_6229) (pm_f@@1 T@Field_6268_14489) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6268_14553 Mask@@2 null pm_f@@1) (IsPredicateField_6268_14580 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6268_53) ) (!  (=> (select (|PolymorphicMapType_6757_6268_53#PolymorphicMapType_6757| (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@2) null (PredicateMaskField_6268 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| Heap@@2) o2 f_2) (select (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6281_6282) ) (!  (=> (select (|PolymorphicMapType_6757_6268_6282#PolymorphicMapType_6757| (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@2) null (PredicateMaskField_6268 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| Heap@@2) o2@@0 f_2@@0) (select (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_6268_14489) ) (!  (=> (select (|PolymorphicMapType_6757_6268_14489#PolymorphicMapType_6757| (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@2) null (PredicateMaskField_6268 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6208_6268_14489#PolymorphicMapType_6208| Heap@@2) o2@@1 f_2@@1) (select (|PolymorphicMapType_6208_6268_14489#PolymorphicMapType_6208| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6208_6268_14489#PolymorphicMapType_6208| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_6268_14622) ) (!  (=> (select (|PolymorphicMapType_6757_6268_15602#PolymorphicMapType_6757| (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@2) null (PredicateMaskField_6268 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@2) o2@@2 f_2@@2) (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_6268_14580 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6208) (ExhaleHeap@@2 T@PolymorphicMapType_6208) (Mask@@3 T@PolymorphicMapType_6229) (pm_f@@2 T@Field_6268_14489) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6268_14553 Mask@@3 null pm_f@@2) (IsWandField_6268_16129 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_6268_53) ) (!  (=> (select (|PolymorphicMapType_6757_6268_53#PolymorphicMapType_6757| (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@3) null (WandMaskField_6268 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| Heap@@3) o2@@3 f_2@@3) (select (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6281_6282) ) (!  (=> (select (|PolymorphicMapType_6757_6268_6282#PolymorphicMapType_6757| (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@3) null (WandMaskField_6268 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| Heap@@3) o2@@4 f_2@@4) (select (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6268_14489) ) (!  (=> (select (|PolymorphicMapType_6757_6268_14489#PolymorphicMapType_6757| (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@3) null (WandMaskField_6268 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6208_6268_14489#PolymorphicMapType_6208| Heap@@3) o2@@5 f_2@@5) (select (|PolymorphicMapType_6208_6268_14489#PolymorphicMapType_6208| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6208_6268_14489#PolymorphicMapType_6208| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_6268_14622) ) (!  (=> (select (|PolymorphicMapType_6757_6268_15602#PolymorphicMapType_6757| (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@3) null (WandMaskField_6268 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@3) o2@@6 f_2@@6) (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_6268_16129 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6208) (ExhaleHeap@@3 T@PolymorphicMapType_6208) (Mask@@4 T@PolymorphicMapType_6229) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| Heap@@4) o_1 $allocated) (select (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_6268_14489) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6268_6268 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6268_6268 p v_1 p w))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6208) (ExhaleHeap@@4 T@PolymorphicMapType_6208) (Mask@@5 T@PolymorphicMapType_6229) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6229) (o_2@@3 T@Ref) (f_4@@3 T@Field_6268_14622) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6229_6268_18183#PolymorphicMapType_6229| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6268_19092 f_4@@3))) (not (IsWandField_6268_19108 f_4@@3))) (<= (select (|PolymorphicMapType_6229_6268_18183#PolymorphicMapType_6229| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6229_6268_18183#PolymorphicMapType_6229| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6229) (o_2@@4 T@Ref) (f_4@@4 T@Field_6268_14489) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6229_6268_14489#PolymorphicMapType_6229| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6268_14580 f_4@@4))) (not (IsWandField_6268_16129 f_4@@4))) (<= (select (|PolymorphicMapType_6229_6268_14489#PolymorphicMapType_6229| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6229_6268_14489#PolymorphicMapType_6229| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6229) (o_2@@5 T@Ref) (f_4@@5 T@Field_6281_6282) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6229_6268_6282#PolymorphicMapType_6229| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6268_6282 f_4@@5))) (not (IsWandField_6268_6282 f_4@@5))) (<= (select (|PolymorphicMapType_6229_6268_6282#PolymorphicMapType_6229| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6229_6268_6282#PolymorphicMapType_6229| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6229) (o_2@@6 T@Ref) (f_4@@6 T@Field_6268_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6229_6268_53#PolymorphicMapType_6229| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6268_53 f_4@@6))) (not (IsWandField_6268_53 f_4@@6))) (<= (select (|PolymorphicMapType_6229_6268_53#PolymorphicMapType_6229| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6229_6268_53#PolymorphicMapType_6229| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((a@@4 (Array Int Bool)) (b@@3 (Array Int Bool)) ) (! (= (|Set#Equal_3201| a@@4 b@@3) (forall ((o@@0 Int) ) (! (= (select a@@4 o@@0) (select b@@3 o@@0))
 :qid |stdinbpl.258:31|
 :skolemid |48|
 :pattern ( (select a@@4 o@@0))
 :pattern ( (select b@@3 o@@0))
)))
 :qid |stdinbpl.257:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_3201| a@@4 b@@3))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6229) (o_2@@7 T@Ref) (f_4@@7 T@Field_6268_14622) ) (! (= (HasDirectPerm_6268_19463 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_6229_6268_18183#PolymorphicMapType_6229| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6268_19463 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6229) (o_2@@8 T@Ref) (f_4@@8 T@Field_6268_14489) ) (! (= (HasDirectPerm_6268_14553 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_6229_6268_14489#PolymorphicMapType_6229| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6268_14553 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6229) (o_2@@9 T@Ref) (f_4@@9 T@Field_6281_6282) ) (! (= (HasDirectPerm_6268_6282 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6229_6268_6282#PolymorphicMapType_6229| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6268_6282 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6229) (o_2@@10 T@Ref) (f_4@@10 T@Field_6268_53) ) (! (= (HasDirectPerm_6268_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6229_6268_53#PolymorphicMapType_6229| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6268_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6208) (ExhaleHeap@@5 T@PolymorphicMapType_6208) (Mask@@14 T@PolymorphicMapType_6229) (o_1@@0 T@Ref) (f_2@@7 T@Field_6268_14622) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_6268_19463 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@6) o_1@@0 f_2@@7) (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6208) (ExhaleHeap@@6 T@PolymorphicMapType_6208) (Mask@@15 T@PolymorphicMapType_6229) (o_1@@1 T@Ref) (f_2@@8 T@Field_6268_14489) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_6268_14553 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_6208_6268_14489#PolymorphicMapType_6208| Heap@@7) o_1@@1 f_2@@8) (select (|PolymorphicMapType_6208_6268_14489#PolymorphicMapType_6208| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_6208_6268_14489#PolymorphicMapType_6208| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6208) (ExhaleHeap@@7 T@PolymorphicMapType_6208) (Mask@@16 T@PolymorphicMapType_6229) (o_1@@2 T@Ref) (f_2@@9 T@Field_6281_6282) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_6268_6282 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| Heap@@8) o_1@@2 f_2@@9) (select (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6208) (ExhaleHeap@@8 T@PolymorphicMapType_6208) (Mask@@17 T@PolymorphicMapType_6229) (o_1@@3 T@Ref) (f_2@@10 T@Field_6268_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_6268_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| Heap@@9) o_1@@3 f_2@@10) (select (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6268_14622) ) (! (= (select (|PolymorphicMapType_6229_6268_18183#PolymorphicMapType_6229| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6229_6268_18183#PolymorphicMapType_6229| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6268_14489) ) (! (= (select (|PolymorphicMapType_6229_6268_14489#PolymorphicMapType_6229| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6229_6268_14489#PolymorphicMapType_6229| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6281_6282) ) (! (= (select (|PolymorphicMapType_6229_6268_6282#PolymorphicMapType_6229| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6229_6268_6282#PolymorphicMapType_6229| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6268_53) ) (! (= (select (|PolymorphicMapType_6229_6268_53#PolymorphicMapType_6229| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6229_6268_53#PolymorphicMapType_6229| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6229) (SummandMask1 T@PolymorphicMapType_6229) (SummandMask2 T@PolymorphicMapType_6229) (o_2@@15 T@Ref) (f_4@@15 T@Field_6268_14622) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6229_6268_18183#PolymorphicMapType_6229| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_6229_6268_18183#PolymorphicMapType_6229| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_6229_6268_18183#PolymorphicMapType_6229| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6229_6268_18183#PolymorphicMapType_6229| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6229_6268_18183#PolymorphicMapType_6229| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6229_6268_18183#PolymorphicMapType_6229| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6229) (SummandMask1@@0 T@PolymorphicMapType_6229) (SummandMask2@@0 T@PolymorphicMapType_6229) (o_2@@16 T@Ref) (f_4@@16 T@Field_6268_14489) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6229_6268_14489#PolymorphicMapType_6229| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_6229_6268_14489#PolymorphicMapType_6229| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_6229_6268_14489#PolymorphicMapType_6229| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6229_6268_14489#PolymorphicMapType_6229| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6229_6268_14489#PolymorphicMapType_6229| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6229_6268_14489#PolymorphicMapType_6229| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6229) (SummandMask1@@1 T@PolymorphicMapType_6229) (SummandMask2@@1 T@PolymorphicMapType_6229) (o_2@@17 T@Ref) (f_4@@17 T@Field_6281_6282) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6229_6268_6282#PolymorphicMapType_6229| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_6229_6268_6282#PolymorphicMapType_6229| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_6229_6268_6282#PolymorphicMapType_6229| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6229_6268_6282#PolymorphicMapType_6229| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6229_6268_6282#PolymorphicMapType_6229| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6229_6268_6282#PolymorphicMapType_6229| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6229) (SummandMask1@@2 T@PolymorphicMapType_6229) (SummandMask2@@2 T@PolymorphicMapType_6229) (o_2@@18 T@Ref) (f_4@@18 T@Field_6268_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6229_6268_53#PolymorphicMapType_6229| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_6229_6268_53#PolymorphicMapType_6229| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_6229_6268_53#PolymorphicMapType_6229| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6229_6268_53#PolymorphicMapType_6229| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6229_6268_53#PolymorphicMapType_6229| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6229_6268_53#PolymorphicMapType_6229| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@5 (Array Int Bool)) (b@@4 (Array Int Bool)) (o@@1 Int) ) (! (= (select (|Set#Intersection_3| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (select b@@4 o@@1)))
 :qid |stdinbpl.222:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_3| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Intersection_3| a@@5 b@@4) (select a@@5 o@@1))
 :pattern ( (|Set#Intersection_3| a@@5 b@@4) (select b@@4 o@@1))
)))
(assert (forall ((a@@6 (Array Int Bool)) (b@@5 (Array Int Bool)) (o@@2 Int) ) (! (= (select (|Set#Difference_3201| a@@6 b@@5) o@@2)  (and (select a@@6 o@@2) (not (select b@@5 o@@2))))
 :qid |stdinbpl.237:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_3201| a@@6 b@@5) o@@2))
 :pattern ( (|Set#Difference_3201| a@@6 b@@5) (select a@@6 o@@2))
)))
(assert (forall ((a@@7 (Array Int Bool)) (b@@6 (Array Int Bool)) ) (!  (=> (|Set#Equal_3201| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.259:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_3201| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array Int Bool)) (x Int) (y Int) ) (!  (=> (select a@@8 y) (select (|Set#UnionOne_3| a@@8 x) y))
 :qid |stdinbpl.202:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_3| a@@8 x) (select a@@8 y))
)))
(assert (forall ((a@@9 (Array Int Bool)) (b@@7 (Array Int Bool)) (y@@0 Int) ) (!  (=> (select a@@9 y@@0) (select (|Set#Union_3330| a@@9 b@@7) y@@0))
 :qid |stdinbpl.212:18|
 :skolemid |35|
 :pattern ( (|Set#Union_3330| a@@9 b@@7) (select a@@9 y@@0))
)))
(assert (forall ((a@@10 (Array Int Bool)) (b@@8 (Array Int Bool)) (y@@1 Int) ) (!  (=> (select b@@8 y@@1) (select (|Set#Union_3330| a@@10 b@@8) y@@1))
 :qid |stdinbpl.214:18|
 :skolemid |36|
 :pattern ( (|Set#Union_3330| a@@10 b@@8) (select b@@8 y@@1))
)))
(assert (forall ((a@@11 (Array Int Bool)) (x@@0 Int) (o@@3 Int) ) (! (= (select (|Set#UnionOne_3| a@@11 x@@0) o@@3)  (or (= o@@3 x@@0) (select a@@11 o@@3)))
 :qid |stdinbpl.198:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_3| a@@11 x@@0) o@@3))
)))
(assert (forall ((a@@12 (Array Int Bool)) (b@@9 (Array Int Bool)) (y@@2 Int) ) (!  (=> (select b@@9 y@@2) (not (select (|Set#Difference_3201| a@@12 b@@9) y@@2)))
 :qid |stdinbpl.239:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_3201| a@@12 b@@9) (select b@@9 y@@2))
)))
(assert (forall ((a@@13 (Array Int Bool)) (b@@10 (Array Int Bool)) ) (!  (and (= (+ (+ (|Set#Card_3201| (|Set#Difference_3201| a@@13 b@@10)) (|Set#Card_3201| (|Set#Difference_3201| b@@10 a@@13))) (|Set#Card_3201| (|Set#Intersection_3| a@@13 b@@10))) (|Set#Card_3201| (|Set#Union_3330| a@@13 b@@10))) (= (|Set#Card_3201| (|Set#Difference_3201| a@@13 b@@10)) (- (|Set#Card_3201| a@@13) (|Set#Card_3201| (|Set#Intersection_3| a@@13 b@@10)))))
 :qid |stdinbpl.241:18|
 :skolemid |45|
 :pattern ( (|Set#Card_3201| (|Set#Difference_3201| a@@13 b@@10)))
)))
(assert (forall ((s (Array Int Bool)) ) (! (<= 0 (|Set#Card_3201| s))
 :qid |stdinbpl.184:18|
 :skolemid |22|
 :pattern ( (|Set#Card_3201| s))
)))
(assert (forall ((a@@14 (Array Int Bool)) (x@@1 Int) ) (! (select (|Set#UnionOne_3| a@@14 x@@1) x@@1)
 :qid |stdinbpl.200:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_3| a@@14 x@@1))
)))
(assert (forall ((a@@15 (Array Int Bool)) (x@@2 Int) ) (!  (=> (select a@@15 x@@2) (= (|Set#Card_3201| (|Set#UnionOne_3| a@@15 x@@2)) (|Set#Card_3201| a@@15)))
 :qid |stdinbpl.204:18|
 :skolemid |32|
 :pattern ( (|Set#Card_3201| (|Set#UnionOne_3| a@@15 x@@2)))
)))
(assert (forall ((r@@0 Int) ) (! (= (|Set#Card_3201| (|Set#Singleton_3186| r@@0)) 1)
 :qid |stdinbpl.195:18|
 :skolemid |28|
 :pattern ( (|Set#Card_3201| (|Set#Singleton_3186| r@@0)))
)))
(assert (forall ((r@@1 Int) ) (! (select (|Set#Singleton_3186| r@@1) r@@1)
 :qid |stdinbpl.193:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_3186| r@@1))
)))
(assert (forall ((a@@16 (Array Int Bool)) (b@@11 (Array Int Bool)) ) (! (= (|Set#Union_3330| a@@16 (|Set#Union_3330| a@@16 b@@11)) (|Set#Union_3330| a@@16 b@@11))
 :qid |stdinbpl.227:18|
 :skolemid |39|
 :pattern ( (|Set#Union_3330| a@@16 (|Set#Union_3330| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array Int Bool)) (b@@12 (Array Int Bool)) ) (! (= (|Set#Intersection_3| a@@17 (|Set#Intersection_3| a@@17 b@@12)) (|Set#Intersection_3| a@@17 b@@12))
 :qid |stdinbpl.231:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_3| a@@17 (|Set#Intersection_3| a@@17 b@@12)))
)))
(assert (forall ((o@@4 Int) ) (!  (not (select |Set#Empty_3234| o@@4))
 :qid |stdinbpl.187:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_3234| o@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6208) (o@@5 T@Ref) (f_3 T@Field_6268_14489) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_6208 (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| Heap@@10) (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| Heap@@10) (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@10) (store (|PolymorphicMapType_6208_6268_14489#PolymorphicMapType_6208| Heap@@10) o@@5 f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6208 (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| Heap@@10) (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| Heap@@10) (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@10) (store (|PolymorphicMapType_6208_6268_14489#PolymorphicMapType_6208| Heap@@10) o@@5 f_3 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6208) (o@@6 T@Ref) (f_3@@0 T@Field_6268_14622) (v@@0 T@PolymorphicMapType_6757) ) (! (succHeap Heap@@11 (PolymorphicMapType_6208 (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| Heap@@11) (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| Heap@@11) (store (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@11) o@@6 f_3@@0 v@@0) (|PolymorphicMapType_6208_6268_14489#PolymorphicMapType_6208| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6208 (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| Heap@@11) (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| Heap@@11) (store (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@11) o@@6 f_3@@0 v@@0) (|PolymorphicMapType_6208_6268_14489#PolymorphicMapType_6208| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6208) (o@@7 T@Ref) (f_3@@1 T@Field_6281_6282) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_6208 (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| Heap@@12) (store (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| Heap@@12) o@@7 f_3@@1 v@@1) (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@12) (|PolymorphicMapType_6208_6268_14489#PolymorphicMapType_6208| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6208 (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| Heap@@12) (store (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| Heap@@12) o@@7 f_3@@1 v@@1) (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@12) (|PolymorphicMapType_6208_6268_14489#PolymorphicMapType_6208| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6208) (o@@8 T@Ref) (f_3@@2 T@Field_6268_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_6208 (store (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| Heap@@13) o@@8 f_3@@2 v@@2) (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| Heap@@13) (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@13) (|PolymorphicMapType_6208_6268_14489#PolymorphicMapType_6208| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6208 (store (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| Heap@@13) o@@8 f_3@@2 v@@2) (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| Heap@@13) (|PolymorphicMapType_6208_6268_14666#PolymorphicMapType_6208| Heap@@13) (|PolymorphicMapType_6208_6268_14489#PolymorphicMapType_6208| Heap@@13)))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.271:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.272:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@0 (Array Int Bool)) ) (!  (and (= (= (|Set#Card_3201| s@@0) 0) (= s@@0 |Set#Empty_3234|)) (=> (not (= (|Set#Card_3201| s@@0) 0)) (exists ((x@@3 Int) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.190:33|
 :skolemid |24|
))))
 :qid |stdinbpl.188:18|
 :skolemid |25|
 :pattern ( (|Set#Card_3201| s@@0))
)))
(assert (forall ((a@@20 (Array Int Bool)) (x@@4 Int) ) (!  (=> (not (select a@@20 x@@4)) (= (|Set#Card_3201| (|Set#UnionOne_3| a@@20 x@@4)) (+ (|Set#Card_3201| a@@20) 1)))
 :qid |stdinbpl.206:18|
 :skolemid |33|
 :pattern ( (|Set#Card_3201| (|Set#UnionOne_3| a@@20 x@@4)))
)))
(assert (forall ((o@@9 T@Ref) (f T@Field_6281_6282) (Heap@@14 T@PolymorphicMapType_6208) ) (!  (=> (select (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| Heap@@14) o@@9 $allocated) (select (|PolymorphicMapType_6208_3511_53#PolymorphicMapType_6208| Heap@@14) (select (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| Heap@@14) o@@9 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6208_3514_3515#PolymorphicMapType_6208| Heap@@14) o@@9 f))
)))
(assert (forall ((p@@1 T@Field_6268_14489) (v_1@@0 T@FrameType) (q T@Field_6268_14489) (w@@0 T@FrameType) (r@@2 T@Field_6268_14489) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6268_6268 p@@1 v_1@@0 q w@@0) (InsidePredicate_6268_6268 q w@@0 r@@2 u)) (InsidePredicate_6268_6268 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6268_6268 p@@1 v_1@@0 q w@@0) (InsidePredicate_6268_6268 q w@@0 r@@2 u))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.277:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array Int Bool)) (b@@15 (Array Int Bool)) (o@@10 Int) ) (! (= (select (|Set#Union_3330| a@@22 b@@15) o@@10)  (or (select a@@22 o@@10) (select b@@15 o@@10)))
 :qid |stdinbpl.210:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_3330| a@@22 b@@15) o@@10))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@15 () T@PolymorphicMapType_6208)
(declare-fun n@0 () (Array Int Bool))
(declare-fun x@@5 () Int)
(set-info :boogie-vc-id t1)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (and (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (= n@0 |Set#Empty_3234|) (state Heap@@15 ZeroMask))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (|Set#Card_3201| n@0) 0)) (=> (= (|Set#Card_3201| n@0) 0) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (|Set#Equal_3201| n@0 (|Set#Singleton_3186| x@@5)))) (=> (not (|Set#Equal_3201| n@0 (|Set#Singleton_3186| x@@5))) (=> (and (state Heap@@15 ZeroMask) (= (ControlFlow 0 2) (- 0 1))) (= (|Set#Card_3201| (|Set#Singleton_3186| 1)) 1))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
