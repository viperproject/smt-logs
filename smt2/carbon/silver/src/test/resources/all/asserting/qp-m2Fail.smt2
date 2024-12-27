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
(declare-sort T@Field_9285_53 0)
(declare-sort T@Field_9298_9299 0)
(declare-sort T@Field_15477_3331 0)
(declare-sort T@Field_9285_24867 0)
(declare-sort T@Field_9285_24734 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_9246 0)) (((PolymorphicMapType_9246 (|PolymorphicMapType_9246_5793_3331#PolymorphicMapType_9246| (Array T@Ref T@Field_15477_3331 Real)) (|PolymorphicMapType_9246_5793_53#PolymorphicMapType_9246| (Array T@Ref T@Field_9285_53 Real)) (|PolymorphicMapType_9246_5793_9299#PolymorphicMapType_9246| (Array T@Ref T@Field_9298_9299 Real)) (|PolymorphicMapType_9246_5793_24734#PolymorphicMapType_9246| (Array T@Ref T@Field_9285_24734 Real)) (|PolymorphicMapType_9246_5793_28989#PolymorphicMapType_9246| (Array T@Ref T@Field_9285_24867 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9774 0)) (((PolymorphicMapType_9774 (|PolymorphicMapType_9774_9285_53#PolymorphicMapType_9774| (Array T@Ref T@Field_9285_53 Bool)) (|PolymorphicMapType_9774_9285_9299#PolymorphicMapType_9774| (Array T@Ref T@Field_9298_9299 Bool)) (|PolymorphicMapType_9774_9285_3331#PolymorphicMapType_9774| (Array T@Ref T@Field_15477_3331 Bool)) (|PolymorphicMapType_9774_9285_24734#PolymorphicMapType_9774| (Array T@Ref T@Field_9285_24734 Bool)) (|PolymorphicMapType_9774_9285_26045#PolymorphicMapType_9774| (Array T@Ref T@Field_9285_24867 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9225 0)) (((PolymorphicMapType_9225 (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| (Array T@Ref T@Field_9285_53 Bool)) (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| (Array T@Ref T@Field_9298_9299 T@Ref)) (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| (Array T@Ref T@Field_15477_3331 Int)) (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| (Array T@Ref T@Field_9285_24867 T@PolymorphicMapType_9774)) (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| (Array T@Ref T@Field_9285_24734 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_9285_53)
(declare-fun f_7 () T@Field_15477_3331)
(declare-fun succHeap (T@PolymorphicMapType_9225 T@PolymorphicMapType_9225) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9225 T@PolymorphicMapType_9225) Bool)
(declare-fun state (T@PolymorphicMapType_9225 T@PolymorphicMapType_9246) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9246) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9774)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_5798| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_5798| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_5798| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_5798| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9225 T@PolymorphicMapType_9225 T@PolymorphicMapType_9246) Bool)
(declare-fun IsPredicateField_9285_24825 (T@Field_9285_24734) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9285 (T@Field_9285_24734) T@Field_9285_24867)
(declare-fun HasDirectPerm_9285_24798 (T@PolymorphicMapType_9246 T@Ref T@Field_9285_24734) Bool)
(declare-fun IsWandField_9285_26572 (T@Field_9285_24734) Bool)
(declare-fun WandMaskField_9285 (T@Field_9285_24734) T@Field_9285_24867)
(declare-fun dummyHeap () T@PolymorphicMapType_9225)
(declare-fun ZeroMask () T@PolymorphicMapType_9246)
(declare-fun InsidePredicate_9285_9285 (T@Field_9285_24734 T@FrameType T@Field_9285_24734 T@FrameType) Bool)
(declare-fun IsPredicateField_5793_3331 (T@Field_15477_3331) Bool)
(declare-fun IsWandField_5793_3331 (T@Field_15477_3331) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5793_30118 (T@Field_9285_24867) Bool)
(declare-fun IsWandField_5793_30134 (T@Field_9285_24867) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5793_9299 (T@Field_9298_9299) Bool)
(declare-fun IsWandField_5793_9299 (T@Field_9298_9299) Bool)
(declare-fun IsPredicateField_5793_53 (T@Field_9285_53) Bool)
(declare-fun IsWandField_5793_53 (T@Field_9285_53) Bool)
(declare-fun HasDirectPerm_9285_30572 (T@PolymorphicMapType_9246 T@Ref T@Field_9285_24867) Bool)
(declare-fun HasDirectPerm_9285_3331 (T@PolymorphicMapType_9246 T@Ref T@Field_15477_3331) Bool)
(declare-fun HasDirectPerm_9285_9299 (T@PolymorphicMapType_9246 T@Ref T@Field_9298_9299) Bool)
(declare-fun HasDirectPerm_9285_53 (T@PolymorphicMapType_9246 T@Ref T@Field_9285_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9246 T@PolymorphicMapType_9246 T@PolymorphicMapType_9246) Bool)
(declare-fun |Set#Difference_5798| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_5798| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Empty_5798| () (Array T@Ref Bool))
(assert (forall ((Heap0 T@PolymorphicMapType_9225) (Heap1 T@PolymorphicMapType_9225) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9225) (Mask T@PolymorphicMapType_9246) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9225) (Heap1@@0 T@PolymorphicMapType_9225) (Heap2 T@PolymorphicMapType_9225) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9285_24867) ) (!  (not (select (|PolymorphicMapType_9774_9285_26045#PolymorphicMapType_9774| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9774_9285_26045#PolymorphicMapType_9774| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9285_24734) ) (!  (not (select (|PolymorphicMapType_9774_9285_24734#PolymorphicMapType_9774| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9774_9285_24734#PolymorphicMapType_9774| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_15477_3331) ) (!  (not (select (|PolymorphicMapType_9774_9285_3331#PolymorphicMapType_9774| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9774_9285_3331#PolymorphicMapType_9774| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9298_9299) ) (!  (not (select (|PolymorphicMapType_9774_9285_9299#PolymorphicMapType_9774| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9774_9285_9299#PolymorphicMapType_9774| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9285_53) ) (!  (not (select (|PolymorphicMapType_9774_9285_53#PolymorphicMapType_9774| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9774_9285_53#PolymorphicMapType_9774| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.303:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_5798| (|Set#Union_5798| a@@0 b@@0) b@@0) (|Set#Union_5798| a@@0 b@@0))
 :qid |stdinbpl.255:18|
 :skolemid |38|
 :pattern ( (|Set#Union_5798| (|Set#Union_5798| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_5798| (|Set#Intersection_5798| a@@1 b@@1) b@@1) (|Set#Intersection_5798| a@@1 b@@1))
 :qid |stdinbpl.259:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_5798| (|Set#Intersection_5798| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_5798| r) o) (= r o))
 :qid |stdinbpl.224:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_5798| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_5798| (|Set#Union_5798| a@@2 b@@2)) (|Set#Card_5798| (|Set#Intersection_5798| a@@2 b@@2))) (+ (|Set#Card_5798| a@@2) (|Set#Card_5798| b@@2)))
 :qid |stdinbpl.263:18|
 :skolemid |42|
 :pattern ( (|Set#Card_5798| (|Set#Union_5798| a@@2 b@@2)))
 :pattern ( (|Set#Card_5798| (|Set#Intersection_5798| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.306:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9225) (ExhaleHeap T@PolymorphicMapType_9225) (Mask@@0 T@PolymorphicMapType_9246) (pm_f_1 T@Field_9285_24734) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9285_24798 Mask@@0 null pm_f_1) (IsPredicateField_9285_24825 pm_f_1)) (= (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@0) null (PredicateMaskField_9285 pm_f_1)) (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| ExhaleHeap) null (PredicateMaskField_9285 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_9285_24825 pm_f_1) (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| ExhaleHeap) null (PredicateMaskField_9285 pm_f_1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9225) (ExhaleHeap@@0 T@PolymorphicMapType_9225) (Mask@@1 T@PolymorphicMapType_9246) (pm_f_1@@0 T@Field_9285_24734) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9285_24798 Mask@@1 null pm_f_1@@0) (IsWandField_9285_26572 pm_f_1@@0)) (= (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@1) null (WandMaskField_9285 pm_f_1@@0)) (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| ExhaleHeap@@0) null (WandMaskField_9285 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_9285_26572 pm_f_1@@0) (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| ExhaleHeap@@0) null (WandMaskField_9285 pm_f_1@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9225) (ExhaleHeap@@1 T@PolymorphicMapType_9225) (Mask@@2 T@PolymorphicMapType_9246) (o_3 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| Heap@@2) o_3 $allocated) (select (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| ExhaleHeap@@1) o_3 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| ExhaleHeap@@1) o_3 $allocated))
)))
(assert (forall ((p T@Field_9285_24734) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9285_9285 p v_1 p w))
 :qid |stdinbpl.201:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9285_9285 p v_1 p w))
)))
(assert  (not (IsPredicateField_5793_3331 f_7)))
(assert  (not (IsWandField_5793_3331 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9225) (ExhaleHeap@@2 T@PolymorphicMapType_9225) (Mask@@3 T@PolymorphicMapType_9246) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_9246) (o_2@@4 T@Ref) (f_4@@4 T@Field_9285_24867) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_9246_5793_28989#PolymorphicMapType_9246| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_5793_30118 f_4@@4))) (not (IsWandField_5793_30134 f_4@@4))) (<= (select (|PolymorphicMapType_9246_5793_28989#PolymorphicMapType_9246| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_9246_5793_28989#PolymorphicMapType_9246| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_9246) (o_2@@5 T@Ref) (f_4@@5 T@Field_9285_24734) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_9246_5793_24734#PolymorphicMapType_9246| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_9285_24825 f_4@@5))) (not (IsWandField_9285_26572 f_4@@5))) (<= (select (|PolymorphicMapType_9246_5793_24734#PolymorphicMapType_9246| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_9246_5793_24734#PolymorphicMapType_9246| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_9246) (o_2@@6 T@Ref) (f_4@@6 T@Field_9298_9299) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_9246_5793_9299#PolymorphicMapType_9246| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5793_9299 f_4@@6))) (not (IsWandField_5793_9299 f_4@@6))) (<= (select (|PolymorphicMapType_9246_5793_9299#PolymorphicMapType_9246| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_9246_5793_9299#PolymorphicMapType_9246| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_9246) (o_2@@7 T@Ref) (f_4@@7 T@Field_9285_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_9246_5793_53#PolymorphicMapType_9246| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5793_53 f_4@@7))) (not (IsWandField_5793_53 f_4@@7))) (<= (select (|PolymorphicMapType_9246_5793_53#PolymorphicMapType_9246| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_9246_5793_53#PolymorphicMapType_9246| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9246) (o_2@@8 T@Ref) (f_4@@8 T@Field_15477_3331) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9246_5793_3331#PolymorphicMapType_9246| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5793_3331 f_4@@8))) (not (IsWandField_5793_3331 f_4@@8))) (<= (select (|PolymorphicMapType_9246_5793_3331#PolymorphicMapType_9246| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9246_5793_3331#PolymorphicMapType_9246| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9246) (o_2@@9 T@Ref) (f_4@@9 T@Field_9285_24867) ) (! (= (HasDirectPerm_9285_30572 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_9246_5793_28989#PolymorphicMapType_9246| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9285_30572 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9246) (o_2@@10 T@Ref) (f_4@@10 T@Field_9285_24734) ) (! (= (HasDirectPerm_9285_24798 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_9246_5793_24734#PolymorphicMapType_9246| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9285_24798 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9246) (o_2@@11 T@Ref) (f_4@@11 T@Field_15477_3331) ) (! (= (HasDirectPerm_9285_3331 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_9246_5793_3331#PolymorphicMapType_9246| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9285_3331 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9246) (o_2@@12 T@Ref) (f_4@@12 T@Field_9298_9299) ) (! (= (HasDirectPerm_9285_9299 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_9246_5793_9299#PolymorphicMapType_9246| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9285_9299 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9246) (o_2@@13 T@Ref) (f_4@@13 T@Field_9285_53) ) (! (= (HasDirectPerm_9285_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_9246_5793_53#PolymorphicMapType_9246| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9285_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9225) (ExhaleHeap@@3 T@PolymorphicMapType_9225) (Mask@@14 T@PolymorphicMapType_9246) (pm_f_1@@1 T@Field_9285_24734) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_9285_24798 Mask@@14 null pm_f_1@@1) (IsPredicateField_9285_24825 pm_f_1@@1)) (and (and (and (and (forall ((o2_1 T@Ref) (f_8 T@Field_9285_53) ) (!  (=> (select (|PolymorphicMapType_9774_9285_53#PolymorphicMapType_9774| (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@4) null (PredicateMaskField_9285 pm_f_1@@1))) o2_1 f_8) (= (select (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| Heap@@4) o2_1 f_8) (select (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| ExhaleHeap@@3) o2_1 f_8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| ExhaleHeap@@3) o2_1 f_8))
)) (forall ((o2_1@@0 T@Ref) (f_8@@0 T@Field_9298_9299) ) (!  (=> (select (|PolymorphicMapType_9774_9285_9299#PolymorphicMapType_9774| (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@4) null (PredicateMaskField_9285 pm_f_1@@1))) o2_1@@0 f_8@@0) (= (select (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| Heap@@4) o2_1@@0 f_8@@0) (select (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| ExhaleHeap@@3) o2_1@@0 f_8@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| ExhaleHeap@@3) o2_1@@0 f_8@@0))
))) (forall ((o2_1@@1 T@Ref) (f_8@@1 T@Field_15477_3331) ) (!  (=> (select (|PolymorphicMapType_9774_9285_3331#PolymorphicMapType_9774| (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@4) null (PredicateMaskField_9285 pm_f_1@@1))) o2_1@@1 f_8@@1) (= (select (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| Heap@@4) o2_1@@1 f_8@@1) (select (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| ExhaleHeap@@3) o2_1@@1 f_8@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| ExhaleHeap@@3) o2_1@@1 f_8@@1))
))) (forall ((o2_1@@2 T@Ref) (f_8@@2 T@Field_9285_24734) ) (!  (=> (select (|PolymorphicMapType_9774_9285_24734#PolymorphicMapType_9774| (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@4) null (PredicateMaskField_9285 pm_f_1@@1))) o2_1@@2 f_8@@2) (= (select (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| Heap@@4) o2_1@@2 f_8@@2) (select (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| ExhaleHeap@@3) o2_1@@2 f_8@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| ExhaleHeap@@3) o2_1@@2 f_8@@2))
))) (forall ((o2_1@@3 T@Ref) (f_8@@3 T@Field_9285_24867) ) (!  (=> (select (|PolymorphicMapType_9774_9285_26045#PolymorphicMapType_9774| (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@4) null (PredicateMaskField_9285 pm_f_1@@1))) o2_1@@3 f_8@@3) (= (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@4) o2_1@@3 f_8@@3) (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| ExhaleHeap@@3) o2_1@@3 f_8@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| ExhaleHeap@@3) o2_1@@3 f_8@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_9285_24825 pm_f_1@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9225) (ExhaleHeap@@4 T@PolymorphicMapType_9225) (Mask@@15 T@PolymorphicMapType_9246) (pm_f_1@@2 T@Field_9285_24734) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_9285_24798 Mask@@15 null pm_f_1@@2) (IsWandField_9285_26572 pm_f_1@@2)) (and (and (and (and (forall ((o2_1@@4 T@Ref) (f_8@@4 T@Field_9285_53) ) (!  (=> (select (|PolymorphicMapType_9774_9285_53#PolymorphicMapType_9774| (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@5) null (WandMaskField_9285 pm_f_1@@2))) o2_1@@4 f_8@@4) (= (select (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| Heap@@5) o2_1@@4 f_8@@4) (select (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| ExhaleHeap@@4) o2_1@@4 f_8@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| ExhaleHeap@@4) o2_1@@4 f_8@@4))
)) (forall ((o2_1@@5 T@Ref) (f_8@@5 T@Field_9298_9299) ) (!  (=> (select (|PolymorphicMapType_9774_9285_9299#PolymorphicMapType_9774| (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@5) null (WandMaskField_9285 pm_f_1@@2))) o2_1@@5 f_8@@5) (= (select (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| Heap@@5) o2_1@@5 f_8@@5) (select (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| ExhaleHeap@@4) o2_1@@5 f_8@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| ExhaleHeap@@4) o2_1@@5 f_8@@5))
))) (forall ((o2_1@@6 T@Ref) (f_8@@6 T@Field_15477_3331) ) (!  (=> (select (|PolymorphicMapType_9774_9285_3331#PolymorphicMapType_9774| (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@5) null (WandMaskField_9285 pm_f_1@@2))) o2_1@@6 f_8@@6) (= (select (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| Heap@@5) o2_1@@6 f_8@@6) (select (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| ExhaleHeap@@4) o2_1@@6 f_8@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| ExhaleHeap@@4) o2_1@@6 f_8@@6))
))) (forall ((o2_1@@7 T@Ref) (f_8@@7 T@Field_9285_24734) ) (!  (=> (select (|PolymorphicMapType_9774_9285_24734#PolymorphicMapType_9774| (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@5) null (WandMaskField_9285 pm_f_1@@2))) o2_1@@7 f_8@@7) (= (select (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| Heap@@5) o2_1@@7 f_8@@7) (select (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| ExhaleHeap@@4) o2_1@@7 f_8@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| ExhaleHeap@@4) o2_1@@7 f_8@@7))
))) (forall ((o2_1@@8 T@Ref) (f_8@@8 T@Field_9285_24867) ) (!  (=> (select (|PolymorphicMapType_9774_9285_26045#PolymorphicMapType_9774| (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@5) null (WandMaskField_9285 pm_f_1@@2))) o2_1@@8 f_8@@8) (= (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@5) o2_1@@8 f_8@@8) (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| ExhaleHeap@@4) o2_1@@8 f_8@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| ExhaleHeap@@4) o2_1@@8 f_8@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_9285_26572 pm_f_1@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.189:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9225) (ExhaleHeap@@5 T@PolymorphicMapType_9225) (Mask@@16 T@PolymorphicMapType_9246) (o_3@@0 T@Ref) (f_8@@9 T@Field_9285_24867) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_9285_30572 Mask@@16 o_3@@0 f_8@@9) (= (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@6) o_3@@0 f_8@@9) (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| ExhaleHeap@@5) o_3@@0 f_8@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| ExhaleHeap@@5) o_3@@0 f_8@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9225) (ExhaleHeap@@6 T@PolymorphicMapType_9225) (Mask@@17 T@PolymorphicMapType_9246) (o_3@@1 T@Ref) (f_8@@10 T@Field_9285_24734) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_9285_24798 Mask@@17 o_3@@1 f_8@@10) (= (select (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| Heap@@7) o_3@@1 f_8@@10) (select (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| ExhaleHeap@@6) o_3@@1 f_8@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| ExhaleHeap@@6) o_3@@1 f_8@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9225) (ExhaleHeap@@7 T@PolymorphicMapType_9225) (Mask@@18 T@PolymorphicMapType_9246) (o_3@@2 T@Ref) (f_8@@11 T@Field_15477_3331) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_9285_3331 Mask@@18 o_3@@2 f_8@@11) (= (select (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| Heap@@8) o_3@@2 f_8@@11) (select (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| ExhaleHeap@@7) o_3@@2 f_8@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| ExhaleHeap@@7) o_3@@2 f_8@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9225) (ExhaleHeap@@8 T@PolymorphicMapType_9225) (Mask@@19 T@PolymorphicMapType_9246) (o_3@@3 T@Ref) (f_8@@12 T@Field_9298_9299) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_9285_9299 Mask@@19 o_3@@3 f_8@@12) (= (select (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| Heap@@9) o_3@@3 f_8@@12) (select (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| ExhaleHeap@@8) o_3@@3 f_8@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| ExhaleHeap@@8) o_3@@3 f_8@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9225) (ExhaleHeap@@9 T@PolymorphicMapType_9225) (Mask@@20 T@PolymorphicMapType_9246) (o_3@@4 T@Ref) (f_8@@13 T@Field_9285_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_9285_53 Mask@@20 o_3@@4 f_8@@13) (= (select (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| Heap@@10) o_3@@4 f_8@@13) (select (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| ExhaleHeap@@9) o_3@@4 f_8@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| ExhaleHeap@@9) o_3@@4 f_8@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9285_24867) ) (! (= (select (|PolymorphicMapType_9246_5793_28989#PolymorphicMapType_9246| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9246_5793_28989#PolymorphicMapType_9246| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_9285_24734) ) (! (= (select (|PolymorphicMapType_9246_5793_24734#PolymorphicMapType_9246| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9246_5793_24734#PolymorphicMapType_9246| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_9298_9299) ) (! (= (select (|PolymorphicMapType_9246_5793_9299#PolymorphicMapType_9246| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9246_5793_9299#PolymorphicMapType_9246| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_9285_53) ) (! (= (select (|PolymorphicMapType_9246_5793_53#PolymorphicMapType_9246| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9246_5793_53#PolymorphicMapType_9246| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_15477_3331) ) (! (= (select (|PolymorphicMapType_9246_5793_3331#PolymorphicMapType_9246| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9246_5793_3331#PolymorphicMapType_9246| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9246) (SummandMask1 T@PolymorphicMapType_9246) (SummandMask2 T@PolymorphicMapType_9246) (o_2@@19 T@Ref) (f_4@@19 T@Field_9285_24867) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9246_5793_28989#PolymorphicMapType_9246| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_9246_5793_28989#PolymorphicMapType_9246| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_9246_5793_28989#PolymorphicMapType_9246| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9246_5793_28989#PolymorphicMapType_9246| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9246_5793_28989#PolymorphicMapType_9246| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9246_5793_28989#PolymorphicMapType_9246| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9246) (SummandMask1@@0 T@PolymorphicMapType_9246) (SummandMask2@@0 T@PolymorphicMapType_9246) (o_2@@20 T@Ref) (f_4@@20 T@Field_9285_24734) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9246_5793_24734#PolymorphicMapType_9246| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_9246_5793_24734#PolymorphicMapType_9246| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_9246_5793_24734#PolymorphicMapType_9246| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9246_5793_24734#PolymorphicMapType_9246| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9246_5793_24734#PolymorphicMapType_9246| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9246_5793_24734#PolymorphicMapType_9246| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9246) (SummandMask1@@1 T@PolymorphicMapType_9246) (SummandMask2@@1 T@PolymorphicMapType_9246) (o_2@@21 T@Ref) (f_4@@21 T@Field_9298_9299) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9246_5793_9299#PolymorphicMapType_9246| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_9246_5793_9299#PolymorphicMapType_9246| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_9246_5793_9299#PolymorphicMapType_9246| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9246_5793_9299#PolymorphicMapType_9246| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9246_5793_9299#PolymorphicMapType_9246| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9246_5793_9299#PolymorphicMapType_9246| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9246) (SummandMask1@@2 T@PolymorphicMapType_9246) (SummandMask2@@2 T@PolymorphicMapType_9246) (o_2@@22 T@Ref) (f_4@@22 T@Field_9285_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9246_5793_53#PolymorphicMapType_9246| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_9246_5793_53#PolymorphicMapType_9246| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_9246_5793_53#PolymorphicMapType_9246| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9246_5793_53#PolymorphicMapType_9246| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9246_5793_53#PolymorphicMapType_9246| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9246_5793_53#PolymorphicMapType_9246| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9246) (SummandMask1@@3 T@PolymorphicMapType_9246) (SummandMask2@@3 T@PolymorphicMapType_9246) (o_2@@23 T@Ref) (f_4@@23 T@Field_15477_3331) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9246_5793_3331#PolymorphicMapType_9246| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_9246_5793_3331#PolymorphicMapType_9246| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_9246_5793_3331#PolymorphicMapType_9246| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9246_5793_3331#PolymorphicMapType_9246| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9246_5793_3331#PolymorphicMapType_9246| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9246_5793_3331#PolymorphicMapType_9246| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_5798| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.252:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_5798| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_5798| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_5798| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_5798| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.267:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_5798| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_5798| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_5798| a@@6 x) y))
 :qid |stdinbpl.232:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_5798| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_5798| a@@7 b@@5) y@@0))
 :qid |stdinbpl.242:18|
 :skolemid |35|
 :pattern ( (|Set#Union_5798| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_5798| a@@8 b@@6) y@@1))
 :qid |stdinbpl.244:18|
 :skolemid |36|
 :pattern ( (|Set#Union_5798| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_5798| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.228:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_5798| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_5798| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.269:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_5798| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_5798| (|Set#Difference_5798| a@@11 b@@8)) (|Set#Card_5798| (|Set#Difference_5798| b@@8 a@@11))) (|Set#Card_5798| (|Set#Intersection_5798| a@@11 b@@8))) (|Set#Card_5798| (|Set#Union_5798| a@@11 b@@8))) (= (|Set#Card_5798| (|Set#Difference_5798| a@@11 b@@8)) (- (|Set#Card_5798| a@@11) (|Set#Card_5798| (|Set#Intersection_5798| a@@11 b@@8)))))
 :qid |stdinbpl.271:18|
 :skolemid |45|
 :pattern ( (|Set#Card_5798| (|Set#Difference_5798| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_5798| s))
 :qid |stdinbpl.214:18|
 :skolemid |22|
 :pattern ( (|Set#Card_5798| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_5798| a@@12 x@@1) x@@1)
 :qid |stdinbpl.230:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_5798| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_5798| (|Set#UnionOne_5798| a@@13 x@@2)) (|Set#Card_5798| a@@13)))
 :qid |stdinbpl.234:18|
 :skolemid |32|
 :pattern ( (|Set#Card_5798| (|Set#UnionOne_5798| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_5798| (|Set#Singleton_5798| r@@0)) 1)
 :qid |stdinbpl.225:18|
 :skolemid |28|
 :pattern ( (|Set#Card_5798| (|Set#Singleton_5798| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_5798| r@@1) r@@1)
 :qid |stdinbpl.223:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_5798| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_5798| a@@14 (|Set#Union_5798| a@@14 b@@9)) (|Set#Union_5798| a@@14 b@@9))
 :qid |stdinbpl.257:18|
 :skolemid |39|
 :pattern ( (|Set#Union_5798| a@@14 (|Set#Union_5798| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_5798| a@@15 (|Set#Intersection_5798| a@@15 b@@10)) (|Set#Intersection_5798| a@@15 b@@10))
 :qid |stdinbpl.261:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_5798| a@@15 (|Set#Intersection_5798| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_5798| o@@3))
 :qid |stdinbpl.217:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_5798| o@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9225) (o_1 T@Ref) (f_9 T@Field_9285_24734) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_9225 (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| Heap@@11) (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| Heap@@11) (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| Heap@@11) (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@11) (store (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| Heap@@11) o_1 f_9 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9225 (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| Heap@@11) (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| Heap@@11) (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| Heap@@11) (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@11) (store (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| Heap@@11) o_1 f_9 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9225) (o_1@@0 T@Ref) (f_9@@0 T@Field_9285_24867) (v@@0 T@PolymorphicMapType_9774) ) (! (succHeap Heap@@12 (PolymorphicMapType_9225 (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| Heap@@12) (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| Heap@@12) (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| Heap@@12) (store (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@12) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9225 (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| Heap@@12) (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| Heap@@12) (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| Heap@@12) (store (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@12) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9225) (o_1@@1 T@Ref) (f_9@@1 T@Field_15477_3331) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_9225 (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| Heap@@13) (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| Heap@@13) (store (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| Heap@@13) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@13) (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9225 (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| Heap@@13) (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| Heap@@13) (store (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| Heap@@13) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@13) (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9225) (o_1@@2 T@Ref) (f_9@@2 T@Field_9298_9299) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_9225 (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| Heap@@14) (store (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| Heap@@14) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| Heap@@14) (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@14) (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9225 (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| Heap@@14) (store (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| Heap@@14) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| Heap@@14) (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@14) (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9225) (o_1@@3 T@Ref) (f_9@@3 T@Field_9285_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_9225 (store (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| Heap@@15) o_1@@3 f_9@@3 v@@3) (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| Heap@@15) (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| Heap@@15) (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@15) (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9225 (store (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| Heap@@15) o_1@@3 f_9@@3 v@@3) (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| Heap@@15) (|PolymorphicMapType_9225_5793_3331#PolymorphicMapType_9225| Heap@@15) (|PolymorphicMapType_9225_9285_24911#PolymorphicMapType_9225| Heap@@15) (|PolymorphicMapType_9225_9285_24734#PolymorphicMapType_9225| Heap@@15)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.301:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.302:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_5798| s@@0) 0) (= s@@0 |Set#Empty_5798|)) (=> (not (= (|Set#Card_5798| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.220:33|
 :skolemid |24|
))))
 :qid |stdinbpl.218:18|
 :skolemid |25|
 :pattern ( (|Set#Card_5798| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_5798| (|Set#UnionOne_5798| a@@18 x@@4)) (+ (|Set#Card_5798| a@@18) 1)))
 :qid |stdinbpl.236:18|
 :skolemid |33|
 :pattern ( (|Set#Card_5798| (|Set#UnionOne_5798| a@@18 x@@4)))
)))
(assert (forall ((o_1@@4 T@Ref) (f_2 T@Field_9298_9299) (Heap@@16 T@PolymorphicMapType_9225) ) (!  (=> (select (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| Heap@@16) o_1@@4 $allocated) (select (|PolymorphicMapType_9225_5480_53#PolymorphicMapType_9225| Heap@@16) (select (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| Heap@@16) o_1@@4 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9225_5483_5484#PolymorphicMapType_9225| Heap@@16) o_1@@4 f_2))
)))
(assert (forall ((p@@1 T@Field_9285_24734) (v_1@@0 T@FrameType) (q T@Field_9285_24734) (w@@0 T@FrameType) (r@@2 T@Field_9285_24734) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9285_9285 p@@1 v_1@@0 q w@@0) (InsidePredicate_9285_9285 q w@@0 r@@2 u)) (InsidePredicate_9285_9285 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9285_9285 p@@1 v_1@@0 q w@@0) (InsidePredicate_9285_9285 q w@@0 r@@2 u))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.307:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_5798| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.240:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_5798| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun s_2 () (Array T@Ref Bool))
(declare-fun x_11 () T@Ref)
(declare-fun Heap@@17 () T@PolymorphicMapType_9225)
(set-info :boogie-vc-id m2Fail)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon3_correct true))
(let ((anon6_Else_correct  (=> (and (not (select s_2 x_11)) (= (ControlFlow 0 6) 3)) anon3_correct)))
(let ((anon6_Then_correct  (=> (select s_2 x_11) (and (=> (= (ControlFlow 0 4) (- 0 5)) (not (= x_11 null))) (=> (not (= x_11 null)) (=> (= (ControlFlow 0 4) 3) anon3_correct))))))
(let ((anon5_Else_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select s_2 x_1)) (select s_2 x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.703:15|
 :skolemid |100|
)))))
(let ((anon0_correct  (=> (and (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (> (|Set#Card_5798| s_2) 0) (state Heap@@17 ZeroMask))) (and (and (=> (= (ControlFlow 0 7) 2) anon5_Else_correct) (=> (= (ControlFlow 0 7) 4) anon6_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon6_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
