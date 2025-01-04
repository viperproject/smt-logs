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
(declare-sort T@Field_16762_53 0)
(declare-sort T@Field_16775_16776 0)
(declare-sort T@Field_23019_3718 0)
(declare-sort T@Field_10620_48373 0)
(declare-sort T@Field_10620_48240 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_16723 0)) (((PolymorphicMapType_16723 (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| (Array T@Ref T@Field_23019_3718 Real)) (|PolymorphicMapType_16723_10620_53#PolymorphicMapType_16723| (Array T@Ref T@Field_16762_53 Real)) (|PolymorphicMapType_16723_10620_16776#PolymorphicMapType_16723| (Array T@Ref T@Field_16775_16776 Real)) (|PolymorphicMapType_16723_10620_48240#PolymorphicMapType_16723| (Array T@Ref T@Field_10620_48240 Real)) (|PolymorphicMapType_16723_10620_52495#PolymorphicMapType_16723| (Array T@Ref T@Field_10620_48373 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17251 0)) (((PolymorphicMapType_17251 (|PolymorphicMapType_17251_16762_53#PolymorphicMapType_17251| (Array T@Ref T@Field_16762_53 Bool)) (|PolymorphicMapType_17251_16762_16776#PolymorphicMapType_17251| (Array T@Ref T@Field_16775_16776 Bool)) (|PolymorphicMapType_17251_16762_3718#PolymorphicMapType_17251| (Array T@Ref T@Field_23019_3718 Bool)) (|PolymorphicMapType_17251_16762_48240#PolymorphicMapType_17251| (Array T@Ref T@Field_10620_48240 Bool)) (|PolymorphicMapType_17251_16762_49551#PolymorphicMapType_17251| (Array T@Ref T@Field_10620_48373 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16702 0)) (((PolymorphicMapType_16702 (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| (Array T@Ref T@Field_16762_53 Bool)) (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| (Array T@Ref T@Field_16775_16776 T@Ref)) (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| (Array T@Ref T@Field_23019_3718 Int)) (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| (Array T@Ref T@Field_10620_48373 T@PolymorphicMapType_17251)) (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| (Array T@Ref T@Field_10620_48240 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_16762_53)
(declare-fun f_7 () T@Field_23019_3718)
(declare-fun succHeap (T@PolymorphicMapType_16702 T@PolymorphicMapType_16702) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_16702 T@PolymorphicMapType_16702) Bool)
(declare-fun state (T@PolymorphicMapType_16702 T@PolymorphicMapType_16723) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_16723) Bool)
(declare-fun |fun'| (T@PolymorphicMapType_16702 (Array T@Ref Bool) T@Ref Int) Int)
(declare-fun dummyFunction_4204 (Int) Bool)
(declare-fun |fun#triggerStateless| ((Array T@Ref Bool) T@Ref Int) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_17251)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_10927| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_10927| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_10927| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_10927| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_16702 T@PolymorphicMapType_16702 T@PolymorphicMapType_16723) Bool)
(declare-fun IsPredicateField_10620_48331 (T@Field_10620_48240) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_10620 (T@Field_10620_48240) T@Field_10620_48373)
(declare-fun HasDirectPerm_10620_48304 (T@PolymorphicMapType_16723 T@Ref T@Field_10620_48240) Bool)
(declare-fun IsWandField_10620_50078 (T@Field_10620_48240) Bool)
(declare-fun WandMaskField_10620 (T@Field_10620_48240) T@Field_10620_48373)
(declare-fun dummyHeap () T@PolymorphicMapType_16702)
(declare-fun ZeroMask () T@PolymorphicMapType_16723)
(declare-fun InsidePredicate_16762_16762 (T@Field_10620_48240 T@FrameType T@Field_10620_48240 T@FrameType) Bool)
(declare-fun IsPredicateField_10620_3718 (T@Field_23019_3718) Bool)
(declare-fun IsWandField_10620_3718 (T@Field_23019_3718) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_10620_53624 (T@Field_10620_48373) Bool)
(declare-fun IsWandField_10620_53640 (T@Field_10620_48373) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_10620_16776 (T@Field_16775_16776) Bool)
(declare-fun IsWandField_10620_16776 (T@Field_16775_16776) Bool)
(declare-fun IsPredicateField_10620_53 (T@Field_16762_53) Bool)
(declare-fun IsWandField_10620_53 (T@Field_16762_53) Bool)
(declare-fun HasDirectPerm_10620_54078 (T@PolymorphicMapType_16723 T@Ref T@Field_10620_48373) Bool)
(declare-fun HasDirectPerm_10620_16776 (T@PolymorphicMapType_16723 T@Ref T@Field_16775_16776) Bool)
(declare-fun HasDirectPerm_10620_53 (T@PolymorphicMapType_16723 T@Ref T@Field_16762_53) Bool)
(declare-fun HasDirectPerm_10620_3718 (T@PolymorphicMapType_16723 T@Ref T@Field_23019_3718) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun fun (T@PolymorphicMapType_16702 (Array T@Ref Bool) T@Ref Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun sumMask (T@PolymorphicMapType_16723 T@PolymorphicMapType_16723 T@PolymorphicMapType_16723) Bool)
(declare-fun |Set#Difference_10927| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_10927| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |fun#frame| (T@FrameType (Array T@Ref Bool) T@Ref Int) Int)
(declare-fun FrameFragment_4007 (Int) T@FrameType)
(declare-fun |fun#condqp1| (T@PolymorphicMapType_16702 (Array T@Ref Bool) T@Ref Int) Int)
(declare-fun |sk_fun#condqp1| (Int Int) T@Ref)
(declare-fun |Set#Empty_10927| () (Array T@Ref Bool))
(assert (forall ((Heap0 T@PolymorphicMapType_16702) (Heap1 T@PolymorphicMapType_16702) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_16702) (Mask T@PolymorphicMapType_16723) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_16702) (Heap1@@0 T@PolymorphicMapType_16702) (Heap2 T@PolymorphicMapType_16702) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_16702) (xs (Array T@Ref Bool)) (x T@Ref) (n Int) ) (! (dummyFunction_4204 (|fun#triggerStateless| xs x n))
 :qid |stdinbpl.467:15|
 :skolemid |83|
 :pattern ( (|fun'| Heap@@0 xs x n))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10620_48373) ) (!  (not (select (|PolymorphicMapType_17251_16762_49551#PolymorphicMapType_17251| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17251_16762_49551#PolymorphicMapType_17251| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10620_48240) ) (!  (not (select (|PolymorphicMapType_17251_16762_48240#PolymorphicMapType_17251| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17251_16762_48240#PolymorphicMapType_17251| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_23019_3718) ) (!  (not (select (|PolymorphicMapType_17251_16762_3718#PolymorphicMapType_17251| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17251_16762_3718#PolymorphicMapType_17251| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_16775_16776) ) (!  (not (select (|PolymorphicMapType_17251_16762_16776#PolymorphicMapType_17251| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17251_16762_16776#PolymorphicMapType_17251| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_16762_53) ) (!  (not (select (|PolymorphicMapType_17251_16762_53#PolymorphicMapType_17251| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17251_16762_53#PolymorphicMapType_17251| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.354:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_10927| (|Set#Union_10927| a@@0 b@@0) b@@0) (|Set#Union_10927| a@@0 b@@0))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Set#Union_10927| (|Set#Union_10927| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_10927| (|Set#Intersection_10927| a@@1 b@@1) b@@1) (|Set#Intersection_10927| a@@1 b@@1))
 :qid |stdinbpl.310:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_10927| (|Set#Intersection_10927| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_10927| r) o) (= r o))
 :qid |stdinbpl.275:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_10927| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_10927| (|Set#Union_10927| a@@2 b@@2)) (|Set#Card_10927| (|Set#Intersection_10927| a@@2 b@@2))) (+ (|Set#Card_10927| a@@2) (|Set#Card_10927| b@@2)))
 :qid |stdinbpl.314:18|
 :skolemid |42|
 :pattern ( (|Set#Card_10927| (|Set#Union_10927| a@@2 b@@2)))
 :pattern ( (|Set#Card_10927| (|Set#Intersection_10927| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.357:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_16702) (ExhaleHeap T@PolymorphicMapType_16702) (Mask@@0 T@PolymorphicMapType_16723) (pm_f_8 T@Field_10620_48240) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10620_48304 Mask@@0 null pm_f_8) (IsPredicateField_10620_48331 pm_f_8)) (= (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@1) null (PredicateMaskField_10620 pm_f_8)) (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| ExhaleHeap) null (PredicateMaskField_10620 pm_f_8)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_10620_48331 pm_f_8) (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| ExhaleHeap) null (PredicateMaskField_10620 pm_f_8)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_16702) (ExhaleHeap@@0 T@PolymorphicMapType_16702) (Mask@@1 T@PolymorphicMapType_16723) (pm_f_8@@0 T@Field_10620_48240) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10620_48304 Mask@@1 null pm_f_8@@0) (IsWandField_10620_50078 pm_f_8@@0)) (= (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@2) null (WandMaskField_10620 pm_f_8@@0)) (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| ExhaleHeap@@0) null (WandMaskField_10620 pm_f_8@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_10620_50078 pm_f_8@@0) (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| ExhaleHeap@@0) null (WandMaskField_10620 pm_f_8@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@3 T@PolymorphicMapType_16702) (ExhaleHeap@@1 T@PolymorphicMapType_16702) (Mask@@2 T@PolymorphicMapType_16723) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@3) o_23 $allocated) (select (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| ExhaleHeap@@1) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| ExhaleHeap@@1) o_23 $allocated))
)))
(assert (forall ((p T@Field_10620_48240) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_16762_16762 p v_1 p w))
 :qid |stdinbpl.252:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16762_16762 p v_1 p w))
)))
(assert  (not (IsPredicateField_10620_3718 f_7)))
(assert  (not (IsWandField_10620_3718 f_7)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_16702) (ExhaleHeap@@2 T@PolymorphicMapType_16702) (Mask@@3 T@PolymorphicMapType_16723) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@4 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_16723) (o_2@@4 T@Ref) (f_4@@4 T@Field_10620_48373) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_16723_10620_52495#PolymorphicMapType_16723| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_10620_53624 f_4@@4))) (not (IsWandField_10620_53640 f_4@@4))) (<= (select (|PolymorphicMapType_16723_10620_52495#PolymorphicMapType_16723| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_16723_10620_52495#PolymorphicMapType_16723| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_16723) (o_2@@5 T@Ref) (f_4@@5 T@Field_10620_48240) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_16723_10620_48240#PolymorphicMapType_16723| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_10620_48331 f_4@@5))) (not (IsWandField_10620_50078 f_4@@5))) (<= (select (|PolymorphicMapType_16723_10620_48240#PolymorphicMapType_16723| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_16723_10620_48240#PolymorphicMapType_16723| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_16723) (o_2@@6 T@Ref) (f_4@@6 T@Field_16775_16776) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_16723_10620_16776#PolymorphicMapType_16723| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_10620_16776 f_4@@6))) (not (IsWandField_10620_16776 f_4@@6))) (<= (select (|PolymorphicMapType_16723_10620_16776#PolymorphicMapType_16723| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_16723_10620_16776#PolymorphicMapType_16723| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_16723) (o_2@@7 T@Ref) (f_4@@7 T@Field_16762_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_16723_10620_53#PolymorphicMapType_16723| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_10620_53 f_4@@7))) (not (IsWandField_10620_53 f_4@@7))) (<= (select (|PolymorphicMapType_16723_10620_53#PolymorphicMapType_16723| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_16723_10620_53#PolymorphicMapType_16723| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_16723) (o_2@@8 T@Ref) (f_4@@8 T@Field_23019_3718) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_10620_3718 f_4@@8))) (not (IsWandField_10620_3718 f_4@@8))) (<= (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_16723) (o_2@@9 T@Ref) (f_4@@9 T@Field_10620_48373) ) (! (= (HasDirectPerm_10620_54078 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_16723_10620_52495#PolymorphicMapType_16723| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10620_54078 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_16723) (o_2@@10 T@Ref) (f_4@@10 T@Field_10620_48240) ) (! (= (HasDirectPerm_10620_48304 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_16723_10620_48240#PolymorphicMapType_16723| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10620_48304 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_16723) (o_2@@11 T@Ref) (f_4@@11 T@Field_16775_16776) ) (! (= (HasDirectPerm_10620_16776 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_16723_10620_16776#PolymorphicMapType_16723| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10620_16776 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_16723) (o_2@@12 T@Ref) (f_4@@12 T@Field_16762_53) ) (! (= (HasDirectPerm_10620_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_16723_10620_53#PolymorphicMapType_16723| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10620_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_16723) (o_2@@13 T@Ref) (f_4@@13 T@Field_23019_3718) ) (! (= (HasDirectPerm_10620_3718 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10620_3718 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_16702) (ExhaleHeap@@3 T@PolymorphicMapType_16702) (Mask@@14 T@PolymorphicMapType_16723) (pm_f_8@@1 T@Field_10620_48240) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_10620_48304 Mask@@14 null pm_f_8@@1) (IsPredicateField_10620_48331 pm_f_8@@1)) (and (and (and (and (forall ((o2_8 T@Ref) (f_25 T@Field_16762_53) ) (!  (=> (select (|PolymorphicMapType_17251_16762_53#PolymorphicMapType_17251| (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@5) null (PredicateMaskField_10620 pm_f_8@@1))) o2_8 f_25) (= (select (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@5) o2_8 f_25) (select (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| ExhaleHeap@@3) o2_8 f_25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| ExhaleHeap@@3) o2_8 f_25))
)) (forall ((o2_8@@0 T@Ref) (f_25@@0 T@Field_16775_16776) ) (!  (=> (select (|PolymorphicMapType_17251_16762_16776#PolymorphicMapType_17251| (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@5) null (PredicateMaskField_10620 pm_f_8@@1))) o2_8@@0 f_25@@0) (= (select (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| Heap@@5) o2_8@@0 f_25@@0) (select (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| ExhaleHeap@@3) o2_8@@0 f_25@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| ExhaleHeap@@3) o2_8@@0 f_25@@0))
))) (forall ((o2_8@@1 T@Ref) (f_25@@1 T@Field_23019_3718) ) (!  (=> (select (|PolymorphicMapType_17251_16762_3718#PolymorphicMapType_17251| (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@5) null (PredicateMaskField_10620 pm_f_8@@1))) o2_8@@1 f_25@@1) (= (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@5) o2_8@@1 f_25@@1) (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| ExhaleHeap@@3) o2_8@@1 f_25@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| ExhaleHeap@@3) o2_8@@1 f_25@@1))
))) (forall ((o2_8@@2 T@Ref) (f_25@@2 T@Field_10620_48240) ) (!  (=> (select (|PolymorphicMapType_17251_16762_48240#PolymorphicMapType_17251| (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@5) null (PredicateMaskField_10620 pm_f_8@@1))) o2_8@@2 f_25@@2) (= (select (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| Heap@@5) o2_8@@2 f_25@@2) (select (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| ExhaleHeap@@3) o2_8@@2 f_25@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| ExhaleHeap@@3) o2_8@@2 f_25@@2))
))) (forall ((o2_8@@3 T@Ref) (f_25@@3 T@Field_10620_48373) ) (!  (=> (select (|PolymorphicMapType_17251_16762_49551#PolymorphicMapType_17251| (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@5) null (PredicateMaskField_10620 pm_f_8@@1))) o2_8@@3 f_25@@3) (= (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@5) o2_8@@3 f_25@@3) (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| ExhaleHeap@@3) o2_8@@3 f_25@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| ExhaleHeap@@3) o2_8@@3 f_25@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@14) (IsPredicateField_10620_48331 pm_f_8@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_16702) (ExhaleHeap@@4 T@PolymorphicMapType_16702) (Mask@@15 T@PolymorphicMapType_16723) (pm_f_8@@2 T@Field_10620_48240) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_10620_48304 Mask@@15 null pm_f_8@@2) (IsWandField_10620_50078 pm_f_8@@2)) (and (and (and (and (forall ((o2_8@@4 T@Ref) (f_25@@4 T@Field_16762_53) ) (!  (=> (select (|PolymorphicMapType_17251_16762_53#PolymorphicMapType_17251| (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@6) null (WandMaskField_10620 pm_f_8@@2))) o2_8@@4 f_25@@4) (= (select (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@6) o2_8@@4 f_25@@4) (select (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| ExhaleHeap@@4) o2_8@@4 f_25@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| ExhaleHeap@@4) o2_8@@4 f_25@@4))
)) (forall ((o2_8@@5 T@Ref) (f_25@@5 T@Field_16775_16776) ) (!  (=> (select (|PolymorphicMapType_17251_16762_16776#PolymorphicMapType_17251| (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@6) null (WandMaskField_10620 pm_f_8@@2))) o2_8@@5 f_25@@5) (= (select (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| Heap@@6) o2_8@@5 f_25@@5) (select (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| ExhaleHeap@@4) o2_8@@5 f_25@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| ExhaleHeap@@4) o2_8@@5 f_25@@5))
))) (forall ((o2_8@@6 T@Ref) (f_25@@6 T@Field_23019_3718) ) (!  (=> (select (|PolymorphicMapType_17251_16762_3718#PolymorphicMapType_17251| (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@6) null (WandMaskField_10620 pm_f_8@@2))) o2_8@@6 f_25@@6) (= (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@6) o2_8@@6 f_25@@6) (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| ExhaleHeap@@4) o2_8@@6 f_25@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| ExhaleHeap@@4) o2_8@@6 f_25@@6))
))) (forall ((o2_8@@7 T@Ref) (f_25@@7 T@Field_10620_48240) ) (!  (=> (select (|PolymorphicMapType_17251_16762_48240#PolymorphicMapType_17251| (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@6) null (WandMaskField_10620 pm_f_8@@2))) o2_8@@7 f_25@@7) (= (select (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| Heap@@6) o2_8@@7 f_25@@7) (select (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| ExhaleHeap@@4) o2_8@@7 f_25@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| ExhaleHeap@@4) o2_8@@7 f_25@@7))
))) (forall ((o2_8@@8 T@Ref) (f_25@@8 T@Field_10620_48373) ) (!  (=> (select (|PolymorphicMapType_17251_16762_49551#PolymorphicMapType_17251| (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@6) null (WandMaskField_10620 pm_f_8@@2))) o2_8@@8 f_25@@8) (= (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@6) o2_8@@8 f_25@@8) (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| ExhaleHeap@@4) o2_8@@8 f_25@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| ExhaleHeap@@4) o2_8@@8 f_25@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@15) (IsWandField_10620_50078 pm_f_8@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.240:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_16702) (ExhaleHeap@@5 T@PolymorphicMapType_16702) (Mask@@16 T@PolymorphicMapType_16723) (o_23@@0 T@Ref) (f_25@@9 T@Field_10620_48373) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_10620_54078 Mask@@16 o_23@@0 f_25@@9) (= (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@7) o_23@@0 f_25@@9) (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| ExhaleHeap@@5) o_23@@0 f_25@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| ExhaleHeap@@5) o_23@@0 f_25@@9))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_16702) (ExhaleHeap@@6 T@PolymorphicMapType_16702) (Mask@@17 T@PolymorphicMapType_16723) (o_23@@1 T@Ref) (f_25@@10 T@Field_10620_48240) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_10620_48304 Mask@@17 o_23@@1 f_25@@10) (= (select (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| Heap@@8) o_23@@1 f_25@@10) (select (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| ExhaleHeap@@6) o_23@@1 f_25@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| ExhaleHeap@@6) o_23@@1 f_25@@10))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_16702) (ExhaleHeap@@7 T@PolymorphicMapType_16702) (Mask@@18 T@PolymorphicMapType_16723) (o_23@@2 T@Ref) (f_25@@11 T@Field_16775_16776) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_10620_16776 Mask@@18 o_23@@2 f_25@@11) (= (select (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| Heap@@9) o_23@@2 f_25@@11) (select (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| ExhaleHeap@@7) o_23@@2 f_25@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| ExhaleHeap@@7) o_23@@2 f_25@@11))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_16702) (ExhaleHeap@@8 T@PolymorphicMapType_16702) (Mask@@19 T@PolymorphicMapType_16723) (o_23@@3 T@Ref) (f_25@@12 T@Field_16762_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_10620_53 Mask@@19 o_23@@3 f_25@@12) (= (select (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@10) o_23@@3 f_25@@12) (select (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| ExhaleHeap@@8) o_23@@3 f_25@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| ExhaleHeap@@8) o_23@@3 f_25@@12))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_16702) (ExhaleHeap@@9 T@PolymorphicMapType_16702) (Mask@@20 T@PolymorphicMapType_16723) (o_23@@4 T@Ref) (f_25@@13 T@Field_23019_3718) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_10620_3718 Mask@@20 o_23@@4 f_25@@13) (= (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@11) o_23@@4 f_25@@13) (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| ExhaleHeap@@9) o_23@@4 f_25@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| ExhaleHeap@@9) o_23@@4 f_25@@13))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_16702) (Mask@@21 T@PolymorphicMapType_16723) (xs@@0 (Array T@Ref Bool)) (x@@0 T@Ref) (n@@0 Int) ) (!  (=> (and (state Heap@@12 Mask@@21) (< AssumeFunctionsAbove 0)) (=> (and (select xs@@0 x@@0) (>= n@@0 0)) (= (fun Heap@@12 xs@@0 x@@0 n@@0) (ite (= n@@0 0) (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@12) x@@0 f_7) (|fun'| Heap@@12 xs@@0 x@@0 (- n@@0 1))))))
 :qid |stdinbpl.473:15|
 :skolemid |84|
 :pattern ( (state Heap@@12 Mask@@21) (fun Heap@@12 xs@@0 x@@0 n@@0))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10620_48373) ) (! (= (select (|PolymorphicMapType_16723_10620_52495#PolymorphicMapType_16723| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16723_10620_52495#PolymorphicMapType_16723| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_10620_48240) ) (! (= (select (|PolymorphicMapType_16723_10620_48240#PolymorphicMapType_16723| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16723_10620_48240#PolymorphicMapType_16723| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_16775_16776) ) (! (= (select (|PolymorphicMapType_16723_10620_16776#PolymorphicMapType_16723| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16723_10620_16776#PolymorphicMapType_16723| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_16762_53) ) (! (= (select (|PolymorphicMapType_16723_10620_53#PolymorphicMapType_16723| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16723_10620_53#PolymorphicMapType_16723| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_23019_3718) ) (! (= (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_16723) (SummandMask1 T@PolymorphicMapType_16723) (SummandMask2 T@PolymorphicMapType_16723) (o_2@@19 T@Ref) (f_4@@19 T@Field_10620_48373) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_16723_10620_52495#PolymorphicMapType_16723| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_16723_10620_52495#PolymorphicMapType_16723| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_16723_10620_52495#PolymorphicMapType_16723| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16723_10620_52495#PolymorphicMapType_16723| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16723_10620_52495#PolymorphicMapType_16723| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16723_10620_52495#PolymorphicMapType_16723| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_16723) (SummandMask1@@0 T@PolymorphicMapType_16723) (SummandMask2@@0 T@PolymorphicMapType_16723) (o_2@@20 T@Ref) (f_4@@20 T@Field_10620_48240) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_16723_10620_48240#PolymorphicMapType_16723| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_16723_10620_48240#PolymorphicMapType_16723| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_16723_10620_48240#PolymorphicMapType_16723| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16723_10620_48240#PolymorphicMapType_16723| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16723_10620_48240#PolymorphicMapType_16723| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16723_10620_48240#PolymorphicMapType_16723| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_16723) (SummandMask1@@1 T@PolymorphicMapType_16723) (SummandMask2@@1 T@PolymorphicMapType_16723) (o_2@@21 T@Ref) (f_4@@21 T@Field_16775_16776) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_16723_10620_16776#PolymorphicMapType_16723| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_16723_10620_16776#PolymorphicMapType_16723| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_16723_10620_16776#PolymorphicMapType_16723| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16723_10620_16776#PolymorphicMapType_16723| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16723_10620_16776#PolymorphicMapType_16723| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16723_10620_16776#PolymorphicMapType_16723| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_16723) (SummandMask1@@2 T@PolymorphicMapType_16723) (SummandMask2@@2 T@PolymorphicMapType_16723) (o_2@@22 T@Ref) (f_4@@22 T@Field_16762_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_16723_10620_53#PolymorphicMapType_16723| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_16723_10620_53#PolymorphicMapType_16723| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_16723_10620_53#PolymorphicMapType_16723| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16723_10620_53#PolymorphicMapType_16723| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16723_10620_53#PolymorphicMapType_16723| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16723_10620_53#PolymorphicMapType_16723| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_16723) (SummandMask1@@3 T@PolymorphicMapType_16723) (SummandMask2@@3 T@PolymorphicMapType_16723) (o_2@@23 T@Ref) (f_4@@23 T@Field_23019_3718) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_10927| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.303:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_10927| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_10927| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_10927| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_10927| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.318:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_10927| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_10927| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x@@1 T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_10927| a@@6 x@@1) y))
 :qid |stdinbpl.283:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_10927| a@@6 x@@1) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_10927| a@@7 b@@5) y@@0))
 :qid |stdinbpl.293:18|
 :skolemid |35|
 :pattern ( (|Set#Union_10927| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_10927| a@@8 b@@6) y@@1))
 :qid |stdinbpl.295:18|
 :skolemid |36|
 :pattern ( (|Set#Union_10927| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@2 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_10927| a@@9 x@@2) o@@2)  (or (= o@@2 x@@2) (select a@@9 o@@2)))
 :qid |stdinbpl.279:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_10927| a@@9 x@@2) o@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_16702) (xs@@1 (Array T@Ref Bool)) (x@@3 T@Ref) (n@@1 Int) ) (!  (and (= (fun Heap@@13 xs@@1 x@@3 n@@1) (|fun'| Heap@@13 xs@@1 x@@3 n@@1)) (dummyFunction_4204 (|fun#triggerStateless| xs@@1 x@@3 n@@1)))
 :qid |stdinbpl.463:15|
 :skolemid |82|
 :pattern ( (fun Heap@@13 xs@@1 x@@3 n@@1))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_10927| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.320:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_10927| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_10927| (|Set#Difference_10927| a@@11 b@@8)) (|Set#Card_10927| (|Set#Difference_10927| b@@8 a@@11))) (|Set#Card_10927| (|Set#Intersection_10927| a@@11 b@@8))) (|Set#Card_10927| (|Set#Union_10927| a@@11 b@@8))) (= (|Set#Card_10927| (|Set#Difference_10927| a@@11 b@@8)) (- (|Set#Card_10927| a@@11) (|Set#Card_10927| (|Set#Intersection_10927| a@@11 b@@8)))))
 :qid |stdinbpl.322:18|
 :skolemid |45|
 :pattern ( (|Set#Card_10927| (|Set#Difference_10927| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_10927| s))
 :qid |stdinbpl.265:18|
 :skolemid |22|
 :pattern ( (|Set#Card_10927| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@4 T@Ref) ) (! (select (|Set#UnionOne_10927| a@@12 x@@4) x@@4)
 :qid |stdinbpl.281:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_10927| a@@12 x@@4))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@5 T@Ref) ) (!  (=> (select a@@13 x@@5) (= (|Set#Card_10927| (|Set#UnionOne_10927| a@@13 x@@5)) (|Set#Card_10927| a@@13)))
 :qid |stdinbpl.285:18|
 :skolemid |32|
 :pattern ( (|Set#Card_10927| (|Set#UnionOne_10927| a@@13 x@@5)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_10927| (|Set#Singleton_10927| r@@0)) 1)
 :qid |stdinbpl.276:18|
 :skolemid |28|
 :pattern ( (|Set#Card_10927| (|Set#Singleton_10927| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_10927| r@@1) r@@1)
 :qid |stdinbpl.274:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_10927| r@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_16702) (Mask@@22 T@PolymorphicMapType_16723) (xs@@2 (Array T@Ref Bool)) (x@@6 T@Ref) (n@@2 Int) ) (!  (=> (state Heap@@14 Mask@@22) (= (|fun'| Heap@@14 xs@@2 x@@6 n@@2) (|fun#frame| (FrameFragment_4007 (|fun#condqp1| Heap@@14 xs@@2 x@@6 n@@2)) xs@@2 x@@6 n@@2)))
 :qid |stdinbpl.480:15|
 :skolemid |85|
 :pattern ( (state Heap@@14 Mask@@22) (|fun'| Heap@@14 xs@@2 x@@6 n@@2))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_16702) (Heap1Heap T@PolymorphicMapType_16702) (xs@@3 (Array T@Ref Bool)) (x@@7 T@Ref) (n@@3 Int) ) (!  (=> (and (=  (and (select xs@@3 (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@3 x@@7 n@@3) (|fun#condqp1| Heap1Heap xs@@3 x@@7 n@@3))) (< NoPerm FullPerm))  (and (select xs@@3 (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@3 x@@7 n@@3) (|fun#condqp1| Heap1Heap xs@@3 x@@7 n@@3))) (< NoPerm FullPerm))) (=> (and (select xs@@3 (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@3 x@@7 n@@3) (|fun#condqp1| Heap1Heap xs@@3 x@@7 n@@3))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap2Heap) (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@3 x@@7 n@@3) (|fun#condqp1| Heap1Heap xs@@3 x@@7 n@@3)) f_7) (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap1Heap) (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@3 x@@7 n@@3) (|fun#condqp1| Heap1Heap xs@@3 x@@7 n@@3)) f_7)))) (= (|fun#condqp1| Heap2Heap xs@@3 x@@7 n@@3) (|fun#condqp1| Heap1Heap xs@@3 x@@7 n@@3)))
 :qid |stdinbpl.490:15|
 :skolemid |86|
 :pattern ( (|fun#condqp1| Heap2Heap xs@@3 x@@7 n@@3) (|fun#condqp1| Heap1Heap xs@@3 x@@7 n@@3) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_10927| a@@14 (|Set#Union_10927| a@@14 b@@9)) (|Set#Union_10927| a@@14 b@@9))
 :qid |stdinbpl.308:18|
 :skolemid |39|
 :pattern ( (|Set#Union_10927| a@@14 (|Set#Union_10927| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_10927| a@@15 (|Set#Intersection_10927| a@@15 b@@10)) (|Set#Intersection_10927| a@@15 b@@10))
 :qid |stdinbpl.312:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_10927| a@@15 (|Set#Intersection_10927| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_10927| o@@3))
 :qid |stdinbpl.268:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_10927| o@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_16702) (o_27 T@Ref) (f_30 T@Field_10620_48240) (v T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_16702 (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@15) (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| Heap@@15) (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@15) (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@15) (store (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| Heap@@15) o_27 f_30 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16702 (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@15) (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| Heap@@15) (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@15) (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@15) (store (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| Heap@@15) o_27 f_30 v)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_16702) (o_27@@0 T@Ref) (f_30@@0 T@Field_10620_48373) (v@@0 T@PolymorphicMapType_17251) ) (! (succHeap Heap@@16 (PolymorphicMapType_16702 (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@16) (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| Heap@@16) (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@16) (store (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@16) o_27@@0 f_30@@0 v@@0) (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16702 (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@16) (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| Heap@@16) (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@16) (store (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@16) o_27@@0 f_30@@0 v@@0) (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_16702) (o_27@@1 T@Ref) (f_30@@1 T@Field_23019_3718) (v@@1 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_16702 (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@17) (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| Heap@@17) (store (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@17) o_27@@1 f_30@@1 v@@1) (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@17) (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16702 (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@17) (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| Heap@@17) (store (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@17) o_27@@1 f_30@@1 v@@1) (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@17) (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_16702) (o_27@@2 T@Ref) (f_30@@2 T@Field_16775_16776) (v@@2 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_16702 (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@18) (store (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| Heap@@18) o_27@@2 f_30@@2 v@@2) (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@18) (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@18) (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16702 (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@18) (store (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| Heap@@18) o_27@@2 f_30@@2 v@@2) (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@18) (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@18) (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_16702) (o_27@@3 T@Ref) (f_30@@3 T@Field_16762_53) (v@@3 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_16702 (store (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@19) o_27@@3 f_30@@3 v@@3) (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| Heap@@19) (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@19) (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@19) (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16702 (store (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@19) o_27@@3 f_30@@3 v@@3) (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| Heap@@19) (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@19) (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@19) (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| Heap@@19)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.352:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.353:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_10927| s@@0) 0) (= s@@0 |Set#Empty_10927|)) (=> (not (= (|Set#Card_10927| s@@0) 0)) (exists ((x@@8 T@Ref) ) (! (select s@@0 x@@8)
 :qid |stdinbpl.271:33|
 :skolemid |24|
))))
 :qid |stdinbpl.269:18|
 :skolemid |25|
 :pattern ( (|Set#Card_10927| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@9 T@Ref) ) (!  (=> (not (select a@@18 x@@9)) (= (|Set#Card_10927| (|Set#UnionOne_10927| a@@18 x@@9)) (+ (|Set#Card_10927| a@@18) 1)))
 :qid |stdinbpl.287:18|
 :skolemid |33|
 :pattern ( (|Set#Card_10927| (|Set#UnionOne_10927| a@@18 x@@9)))
)))
(assert (forall ((o_27@@4 T@Ref) (f_24 T@Field_16775_16776) (Heap@@20 T@PolymorphicMapType_16702) ) (!  (=> (select (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@20) o_27@@4 $allocated) (select (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@20) (select (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| Heap@@20) o_27@@4 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| Heap@@20) o_27@@4 f_24))
)))
(assert (forall ((p@@1 T@Field_10620_48240) (v_1@@0 T@FrameType) (q T@Field_10620_48240) (w@@0 T@FrameType) (r@@2 T@Field_10620_48240) (u T@FrameType) ) (!  (=> (and (InsidePredicate_16762_16762 p@@1 v_1@@0 q w@@0) (InsidePredicate_16762_16762 q w@@0 r@@2 u)) (InsidePredicate_16762_16762 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.247:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16762_16762 p@@1 v_1@@0 q w@@0) (InsidePredicate_16762_16762 q w@@0 r@@2 u))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.358:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_10927| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.291:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_10927| a@@20 b@@13) o@@4))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun v_2@0 () Int)
(declare-fun Heap@1 () T@PolymorphicMapType_16702)
(declare-fun xs@@4 () (Array T@Ref Bool))
(declare-fun x@@10 () T@Ref)
(declare-fun n@@4 () Int)
(declare-fun neverTriggered14 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_16723)
(declare-fun QPMask@0 () T@PolymorphicMapType_16723)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) T@Ref)
(declare-fun Heap@@21 () T@PolymorphicMapType_16702)
(declare-fun y@@3 () T@Ref)
(declare-fun yf@0 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_16702)
(declare-fun neverTriggered13 (T@Ref) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_16723)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) T@Ref)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) T@Ref)
(set-info :boogie-vc-id test06)
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
 (=> (= (ControlFlow 0 0) 21) (let ((anon9_Else_correct  (=> (= (ControlFlow 0 13) (- 0 12)) (= v_2@0 (fun Heap@1 xs@@4 x@@10 n@@4)))))
(let ((anon9_Then_correct  (and (=> (= (ControlFlow 0 8) (- 0 11)) (forall ((z_3 T@Ref) (z_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= z_3 z_3_1)) (select xs@@4 z_3)) (select xs@@4 z_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_3 z_3_1)))
 :qid |stdinbpl.1352:21|
 :skolemid |149|
 :pattern ( (neverTriggered14 z_3) (neverTriggered14 z_3_1))
))) (=> (forall ((z_3@@0 T@Ref) (z_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= z_3@@0 z_3_1@@0)) (select xs@@4 z_3@@0)) (select xs@@4 z_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_3@@0 z_3_1@@0)))
 :qid |stdinbpl.1352:21|
 :skolemid |149|
 :pattern ( (neverTriggered14 z_3@@0) (neverTriggered14 z_3_1@@0))
)) (and (=> (= (ControlFlow 0 8) (- 0 10)) (forall ((z_3@@1 T@Ref) ) (!  (=> (select xs@@4 z_3@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@0) z_3@@1 f_7) NoPerm)))
 :qid |stdinbpl.1359:21|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@1) z_3@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@2) z_3@@1 f_7))
 :pattern ( (select xs@@4 z_3@@1))
))) (=> (forall ((z_3@@2 T@Ref) ) (!  (=> (select xs@@4 z_3@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@0) z_3@@2 f_7) NoPerm)))
 :qid |stdinbpl.1359:21|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@1) z_3@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@2) z_3@@2 f_7))
 :pattern ( (select xs@@4 z_3@@2))
)) (=> (and (forall ((z_3@@3 T@Ref) ) (!  (=> (and (select xs@@4 z_3@@3) (< NoPerm FullPerm)) (and (qpRange14 z_3@@3) (= (invRecv14 z_3@@3) z_3@@3)))
 :qid |stdinbpl.1365:26|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@1) z_3@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@2) z_3@@3 f_7))
 :pattern ( (select xs@@4 z_3@@3))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (select xs@@4 (invRecv14 o_4)) (and (< NoPerm FullPerm) (qpRange14 o_4))) (= (invRecv14 o_4) o_4))
 :qid |stdinbpl.1369:26|
 :skolemid |152|
 :pattern ( (invRecv14 o_4))
))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (select xs@@4 x@@10)) (=> (select xs@@4 x@@10) (=> (= (ControlFlow 0 8) (- 0 7)) (>= n@@4 0)))))))))))
(let ((anon8_Else_correct  (=> (and (= v_2@0 (fun Heap@@21 xs@@4 x@@10 n@@4)) (state Heap@@21 QPMask@0)) (and (=> (= (ControlFlow 0 14) (- 0 17)) (HasDirectPerm_10620_3718 QPMask@0 y@@3 f_7)) (=> (HasDirectPerm_10620_3718 QPMask@0 y@@3 f_7) (=> (and (= yf@0 (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@21) y@@3 f_7)) (state Heap@@21 QPMask@0)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (= FullPerm (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@0) y@@3 f_7))) (=> (= FullPerm (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@0) y@@3 f_7)) (=> (and (= Heap@0 (PolymorphicMapType_16702 (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@21) (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| Heap@@21) (store (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@21) y@@3 f_7 0) (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@@21) (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| Heap@@21))) (state Heap@0 QPMask@0)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (= FullPerm (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@0) y@@3 f_7))) (=> (= FullPerm (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@0) y@@3 f_7)) (=> (and (= Heap@1 (PolymorphicMapType_16702 (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@0) (|PolymorphicMapType_16702_10246_10247#PolymorphicMapType_16702| Heap@0) (store (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@0) y@@3 f_7 yf@0) (|PolymorphicMapType_16702_10620_48417#PolymorphicMapType_16702| Heap@0) (|PolymorphicMapType_16702_16762_48240#PolymorphicMapType_16702| Heap@0))) (state Heap@1 QPMask@0)) (and (=> (= (ControlFlow 0 14) 8) anon9_Then_correct) (=> (= (ControlFlow 0 14) 13) anon9_Else_correct))))))))))))))
(let ((anon8_Then_correct  (and (=> (= (ControlFlow 0 3) (- 0 6)) (forall ((z_2 T@Ref) (z_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= z_2 z_2_1)) (select xs@@4 z_2)) (select xs@@4 z_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_2 z_2_1)))
 :qid |stdinbpl.1281:21|
 :skolemid |145|
 :pattern ( (neverTriggered13 z_2) (neverTriggered13 z_2_1))
))) (=> (forall ((z_2@@0 T@Ref) (z_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= z_2@@0 z_2_1@@0)) (select xs@@4 z_2@@0)) (select xs@@4 z_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_2@@0 z_2_1@@0)))
 :qid |stdinbpl.1281:21|
 :skolemid |145|
 :pattern ( (neverTriggered13 z_2@@0) (neverTriggered13 z_2_1@@0))
)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (forall ((z_2@@1 T@Ref) ) (!  (=> (select xs@@4 z_2@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@0) z_2@@1 f_7) NoPerm)))
 :qid |stdinbpl.1288:21|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@21) z_2@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@1) z_2@@1 f_7))
 :pattern ( (select xs@@4 z_2@@1))
))) (=> (forall ((z_2@@2 T@Ref) ) (!  (=> (select xs@@4 z_2@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@0) z_2@@2 f_7) NoPerm)))
 :qid |stdinbpl.1288:21|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@21) z_2@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@1) z_2@@2 f_7))
 :pattern ( (select xs@@4 z_2@@2))
)) (=> (and (forall ((z_2@@3 T@Ref) ) (!  (=> (and (select xs@@4 z_2@@3) (< NoPerm FullPerm)) (and (qpRange13 z_2@@3) (= (invRecv13 z_2@@3) z_2@@3)))
 :qid |stdinbpl.1294:26|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@21) z_2@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@1) z_2@@3 f_7))
 :pattern ( (select xs@@4 z_2@@3))
)) (forall ((o_4@@0 T@Ref) ) (!  (=> (and (select xs@@4 (invRecv13 o_4@@0)) (and (< NoPerm FullPerm) (qpRange13 o_4@@0))) (= (invRecv13 o_4@@0) o_4@@0))
 :qid |stdinbpl.1298:26|
 :skolemid |148|
 :pattern ( (invRecv13 o_4@@0))
))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (select xs@@4 x@@10)) (=> (select xs@@4 x@@10) (=> (= (ControlFlow 0 3) (- 0 2)) (>= n@@4 0)))))))))))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) (forall ((z_1 T@Ref) (z_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= z_1 z_1_1)) (select xs@@4 z_1)) (select xs@@4 z_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_1 z_1_1)))
 :qid |stdinbpl.1220:15|
 :skolemid |139|
))) (=> (forall ((z_1@@0 T@Ref) (z_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= z_1@@0 z_1_1@@0)) (select xs@@4 z_1@@0)) (select xs@@4 z_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_1@@0 z_1_1@@0)))
 :qid |stdinbpl.1220:15|
 :skolemid |139|
)) (=> (and (and (forall ((z_1@@1 T@Ref) ) (!  (=> (and (select xs@@4 z_1@@1) (< NoPerm FullPerm)) (and (qpRange12 z_1@@1) (= (invRecv12 z_1@@1) z_1@@1)))
 :qid |stdinbpl.1226:22|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@21) z_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@0) z_1@@1 f_7))
 :pattern ( (select xs@@4 z_1@@1))
)) (forall ((o_4@@1 T@Ref) ) (!  (=> (and (and (select xs@@4 (invRecv12 o_4@@1)) (< NoPerm FullPerm)) (qpRange12 o_4@@1)) (= (invRecv12 o_4@@1) o_4@@1))
 :qid |stdinbpl.1230:22|
 :skolemid |141|
 :pattern ( (invRecv12 o_4@@1))
))) (and (forall ((z_1@@2 T@Ref) ) (!  (=> (select xs@@4 z_1@@2) (not (= z_1@@2 null)))
 :qid |stdinbpl.1236:22|
 :skolemid |142|
 :pattern ( (select (|PolymorphicMapType_16702_10620_3718#PolymorphicMapType_16702| Heap@@21) z_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@0) z_1@@2 f_7))
 :pattern ( (select xs@@4 z_1@@2))
)) (forall ((o_4@@2 T@Ref) ) (!  (and (=> (and (and (select xs@@4 (invRecv12 o_4@@2)) (< NoPerm FullPerm)) (qpRange12 o_4@@2)) (and (=> (< NoPerm FullPerm) (= (invRecv12 o_4@@2) o_4@@2)) (= (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@0) o_4@@2 f_7) (+ (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| ZeroMask) o_4@@2 f_7) FullPerm)))) (=> (not (and (and (select xs@@4 (invRecv12 o_4@@2)) (< NoPerm FullPerm)) (qpRange12 o_4@@2))) (= (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@0) o_4@@2 f_7) (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| ZeroMask) o_4@@2 f_7))))
 :qid |stdinbpl.1242:22|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@0) o_4@@2 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@3 T@Ref) (f_5 T@Field_16762_53) ) (!  (=> true (= (select (|PolymorphicMapType_16723_10620_53#PolymorphicMapType_16723| ZeroMask) o_4@@3 f_5) (select (|PolymorphicMapType_16723_10620_53#PolymorphicMapType_16723| QPMask@0) o_4@@3 f_5)))
 :qid |stdinbpl.1246:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_16723_10620_53#PolymorphicMapType_16723| ZeroMask) o_4@@3 f_5))
 :pattern ( (select (|PolymorphicMapType_16723_10620_53#PolymorphicMapType_16723| QPMask@0) o_4@@3 f_5))
)) (forall ((o_4@@4 T@Ref) (f_5@@0 T@Field_16775_16776) ) (!  (=> true (= (select (|PolymorphicMapType_16723_10620_16776#PolymorphicMapType_16723| ZeroMask) o_4@@4 f_5@@0) (select (|PolymorphicMapType_16723_10620_16776#PolymorphicMapType_16723| QPMask@0) o_4@@4 f_5@@0)))
 :qid |stdinbpl.1246:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_16723_10620_16776#PolymorphicMapType_16723| ZeroMask) o_4@@4 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_16723_10620_16776#PolymorphicMapType_16723| QPMask@0) o_4@@4 f_5@@0))
))) (forall ((o_4@@5 T@Ref) (f_5@@1 T@Field_23019_3718) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| ZeroMask) o_4@@5 f_5@@1) (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@0) o_4@@5 f_5@@1)))
 :qid |stdinbpl.1246:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| ZeroMask) o_4@@5 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_16723_10620_3718#PolymorphicMapType_16723| QPMask@0) o_4@@5 f_5@@1))
))) (forall ((o_4@@6 T@Ref) (f_5@@2 T@Field_10620_48240) ) (!  (=> true (= (select (|PolymorphicMapType_16723_10620_48240#PolymorphicMapType_16723| ZeroMask) o_4@@6 f_5@@2) (select (|PolymorphicMapType_16723_10620_48240#PolymorphicMapType_16723| QPMask@0) o_4@@6 f_5@@2)))
 :qid |stdinbpl.1246:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_16723_10620_48240#PolymorphicMapType_16723| ZeroMask) o_4@@6 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_16723_10620_48240#PolymorphicMapType_16723| QPMask@0) o_4@@6 f_5@@2))
))) (forall ((o_4@@7 T@Ref) (f_5@@3 T@Field_10620_48373) ) (!  (=> true (= (select (|PolymorphicMapType_16723_10620_52495#PolymorphicMapType_16723| ZeroMask) o_4@@7 f_5@@3) (select (|PolymorphicMapType_16723_10620_52495#PolymorphicMapType_16723| QPMask@0) o_4@@7 f_5@@3)))
 :qid |stdinbpl.1246:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_16723_10620_52495#PolymorphicMapType_16723| ZeroMask) o_4@@7 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_16723_10620_52495#PolymorphicMapType_16723| QPMask@0) o_4@@7 f_5@@3))
))) (state Heap@@21 QPMask@0)) (and (and (and (state Heap@@21 QPMask@0) (select xs@@4 x@@10)) (and (select xs@@4 y@@3) (state Heap@@21 QPMask@0))) (and (and (not (= x@@10 y@@3)) (state Heap@@21 QPMask@0)) (and (>= n@@4 0) (state Heap@@21 QPMask@0))))) (and (=> (= (ControlFlow 0 18) 3) anon8_Then_correct) (=> (= (ControlFlow 0 18) 14) anon8_Else_correct))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@21 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@21) x@@10 $allocated) (select (|PolymorphicMapType_16702_10243_53#PolymorphicMapType_16702| Heap@@21) y@@3 $allocated))) (and (=> (= (ControlFlow 0 20) 1) anon7_Then_correct) (=> (= (ControlFlow 0 20) 18) anon7_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 21) 20) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
