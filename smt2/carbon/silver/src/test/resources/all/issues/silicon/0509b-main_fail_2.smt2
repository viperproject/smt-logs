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
(declare-sort T@Field_12203_53 0)
(declare-sort T@Field_12216_12217 0)
(declare-sort T@Field_18372_3190 0)
(declare-sort T@Field_6600_34381 0)
(declare-sort T@Field_6600_34248 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12164 0)) (((PolymorphicMapType_12164 (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| (Array T@Ref T@Field_18372_3190 Real)) (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| (Array T@Ref T@Field_12203_53 Real)) (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| (Array T@Ref T@Field_12216_12217 Real)) (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| (Array T@Ref T@Field_6600_34248 Real)) (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| (Array T@Ref T@Field_6600_34381 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12692 0)) (((PolymorphicMapType_12692 (|PolymorphicMapType_12692_12203_53#PolymorphicMapType_12692| (Array T@Ref T@Field_12203_53 Bool)) (|PolymorphicMapType_12692_12203_12217#PolymorphicMapType_12692| (Array T@Ref T@Field_12216_12217 Bool)) (|PolymorphicMapType_12692_12203_3190#PolymorphicMapType_12692| (Array T@Ref T@Field_18372_3190 Bool)) (|PolymorphicMapType_12692_12203_34248#PolymorphicMapType_12692| (Array T@Ref T@Field_6600_34248 Bool)) (|PolymorphicMapType_12692_12203_35559#PolymorphicMapType_12692| (Array T@Ref T@Field_6600_34381 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12143 0)) (((PolymorphicMapType_12143 (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| (Array T@Ref T@Field_12203_53 Bool)) (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| (Array T@Ref T@Field_12216_12217 T@Ref)) (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| (Array T@Ref T@Field_18372_3190 Int)) (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| (Array T@Ref T@Field_6600_34381 T@PolymorphicMapType_12692)) (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| (Array T@Ref T@Field_6600_34248 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_12203_53)
(declare-fun f_7 () T@Field_18372_3190)
(declare-fun succHeap (T@PolymorphicMapType_12143 T@PolymorphicMapType_12143) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12143 T@PolymorphicMapType_12143) Bool)
(declare-fun state (T@PolymorphicMapType_12143 T@PolymorphicMapType_12164) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12164) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12692)
(declare-fun |lookup'| (T@PolymorphicMapType_12143 T@Ref Int) Int)
(declare-fun dummyFunction_3379 (Int) Bool)
(declare-fun |lookup#triggerStateless| (T@Ref Int) Int)
(declare-fun |lookup2'| (T@PolymorphicMapType_12143 T@Ref Int) Int)
(declare-fun |lookup2#triggerStateless| (T@Ref Int) Int)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_6643| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_6643| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_6643| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_6643| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12143 T@PolymorphicMapType_12143 T@PolymorphicMapType_12164) Bool)
(declare-fun IsPredicateField_6600_34339 (T@Field_6600_34248) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6600 (T@Field_6600_34248) T@Field_6600_34381)
(declare-fun HasDirectPerm_6600_34312 (T@PolymorphicMapType_12164 T@Ref T@Field_6600_34248) Bool)
(declare-fun IsWandField_6600_36086 (T@Field_6600_34248) Bool)
(declare-fun WandMaskField_6600 (T@Field_6600_34248) T@Field_6600_34381)
(declare-fun dummyHeap () T@PolymorphicMapType_12143)
(declare-fun ZeroMask () T@PolymorphicMapType_12164)
(declare-fun InsidePredicate_12203_12203 (T@Field_6600_34248 T@FrameType T@Field_6600_34248 T@FrameType) Bool)
(declare-fun IsPredicateField_6600_3190 (T@Field_18372_3190) Bool)
(declare-fun IsWandField_6600_3190 (T@Field_18372_3190) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6600_39632 (T@Field_6600_34381) Bool)
(declare-fun IsWandField_6600_39648 (T@Field_6600_34381) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6600_12217 (T@Field_12216_12217) Bool)
(declare-fun IsWandField_6600_12217 (T@Field_12216_12217) Bool)
(declare-fun IsPredicateField_6600_53 (T@Field_12203_53) Bool)
(declare-fun IsWandField_6600_53 (T@Field_12203_53) Bool)
(declare-fun HasDirectPerm_6600_40086 (T@PolymorphicMapType_12164 T@Ref T@Field_6600_34381) Bool)
(declare-fun HasDirectPerm_6600_12217 (T@PolymorphicMapType_12164 T@Ref T@Field_12216_12217) Bool)
(declare-fun HasDirectPerm_6600_53 (T@PolymorphicMapType_12164 T@Ref T@Field_12203_53) Bool)
(declare-fun HasDirectPerm_6600_3190 (T@PolymorphicMapType_12164 T@Ref T@Field_18372_3190) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun lookup (T@PolymorphicMapType_12143 T@Ref Int) Int)
(declare-fun lookup2 (T@PolymorphicMapType_12143 T@Ref Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_12164 T@PolymorphicMapType_12164 T@PolymorphicMapType_12164) Bool)
(declare-fun |Set#Difference_6643| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_6643| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |lookup#frame| (T@FrameType T@Ref Int) Int)
(declare-fun FrameFragment_3190 (Int) T@FrameType)
(declare-fun |lookup2#frame| (T@FrameType T@Ref Int) Int)
(declare-fun |Set#Empty_6643| () (Array T@Ref Bool))
(assert (forall ((Heap0 T@PolymorphicMapType_12143) (Heap1 T@PolymorphicMapType_12143) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12143) (Mask T@PolymorphicMapType_12164) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12143) (Heap1@@0 T@PolymorphicMapType_12143) (Heap2 T@PolymorphicMapType_12143) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6600_34381) ) (!  (not (select (|PolymorphicMapType_12692_12203_35559#PolymorphicMapType_12692| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12692_12203_35559#PolymorphicMapType_12692| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6600_34248) ) (!  (not (select (|PolymorphicMapType_12692_12203_34248#PolymorphicMapType_12692| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12692_12203_34248#PolymorphicMapType_12692| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18372_3190) ) (!  (not (select (|PolymorphicMapType_12692_12203_3190#PolymorphicMapType_12692| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12692_12203_3190#PolymorphicMapType_12692| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12216_12217) ) (!  (not (select (|PolymorphicMapType_12692_12203_12217#PolymorphicMapType_12692| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12692_12203_12217#PolymorphicMapType_12692| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12203_53) ) (!  (not (select (|PolymorphicMapType_12692_12203_53#PolymorphicMapType_12692| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12692_12203_53#PolymorphicMapType_12692| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12143) (r_1 T@Ref) (i Int) ) (! (dummyFunction_3379 (|lookup#triggerStateless| r_1 i))
 :qid |stdinbpl.390:15|
 :skolemid |83|
 :pattern ( (|lookup'| Heap@@0 r_1 i))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12143) (r_1@@0 T@Ref) (i@@0 Int) ) (! (dummyFunction_3379 (|lookup2#triggerStateless| r_1@@0 i@@0))
 :qid |stdinbpl.440:15|
 :skolemid |86|
 :pattern ( (|lookup2'| Heap@@1 r_1@@0 i@@0))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.277:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_6643| (|Set#Union_6643| a@@0 b@@0) b@@0) (|Set#Union_6643| a@@0 b@@0))
 :qid |stdinbpl.229:18|
 :skolemid |38|
 :pattern ( (|Set#Union_6643| (|Set#Union_6643| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_6643| (|Set#Intersection_6643| a@@1 b@@1) b@@1) (|Set#Intersection_6643| a@@1 b@@1))
 :qid |stdinbpl.233:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_6643| (|Set#Intersection_6643| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_6643| r) o) (= r o))
 :qid |stdinbpl.198:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_6643| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_6643| (|Set#Union_6643| a@@2 b@@2)) (|Set#Card_6643| (|Set#Intersection_6643| a@@2 b@@2))) (+ (|Set#Card_6643| a@@2) (|Set#Card_6643| b@@2)))
 :qid |stdinbpl.237:18|
 :skolemid |42|
 :pattern ( (|Set#Card_6643| (|Set#Union_6643| a@@2 b@@2)))
 :pattern ( (|Set#Card_6643| (|Set#Intersection_6643| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.280:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12143) (ExhaleHeap T@PolymorphicMapType_12143) (Mask@@0 T@PolymorphicMapType_12164) (pm_f_32 T@Field_6600_34248) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6600_34312 Mask@@0 null pm_f_32) (IsPredicateField_6600_34339 pm_f_32)) (= (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@2) null (PredicateMaskField_6600 pm_f_32)) (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| ExhaleHeap) null (PredicateMaskField_6600 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_6600_34339 pm_f_32) (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| ExhaleHeap) null (PredicateMaskField_6600 pm_f_32)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12143) (ExhaleHeap@@0 T@PolymorphicMapType_12143) (Mask@@1 T@PolymorphicMapType_12164) (pm_f_32@@0 T@Field_6600_34248) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6600_34312 Mask@@1 null pm_f_32@@0) (IsWandField_6600_36086 pm_f_32@@0)) (= (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@3) null (WandMaskField_6600 pm_f_32@@0)) (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| ExhaleHeap@@0) null (WandMaskField_6600 pm_f_32@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_6600_36086 pm_f_32@@0) (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| ExhaleHeap@@0) null (WandMaskField_6600 pm_f_32@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12143) (ExhaleHeap@@1 T@PolymorphicMapType_12143) (Mask@@2 T@PolymorphicMapType_12164) (o_55 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| Heap@@4) o_55 $allocated) (select (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| ExhaleHeap@@1) o_55 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| ExhaleHeap@@1) o_55 $allocated))
)))
(assert (forall ((p T@Field_6600_34248) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12203_12203 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12203_12203 p v_1 p w))
)))
(assert  (not (IsPredicateField_6600_3190 f_7)))
(assert  (not (IsWandField_6600_3190 f_7)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12143) (ExhaleHeap@@2 T@PolymorphicMapType_12143) (Mask@@3 T@PolymorphicMapType_12164) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_12164) (o_2@@4 T@Ref) (f_4@@4 T@Field_6600_34381) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_6600_39632 f_4@@4))) (not (IsWandField_6600_39648 f_4@@4))) (<= (select (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_12164) (o_2@@5 T@Ref) (f_4@@5 T@Field_6600_34248) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_6600_34339 f_4@@5))) (not (IsWandField_6600_36086 f_4@@5))) (<= (select (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_12164) (o_2@@6 T@Ref) (f_4@@6 T@Field_12216_12217) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6600_12217 f_4@@6))) (not (IsWandField_6600_12217 f_4@@6))) (<= (select (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_12164) (o_2@@7 T@Ref) (f_4@@7 T@Field_12203_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6600_53 f_4@@7))) (not (IsWandField_6600_53 f_4@@7))) (<= (select (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_12164) (o_2@@8 T@Ref) (f_4@@8 T@Field_18372_3190) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6600_3190 f_4@@8))) (not (IsWandField_6600_3190 f_4@@8))) (<= (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_12164) (o_2@@9 T@Ref) (f_4@@9 T@Field_6600_34381) ) (! (= (HasDirectPerm_6600_40086 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6600_40086 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12164) (o_2@@10 T@Ref) (f_4@@10 T@Field_6600_34248) ) (! (= (HasDirectPerm_6600_34312 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6600_34312 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12164) (o_2@@11 T@Ref) (f_4@@11 T@Field_12216_12217) ) (! (= (HasDirectPerm_6600_12217 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6600_12217 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12164) (o_2@@12 T@Ref) (f_4@@12 T@Field_12203_53) ) (! (= (HasDirectPerm_6600_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6600_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12164) (o_2@@13 T@Ref) (f_4@@13 T@Field_18372_3190) ) (! (= (HasDirectPerm_6600_3190 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6600_3190 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12143) (ExhaleHeap@@3 T@PolymorphicMapType_12143) (Mask@@14 T@PolymorphicMapType_12164) (pm_f_32@@1 T@Field_6600_34248) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_6600_34312 Mask@@14 null pm_f_32@@1) (IsPredicateField_6600_34339 pm_f_32@@1)) (and (and (and (and (forall ((o2_32 T@Ref) (f_54 T@Field_12203_53) ) (!  (=> (select (|PolymorphicMapType_12692_12203_53#PolymorphicMapType_12692| (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@6) null (PredicateMaskField_6600 pm_f_32@@1))) o2_32 f_54) (= (select (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| Heap@@6) o2_32 f_54) (select (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| ExhaleHeap@@3) o2_32 f_54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| ExhaleHeap@@3) o2_32 f_54))
)) (forall ((o2_32@@0 T@Ref) (f_54@@0 T@Field_12216_12217) ) (!  (=> (select (|PolymorphicMapType_12692_12203_12217#PolymorphicMapType_12692| (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@6) null (PredicateMaskField_6600 pm_f_32@@1))) o2_32@@0 f_54@@0) (= (select (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| Heap@@6) o2_32@@0 f_54@@0) (select (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| ExhaleHeap@@3) o2_32@@0 f_54@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| ExhaleHeap@@3) o2_32@@0 f_54@@0))
))) (forall ((o2_32@@1 T@Ref) (f_54@@1 T@Field_18372_3190) ) (!  (=> (select (|PolymorphicMapType_12692_12203_3190#PolymorphicMapType_12692| (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@6) null (PredicateMaskField_6600 pm_f_32@@1))) o2_32@@1 f_54@@1) (= (select (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| Heap@@6) o2_32@@1 f_54@@1) (select (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| ExhaleHeap@@3) o2_32@@1 f_54@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| ExhaleHeap@@3) o2_32@@1 f_54@@1))
))) (forall ((o2_32@@2 T@Ref) (f_54@@2 T@Field_6600_34248) ) (!  (=> (select (|PolymorphicMapType_12692_12203_34248#PolymorphicMapType_12692| (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@6) null (PredicateMaskField_6600 pm_f_32@@1))) o2_32@@2 f_54@@2) (= (select (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| Heap@@6) o2_32@@2 f_54@@2) (select (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| ExhaleHeap@@3) o2_32@@2 f_54@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| ExhaleHeap@@3) o2_32@@2 f_54@@2))
))) (forall ((o2_32@@3 T@Ref) (f_54@@3 T@Field_6600_34381) ) (!  (=> (select (|PolymorphicMapType_12692_12203_35559#PolymorphicMapType_12692| (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@6) null (PredicateMaskField_6600 pm_f_32@@1))) o2_32@@3 f_54@@3) (= (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@6) o2_32@@3 f_54@@3) (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| ExhaleHeap@@3) o2_32@@3 f_54@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| ExhaleHeap@@3) o2_32@@3 f_54@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@14) (IsPredicateField_6600_34339 pm_f_32@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12143) (ExhaleHeap@@4 T@PolymorphicMapType_12143) (Mask@@15 T@PolymorphicMapType_12164) (pm_f_32@@2 T@Field_6600_34248) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_6600_34312 Mask@@15 null pm_f_32@@2) (IsWandField_6600_36086 pm_f_32@@2)) (and (and (and (and (forall ((o2_32@@4 T@Ref) (f_54@@4 T@Field_12203_53) ) (!  (=> (select (|PolymorphicMapType_12692_12203_53#PolymorphicMapType_12692| (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@7) null (WandMaskField_6600 pm_f_32@@2))) o2_32@@4 f_54@@4) (= (select (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| Heap@@7) o2_32@@4 f_54@@4) (select (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| ExhaleHeap@@4) o2_32@@4 f_54@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| ExhaleHeap@@4) o2_32@@4 f_54@@4))
)) (forall ((o2_32@@5 T@Ref) (f_54@@5 T@Field_12216_12217) ) (!  (=> (select (|PolymorphicMapType_12692_12203_12217#PolymorphicMapType_12692| (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@7) null (WandMaskField_6600 pm_f_32@@2))) o2_32@@5 f_54@@5) (= (select (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| Heap@@7) o2_32@@5 f_54@@5) (select (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| ExhaleHeap@@4) o2_32@@5 f_54@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| ExhaleHeap@@4) o2_32@@5 f_54@@5))
))) (forall ((o2_32@@6 T@Ref) (f_54@@6 T@Field_18372_3190) ) (!  (=> (select (|PolymorphicMapType_12692_12203_3190#PolymorphicMapType_12692| (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@7) null (WandMaskField_6600 pm_f_32@@2))) o2_32@@6 f_54@@6) (= (select (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| Heap@@7) o2_32@@6 f_54@@6) (select (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| ExhaleHeap@@4) o2_32@@6 f_54@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| ExhaleHeap@@4) o2_32@@6 f_54@@6))
))) (forall ((o2_32@@7 T@Ref) (f_54@@7 T@Field_6600_34248) ) (!  (=> (select (|PolymorphicMapType_12692_12203_34248#PolymorphicMapType_12692| (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@7) null (WandMaskField_6600 pm_f_32@@2))) o2_32@@7 f_54@@7) (= (select (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| Heap@@7) o2_32@@7 f_54@@7) (select (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| ExhaleHeap@@4) o2_32@@7 f_54@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| ExhaleHeap@@4) o2_32@@7 f_54@@7))
))) (forall ((o2_32@@8 T@Ref) (f_54@@8 T@Field_6600_34381) ) (!  (=> (select (|PolymorphicMapType_12692_12203_35559#PolymorphicMapType_12692| (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@7) null (WandMaskField_6600 pm_f_32@@2))) o2_32@@8 f_54@@8) (= (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@7) o2_32@@8 f_54@@8) (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| ExhaleHeap@@4) o2_32@@8 f_54@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| ExhaleHeap@@4) o2_32@@8 f_54@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@15) (IsWandField_6600_36086 pm_f_32@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12143) (ExhaleHeap@@5 T@PolymorphicMapType_12143) (Mask@@16 T@PolymorphicMapType_12164) (o_55@@0 T@Ref) (f_54@@9 T@Field_6600_34381) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_6600_40086 Mask@@16 o_55@@0 f_54@@9) (= (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@8) o_55@@0 f_54@@9) (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| ExhaleHeap@@5) o_55@@0 f_54@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| ExhaleHeap@@5) o_55@@0 f_54@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12143) (ExhaleHeap@@6 T@PolymorphicMapType_12143) (Mask@@17 T@PolymorphicMapType_12164) (o_55@@1 T@Ref) (f_54@@10 T@Field_6600_34248) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_6600_34312 Mask@@17 o_55@@1 f_54@@10) (= (select (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| Heap@@9) o_55@@1 f_54@@10) (select (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| ExhaleHeap@@6) o_55@@1 f_54@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| ExhaleHeap@@6) o_55@@1 f_54@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12143) (ExhaleHeap@@7 T@PolymorphicMapType_12143) (Mask@@18 T@PolymorphicMapType_12164) (o_55@@2 T@Ref) (f_54@@11 T@Field_12216_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_6600_12217 Mask@@18 o_55@@2 f_54@@11) (= (select (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| Heap@@10) o_55@@2 f_54@@11) (select (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| ExhaleHeap@@7) o_55@@2 f_54@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| ExhaleHeap@@7) o_55@@2 f_54@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12143) (ExhaleHeap@@8 T@PolymorphicMapType_12143) (Mask@@19 T@PolymorphicMapType_12164) (o_55@@3 T@Ref) (f_54@@12 T@Field_12203_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_6600_53 Mask@@19 o_55@@3 f_54@@12) (= (select (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| Heap@@11) o_55@@3 f_54@@12) (select (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| ExhaleHeap@@8) o_55@@3 f_54@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| ExhaleHeap@@8) o_55@@3 f_54@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12143) (ExhaleHeap@@9 T@PolymorphicMapType_12143) (Mask@@20 T@PolymorphicMapType_12164) (o_55@@4 T@Ref) (f_54@@13 T@Field_18372_3190) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_6600_3190 Mask@@20 o_55@@4 f_54@@13) (= (select (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| Heap@@12) o_55@@4 f_54@@13) (select (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| ExhaleHeap@@9) o_55@@4 f_54@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| ExhaleHeap@@9) o_55@@4 f_54@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6600_34381) ) (! (= (select (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_6600_34248) ) (! (= (select (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_12216_12217) ) (! (= (select (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12203_53) ) (! (= (select (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_18372_3190) ) (! (= (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12143) (r_1@@1 T@Ref) (i@@1 Int) ) (!  (and (= (lookup Heap@@13 r_1@@1 i@@1) (|lookup'| Heap@@13 r_1@@1 i@@1)) (dummyFunction_3379 (|lookup#triggerStateless| r_1@@1 i@@1)))
 :qid |stdinbpl.386:15|
 :skolemid |82|
 :pattern ( (lookup Heap@@13 r_1@@1 i@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12143) (r_1@@2 T@Ref) (i@@2 Int) ) (!  (and (= (lookup2 Heap@@14 r_1@@2 i@@2) (|lookup2'| Heap@@14 r_1@@2 i@@2)) (dummyFunction_3379 (|lookup2#triggerStateless| r_1@@2 i@@2)))
 :qid |stdinbpl.436:15|
 :skolemid |85|
 :pattern ( (lookup2 Heap@@14 r_1@@2 i@@2))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12164) (SummandMask1 T@PolymorphicMapType_12164) (SummandMask2 T@PolymorphicMapType_12164) (o_2@@19 T@Ref) (f_4@@19 T@Field_6600_34381) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12164) (SummandMask1@@0 T@PolymorphicMapType_12164) (SummandMask2@@0 T@PolymorphicMapType_12164) (o_2@@20 T@Ref) (f_4@@20 T@Field_6600_34248) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12164) (SummandMask1@@1 T@PolymorphicMapType_12164) (SummandMask2@@1 T@PolymorphicMapType_12164) (o_2@@21 T@Ref) (f_4@@21 T@Field_12216_12217) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12164) (SummandMask1@@2 T@PolymorphicMapType_12164) (SummandMask2@@2 T@PolymorphicMapType_12164) (o_2@@22 T@Ref) (f_4@@22 T@Field_12203_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12164) (SummandMask1@@3 T@PolymorphicMapType_12164) (SummandMask2@@3 T@PolymorphicMapType_12164) (o_2@@23 T@Ref) (f_4@@23 T@Field_18372_3190) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_6643| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.226:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_6643| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_6643| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_6643| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_6643| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.241:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_6643| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_6643| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_6643| a@@6 x) y))
 :qid |stdinbpl.206:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_6643| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_6643| a@@7 b@@5) y@@0))
 :qid |stdinbpl.216:18|
 :skolemid |35|
 :pattern ( (|Set#Union_6643| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_6643| a@@8 b@@6) y@@1))
 :qid |stdinbpl.218:18|
 :skolemid |36|
 :pattern ( (|Set#Union_6643| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_6643| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.202:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_6643| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_6643| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.243:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_6643| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_6643| (|Set#Difference_6643| a@@11 b@@8)) (|Set#Card_6643| (|Set#Difference_6643| b@@8 a@@11))) (|Set#Card_6643| (|Set#Intersection_6643| a@@11 b@@8))) (|Set#Card_6643| (|Set#Union_6643| a@@11 b@@8))) (= (|Set#Card_6643| (|Set#Difference_6643| a@@11 b@@8)) (- (|Set#Card_6643| a@@11) (|Set#Card_6643| (|Set#Intersection_6643| a@@11 b@@8)))))
 :qid |stdinbpl.245:18|
 :skolemid |45|
 :pattern ( (|Set#Card_6643| (|Set#Difference_6643| a@@11 b@@8)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12143) (Mask@@21 T@PolymorphicMapType_12164) (r_1@@3 T@Ref) (i@@3 Int) ) (!  (=> (state Heap@@15 Mask@@21) (= (|lookup'| Heap@@15 r_1@@3 i@@3) (|lookup#frame| (FrameFragment_3190 (select (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| Heap@@15) r_1@@3 f_7)) r_1@@3 i@@3)))
 :qid |stdinbpl.397:15|
 :skolemid |84|
 :pattern ( (state Heap@@15 Mask@@21) (|lookup'| Heap@@15 r_1@@3 i@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12143) (Mask@@22 T@PolymorphicMapType_12164) (r_1@@4 T@Ref) (i@@4 Int) ) (!  (=> (state Heap@@16 Mask@@22) (= (|lookup2'| Heap@@16 r_1@@4 i@@4) (|lookup2#frame| (FrameFragment_3190 (select (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| Heap@@16) r_1@@4 f_7)) r_1@@4 i@@4)))
 :qid |stdinbpl.447:15|
 :skolemid |87|
 :pattern ( (state Heap@@16 Mask@@22) (|lookup2'| Heap@@16 r_1@@4 i@@4))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_6643| s))
 :qid |stdinbpl.188:18|
 :skolemid |22|
 :pattern ( (|Set#Card_6643| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_6643| a@@12 x@@1) x@@1)
 :qid |stdinbpl.204:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_6643| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_6643| (|Set#UnionOne_6643| a@@13 x@@2)) (|Set#Card_6643| a@@13)))
 :qid |stdinbpl.208:18|
 :skolemid |32|
 :pattern ( (|Set#Card_6643| (|Set#UnionOne_6643| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_6643| (|Set#Singleton_6643| r@@0)) 1)
 :qid |stdinbpl.199:18|
 :skolemid |28|
 :pattern ( (|Set#Card_6643| (|Set#Singleton_6643| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_6643| r@@1) r@@1)
 :qid |stdinbpl.197:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_6643| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_6643| a@@14 (|Set#Union_6643| a@@14 b@@9)) (|Set#Union_6643| a@@14 b@@9))
 :qid |stdinbpl.231:18|
 :skolemid |39|
 :pattern ( (|Set#Union_6643| a@@14 (|Set#Union_6643| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_6643| a@@15 (|Set#Intersection_6643| a@@15 b@@10)) (|Set#Intersection_6643| a@@15 b@@10))
 :qid |stdinbpl.235:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_6643| a@@15 (|Set#Intersection_6643| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_6643| o@@3))
 :qid |stdinbpl.191:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_6643| o@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12143) (o_54 T@Ref) (f_8 T@Field_6600_34248) (v T@FrameType) ) (! (succHeap Heap@@17 (PolymorphicMapType_12143 (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| Heap@@17) (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| Heap@@17) (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| Heap@@17) (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@17) (store (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| Heap@@17) o_54 f_8 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12143 (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| Heap@@17) (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| Heap@@17) (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| Heap@@17) (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@17) (store (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| Heap@@17) o_54 f_8 v)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12143) (o_54@@0 T@Ref) (f_8@@0 T@Field_6600_34381) (v@@0 T@PolymorphicMapType_12692) ) (! (succHeap Heap@@18 (PolymorphicMapType_12143 (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| Heap@@18) (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| Heap@@18) (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| Heap@@18) (store (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@18) o_54@@0 f_8@@0 v@@0) (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12143 (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| Heap@@18) (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| Heap@@18) (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| Heap@@18) (store (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@18) o_54@@0 f_8@@0 v@@0) (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12143) (o_54@@1 T@Ref) (f_8@@1 T@Field_18372_3190) (v@@1 Int) ) (! (succHeap Heap@@19 (PolymorphicMapType_12143 (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| Heap@@19) (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| Heap@@19) (store (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| Heap@@19) o_54@@1 f_8@@1 v@@1) (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@19) (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12143 (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| Heap@@19) (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| Heap@@19) (store (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| Heap@@19) o_54@@1 f_8@@1 v@@1) (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@19) (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12143) (o_54@@2 T@Ref) (f_8@@2 T@Field_12216_12217) (v@@2 T@Ref) ) (! (succHeap Heap@@20 (PolymorphicMapType_12143 (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| Heap@@20) (store (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| Heap@@20) o_54@@2 f_8@@2 v@@2) (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| Heap@@20) (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@20) (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12143 (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| Heap@@20) (store (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| Heap@@20) o_54@@2 f_8@@2 v@@2) (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| Heap@@20) (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@20) (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_12143) (o_54@@3 T@Ref) (f_8@@3 T@Field_12203_53) (v@@3 Bool) ) (! (succHeap Heap@@21 (PolymorphicMapType_12143 (store (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| Heap@@21) o_54@@3 f_8@@3 v@@3) (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| Heap@@21) (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| Heap@@21) (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@21) (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12143 (store (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| Heap@@21) o_54@@3 f_8@@3 v@@3) (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| Heap@@21) (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| Heap@@21) (|PolymorphicMapType_12143_6600_34425#PolymorphicMapType_12143| Heap@@21) (|PolymorphicMapType_12143_12203_34248#PolymorphicMapType_12143| Heap@@21)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.275:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.276:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_6643| s@@0) 0) (= s@@0 |Set#Empty_6643|)) (=> (not (= (|Set#Card_6643| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.194:33|
 :skolemid |24|
))))
 :qid |stdinbpl.192:18|
 :skolemid |25|
 :pattern ( (|Set#Card_6643| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_6643| (|Set#UnionOne_6643| a@@18 x@@4)) (+ (|Set#Card_6643| a@@18) 1)))
 :qid |stdinbpl.210:18|
 :skolemid |33|
 :pattern ( (|Set#Card_6643| (|Set#UnionOne_6643| a@@18 x@@4)))
)))
(assert (forall ((o_54@@4 T@Ref) (f_24 T@Field_12216_12217) (Heap@@22 T@PolymorphicMapType_12143) ) (!  (=> (select (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| Heap@@22) o_54@@4 $allocated) (select (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| Heap@@22) (select (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| Heap@@22) o_54@@4 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12143_6314_6315#PolymorphicMapType_12143| Heap@@22) o_54@@4 f_24))
)))
(assert (forall ((p@@1 T@Field_6600_34248) (v_1@@0 T@FrameType) (q T@Field_6600_34248) (w@@0 T@FrameType) (r@@2 T@Field_6600_34248) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12203_12203 p@@1 v_1@@0 q w@@0) (InsidePredicate_12203_12203 q w@@0 r@@2 u)) (InsidePredicate_12203_12203 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12203_12203 p@@1 v_1@@0 q w@@0) (InsidePredicate_12203_12203 q w@@0 r@@2 u))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.281:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_6643| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.214:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_6643| a@@20 b@@13) o@@4))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_12143)
(declare-fun r1 () T@Ref)
(declare-fun Mask@9 () T@PolymorphicMapType_12164)
(declare-fun Heap@@23 () T@PolymorphicMapType_12143)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_12143)
(declare-fun Mask@5 () T@PolymorphicMapType_12164)
(declare-fun Mask@7 () T@PolymorphicMapType_12164)
(declare-fun Mask@6 () T@PolymorphicMapType_12164)
(declare-fun r2 () T@Ref)
(declare-fun Mask@8 () T@PolymorphicMapType_12164)
(declare-fun Mask@3 () T@PolymorphicMapType_12164)
(declare-fun Mask@2 () T@PolymorphicMapType_12164)
(declare-fun Mask@4 () T@PolymorphicMapType_12164)
(declare-fun s_1@0 () (Array T@Ref Bool))
(declare-fun Mask@1 () T@PolymorphicMapType_12164)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun Mask@0 () T@PolymorphicMapType_12164)
(set-info :boogie-vc-id main_fail_2)
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
 (=> (= (ControlFlow 0 0) 36) (let ((anon27_Else_correct  (=> (= (ControlFlow 0 13) (- 0 12)) (> (lookup2 ExhaleHeap@2 r1 5) 2))))
(let ((anon27_Then_correct  (=> (= (ControlFlow 0 11) (- 0 10)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@9) r1 f_7))))))
(let ((anon24_Else_correct  (=> (forall ((i_1 Int) ) (! (= (lookup2 ExhaleHeap@2 r1 i_1) (lookup ExhaleHeap@0 r1 i_1))
 :qid |stdinbpl.1180:20|
 :skolemid |90|
 :pattern ( (|lookup#frame| (FrameFragment_3190 (select (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| Heap@@23) r1 f_7)) r1 i_1))
)) (=> (and (state ExhaleHeap@2 Mask@9) (state ExhaleHeap@2 Mask@9)) (and (=> (= (ControlFlow 0 14) 11) anon27_Then_correct) (=> (= (ControlFlow 0 14) 13) anon27_Else_correct))))))
(let ((anon26_Else_correct true))
(let ((anon26_Then_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@5) r1 f_7))))))
(let ((anon25_Else_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) true) (and (=> (= (ControlFlow 0 8) 6) anon26_Then_correct) (=> (= (ControlFlow 0 8) 7) anon26_Else_correct)))))
(let ((anon25_Then_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@9) r1 f_7))))))
(let ((anon10_correct  (=> (= Mask@7 (PolymorphicMapType_12164 (store (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@6) r2 f_7 (- (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@6) r2 f_7) FullPerm)) (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| Mask@6) (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| Mask@6) (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| Mask@6) (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| Mask@6))) (=> (and (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@2 Mask@7) (state ExhaleHeap@2 Mask@7)) (=> (and (and (and (not (= r1 null)) (= Mask@8 (PolymorphicMapType_12164 (store (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@7) r1 f_7 (+ (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@7) r1 f_7) FullPerm)) (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| Mask@7) (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| Mask@7) (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| Mask@7) (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| Mask@7)))) (and (state ExhaleHeap@2 Mask@8) (not (= r2 null)))) (and (and (= Mask@9 (PolymorphicMapType_12164 (store (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@8) r2 f_7 (+ (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@8) r2 f_7) FullPerm)) (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| Mask@8) (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| Mask@8) (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| Mask@8) (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| Mask@8))) (state ExhaleHeap@2 Mask@9)) (and (state ExhaleHeap@2 Mask@9) (state ExhaleHeap@2 Mask@9)))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (HasDirectPerm_6600_3190 Mask@9 r1 f_7)) (=> (HasDirectPerm_6600_3190 Mask@9 r1 f_7) (=> (and (and (= (select (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| ExhaleHeap@2) r1 f_7) 4) (state ExhaleHeap@2 Mask@9)) (and (state ExhaleHeap@2 Mask@9) (state ExhaleHeap@2 Mask@9))) (and (and (=> (= (ControlFlow 0 15) 14) anon24_Else_correct) (=> (= (ControlFlow 0 15) 4) anon25_Then_correct)) (=> (= (ControlFlow 0 15) 8) anon25_Else_correct))))))))))
(let ((anon23_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 19) 15)) anon10_correct)))
(let ((anon23_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (<= FullPerm (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@6) r2 f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@6) r2 f_7)) (=> (= (ControlFlow 0 17) 15) anon10_correct))))))
(let ((anon8_correct  (=> (= Mask@6 (PolymorphicMapType_12164 (store (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@5) r1 f_7 (- (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@5) r1 f_7) FullPerm)) (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| Mask@5) (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| Mask@5) (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| Mask@5) (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| Mask@5))) (and (=> (= (ControlFlow 0 20) 17) anon23_Then_correct) (=> (= (ControlFlow 0 20) 19) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 23) 20)) anon8_correct)))
(let ((anon22_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (<= FullPerm (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@5) r1 f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@5) r1 f_7)) (=> (= (ControlFlow 0 21) 20) anon8_correct))))))
(let ((anon21_Else_correct  (=> (and (and (> (lookup ExhaleHeap@0 r1 5) 3) (state ExhaleHeap@0 Mask@5)) (and (state ExhaleHeap@0 Mask@5) (state ExhaleHeap@0 Mask@5))) (and (=> (= (ControlFlow 0 24) 21) anon22_Then_correct) (=> (= (ControlFlow 0 24) 23) anon22_Else_correct)))))
(let ((anon21_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@5) r1 f_7))))))
(let ((anon4_correct  (=> (= Mask@3 (PolymorphicMapType_12164 (store (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@2) r2 f_7 (- (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@2) r2 f_7) FullPerm)) (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| Mask@2) (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| Mask@2) (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| Mask@2) (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| Mask@2))) (=> (and (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@0 Mask@3) (state ExhaleHeap@0 Mask@3)) (=> (and (and (and (not (= r1 null)) (= Mask@4 (PolymorphicMapType_12164 (store (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@3) r1 f_7 (+ (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@3) r1 f_7) FullPerm)) (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| Mask@3) (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| Mask@3) (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| Mask@3) (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| Mask@3)))) (and (state ExhaleHeap@0 Mask@4) (not (= r2 null)))) (and (and (= Mask@5 (PolymorphicMapType_12164 (store (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@4) r2 f_7 (+ (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@4) r2 f_7) FullPerm)) (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| Mask@4) (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| Mask@4) (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| Mask@4) (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| Mask@4))) (state ExhaleHeap@0 Mask@5)) (and (state ExhaleHeap@0 Mask@5) (state ExhaleHeap@0 Mask@5)))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (HasDirectPerm_6600_3190 Mask@5 r1 f_7)) (=> (HasDirectPerm_6600_3190 Mask@5 r1 f_7) (=> (and (= (select (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| ExhaleHeap@0) r1 f_7) 3) (state ExhaleHeap@0 Mask@5)) (=> (and (and (state ExhaleHeap@0 Mask@5) (= s_1@0 (|Set#UnionOne_6643| (|Set#Singleton_6643| r2) r1))) (and (state ExhaleHeap@0 Mask@5) (state ExhaleHeap@0 Mask@5))) (and (=> (= (ControlFlow 0 25) 2) anon21_Then_correct) (=> (= (ControlFlow 0 25) 24) anon21_Else_correct)))))))))))
(let ((anon20_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 29) 25)) anon4_correct)))
(let ((anon20_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (<= FullPerm (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@2) r2 f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@2) r2 f_7)) (=> (= (ControlFlow 0 27) 25) anon4_correct))))))
(let ((anon2_correct  (=> (= Mask@2 (PolymorphicMapType_12164 (store (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@1) r1 f_7 (- (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@1) r1 f_7) FullPerm)) (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| Mask@1) (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| Mask@1) (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| Mask@1) (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| Mask@1))) (and (=> (= (ControlFlow 0 30) 27) anon20_Then_correct) (=> (= (ControlFlow 0 30) 29) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 33) 30)) anon2_correct)))
(let ((anon19_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 31) (- 0 32)) (<= FullPerm (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@1) r1 f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@1) r1 f_7)) (=> (= (ControlFlow 0 31) 30) anon2_correct))))))
(let ((anon0_correct  (=> (and (and (state Heap@@23 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| Heap@@23) r1 $allocated))) (=> (and (and (and (select (|PolymorphicMapType_12143_6311_53#PolymorphicMapType_12143| Heap@@23) r2 $allocated) (not (= r1 null))) (and (= Mask@0 (PolymorphicMapType_12164 (store (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| ZeroMask) r1 f_7 (+ (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| ZeroMask) r1 f_7) FullPerm)) (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| ZeroMask) (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| ZeroMask) (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| ZeroMask) (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| ZeroMask))) (state Heap@@23 Mask@0))) (and (and (not (= r2 null)) (= Mask@1 (PolymorphicMapType_12164 (store (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@0) r2 f_7 (+ (select (|PolymorphicMapType_12164_6600_3190#PolymorphicMapType_12164| Mask@0) r2 f_7) FullPerm)) (|PolymorphicMapType_12164_6600_53#PolymorphicMapType_12164| Mask@0) (|PolymorphicMapType_12164_6600_12217#PolymorphicMapType_12164| Mask@0) (|PolymorphicMapType_12164_6600_34248#PolymorphicMapType_12164| Mask@0) (|PolymorphicMapType_12164_6600_38503#PolymorphicMapType_12164| Mask@0)))) (and (state Heap@@23 Mask@1) (state Heap@@23 Mask@1)))) (and (=> (= (ControlFlow 0 34) (- 0 35)) (HasDirectPerm_6600_3190 Mask@1 r1 f_7)) (=> (HasDirectPerm_6600_3190 Mask@1 r1 f_7) (=> (= (select (|PolymorphicMapType_12143_6600_3190#PolymorphicMapType_12143| Heap@@23) r1 f_7) 1) (=> (and (state Heap@@23 Mask@1) (state Heap@@23 Mask@1)) (and (=> (= (ControlFlow 0 34) 31) anon19_Then_correct) (=> (= (ControlFlow 0 34) 33) anon19_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 36) 34) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 13) (- 12))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
